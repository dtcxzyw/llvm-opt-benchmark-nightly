Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep.tgrep.897916b5d56b90bc-cgu.11?download=true
inline.NumInlined: 716
inline.NumDeleted: 346
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read7StrReadECsbNLsQi0JuJ4_5tgrep:bb.a
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !512, !noundef !7
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !25

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !513, !noalias !514
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
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
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
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
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
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
define internal fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbNLsQi0JuJ4_5tgrep(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 8 uses
  %i.s = alloca [24 x i8], align 8                ; 12 uses
  %i.t = alloca [16 x i8], align 8                ; 6 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [16 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca [31 x i8], align 1          ; 4 uses
  %i.y = alloca [32 x i8], align 8                ; 5 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %.sroa.1379.sroa.6 = alloca [32 x i8], align 8  ; 2 uses
  %i.ab = alloca [32 x i8], align 8               ; 4 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [32 x i8], align 8               ; 6 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  %i.af = alloca [16 x i8], align 8               ; 9 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [24 x i8], align 8               ; 4 uses
  %i.ai = alloca [32 x i8], align 8               ; 4 uses
  %i.aj = alloca [40 x i8], align 8               ; 7 uses
  %i.ak = alloca [32 x i8], align 8               ; 22 uses
  %i.al = alloca [24 x i8], align 8               ; 4 uses
  %i.am = alloca [32 x i8], align 8               ; 7 uses
  %i.an = alloca [40 x i8], align 8               ; 11 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.ao = alloca [24 x i8], align 8               ; 4 uses
  %i.ap = alloca [24 x i8], align 8               ; 7 uses
  %i.aq = alloca [16 x i8], align 8               ; 6 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %.sroa.24 = alloca [6 x i8], align 2            ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !681, !noalias !682, !noundef !7 ; 8 uses
  %.promoted.i53 = load i64, ptr %i.at, align 8, !alias.scope !680, !noalias !683 ; 2 uses
  %i.aw = icmp ult i64 %.promoted.i53, %i.av
  br i1 %i.aw, label %.lr.ph.i, label %.loopexit180

.lr.ph.i:                                         ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !alias.scope !681, !noalias !682, !nonnull !7, !noundef !7 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.az = phi i64 [ %.promoted.i53, %.lr.ph.i ], [ %i.bc, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !684), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !685), !noalias !678
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !686, !noundef !7 ; 3 uses
  switch i8 %i.bb, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.bc = add i64 %i.az, 1                        ; 3 uses
  store i64 %i.bc, ptr %i.at, align 8, !alias.scope !687, !noalias !683
  %exitcond.not.i54 = icmp eq i64 %i.bc, %i.av
  br i1 %exitcond.not.i54, label %.loopexit180, label %bb.b

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24)
  switch i8 %i.bb, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit180:                                     ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !688
  store i64 5, ptr %i.as, align 8, !noalias !688
  %i.bd = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.as), !noalias !678, !inline_history !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !688
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.bf = add i8 %i.bb, -48
  %or.cond8.i = icmp ult i8 %i.bf, 10
  br i1 %or.cond8.i, label %bb.dt, label %bb.ds, !prof !26

bb.e:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.bg = add i64 %i.az, 1                        ; 4 uses
  store i64 %i.bg, ptr %i.at, align 8, !alias.scope !689, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !690)
  %umax.i46 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.bg) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !691), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !692), !noalias !678
  %exitcond.not.i48.not = icmp ult i64 %i.bg, %i.av
  br i1 %exitcond.not.i48.not, label %bb.f, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !693, !noundef !7
  %i.bj = add i64 %i.az, 2                        ; 3 uses
  store i64 %i.bj, ptr %i.at, align 8, !alias.scope !694, !noalias !695
  %.not.i49 = icmp eq i8 %i.bi, 117
  br i1 %.not.i49, label %bb.g, label %bb.k, !prof !27

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !697), !noalias !678
  %exitcond.not.i48.1 = icmp eq i64 %i.bj, %umax.i46
  br i1 %exitcond.not.i48.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !698, !noundef !7
  %i.bm = add i64 %i.az, 3                        ; 3 uses
  store i64 %i.bm, ptr %i.at, align 8, !alias.scope !699, !noalias !695
  %.not.i49.1 = icmp eq i8 %i.bl, 108
  br i1 %.not.i49.1, label %bb.i, label %bb.k, !prof !27

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !700), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !701), !noalias !678
  %exitcond.not.i48.2 = icmp eq i64 %i.bm, %umax.i46
  br i1 %exitcond.not.i48.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !702, !noundef !7
  %i.bp = add i64 %i.az, 4
  store i64 %i.bp, ptr %i.at, align 8, !alias.scope !703, !noalias !695
  %.not.i49.2 = icmp eq i8 %i.bo, 108
  br i1 %.not.i49.2, label %.thread, label %bb.k, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !704
  store i64 5, ptr %i.l, align 8, !noalias !704
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !704
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !704
  store i64 9, ptr %i.k, align 8, !noalias !704
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !705
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !704
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.bs = add i64 %i.az, 1                        ; 4 uses
  store i64 %i.bs, ptr %i.at, align 8, !alias.scope !706, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !707)
  %umax.i38 = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.bs) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !708), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !709), !noalias !678
  %exitcond.not.i40.not = icmp ult i64 %i.bs, %i.av
  br i1 %exitcond.not.i40.not, label %bb.m, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !710, !noundef !7
  %i.bv = add i64 %i.az, 2                        ; 3 uses
  store i64 %i.bv, ptr %i.at, align 8, !alias.scope !711, !noalias !712
  %.not.i41 = icmp eq i8 %i.bu, 114
  br i1 %.not.i41, label %bb.n, label %bb.r, !prof !27

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714), !noalias !678
  %exitcond.not.i40.1 = icmp eq i64 %i.bv, %umax.i38
  br i1 %exitcond.not.i40.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !715, !noundef !7
  %i.by = add i64 %i.az, 3                        ; 3 uses
  store i64 %i.by, ptr %i.at, align 8, !alias.scope !716, !noalias !712
  %.not.i41.1 = icmp eq i8 %i.bx, 117
  br i1 %.not.i41.1, label %bb.p, label %bb.r, !prof !27

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !717), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718), !noalias !678
  %exitcond.not.i40.2 = icmp eq i64 %i.by, %umax.i38
  br i1 %exitcond.not.i40.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !noalias !719, !noundef !7
  %i.cb = add i64 %i.az, 4
  store i64 %i.cb, ptr %i.at, align 8, !alias.scope !720, !noalias !712
  %.not.i41.2 = icmp eq i8 %i.ca, 101
  br i1 %.not.i41.2, label %.thread, label %bb.r, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !721
  store i64 5, ptr %i.n, align 8, !noalias !721
  %i.cc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !721
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !721
  store i64 9, ptr %i.m, align 8, !noalias !721
  %i.cd = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !721
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.ce = add i64 %i.az, 1                        ; 4 uses
  store i64 %i.ce, ptr %i.at, align 8, !alias.scope !723, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !724)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.av, i64 %i.ce) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !725), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !726), !noalias !678
  %exitcond.not.i.not = icmp ult i64 %i.ce, %i.av
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noalias !727, !noundef !7
  %i.ch = add i64 %i.az, 2                        ; 3 uses
  store i64 %i.ch, ptr %i.at, align 8, !alias.scope !728, !noalias !729
  %.not.i36 = icmp eq i8 %i.cg, 97
  br i1 %.not.i36, label %bb.u, label %bb.aa, !prof !27

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !731), !noalias !678
  %exitcond.not.i.1 = icmp eq i64 %i.ch, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !noalias !732, !noundef !7
  %i.ck = add i64 %i.az, 3                        ; 3 uses
  store i64 %i.ck, ptr %i.at, align 8, !alias.scope !733, !noalias !729
  %.not.i36.1 = icmp eq i8 %i.cj, 108
  br i1 %.not.i36.1, label %bb.w, label %bb.aa, !prof !27

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !734), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !735), !noalias !678
  %exitcond.not.i.2 = icmp eq i64 %i.ck, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !noalias !736, !noundef !7
  %i.cn = add i64 %i.az, 4                        ; 3 uses
  store i64 %i.cn, ptr %i.at, align 8, !alias.scope !737, !noalias !729
  %.not.i36.2 = icmp eq i8 %i.cm, 115
  br i1 %.not.i36.2, label %bb.y, label %bb.aa, !prof !27

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !738), !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739), !noalias !678
  %exitcond.not.i.3 = icmp eq i64 %i.cn, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !noalias !740, !noundef !7
  %i.cq = add i64 %i.az, 5
  store i64 %i.cq, ptr %i.at, align 8, !alias.scope !741, !noalias !729
  %.not.i36.3 = icmp eq i8 %i.cp, 101
  br i1 %.not.i36.3, label %.thread, label %bb.aa, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !742
  store i64 5, ptr %i.p, align 8, !noalias !742
  %i.cr = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p), !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !742
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !742
  store i64 9, ptr %i.o, align 8, !noalias !742
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !742
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.ct = add i64 %i.az, 1
  store i64 %i.ct, ptr %i.at, align 8, !alias.scope !744, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !688
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.ar, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !678, !inline_history !529
  %i.cu = load i64, ptr %i.ar, align 8, !range !23, !noalias !688, !noundef !7 ; 2 uses
  %i.cv = icmp eq i64 %i.cu, -1
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  br i1 %i.cv, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.cx = add i64 %i.az, 1
  store i64 %i.cx, ptr %i.at, align 8, !alias.scope !745, !noalias !678
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cy, align 8, !alias.scope !679, !noalias !678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !688
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1), !noalias !678, !inline_history !529
  %i.cz = load i64, ptr %i.ap, align 8, !range !15, !noalias !688, !noundef !7 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !688 ; 3 uses
  br i1 %i.da, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.de = load i8, ptr %i.dd, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.df = add i8 %i.de, -1                        ; 2 uses
  store i8 %i.df, ptr %i.dd, align 8, !alias.scope !679, !noalias !678
  %i.dg = icmp eq i8 %i.df, 0
  br i1 %i.dg, label %bb.ay, label %bb.az, !prof !11

bb.ae:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbNLsQi0JuJ4_5tgrep.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.di = load i8, ptr %i.dh, align 8, !alias.scope !679, !noalias !678, !noundef !7
  %i.dj = add i8 %i.di, -1                        ; 2 uses
  store i8 %i.dj, ptr %i.dh, align 8, !alias.scope !679, !noalias !678
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.bw, label %bb.bx, !prof !11

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51
  %.sroa.0.1.i50.ph = phi ptr [ %i.bq, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i51 ], [ %i.br, %bb.k ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i50.ph, ptr %i.dl, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.ag:                                            ; preds = %.thread167, %.thread164
  %.sroa.24254.0 = phi i64 [ %.sroa.24254.4, %.thread167 ], [ %.sroa.24254.3, %.thread164 ] ; 2 uses
  %.sroa.22.0 = phi i8 [ %.sroa.22.2, %.thread167 ], [ %.sroa.22.1, %.thread164 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4, %.thread167 ], [ %.sroa.0.3, %.thread164 ] ; 2 uses
  %i.dm = phi <2 x i64> [ %i.jy, %.thread167 ], [ %i.gk, %.thread164 ]
  %i.dn = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.dn, label %._crit_edge, label %.thread, !prof !746

._crit_edge:                                      ; preds = %bb.ag
  %i.do = inttoptr i64 %.sroa.24254.0 to ptr
  br label %bb.du

bb.ah:                                            ; preds = %bb.dv, %bb.bw, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43
  %.sroa.0.1.i42.ph = phi ptr [ %i.cc, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i43 ], [ %i.cd, %bb.r ]
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i42.ph, ptr %i.dp, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.cr, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.cs, %bb.aa ]
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.dq, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.dr = load ptr, ptr %i.cw, align 8, !noalias !688, !nonnull !7, !align !22, !noundef !7
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %i.ds, align 8, !alias.scope !678, !noalias !679
  store i8 -1, ptr %0, align 8, !alias.scope !678, !noalias !679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !688
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.cw, align 8, !noalias !688 ; 3 uses
  %i.dt = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.4.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cu, label %default.unreachable338 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33
    i64 2, label %bb.ap
  ]

default.unreachable338:                           ; preds = %bb.dw, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.du = bitcast i64 %.sroa.4.0.copyload to double
  %i.dv = tail call double @llvm.fabs.f64(double %i.du)
  %i.dw = fcmp ueq double %i.dv, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !747
  br i1 %i.dw, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i26 = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.5.sroa.4.0.copyload9.i.i27 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx4.sroa_idx.i.i26, align 8, !alias.scope !748, !noalias !749
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i28 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.dx = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx4.sroa_idx.i.i28, align 8, !alias.scope !748, !noalias !749
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.q, align 8, !noalias !747
  tail call void @llvm.experimental.noalias.scope.decl(metadata !750), !noalias !678
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5value5ValueECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.q), !noalias !751
  br label %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18

_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i20 = phi i64 [ %.sroa.5.sroa.4.0.copyload9.i.i27, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i22 = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dy = phi <2 x i64> [ %i.dx, %bb.an ], [ %i.dt, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !747
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i13 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserialize12ValueVisitorECsbNLsQi0JuJ4_5tgrep.exit33: ; preds = %bb.al, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18, %bb.ap
  %.sroa.24254.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i20, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ %.lobit.i.i13, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i22, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dz = phi <2 x i64> [ %i.dy, %_RINvXNvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB8_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECsbNLsQi0JuJ4_5tgrep.exit.i18 ], [ %i.dt, %bb.ap ], [ %i.dt, %bb.al ]
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer18deserialize_structNtNvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtB2t_10ServerInfoNtB1j_11Deserialize11deserialize9___VisitorEB2v_:bb.a
  %i.ee = add i64 %i.ed, 1
  store i64 %i.ee, ptr %i.ec, align 8, !alias.scope !1942, !noalias !1943
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 6 uses
  store i64 0, ptr %i.ef, align 8, !alias.scope !1944, !noalias !1943
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1945
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea), !noalias !1943
  %i.eg = load i64, ptr %i.v, align 8, !range !15, !noalias !1945, !noundef !7 ; 2 uses
  %i.eh = icmp eq i64 %i.eg, 2
  %i.ei = load ptr, ptr %i.dr, align 8, !noalias !1945 ; 9 uses
  br i1 %i.eh, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.4.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !1945 ; 2 uses
  %i.ej = trunc nuw i64 %i.eg to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  br i1 %i.ej, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ar [
    i64 3, label %bb.ai
    i64 4, label %bb.aj
  ]

bb.ai:                                            ; preds = %bb.ah
  %i.ek = load i16, ptr %i.ei, align 1
  %i.el = xor i16 %i.ek, 26992
  %i.em = getelementptr i8, ptr %i.ei, i64 2
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = zext i8 %i.en to i16
  %i.ep = xor i16 %i.eo, 100
  %i.eq = or i16 %i.el, %i.ep
  %i.er = icmp ne i16 %i.eq, 0
  %i.es = zext i1 %i.er to i32
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ap, label %bb.ar

bb.aj:                                            ; preds = %bb.ah
  %i.eu = load i32, ptr %i.ei, align 1
  %i.ev = icmp ne i32 %i.eu, 1953656688
  %i.ew = zext i1 %i.ev to i32
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.aq, label %bb.ar

bb.ak:                                            ; preds = %bb.ag
  switch i64 %.sroa.4.0.copyload.i.i.i.i.i.i.i, label %bb.ar [
    i64 3, label %bb.al
    i64 4, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ey = load i16, ptr %i.ei, align 1
  %i.ez = xor i16 %i.ey, 26992
  %i.fa = getelementptr i8, ptr %i.ei, i64 2
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i16
  %i.fd = xor i16 %i.fc, 100
  %i.fe = or i16 %i.ez, %i.fd
  %i.ff = icmp ne i16 %i.fe, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = icmp eq i32 %i.fg, 0
  br i1 %i.fh, label %bb.ap, label %bb.ar

bb.am:                                            ; preds = %bb.ak
  %i.fi = load i32, ptr %i.ei, align 1
  %i.fj = icmp ne i32 %i.fi, 1953656688
  %i.fk = zext i1 %i.fj to i32
  %i.fl = icmp eq i32 %i.fk, 0
  br i1 %i.fl, label %bb.aq, label %bb.ar

bb.an:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ei) ]
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ao:                                            ; preds = %bb.ae
  %i.fm = trunc nuw i32 %.sroa.04.0306.i to i1
  br i1 %i.fm, label %bb.dp, label %bb.dm

bb.ap:                                            ; preds = %bb.al, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  %i.fn = icmp eq i32 %.sroa.04.0306.i, 1
  br i1 %i.fn, label %bb.de, label %bb.da, !prof !11

bb.aq:                                            ; preds = %bb.am, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  %i.fo = icmp eq i16 %.sroa.09.0304.i, 1
  br i1 %i.fo, label %bb.dk, label %bb.dg, !prof !11

bb.ar:                                            ; preds = %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1945
  call void @llvm.experimental.noalias.scope.decl(metadata !1946)
  call void @llvm.experimental.noalias.scope.decl(metadata !1947)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ea, i64 32 ; 3 uses
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !1948, !noalias !1949, !noundef !7 ; 4 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !1950, !noalias !1951 ; 2 uses
  %i.fr = icmp ult i64 %.promoted.i.i.i.i.i, %i.fq
  br i1 %i.fr, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.ar
  %i.fs = load ptr, ptr %i.eb, align 8, !alias.scope !1948, !noalias !1949, !nonnull !7, !noundef !7 ; 2 uses
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %.lr.ph.i.i.i.i.i
  %i.ft = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.fw, %bb.at ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1952)
  call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !noalias !1954, !noundef !7
  switch i8 %i.fv, label %bb.au [
    i8 32, label %bb.at
    i8 10, label %bb.at
    i8 9, label %bb.at
    i8 13, label %bb.at
    i8 58, label %bb.av
  ], !prof !29

bb.at:                                            ; preds = %bb.as, %bb.as, %bb.as, %bb.as
  %i.fw = add i64 %i.ft, 1                        ; 3 uses
  store i64 %i.fw, ptr %i.ec, align 8, !alias.scope !1955, !noalias !1951
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fw, %i.fq
  br i1 %exitcond.not.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.as

.loopexit.i.i.i.i:                                ; preds = %bb.ar, %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1956
  store i64 3, ptr %i.t, align 8, !noalias !1956
  %i.fx = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.t), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1956
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.au:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1956
  store i64 6, ptr %i.u, align 8, !noalias !1956
  %i.fy = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1956
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.av:                                            ; preds = %bb.as
  %i.fz = add i64 %i.ft, 1                        ; 3 uses
  store i64 %i.fz, ptr %i.ec, align 8, !alias.scope !1958, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1959)
  call void @llvm.experimental.noalias.scope.decl(metadata !1960)
  call void @llvm.experimental.noalias.scope.decl(metadata !1961)
  call void @llvm.experimental.noalias.scope.decl(metadata !1962)
  store i64 0, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957
  %i.ga = icmp ult i64 %i.fz, %i.fq
  br i1 %i.ga, label %.lr.ph.i.lr.ph.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i.i.i:                     ; preds = %bb.av
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.cw, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i
  %i.gc = phi ptr [ %i.fs, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.kd, %bb.cw ] ; 11 uses
  %.promoted.i179.i.i.i.i.i.i.i = phi i64 [ %i.fz, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.cw ]
  %i.gd = phi i64 [ %i.fq, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %i.kc, %bb.cw ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.cw ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.cw ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1964)
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ge = phi i64 [ %.promoted.i179.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.gh, %bb.ax ] ; 17 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !noalias !1965, !noundef !7 ; 3 uses
  switch i8 %i.gg, label %bb.ay [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 110, label %bb.az
    i8 116, label %bb.bf
    i8 102, label %bb.bl
    i8 45, label %bb.bt
    i8 34, label %bb.bu
    i8 91, label %bb.bv
    i8 123, label %bb.bv
  ]

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.gh = add i64 %i.ge, 1                        ; 3 uses
  store i64 %i.gh, ptr %i.ec, align 8, !alias.scope !1966, !noalias !1967
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gh, %i.gd
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i.i.i, label %bb.aw

.loopexit130.i.i.i.i.i.i.i:                       ; preds = %bb.av, %bb.cw, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1968
  store i64 5, ptr %i.s, align 8, !noalias !1968
  %i.gi = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ay:                                            ; preds = %bb.aw
  %i.gj = add i8 %i.gg, -48
  %or.cond.i.i.i.i.i.i.i = icmp ult i8 %i.gj, 10
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.bz, label %bb.by, !prof !26

bb.az:                                            ; preds = %bb.aw
  %i.gk = add i64 %i.ge, 1                        ; 4 uses
  store i64 %i.gk, ptr %i.ec, align 8, !alias.scope !1969, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1970)
  %umax.i.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gd, i64 %i.gk) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1971)
  call void @llvm.experimental.noalias.scope.decl(metadata !1972)
  %exitcond.not.i53.not.i.i.i.i.i.i.i = icmp ult i64 %i.gk, %i.gd
  br i1 %exitcond.not.i53.not.i.i.i.i.i.i.i, label %bb.ba, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i

bb.ba:                                            ; preds = %bb.az
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !1973, !noundef !7
  %i.gn = add i64 %i.ge, 2                        ; 3 uses
  store i64 %i.gn, ptr %i.ec, align 8, !alias.scope !1974, !noalias !1975
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.gm, 117
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.bb, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !1976)
  call void @llvm.experimental.noalias.scope.decl(metadata !1977)
  %exitcond.not.i53.1.i.i.i.i.i.i.i = icmp eq i64 %i.gn, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.go = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !noalias !1978, !noundef !7
  %i.gq = add i64 %i.ge, 3                        ; 3 uses
  store i64 %i.gq, ptr %i.ec, align 8, !alias.scope !1979, !noalias !1975
  %.not.i.1.i.i.i.i.i.i.i = icmp eq i8 %i.gp, 108
  br i1 %.not.i.1.i.i.i.i.i.i.i, label %bb.bd, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.experimental.noalias.scope.decl(metadata !1980)
  call void @llvm.experimental.noalias.scope.decl(metadata !1981)
  %exitcond.not.i53.2.i.i.i.i.i.i.i = icmp eq i64 %i.gq, %umax.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gq
  %i.gs = load i8, ptr %i.gr, align 1, !noalias !1982, !noundef !7
  %i.gt = add i64 %i.ge, 4
  store i64 %i.gt, ptr %i.ec, align 8, !alias.scope !1983, !noalias !1975
  %.not.i.2.i.i.i.i.i.i.i = icmp eq i8 %i.gs, 108
  br i1 %.not.i.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %.loopexit246.i.i.i.i.i.i.i, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bd, %bb.bb, %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1984
  store i64 5, ptr %i.k, align 8, !noalias !1984
  %i.gu = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1984
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit246.i.i.i.i.i.i.i:                       ; preds = %bb.be, %bb.bc, %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1984
  store i64 9, ptr %i.j, align 8, !noalias !1984
  %i.gv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !1985
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1984
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bf:                                            ; preds = %bb.aw
  %i.gw = add i64 %i.ge, 1                        ; 4 uses
  store i64 %i.gw, ptr %i.ec, align 8, !alias.scope !1986, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !1987)
  %umax.i56.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gd, i64 %i.gw) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1988)
  call void @llvm.experimental.noalias.scope.decl(metadata !1989)
  %exitcond.not.i58.not.i.i.i.i.i.i.i = icmp ult i64 %i.gw, %i.gd
  br i1 %exitcond.not.i58.not.i.i.i.i.i.i.i, label %bb.bg, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !noalias !1990, !noundef !7
  %i.gz = add i64 %i.ge, 2                        ; 3 uses
  store i64 %i.gz, ptr %i.ec, align 8, !alias.scope !1991, !noalias !1992
  %.not.i59.i.i.i.i.i.i.i = icmp eq i8 %i.gy, 114
  br i1 %.not.i59.i.i.i.i.i.i.i, label %bb.bh, label %.loopexit239.i.i.i.i.i.i.i, !prof !27

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.experimental.noalias.scope.decl(metadata !1993)
  call void @llvm.experimental.noalias.scope.decl(metadata !1994)
  %exitcond.not.i58.1.i.i.i.i.i.i.i = icmp eq i64 %i.gz, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.gz
  %i.hb = load i8, ptr %i.ha, align 1, !noalias !1995, !noundef !7
  %i.hc = add i64 %i.ge, 3                        ; 3 uses
  store i64 %i.hc, ptr %i.ec, align 8, !alias.scope !1996, !noalias !1992
  %.not.i59.1.i.i.i.i.i.i.i = icmp eq i8 %i.hb, 117
  br i1 %.not.i59.1.i.i.i.i.i.i.i, label %bb.bj, label %.loopexit239.i.i.i.i.i.i.i, !prof !27

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.experimental.noalias.scope.decl(metadata !1997)
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %exitcond.not.i58.2.i.i.i.i.i.i.i = icmp eq i64 %i.hc, %umax.i56.i.i.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !noalias !1999, !noundef !7
  %i.hf = add i64 %i.ge, 4
  store i64 %i.hf, ptr %i.ec, align 8, !alias.scope !2000, !noalias !1992
  %.not.i59.2.i.i.i.i.i.i.i = icmp eq i8 %i.he, 101
  br i1 %.not.i59.2.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %.loopexit239.i.i.i.i.i.i.i, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i.i.i: ; preds = %bb.bj, %bb.bh, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2001
  store i64 5, ptr %i.i, align 8, !noalias !2001
  %i.hg = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2001
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit239.i.i.i.i.i.i.i:                       ; preds = %bb.bk, %bb.bi, %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2001
  store i64 9, ptr %i.h, align 8, !noalias !2001
  %i.hh = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !2002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2001
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bl:                                            ; preds = %bb.aw
  %i.hi = add i64 %i.ge, 1                        ; 4 uses
  store i64 %i.hi, ptr %i.ec, align 8, !alias.scope !2003, !noalias !1957
  call void @llvm.experimental.noalias.scope.decl(metadata !2004)
  %umax.i65.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.gd, i64 %i.hi) ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2005)
  call void @llvm.experimental.noalias.scope.decl(metadata !2006)
  %exitcond.not.i67.not.i.i.i.i.i.i.i = icmp ult i64 %i.hi, %i.gd
  br i1 %exitcond.not.i67.not.i.i.i.i.i.i.i, label %bb.bm, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hi
  %i.hk = load i8, ptr %i.hj, align 1, !noalias !2007, !noundef !7
  %i.hl = add i64 %i.ge, 2                        ; 3 uses
  store i64 %i.hl, ptr %i.ec, align 8, !alias.scope !2008, !noalias !2009
  %.not.i68.i.i.i.i.i.i.i = icmp eq i8 %i.hk, 97
  br i1 %.not.i68.i.i.i.i.i.i.i, label %bb.bn, label %.loopexit232.i.i.i.i.i.i.i, !prof !27

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !2010)
  call void @llvm.experimental.noalias.scope.decl(metadata !2011)
  %exitcond.not.i67.1.i.i.i.i.i.i.i = icmp eq i64 %i.hl, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hl
  %i.hn = load i8, ptr %i.hm, align 1, !noalias !2012, !noundef !7
  %i.ho = add i64 %i.ge, 3                        ; 3 uses
  store i64 %i.ho, ptr %i.ec, align 8, !alias.scope !2013, !noalias !2009
  %.not.i68.1.i.i.i.i.i.i.i = icmp eq i8 %i.hn, 108
  br i1 %.not.i68.1.i.i.i.i.i.i.i, label %bb.bp, label %.loopexit232.i.i.i.i.i.i.i, !prof !27

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.experimental.noalias.scope.decl(metadata !2014)
  call void @llvm.experimental.noalias.scope.decl(metadata !2015)
  %exitcond.not.i67.2.i.i.i.i.i.i.i = icmp eq i64 %i.ho, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ho
  %i.hq = load i8, ptr %i.hp, align 1, !noalias !2016, !noundef !7
  %i.hr = add i64 %i.ge, 4                        ; 3 uses
  store i64 %i.hr, ptr %i.ec, align 8, !alias.scope !2017, !noalias !2009
  %.not.i68.2.i.i.i.i.i.i.i = icmp eq i8 %i.hq, 115
  br i1 %.not.i68.2.i.i.i.i.i.i.i, label %bb.br, label %.loopexit232.i.i.i.i.i.i.i, !prof !27

bb.br:                                            ; preds = %bb.bq
  call void @llvm.experimental.noalias.scope.decl(metadata !2018)
  call void @llvm.experimental.noalias.scope.decl(metadata !2019)
  %exitcond.not.i67.3.i.i.i.i.i.i.i = icmp eq i64 %i.hr, %umax.i65.i.i.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hs = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.hr
  %i.ht = load i8, ptr %i.hs, align 1, !noalias !2020, !noundef !7
  %i.hu = add i64 %i.ge, 5
  store i64 %i.hu, ptr %i.ec, align 8, !alias.scope !2021, !noalias !2009
  %.not.i68.3.i.i.i.i.i.i.i = icmp eq i8 %i.ht, 101
  br i1 %.not.i68.3.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %.loopexit232.i.i.i.i.i.i.i, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i.i.i: ; preds = %bb.br, %bb.bp, %bb.bn, %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2022
  store i64 5, ptr %i.g, align 8, !noalias !2022
  %i.hv = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2022
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit232.i.i.i.i.i.i.i:                       ; preds = %bb.bs, %bb.bq, %bb.bo, %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2022
  store i64 9, ptr %i.f, align 8, !noalias !2022
  %i.hw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2022
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bt:                                            ; preds = %bb.aw
  %i.hx = add i64 %i.ge, 1
  store i64 %i.hx, ptr %i.ec, align 8, !alias.scope !2024, !noalias !1957
  %i.hy = call fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea), !noalias !1957 ; 2 uses
  %.not45.i.i.i.i.i.i.i = icmp eq ptr %i.hy, null
  br i1 %.not45.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bu:                                            ; preds = %bb.aw
  %i.hz = add i64 %i.ge, 1
  store i64 %i.hz, ptr %i.ec, align 8, !alias.scope !2025, !noalias !1957
  %i.ia = call noundef align 8 ptr @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb), !noalias !1957 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bv:                                            ; preds = %bb.aw, %bb.aw
  call void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i.i.i), !noalias !1957
  %i.ib = load i64, ptr %i.ec, align 8, !alias.scope !2026, !noalias !1957, !noundef !7
  %i.ic = add i64 %i.ib, 1
  store i64 %i.ic, ptr %i.ec, align 8, !alias.scope !2026, !noalias !1957
  br label %bb.bx

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i: ; preds = %bb.bz, %bb.bu, %bb.bt, %bb.bs, %bb.bk, %bb.be
  br i1 %.sroa.039.0177.i.i.i.i.i.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i
  %i.id = load i64, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957, !noundef !7 ; 2 uses
  %i.ie = icmp eq i64 %i.id, 0
  br i1 %i.ie, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbNLsQi0JuJ4_5tgrep.exit.i, label %bb.ca

bb.bx:                                            ; preds = %bb.ca, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, %bb.bv
  %.sroa.027.0.i.i.i.i.i.i.i = phi i8 [ %i.gg, %bb.bv ], [ %i.ir, %bb.ca ], [ %.sroa.7.0178.i.i.i.i.i.i.i, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i.i.i = phi i1 [ false, %bb.bv ], [ true, %bb.ca ], [ true, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i ]
  %i.if = load i64, ptr %i.fp, align 8, !alias.scope !2027, !noalias !2028, !noundef !7 ; 6 uses
  %.promoted.i73162.i.i.i.i.i.i.i = load i64, ptr %i.ec, align 8, !alias.scope !2029, !noalias !2030 ; 2 uses
  %i.ig = icmp ult i64 %.promoted.i73162.i.i.i.i.i.i.i, %i.if
  br i1 %i.ig, label %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i.i.i:                   ; preds = %bb.bx
  %.promoted.i.i.i.i.i.i.i = load i64, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957
  %i.ih = load ptr, ptr %i.eb, align 8, !alias.scope !2027, !noalias !2028, !nonnull !7, !noundef !7 ; 3 uses
  %i.ii = load i64, ptr %i.ea, align 8, !range !19, !alias.scope !1963, !noalias !1957
  %i.ij = load ptr, ptr %i.gb, align 8, !alias.scope !1963, !noalias !1957, !nonnull !7
  br label %.lr.ph.i75.i.i.i.i.i.i.i

bb.by:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1968
  store i64 10, ptr %i.r, align 8, !noalias !1968
  %i.ik = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.bz:                                            ; preds = %bb.ay
  %i.il = call fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ea), !noalias !1957 ; 2 uses
  %.not49.i.i.i.i.i.i.i = icmp eq ptr %i.il, null
  br i1 %.not49.i.i.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.i.i.i.i.i.i.i, label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

bb.ca:                                            ; preds = %bb.bw
  %i.im = add i64 %i.id, -1                       ; 3 uses
  store i64 %i.im, ptr %i.ef, align 8, !alias.scope !1963, !noalias !1957
  %i.in = load i64, ptr %i.ea, align 8, !range !19, !alias.scope !1963, !noalias !1957, !noundef !7
  %i.io = icmp ult i64 %i.im, %i.in
  call void @llvm.assume(i1 %i.io)
  %i.ip = load ptr, ptr %i.gb, align 8, !alias.scope !1963, !noalias !1957, !nonnull !7, !noundef !7
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 %i.im
  %i.ir = load i8, ptr %i.iq, align 1, !noalias !1957, !noundef !7
  br label %bb.bx

.lr.ph.i75.i.i.i.i.i.i.i:                         ; preds = %bb.cl, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.jc, %bb.cl ]
  %.sroa.042.2164.i.i.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ true, %bb.cl ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.jh, %bb.cl ] ; 6 uses
  %i.is = phi i64 [ %.promoted.i.i.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i.i.i ], [ %i.je, %bb.cl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2031)
  br label %bb.cb

bb.cb:                                            ; preds = %bb.cc, %.lr.ph.i75.i.i.i.i.i.i.i
  %i.it = phi i64 [ %.promoted.i73170.i.i.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i.i.i ], [ %i.iw, %bb.cc ] ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2032)
  call void @llvm.experimental.noalias.scope.decl(metadata !2033)
  %i.iu = getelementptr inbounds nuw i8, ptr %i.ih, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !noalias !2034, !noundef !7
  switch i8 %i.iv, label %.loopexit.i.i.i.i.i.i.i [
    i8 32, label %bb.cc
    i8 10, label %bb.cc
    i8 9, label %bb.cc
    i8 13, label %bb.cc
    i8 44, label %bb.cg
    i8 93, label %bb.ch
    i8 125, label %bb.ci
  ]

bb.cc:                                            ; preds = %bb.cb, %bb.cb, %bb.cb, %bb.cb
  %i.iw = add i64 %i.it, 1                        ; 3 uses
  store i64 %i.iw, ptr %i.ec, align 8, !alias.scope !2035, !noalias !2030
  %exitcond.not.i76.i.i.i.i.i.i.i = icmp eq i64 %i.iw, %i.if
  br i1 %exitcond.not.i76.i.i.i.i.i.i.i, label %.loopexit123.i.i.i.i.i.i.i, label %bb.cb

.loopexit123.i.i.i.i.i.i.i:                       ; preds = %bb.bx, %bb.cl, %bb.cc
  %.sroa.027.2159.i.i.i.i.i.i.i = phi i8 [ %i.jh, %bb.cl ], [ %.sroa.027.2163.i.i.i.i.i.i.i, %bb.cc ], [ %.sroa.027.0.i.i.i.i.i.i.i, %bb.bx ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1968
  switch i8 %.sroa.027.2159.i.i.i.i.i.i.i, label %bb.cd [
    i8 91, label %bb.cf
    i8 123, label %bb.ce
  ]

bb.cd:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @82) #23, !noalias !1957
  unreachable

bb.ce:                                            ; preds = %.loopexit123.i.i.i.i.i.i.i
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.loopexit123.i.i.i.i.i.i.i
  %storemerge.i.i.i.i.i.i.i = phi i64 [ 3, %bb.ce ], [ 2, %.loopexit123.i.i.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i.i.i, ptr %i.p, align 8, !noalias !1968
  %i.ix = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ea, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p), !noalias !1957
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1968
  br label %_RINvXs0_NvXNvNtCsbNLsQi0JuJ4_5tgrep5serves_1__NtBb_10ServerInfoNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB11_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB2F_4read7StrReadEEBd_.exit

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.ci, %bb.ch, %bb.cb
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.cm, label %.critedge.i.i.i.i.i.i.i, !prof !11

bb.cg:                                            ; preds = %bb.cb
  br i1 %.sroa.042.2164.i.i.i.i.i.i.i, label %bb.cj, label %.critedge.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %bb.cb
  %i.iy = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 91
  br i1 %i.iy, label %bb.ck, label %.loopexit.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %bb.cb
  %i.iz = icmp eq i8 %.sroa.027.2163.i.i.i.i.i.i.i, 123
end_hunk_1
begin_hunk_2_@_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsbNLsQi0JuJ4_5tgrep:bb.a
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !2345, !noundef !7
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !2346
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2347)
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
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs6MoqnCnVQOT_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !2348, !noundef !7 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !11

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2348
  store i64 14, ptr %i.a, align 8, !noalias !2348
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2348
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !11

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2348
  store i64 14, ptr %i.b, align 8, !noalias !2348
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2348
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !2347, !noalias !2349
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2347, !noalias !2349
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbNLsQi0JuJ4_5tgrep.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !31

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #21
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #0 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2408)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2409, !noalias !2410, !noundef !7 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !2409, !noalias !2410, !noundef !7 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread58

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !2409, !noalias !2410, !nonnull !7, !noundef !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !2411, !noundef !7 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !2412

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread58, !prof !27

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !2413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2414)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !2414, !noalias !2415, !nonnull !7 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2416)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2417)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !2418, !noundef !7
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !2419, !noalias !2420
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !27

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2421)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2422)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !2423, !noundef !7
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !2424, !noalias !2420
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !27

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2426)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !2427, !noundef !7
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !2428, !noalias !2420
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit, label %bb.j, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2429
  store i64 5, ptr %i.f, align 8, !noalias !2429
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2429
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2429
  store i64 9, ptr %i.e, align 8, !noalias !2429
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2429
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !2430
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2431)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !2431, !noalias !2432, !nonnull !7 ; 3 uses
  %umax.i23 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2434)
  %exitcond.not.i25.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i25.not, label %bb.l, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i28

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2435, !noundef !7
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !2436, !noalias !2437
  %.not.i26 = icmp eq i8 %i.aq, 114
  br i1 %.not.i26, label %bb.m, label %bb.q, !prof !27

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2439)
  %exitcond.not.i25.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i25.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i28, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !2440, !noundef !7
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !2441, !noalias !2437
  %.not.i26.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i26.1, label %bb.o, label %bb.q, !prof !27

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  %exitcond.not.i25.2 = icmp eq i64 %i.au, %umax.i23
  br i1 %exitcond.not.i25.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i28, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2444, !noundef !7
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !2445, !noalias !2437
  %.not.i26.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i26.2, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit29, label %bb.q, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i28: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2446
  store i64 5, ptr %i.d, align 8, !noalias !2446
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2446
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2446
  store i64 9, ptr %i.c, align 8, !noalias !2446
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2446
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !2447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2448)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !2448, !noalias !2449, !nonnull !7 ; 4 uses
  %umax.i31 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  %exitcond.not.i33.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i33.not, label %bb.s, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !2452, !noundef !7
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !2453, !noalias !2454
  %.not.i34 = icmp eq i8 %i.bd, 97
  br i1 %.not.i34, label %bb.t, label %bb.z, !prof !27

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2456)
  %exitcond.not.i33.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i33.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2457, !noundef !7
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !2458, !noalias !2454
  %.not.i34.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i34.1, label %bb.v, label %bb.z, !prof !27

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  %exitcond.not.i33.2 = icmp eq i64 %i.bh, %umax.i31
  br i1 %exitcond.not.i33.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !2461, !noundef !7
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !2462, !noalias !2454
  %.not.i34.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i34.2, label %bb.x, label %bb.z, !prof !27

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2464)
  %exitcond.not.i33.3 = icmp eq i64 %i.bk, %umax.i31
  br i1 %exitcond.not.i33.3, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !2465, !noundef !7
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !2466, !noalias !2454
  %.not.i34.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i34.3, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit37, label %bb.z, !prof !27

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2467
  store i64 5, ptr %i.b, align 8, !noalias !2467
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2467
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2467
  store i64 9, ptr %i.a, align 8, !noalias !2467
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2467
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !2468
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !23, !noundef !7
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !20

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !2469
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !15, !noundef !7
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !7, !noundef !7 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !20

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread58, %bb.ai, %bb.ag, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit37, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit29, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread58 ], [ %i.cb, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit ], [ %i.ce, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit29 ], [ %i.cg, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit37 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbNLsQi0JuJ4_5tgrep(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit29: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit37: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !7, !align !22, !noundef !7
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread58:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !23, !noundef !7
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !20

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !7, !align !22, !noundef !7
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbNLsQi0JuJ4_5tgrep.exit.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36, %bb.z, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i28, %bb.q, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i28 ], [ %i.bo, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i36 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbNLsQi0JuJ4_5tgrep(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_2
