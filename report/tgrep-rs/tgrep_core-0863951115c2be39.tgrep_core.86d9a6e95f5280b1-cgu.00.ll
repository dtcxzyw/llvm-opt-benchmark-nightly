Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.00?download=true
inline.NumInlined: 667
inline.NumDeleted: 253
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_RINvNvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB8_9MapAccesspENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess13next_key_seed12has_next_keyNtNtBa_4read9SliceReadECsbzNSmZPCnTx_10tgrep_core:bb.a

bb.e:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i8, ptr %i.u, align 8, !range !15, !noundef !6
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = icmp eq i8 %i.p, 44
  br i1 %i.x, label %bb.h, label %bb.j, !prof !16

bb.g:                                             ; preds = %bb.e
  store i8 0, ptr %i.u, align 8
  %i.y = icmp eq i8 %i.p, 34
  br i1 %i.y, label %bb.n, label %bb.o, !prof !16

bb.h:                                             ; preds = %bb.f
  %i.z = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.z, ptr %i.h, align 8, !alias.scope !288
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.aa = icmp ult i64 %i.z, %i.j
  br i1 %i.aa, label %.lr.ph.i7, label %.loopexit

.lr.ph.i7:                                        ; preds = %bb.h, %bb.i
  %i.ab = phi i64 [ %i.ae, %bb.i ], [ %i.z, %bb.h ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !290, !noundef !6
  switch i8 %i.ad, label %bb.k [
    i8 32, label %bb.i
    i8 10, label %bb.i
    i8 9, label %bb.i
    i8 13, label %bb.i
    i8 34, label %bb.l
    i8 125, label %bb.m
  ], !prof !18

bb.i:                                             ; preds = %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7, %.lr.ph.i7
  %i.ae = add i64 %i.ab, 1                        ; 3 uses
  store i64 %i.ae, ptr %i.h, align 8, !alias.scope !291, !noalias !292
  %exitcond.not.i8 = icmp eq i64 %i.ae, %i.j
  br i1 %exitcond.not.i8, label %.loopexit, label %.lr.ph.i7

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 8, ptr %i.a, align 8
  %i.af = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8
  br label %bb.p

.loopexit:                                        ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.ah = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.ai, align 8
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph.i7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 17, ptr %i.c, align 8
  %i.aj = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
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
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
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
  %i.ap = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
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
define internal fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 6 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [16 x i8], align 8                ; 6 uses
  %i.o = alloca [32 x i8], align 8                ; 6 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 7 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.24 = alloca [6 x i8], align 2            ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !402)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !404, !noalias !405, !noundef !6 ; 8 uses
  %.promoted.i43 = load i64, ptr %i.ab, align 8, !alias.scope !403, !noalias !406 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i43, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !404, !noalias !405, !nonnull !6, !noundef !6 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i43, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !407), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !408), !noalias !401
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !409, !noundef !6 ; 3 uses
  switch i8 %i.aj, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !410, !noalias !406
  %exitcond.not.i44 = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i44, label %.loopexit, label %bb.b

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !411
  store i64 5, ptr %i.aa, align 8, !noalias !411
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !noalias !401, !inline_history !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !411
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !401, !noalias !402
  store i8 -1, ptr %0, align 8, !alias.scope !401, !noalias !402
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit
  %i.an = add i8 %i.aj, -48
  %or.cond8.i = icmp ult i8 %i.an, 10
  br i1 %or.cond8.i, label %bb.cf, label %bb.ce, !prof !19

bb.e:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit
  %i.ao = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !412, !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !413)
  %umax.i36 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !414), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415), !noalias !401
  %exitcond.not.i38.not = icmp ult i64 %i.ao, %i.ad
  br i1 %exitcond.not.i38.not, label %bb.f, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i41

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !416, !noundef !6
  %i.ar = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !417, !noalias !418
  %.not.i39 = icmp eq i8 %i.aq, 117
  br i1 %.not.i39, label %bb.g, label %bb.k, !prof !20

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420), !noalias !401
  %exitcond.not.i38.1 = icmp eq i64 %i.ar, %umax.i36
  br i1 %exitcond.not.i38.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i41, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !421, !noundef !6
  %i.au = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !422, !noalias !418
  %.not.i39.1 = icmp eq i8 %i.at, 108
  br i1 %.not.i39.1, label %bb.i, label %bb.k, !prof !20

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !423), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !424), !noalias !401
  %exitcond.not.i38.2 = icmp eq i64 %i.au, %umax.i36
  br i1 %exitcond.not.i38.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i41, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !425, !noundef !6
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !426, !noalias !418
  %.not.i39.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i39.2, label %.thread, label %bb.k, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i41: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !427
  store i64 5, ptr %i.f, align 8, !noalias !427
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !427
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !427
  store i64 9, ptr %i.e, align 8, !noalias !427
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !427
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !429, !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %umax.i28 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432), !noalias !401
  %exitcond.not.i30.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i30.not, label %bb.m, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i33

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !433, !noundef !6
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !434, !noalias !435
  %.not.i31 = icmp eq i8 %i.bc, 114
  br i1 %.not.i31, label %bb.n, label %bb.r, !prof !20

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !436), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437), !noalias !401
  %exitcond.not.i30.1 = icmp eq i64 %i.bd, %umax.i28
  br i1 %exitcond.not.i30.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i33, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !438, !noundef !6
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !439, !noalias !435
  %.not.i31.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i31.1, label %bb.p, label %bb.r, !prof !20

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !441), !noalias !401
  %exitcond.not.i30.2 = icmp eq i64 %i.bg, %umax.i28
  br i1 %exitcond.not.i30.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i33, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !442, !noundef !6
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !443, !noalias !435
  %.not.i31.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i31.2, label %.thread, label %bb.r, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i33: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !444
  store i64 5, ptr %i.h, align 8, !noalias !444
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !444
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !444
  store i64 9, ptr %i.g, align 8, !noalias !444
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !444
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core.exit
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !446, !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !448), !noalias !401
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449), !noalias !401
  %exitcond.not.i.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !450, !noundef !6
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !451, !noalias !452
  %.not.i26 = icmp eq i8 %i.bo, 97
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
end_hunk_0
begin_hunk_1_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_mapINtNvXs3e_NtB1j_5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtB1j_11Deserialize11deserialize10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtB2O_4hash6random11RandomStateEEB52_:bb.a
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi43.i, %bb.r ], [ %i.bp, %bb.s ], [ %lpad.loopexit.i, %.loopexit.i22 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j)
          to label %common.resume unwind label %bb.x, !noalias !828

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.i: ; preds = %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2W_.exit.i.i.i
  %i.bs = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !836, !noundef !6
  %i.bt = load i64, ptr %i.ap, align 8, !noalias !836, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !836
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !851 ; 2 uses
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !851 ; 2 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !836
  switch i64 %.sroa.0.0.copyload.i, label %bb.v [
    i64 -2, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.thread.i
    i64 -1, label %.thread.i
  ]

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.thread.i: ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.i, %.noexc12.i, %bb.l, %bb.i
  %.sroa.9.020.i = phi ptr [ %i.at, %bb.i ], [ %i.az, %bb.l ], [ %i.bo, %.noexc12.i ], [ %.sroa.9.0.copyload.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.020.i) ]
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j), !noalias !828
  br label %_RINvXNvXs3e_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtBW_4hash6random11RandomStateENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB4V_4read7StrReadEEB3f_.exit

bb.v:                                             ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !827
  store i64 %.sroa.0.0.copyload.i, ptr %i.i, align 8, !noalias !827
  store ptr %.sroa.9.0.copyload.i, ptr %.sroa.3.0..sroa_idx5.i, align 8, !noalias !827
  store i64 %.sroa.13.0.copyload.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx5.sroa_idx.i, align 8, !noalias !827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !827
  invoke void @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateE6insertB1t_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.i, i64 noundef %i.bs, i64 noundef %i.bt)
          to label %bb.w unwind label %.loopexit.i22, !noalias !828

.thread.i:                                        ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.i, %bb.j
  %.sroa.024.0.copyload25 = load ptr, ptr %i.j, align 8, !noalias !852
  %.sroa.626.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.626.0.copyload28 = load ptr, ptr %.sroa.626.0..sroa_idx27, align 8, !noalias !852
  %.sroa.7.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx29, i64 32, i1 false), !noalias !852
  br label %_RINvXNvXs3e_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtBW_4hash6random11RandomStateENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB4V_4read7StrReadEEB3f_.exit

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !827
  br label %bb.h

bb.x:                                             ; preds = %.body.i
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !828
  unreachable

common.resume:                                    ; preds = %bb.y, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.by, %bb.y ]
  resume { ptr, i32 } %common.resume.op

_RINvXNvXs3e_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtBW_4hash6random11RandomStateENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB4V_4read7StrReadEEB3f_.exit: ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.thread.i, %.thread.i
  %.sroa.024.0 = phi ptr [ null, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.thread.i ], [ %.sroa.024.0.copyload25, %.thread.i ]
  %.sroa.626.0 = phi ptr [ %.sroa.9.020.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEB2F_.exit.thread.i ], [ %.sroa.626.0.copyload28, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !827
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bv = load i8, ptr %i.ab, align 8, !noundef !6
  %i.bw = add i8 %i.bv, 1
  store i8 %i.bw, ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr %.sroa.024.0, ptr %i.l, align 8
  %.sroa.626.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %.sroa.626.0, ptr %.sroa.626.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7, i64 32, i1 false)
  %i.bx = invoke noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_mapCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.z unwind label %bb.y       ; 5 uses

bb.y:                                             ; preds = %_RINvXNvXs3e_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtBW_4hash6random11RandomStateENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB4V_4read7StrReadEEB3f_.exit
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampENtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEEB2y_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.l) #16
          to label %common.resume unwind label %bb.ab

bb.z:                                             ; preds = %_RINvXNvXs3e_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMappppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampNtNtNtBW_4hash6random11RandomStateENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB4V_4read7StrReadEEB3f_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store ptr %i.bx, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ca = load ptr, ptr %i.m, align 8, !noundef !6 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not = icmp eq ptr %i.bx, null
  br i1 %.not, label %bb.ae, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit: ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  %.not42 = icmp eq ptr %i.bx, null
  br i1 %.not42, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread87, label %bb.ac

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread87: ; preds = %bb.ac, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ad

bb.ac:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.bx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread87

bb.ad:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread87, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread, %bb.e
  %.sroa.8.1 = phi ptr [ %i.cd, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread87 ], [ %i.af, %bb.e ], [ %i.bx, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map7HashMapNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsbzNSmZPCnTx_10tgrep_core4meta9FileStampEEB2c_.exit.thread.thread ]
  %i.cf = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias noundef nonnull align 8 %.sroa.8.1, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cf, ptr %i.cg, align 8
  store ptr null, ptr %0, align 8
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.514.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5.0..sroa_idx, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  store ptr %i.ca, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.4.0.copyload, ptr %.sroa.413.0..sroa_idx, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %.loopexit, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer16deserialize_boolNtNtB1j_5impls11BoolVisitorECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !897, !noalias !898, !noundef !6 ; 6 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !896, !noalias !899 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !897, !noalias !898, !nonnull !6, !noundef !6 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.m = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !900)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !901)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !902, !noundef !6
  switch i8 %i.o, label %bb.u [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 116, label %bb.d
    i8 102, label %bb.k
  ], !prof !28

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !903, !noalias !899
  %exitcond.not.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.f, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !904
  tail call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !906)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %exitcond.not.i9.not = icmp ult i64 %i.s, %i.i
  br i1 %exitcond.not.i9.not, label %bb.e, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !908, !noundef !6
  %i.v = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !909, !noalias !910
  %.not.i = icmp eq i8 %i.u, 114
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !20

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !911)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !912)
  %exitcond.not.i9.1 = icmp eq i64 %i.v, %umax.i
  br i1 %exitcond.not.i9.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !913, !noundef !6
  %i.y = add i64 %i.m, 3                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !914, !noalias !910
  %.not.i.1 = icmp eq i8 %i.x, 117
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !20

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !915)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !916)
  %exitcond.not.i9.2 = icmp eq i64 %i.y, %umax.i
  br i1 %exitcond.not.i9.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !917, !noundef !6
  %i.ab = add i64 %i.m, 4
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !918, !noalias !910
  %.not.i.2 = icmp eq i8 %i.aa, 101
  br i1 %.not.i.2, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.j, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !919
  store i64 5, ptr %i.e, align 8, !noalias !919
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !919
  br label %bb.t

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !919
  store i64 9, ptr %i.d, align 8, !noalias !919
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !919
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ae = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !921
  tail call void @llvm.experimental.noalias.scope.decl(metadata !922)
  %umax.i12 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.ae) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !923)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !924)
  %exitcond.not.i14.not = icmp ult i64 %i.ae, %i.i
  br i1 %exitcond.not.i14.not, label %bb.l, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !925, !noundef !6
  %i.ah = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !926, !noalias !927
  %.not.i15 = icmp eq i8 %i.ag, 97
  br i1 %.not.i15, label %bb.m, label %bb.s, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !929)
  %exitcond.not.i14.1 = icmp eq i64 %i.ah, %umax.i12
  br i1 %exitcond.not.i14.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !930, !noundef !6
  %i.ak = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !931, !noalias !927
  %.not.i15.1 = icmp eq i8 %i.aj, 108
  br i1 %.not.i15.1, label %bb.o, label %bb.s, !prof !20

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %exitcond.not.i14.2 = icmp eq i64 %i.ak, %umax.i12
  br i1 %exitcond.not.i14.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !934, !noundef !6
  %i.an = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !935, !noalias !927
  %.not.i15.2 = icmp eq i8 %i.am, 115
  br i1 %.not.i15.2, label %bb.q, label %bb.s, !prof !20

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %exitcond.not.i14.3 = icmp eq i64 %i.an, %umax.i12
  br i1 %exitcond.not.i14.3, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !938, !noundef !6
  %i.aq = add i64 %i.m, 5
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !939, !noalias !927
  %.not.i15.3 = icmp eq i8 %i.ap, 101
  br i1 %.not.i15.3, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.s, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18: ; preds = %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !940
  store i64 5, ptr %i.c, align 8, !noalias !940
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !940
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !940
  store i64 9, ptr %i.b, align 8, !noalias !940
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !941
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !940
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18, %bb.s
  %.sroa.0.1.i17.ph.sink = phi ptr [ %i.as, %bb.s ], [ %i.ar, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i18 ], [ %i.ac, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ad, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i17.ph.sink, ptr %i.at, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
  %i.av = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  br label %bb.v

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.r, %bb.i
  %.sroa.7.0 = phi i8 [ 1, %bb.i ], [ 0, %bb.r ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0, ptr %i.ax, align 1
  br label %bb.v

bb.v:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, %bb.u, %.loopexit, %bb.t
  %storemerge.sink = phi i8 [ 1, %bb.t ], [ 1, %.loopexit ], [ 0, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit ], [ 1, %bb.u ]
  store i8 %storemerge.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer17deserialize_tupleINtNtB1j_5impls12ArrayVisitorAhj20_EECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 33 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 36 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !961)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !964, !noalias !965, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.ak, align 8, !alias.scope !966, !noalias !967 ; 2 uses
  %i.an = icmp ult i64 %.promoted.i.i, %i.am
  br i1 %i.an, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !964, !noalias !965, !nonnull !6, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.aq = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.at, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !970, !noundef !6
  switch i8 %i.as, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !26

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !alias.scope !971, !noalias !967
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.am
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !972
  store i64 5, ptr %i.aj, align 8, !noalias !972
  %i.au = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aj), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !972
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !961, !noalias !962
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_seqINtNtB1j_5impls12ArrayVisitorAhj20_EECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 8, !alias.scope !962, !noalias !961, !noundef !6
  %i.ay = add i8 %i.ax, -1                        ; 2 uses
  store i8 %i.ay, ptr %i.aw, align 8, !alias.scope !962, !noalias !961
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.f, label %bb.g, !prof !22

bb.e:                                             ; preds = %bb.b
  %i.ba = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31), !noalias !961
  br label %.thread96.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !972
  store i64 24, ptr %i.ai, align 8, !noalias !972
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai), !noalias !961
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !972
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !961, !noalias !962
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_seqINtNtB1j_5impls12ArrayVisitorAhj20_EECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.d
  %i.bd = add i64 %i.aq, 1
end_hunk_1
begin_hunk_2_@_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_mapINtNvXs3d_NtB1l_5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtB1l_11Deserialize11deserialize10MapVisitorNtNtB2Q_6string6StringbEECsbzNSmZPCnTx_10tgrep_core:bb.a
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.i, %.loopexit.i19, %bb.s, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %lpad.phi34.i, %bb.r ], [ %i.bk, %bb.s ], [ %lpad.loopexit.i, %.loopexit.i19 ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.x, !noalias !2071

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.i: ; preds = %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatabEECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i
  %i.bn = load i8, ptr %i.ak, align 1, !range !15, !noalias !2075, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2075
  %.sroa.0.0.copyload.i = load i64, ptr %i.g, align 8, !noalias !2089 ; 2 uses
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i, align 8, !noalias !2089 ; 2 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i.i.i, align 8, !noalias !2089
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2075
  switch i64 %.sroa.0.0.copyload.i, label %bb.v [
    i64 -2, label %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.thread.i
    i64 -1, label %.thread.i
  ]

_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.thread.i: ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.i, %.noexc7.i, %bb.l, %bb.i
  %.sroa.9.014.i = phi ptr [ %i.ao, %bb.i ], [ %i.au, %bb.l ], [ %i.bj, %.noexc7.i ], [ %.sroa.9.0.copyload.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.014.i) ]
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !2071
  br label %_RINvXNvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringbENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB3r_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit

bb.v:                                             ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2066
  store i64 %.sroa.0.0.copyload.i, ptr %i.h, align 8, !noalias !2066
  store ptr %.sroa.9.0.copyload.i, ptr %.sroa.3.0..sroa_idx2.i, align 8, !noalias !2066
  store i64 %.sroa.13.0.copyload.i, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx2.sroa_idx.i, align 8, !noalias !2066
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = invoke noundef i8 @_RNvMsi_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringbE6insertCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, i1 noundef zeroext %i.bo)
          to label %bb.w unwind label %.loopexit.i19, !noalias !2071 ; 0 uses

.thread.i:                                        ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.i, %bb.j
  %.sroa.623.8.copyload = load ptr, ptr %i.i, align 8, !noalias !2090
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.8..sroa_idx, i64 16, i1 false), !noalias !2090
  br label %_RINvXNvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringbENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB3r_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2066
  br label %bb.h

bb.x:                                             ; preds = %.body.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17, !noalias !2071
  unreachable

common.resume:                                    ; preds = %bb.y, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bu, %bb.y ]
  resume { ptr, i32 } %common.resume.op

_RINvXNvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringbENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB3r_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.thread.i, %.thread.i
  %.sroa.022.0 = phi i64 [ 1, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.thread.i ], [ 0, %.thread.i ]
  %.sroa.623.0 = phi ptr [ %.sroa.9.014.i, %_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_entryNtNtCsgCecv3eZDcN_5alloc6string6StringbECsbzNSmZPCnTx_10tgrep_core.exit.thread.i ], [ %.sroa.623.8.copyload, %.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2066
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.br = load i8, ptr %i.z, align 8, !noundef !6
  %i.bs = add i8 %i.br, 1
  store i8 %i.bs, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i64 %.sroa.022.0, ptr %i.k, align 8
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.623.0, ptr %.sroa.623.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  %i.bt = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE7end_mapCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %1)
          to label %bb.z unwind label %bb.y       ; 5 uses

bb.y:                                             ; preds = %_RINvXNvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringbENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB3r_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtB16_6string6StringbENtNtCs6MoqnCnVQOT_10serde_json5error5ErrorEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(32) %i.k) #16
          to label %common.resume unwind label %bb.ab

bb.z:                                             ; preds = %_RINvXNvXs3d_NtNtCs4ZeZeX9PAiK_10serde_core2de5implsINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapppENtBc_11Deserialize11deserializeINtB3_10MapVisitorNtNtBW_6string6StringbENtBc_7Visitor9visit_mapINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB3r_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr %i.bt, ptr %i.bv, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.bw = load i64, ptr %i.l, align 8, !range !9, !noundef !6
  %i.bx = trunc nuw i64 %i.bw to i1
  br i1 %i.bx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not = icmp eq ptr %i.bt, null
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %.not, label %bb.ad, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.thread.thread, !prof !27

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.z
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !6, !align !14, !noundef !6 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %.not37 = icmp eq ptr %i.bt, null
  br i1 %.not37, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.thread.thread82, label %.split

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.thread.thread82: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ac

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.thread.thread: ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @_RNvXNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringbENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.y
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable

.split:                                           ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ac

bb.ac:                                            ; preds = %.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.thread.thread82, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.thread.thread, %bb.e
  %.sroa.7.1 = phi ptr [ %i.ca, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.thread.thread82 ], [ %i.ad, %bb.e ], [ %i.bt, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map8BTreeMapNtNtBK_6string6StringbEECsbzNSmZPCnTx_10tgrep_core.exit.thread.thread ], [ %i.ca, %.split ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias noundef nonnull align 8 %.sroa.7.1, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.aa
  %.sroa.08.0.copyload = load ptr, ptr %i.by, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %.loopexit, %bb.f
  %.sink.sink = phi ptr [ %i.ae, %bb.f ], [ %i.y, %.loopexit ], [ %i.cc, %bb.ac ], [ %.sroa.08.0.copyload, %bb.ad ]
  %storemerge.sink = phi i64 [ 1, %bb.f ], [ 1, %.loopexit ], [ 1, %bb.ac ], [ 0, %bb.ad ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.sink, ptr %i.cd, align 8
  store i64 %storemerge.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer16deserialize_boolNtNtB1l_5impls11BoolVisitorECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2120)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !2121, !noalias !2122, !noundef !6 ; 6 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !2120, !noalias !2123 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !2121, !noalias !2122, !nonnull !6, !noundef !6 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.m = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !2125, !noundef !6
  switch i8 %i.o, label %bb.u [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 116, label %bb.d
    i8 102, label %bb.k
  ], !prof !28

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !2126, !noalias !2123
  %exitcond.not.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.f, align 8
  %i.q = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.s = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.s, ptr %i.g, align 8, !alias.scope !2127
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2128)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.s) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  %exitcond.not.i9.not = icmp ult i64 %i.s, %i.i
  br i1 %exitcond.not.i9.not, label %bb.e, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !2130, !noundef !6
  %i.v = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !2131, !noalias !2132
  %.not.i = icmp eq i8 %i.u, 114
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !20

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2133)
  %exitcond.not.i9.1 = icmp eq i64 %i.v, %umax.i
  br i1 %exitcond.not.i9.1, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !2134, !noundef !6
  %i.y = add i64 %i.m, 3                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !2135, !noalias !2132
  %.not.i.1 = icmp eq i8 %i.x, 117
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !20

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  %exitcond.not.i9.2 = icmp eq i64 %i.y, %umax.i
  br i1 %exitcond.not.i9.2, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !2137, !noundef !6
  %i.ab = add i64 %i.m, 4
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !2138, !noalias !2132
  %.not.i.2 = icmp eq i8 %i.aa, 101
  br i1 %.not.i.2, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.j, !prof !20

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2139
  store i64 5, ptr %i.e, align 8, !noalias !2139
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2139
  br label %bb.t

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2139
  store i64 9, ptr %i.d, align 8, !noalias !2139
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2139
  br label %bb.t

bb.k:                                             ; preds = %bb.b
  %i.ae = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !2141
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2142)
  %umax.i12 = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.ae) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2143)
  %exitcond.not.i14.not = icmp ult i64 %i.ae, %i.i
  br i1 %exitcond.not.i14.not, label %bb.l, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !2144, !noundef !6
  %i.ah = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !2145, !noalias !2146
  %.not.i15 = icmp eq i8 %i.ag, 97
  br i1 %.not.i15, label %bb.m, label %bb.s, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  %exitcond.not.i14.1 = icmp eq i64 %i.ah, %umax.i12
  br i1 %exitcond.not.i14.1, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !2148, !noundef !6
  %i.ak = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !2149, !noalias !2146
  %.not.i15.1 = icmp eq i8 %i.aj, 108
  br i1 %.not.i15.1, label %bb.o, label %bb.s, !prof !20

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2150)
  %exitcond.not.i14.2 = icmp eq i64 %i.ak, %umax.i12
  br i1 %exitcond.not.i14.2, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !2151, !noundef !6
  %i.an = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !2152, !noalias !2146
  %.not.i15.2 = icmp eq i8 %i.am, 115
  br i1 %.not.i15.2, label %bb.q, label %bb.s, !prof !20

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  %exitcond.not.i14.3 = icmp eq i64 %i.an, %umax.i12
  br i1 %exitcond.not.i14.3, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !2154, !noundef !6
  %i.aq = add i64 %i.m, 5
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !2155, !noalias !2146
  %.not.i15.3 = icmp eq i8 %i.ap, 101
  br i1 %.not.i15.3, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.s, !prof !20

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18: ; preds = %bb.q, %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2156
  store i64 5, ptr %i.c, align 8, !noalias !2156
  %i.ar = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2156
  br label %bb.t

bb.s:                                             ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2156
  store i64 9, ptr %i.b, align 8, !noalias !2156
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2156
  br label %bb.t

bb.t:                                             ; preds = %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18, %bb.s
  %.sroa.0.1.i17.ph.sink = phi ptr [ %i.as, %bb.s ], [ %i.ar, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i18 ], [ %i.ac, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ad, %bb.j ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i17.ph.sink, ptr %i.at, align 8
  br label %bb.v

bb.u:                                             ; preds = %bb.b
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36)
  %i.av = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias noundef nonnull align 8 %i.au, ptr noundef nonnull readonly align 8 dereferenceable(56) %1)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8
  br label %bb.v

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.r, %bb.i
  %.sroa.7.0 = phi i8 [ 1, %bb.i ], [ 0, %bb.r ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.7.0, ptr %i.ax, align 1
  br label %bb.v

bb.v:                                             ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, %bb.u, %.loopexit, %bb.t
  %storemerge.sink = phi i8 [ 1, %bb.t ], [ 1, %.loopexit ], [ 0, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit ], [ 1, %bb.u ]
  store i8 %storemerge.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer17deserialize_tupleINtNtB1l_5impls12ArrayVisitorAhj20_EECsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(56) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 33 uses
  %i.b = alloca [16 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 8 uses
  %i.n = alloca [16 x i8], align 8                ; 8 uses
  %i.o = alloca [16 x i8], align 8                ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 8 uses
  %i.r = alloca [16 x i8], align 8                ; 8 uses
  %i.s = alloca [16 x i8], align 8                ; 8 uses
  %i.t = alloca [16 x i8], align 8                ; 8 uses
  %i.u = alloca [16 x i8], align 8                ; 8 uses
  %i.v = alloca [16 x i8], align 8                ; 8 uses
  %i.w = alloca [16 x i8], align 8                ; 8 uses
  %i.x = alloca [16 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 8 uses
  %i.aa = alloca [16 x i8], align 8               ; 8 uses
  %i.ab = alloca [16 x i8], align 8               ; 8 uses
  %i.ac = alloca [16 x i8], align 8               ; 8 uses
  %i.ad = alloca [16 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 8 uses
  %i.af = alloca [16 x i8], align 8               ; 8 uses
  %i.ag = alloca [16 x i8], align 8               ; 7 uses
  %i.ah = alloca [16 x i8], align 8               ; 36 uses
  %i.ai = alloca [24 x i8], align 8               ; 4 uses
  %i.aj = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !2177, !noalias !2178, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.ak, align 8, !alias.scope !2179, !noalias !2180 ; 2 uses
  %i.an = icmp ult i64 %.promoted.i.i, %i.am
  br i1 %i.an, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !2177, !noalias !2178, !nonnull !6, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.aq = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.at, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2181)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !2182, !noundef !6
  switch i8 %i.as, label %bb.e [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 91, label %bb.d
  ], !prof !26

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.at = add i64 %i.aq, 1                        ; 3 uses
  store i64 %i.at, ptr %i.ak, align 8, !alias.scope !2183, !noalias !2180
  %exitcond.not.i.i = icmp eq i64 %i.at, %i.am
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2184
  store i64 5, ptr %i.aj, align 8, !noalias !2184
  %i.au = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.aj), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2184
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.au, ptr %i.av, align 8, !alias.scope !2174, !noalias !2175
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_seqINtNtB1l_5impls12ArrayVisitorAhj20_EECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ax = load i8, ptr %i.aw, align 8, !alias.scope !2175, !noalias !2174, !noundef !6
  %i.ay = add i8 %i.ax, -1                        ; 2 uses
  store i8 %i.ay, ptr %i.aw, align 8, !alias.scope !2175, !noalias !2174
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.f, label %bb.g, !prof !22

bb.e:                                             ; preds = %bb.b
  %i.ba = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @31), !noalias !2174
  br label %.thread96.i

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2184
  store i64 24, ptr %i.ai, align 8, !noalias !2184
  %i.bb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ai), !noalias !2174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2184
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !2174, !noalias !2175
  br label %_RINvXs5_NtCs6MoqnCnVQOT_10serde_json2deQINtB6_12DeserializerNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de12Deserializer15deserialize_seqINtNtB1l_5impls12ArrayVisitorAhj20_EECsbzNSmZPCnTx_10tgrep_core.exit

bb.g:                                             ; preds = %bb.d
  %i.bd = add i64 %i.aq, 1
  store i64 %i.bd, ptr %i.ak, align 8, !alias.scope !2185, !noalias !2174
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2184
  store ptr %1, ptr %i.ah, align 8, !noalias !2186
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i8 1, ptr %i.be, align 8, !noalias !2186
end_hunk_2
begin_hunk_3_@_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB8_5value5ValueEECsbzNSmZPCnTx_10tgrep_core:bb.a
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !align !14, !noundef !6 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2502)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2503)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !2504, !noalias !2505, !noundef !6 ; 2 uses
  %.promoted.i.i = load i64, ptr %i.d, align 8, !alias.scope !2506, !noalias !2507 ; 2 uses
  %i.g = icmp ult i64 %.promoted.i.i, %i.f
  br i1 %i.g, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2504, !noalias !2505, !nonnull !6, !noundef !6
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.j = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2508)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2509)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !2510, !noundef !6
  switch i8 %i.l, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.f
  ], !prof !26

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.d, align 8, !alias.scope !2511, !noalias !2507
  %exitcond.not.i.i = icmp eq i64 %i.m, %i.f
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2502
  store i64 3, ptr %i.a, align 8, !noalias !2502
  %i.n = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2502
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2502
  store i64 6, ptr %i.b, align 8, !noalias !2502
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2502
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.loopexit.i
  %.sroa.0.0.i.ph = phi ptr [ %i.n, %.loopexit.i ], [ %i.o, %bb.d ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.ph, ptr %i.p, align 8
  store i8 -1, ptr %0, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.q = add i64 %i.j, 1
  store i64 %i.q, ptr %i.d, align 8, !alias.scope !2512
  tail call fastcc void @_RINvXNtNtCs6MoqnCnVQOT_10serde_json5value2deNtB5_5ValueNtNtCs4ZeZeX9PAiK_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c) #20, !inline_history !0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbzNSmZPCnTx_10tgrep_core(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2643)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2644, !noalias !2645, !noundef !6 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !2646, !noalias !2647 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2644, !noalias !2645, !nonnull !6, !noundef !6 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2648)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2649)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !2650, !noundef !6
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !26

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !2651, !noalias !2647
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2642
  store i64 3, ptr %i.o, align 8, !noalias !2642
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2642
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2642
  store i64 6, ptr %i.p, align 8, !noalias !2642
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2642
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !2652
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2654)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2655)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2656)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !2657
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i179.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2658)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !2659, !noundef !6 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !2660, !noalias !2661
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2657
  store i64 5, ptr %i.n, align 8, !noalias !2657
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2657
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !2662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2663)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2665)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2666, !noundef !6
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !2667, !noalias !2668
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2669)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2670)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !2671, !noundef !6
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !2672, !noalias !2668
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2673)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2674)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2675, !noundef !6
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !2676, !noalias !2668
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2677
  store i64 5, ptr %i.f, align 8, !noalias !2677
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2677
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2677
  store i64 9, ptr %i.e, align 8, !noalias !2677
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2677
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !2679
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2680)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2682)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2683, !noundef !6
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !2684, !noalias !2685
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !20

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2687)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2688, !noundef !6
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !2689, !noalias !2685
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !20

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2690)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2691)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2692, !noundef !6
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !2693, !noalias !2685
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2694
  store i64 5, ptr %i.d, align 8, !noalias !2694
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2694
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2694
  store i64 9, ptr %i.c, align 8, !noalias !2694
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2694
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !2696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2697)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2699)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !2700, !noundef !6
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !2701, !noalias !2702
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !20

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2703)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2705, !noundef !6
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !2706, !noalias !2702
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !20

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2707)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2708)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !2709, !noundef !6
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !2710, !noalias !2702
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !20

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2712)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !2713, !noundef !6
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !2714, !noalias !2702
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2715
  store i64 5, ptr %i.b, align 8, !noalias !2715
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2715
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2715
  store i64 9, ptr %i.a, align 8, !noalias !2715
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2716
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2715
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !2717
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !2718
  %i.ce = tail call noundef align 8 ptr @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !2719, !noundef !6
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !2719
  br label %bb.ag

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !2657, !noundef !6 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.cv, %bb.aj ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !2720, !noalias !2721, !noundef !6 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !2722, !noalias !2723 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !2657
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !2720, !noalias !2721, !nonnull !6, !noundef !6 ; 3 uses
  %i.cm = load i64, ptr %.0.val, align 8, !range !23, !alias.scope !2657
  %i.cn = load ptr, ptr %i.af, align 8, !alias.scope !2657, !nonnull !6
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2657
  store i64 10, ptr %i.m, align 8, !noalias !2657
  %i.co = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2657
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ai:                                            ; preds = %bb.h
  %i.cp = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.aj:                                            ; preds = %bb.af
  %i.cq = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.cq, ptr %i.ad, align 8, !alias.scope !2657
  %i.cr = load i64, ptr %.0.val, align 8, !range !23, !alias.scope !2657, !noundef !6
  %i.cs = icmp ult i64 %i.cq, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load ptr, ptr %i.af, align 8, !alias.scope !2657, !nonnull !6, !noundef !6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !6
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.di, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2724)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.da, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2725)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2726)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !2727, !noundef !6
  switch i8 %i.cz, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.da = add i64 %i.cx, 1                        ; 3 uses
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !2728, !noalias !2723
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2657
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #21
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !2657
  %i.db = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2657
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !22

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.dc, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.dd = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
end_hunk_3
begin_hunk_4_@_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECsbzNSmZPCnTx_10tgrep_core:bb.a
  %i.dy = load ptr, ptr %i.u, align 8, !alias.scope !2737, !noalias !2738, !nonnull !6, !noundef !6 ; 2 uses
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bc, %.lr.ph.i89.i.i.i.i.i
  %i.dz = phi i64 [ %.promoted.i87.i.i.i.i.i, %.lr.ph.i89.i.i.i.i.i ], [ %i.ec, %bb.bc ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2741)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2742)
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !noalias !2743, !noundef !6
  switch i8 %i.eb, label %bb.be [
    i8 32, label %bb.bc
    i8 10, label %bb.bc
    i8 9, label %bb.bc
    i8 13, label %bb.bc
    i8 58, label %bb.bd
  ], !prof !26

bb.bc:                                            ; preds = %bb.bb, %bb.bb, %bb.bb, %bb.bb
  %i.ec = add i64 %i.dz, 1                        ; 3 uses
  store i64 %i.ec, ptr %i.q, align 8, !alias.scope !2744, !noalias !2740
  %exitcond.not.i90.i.i.i.i.i = icmp eq i64 %i.ec, %i.dw
  br i1 %exitcond.not.i90.i.i.i.i.i, label %.loopexit124.i.i.i.i.i, label %bb.bb

.loopexit124.i.i.i.i.i:                           ; preds = %bb.ba, %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2657
  store i64 3, ptr %i.g, align 8, !noalias !2657
  %i.ed = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2657
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.bd:                                            ; preds = %bb.bb
  %i.ee = add i64 %i.dz, 1                        ; 2 uses
  store i64 %i.ee, ptr %i.q, align 8, !alias.scope !2745
  br label %bb.bf

bb.be:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2657
  store i64 6, ptr %i.h, align 8, !noalias !2657
  %i.ef = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2657
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.bf:                                            ; preds = %bb.bd, %.critedge.i.i.i.i.i
  %.promoted.i.i.i.i.i.i = phi i64 [ %.promoted.i80.i.i.i.i.i, %.critedge.i.i.i.i.i ], [ %i.ee, %bb.bd ] ; 2 uses
  %i.eg = phi i64 [ %i.cj, %.critedge.i.i.i.i.i ], [ %i.dw, %bb.bd ] ; 2 uses
  %i.eh = phi ptr [ %i.cl, %.critedge.i.i.i.i.i ], [ %i.dy, %bb.bd ]
  %i.ei = icmp ult i64 %.promoted.i.i.i.i.i.i, %i.eg
  br i1 %i.ei, label %.lr.ph.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

bb.bg:                                            ; preds = %bb.av
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #21
  unreachable

bb.bh:                                            ; preds = %bb.av
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.av
  %storemerge51.i.i.i.i.i = phi i64 [ 8, %bb.bh ], [ 7, %bb.av ]
  store i64 %storemerge51.i.i.i.i.i, ptr %i.l, align 8, !noalias !2657
  %i.ej = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2657
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.ac, %bb.ad, %bb.af, %bb.ai, %bb.ay, %bb.at, %.loopexit.i.i, %bb.d, %.loopexit130.i.i.i.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, %.loopexit246.i.i.i.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, %.loopexit239.i.i.i.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, %.loopexit232.i.i.i.i.i, %bb.ah, %bb.ao, %.loopexit125.i.i.i.i.i, %bb.az, %.loopexit124.i.i.i.i.i, %bb.be, %bb.bi
  %.sroa.0.0.i = phi ptr [ null, %bb.at ], [ %i.ca, %.loopexit232.i.i.i.i.i ], [ %i.am, %.loopexit130.i.i.i.i.i ], [ %i.ej, %bb.bi ], [ %i.ay, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i ], [ %i.ed, %.loopexit124.i.i.i.i.i ], [ %i.ab, %bb.d ], [ %i.ds, %.loopexit125.i.i.i.i.i ], [ %i.db, %bb.ao ], [ %i.bl, %.loopexit239.i.i.i.i.i ], [ %i.az, %.loopexit246.i.i.i.i.i ], [ %i.ef, %bb.be ], [ %i.co, %bb.ah ], [ %i.bz, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i ], [ %i.bk, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i ], [ %i.dv, %bb.az ], [ %i.aa, %.loopexit.i.i ], [ %i.cc, %bb.ac ], [ %i.cp, %bb.ai ], [ %i.du, %bb.ay ], [ %i.ce, %bb.ad ], [ null, %bb.af ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess10next_valueNtNtB1a_11ignored_any10IgnoredAnyECsbzNSmZPCnTx_10tgrep_core(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2844)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2845)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !2846, !noalias !2847, !noundef !6 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !2848, !noalias !2849 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !2846, !noalias !2847, !nonnull !6, !noundef !6 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2850)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !2851, !noundef !6
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !26

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !2852, !noalias !2849
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !2844
  store i64 3, ptr %i.o, align 8, !noalias !2844
  %i.aa = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !2844
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !2844
  store i64 6, ptr %i.p, align 8, !noalias !2844
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !2844
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !2853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2854)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !2858
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i179.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0178.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0177.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2859)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i179.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !2860, !noundef !6 ; 3 uses
  switch i8 %i.ak, label %bb.h [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
    i8 110, label %bb.i
    i8 116, label %bb.o
    i8 102, label %bb.u
    i8 45, label %bb.ac
    i8 34, label %bb.ad
    i8 91, label %bb.ae
    i8 123, label %bb.ae
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.al = add i64 %i.ai, 1                        ; 3 uses
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !2861, !noalias !2862
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2858
  store i64 5, ptr %i.n, align 8, !noalias !2858
  %i.am = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2858
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !19

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !2863
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2864)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2865)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !2866, !noundef !6
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !2867, !noalias !2868
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit246.i.i.i.i.i, !prof !20

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2869)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !2870, !noundef !6
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !2871, !noalias !2868
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit246.i.i.i.i.i, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2872)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !2873, !noundef !6
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !2874, !noalias !2868
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %.loopexit246.i.i.i.i.i, !prof !20

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2875
  store i64 5, ptr %i.f, align 8, !noalias !2875
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2875
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit246.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2875
  store i64 9, ptr %i.e, align 8, !noalias !2875
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2876
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2875
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !2877
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2878)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2879)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !2880, !noundef !6
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !2881, !noalias !2882
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit239.i.i.i.i.i, !prof !20

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2883)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !2884, !noundef !6
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !2885, !noalias !2882
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit239.i.i.i.i.i, !prof !20

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2886)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !2887, !noundef !6
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !2888, !noalias !2882
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %.loopexit239.i.i.i.i.i, !prof !20

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2889
  store i64 5, ptr %i.d, align 8, !noalias !2889
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2889
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit239.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2889
  store i64 9, ptr %i.c, align 8, !noalias !2889
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2889
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !2891
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2892)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2893)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !2894, !noundef !6
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !2895, !noalias !2896
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit232.i.i.i.i.i, !prof !20

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2897)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !2898, !noundef !6
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !2899, !noalias !2896
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit232.i.i.i.i.i, !prof !20

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2900)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !2901, !noundef !6
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !2902, !noalias !2896
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit232.i.i.i.i.i, !prof !20

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2903)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !2904, !noundef !6
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !2905, !noalias !2896
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %.loopexit232.i.i.i.i.i, !prof !20

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2906
  store i64 5, ptr %i.b, align 8, !noalias !2906
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2906
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit232.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2906
  store i64 9, ptr %i.a, align 8, !noalias !2906
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2907
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2906
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !2908
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !2909
  %i.ce = tail call noundef align 8 ptr @_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read10ignore_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB6_3VechE14extend_trustedINtNtCsf3Ta7LF998c_4core6option8IntoIterhEECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0177.i.i.i.i.i, i8 %.sroa.7.0178.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !2910, !noundef !6
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !2910
  br label %bb.ag

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0177.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !2858, !noundef !6 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.cv, %bb.aj ], [ %.sroa.7.0178.i.i.i.i.i, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !2911, !noalias !2912, !noundef !6 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !2913, !noalias !2914 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %.promoted.i.i.i.i.i = load i64, ptr %i.ad, align 8, !alias.scope !2858
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !2911, !noalias !2912, !nonnull !6, !noundef !6 ; 3 uses
  %i.cm = load i64, ptr %.0.val, align 8, !range !23, !alias.scope !2858
  %i.cn = load ptr, ptr %i.af, align 8, !alias.scope !2858, !nonnull !6
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2858
  store i64 10, ptr %i.m, align 8, !noalias !2858
  %i.co = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2858
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.ai:                                            ; preds = %bb.h
  %i.cp = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14ignore_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cp, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i, label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

bb.aj:                                            ; preds = %bb.af
  %i.cq = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.cq, ptr %i.ad, align 8, !alias.scope !2858
  %i.cr = load i64, ptr %.0.val, align 8, !range !23, !alias.scope !2858, !noundef !6
  %i.cs = icmp ult i64 %i.cq, %i.cr
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = load ptr, ptr %i.af, align 8, !alias.scope !2858, !nonnull !6, !noundef !6
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cq
  %i.cv = load i8, ptr %i.cu, align 1, !noundef !6
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73170.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dg, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  %i.cw = phi i64 [ %.promoted.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.di, %bb.au ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2915)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cx = phi i64 [ %.promoted.i73170.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.da, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2916)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !noalias !2917, !noundef !6
  switch i8 %i.cz, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.da = add i64 %i.cx, 1                        ; 3 uses
  store i64 %i.da, ptr %i.q, align 8, !alias.scope !2918, !noalias !2914
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.da, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2858
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #21
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !2858
  %i.db = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2858
  br label %_RINvXs9_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9MapAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9MapAccess15next_value_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDataNtNtB1g_11ignored_any10IgnoredAnyEECsbzNSmZPCnTx_10tgrep_core.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !22

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.dc = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.dc, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.dd = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.dd, label %bb.at, label %.loopexit.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.de = add i64 %i.cx, 1                        ; 2 uses
  store i64 %i.de, ptr %i.q, align 8, !alias.scope !2919
end_hunk_4
begin_hunk_5_@_RINvYINtNtCs6MoqnCnVQOT_10serde_json2de9SeqAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess12next_elementhECsbzNSmZPCnTx_10tgrep_core:bb.a

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3101
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.2.0.copyload.i.i.i.i.i, ptr %i.au, align 8, !noalias !3101
  store i8 2, ptr %i.d, align 8, !noalias !3101
  %i.av = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !3102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3101
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !alias.scope !3103, !noalias !3097
  br label %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.ax = trunc nuw i64 %.sroa.2.0.copyload.i.i.i.i.i to i8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !alias.scope !3103, !noalias !3097
  br label %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i.i

_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %storemerge.i1.i.i.i.i.i.i = phi i8 [ 0, %bb.r ], [ 1, %bb.q ]
  store i8 %storemerge.i1.i.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !3103, !noalias !3097
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtB1a_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtB1a_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i: ; preds = %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i.i, %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3090
  br label %bb.s

bb.s:                                             ; preds = %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtB1a_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core.exit8.i.i.i.i.i, %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtB1a_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core.exit.i.i.i.i.i
  %i.az = load i8, ptr %i.h, align 8, !range !15, !noalias !3090, !noundef !6
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %._crit_edge.i.i.i.i.i, label %bb.af, !prof !22

._crit_edge.i.i.i.i.i:                            ; preds = %bb.s
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !3090
  br label %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread6.i

bb.t:                                             ; preds = %bb.w, %bb.j
  %.sroa.101.1.i = phi ptr [ %i.al, %bb.j ], [ %i.bh, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3090
  br label %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread.i

bb.u:                                             ; preds = %bb.i
  %i.bb = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !3091
  br label %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread6.i

bb.v:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3090
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.t, i1 noundef zeroext true), !noalias !3091
  %i.bc = load i64, ptr %i.f, align 8, !range !21, !noalias !3090, !noundef !6 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, -1
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.bd, label %bb.w, label %bb.x

_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread6.i: ; preds = %bb.u, %._crit_edge.i.i.i.i.i
  %i.bf = phi ptr [ %.pre.i.i.i.i.i, %._crit_edge.i.i.i.i.i ], [ %i.bb, %bb.u ]
  %i.bg = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias noundef nonnull align 8 %i.bf, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.t), !noalias !3091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3090
  br label %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread.i

bb.w:                                             ; preds = %bb.v
  %i.bh = load ptr, ptr %i.be, align 8, !noalias !3090, !nonnull !6, !align !14, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3090
  br label %bb.t

bb.x:                                             ; preds = %bb.v
  %.sroa.213.0.copyload.i.i.i.i.i = load i64, ptr %i.be, align 8, !noalias !3090 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3104)
  switch i64 %i.bc, label %default.unreachable [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.ac
  ]

bb.y:                                             ; preds = %bb.x
  %i.bi = bitcast i64 %.sroa.213.0.copyload.i.i.i.i.i to double
  call void @_RINvYNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBd_11Deserialize11deserialize16PrimitiveVisitorNtBd_7Visitor9visit_f64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.h, double noundef %i.bi), !noalias !3105
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtB1a_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core.exit8.i.i.i.i.i

bb.z:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3106)
  %i.bj = icmp ugt i64 %.sroa.213.0.copyload.i.i.i.i.i, 255
  br i1 %i.bj, label %bb.ab, label %bb.aa, !prof !22

bb.aa:                                            ; preds = %bb.z
  %i.bk = trunc nuw i64 %.sroa.213.0.copyload.i.i.i.i.i to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !alias.scope !3107, !noalias !3108
  br label %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i5.i.i.i.i.i

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3109
  %i.bm = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.213.0.copyload.i.i.i.i.i, ptr %i.bm, align 8, !noalias !3109
  store i8 1, ptr %i.c, align 8, !noalias !3109
  %i.bn = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !3110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3109
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !alias.scope !3107, !noalias !3108
  br label %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i5.i.i.i.i.i

_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i5.i.i.i.i.i: ; preds = %bb.ab, %bb.aa
  %storemerge.i.i6.i.i.i.i.i = phi i8 [ 0, %bb.aa ], [ 1, %bb.ab ]
  store i8 %storemerge.i.i6.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !3107, !noalias !3108
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtB1a_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core.exit8.i.i.i.i.i

bb.ac:                                            ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3111)
  %i.bp = icmp ugt i64 %.sroa.213.0.copyload.i.i.i.i.i, 255
  br i1 %i.bp, label %bb.ad, label %bb.ae, !prof !24

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3112
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.213.0.copyload.i.i.i.i.i, ptr %i.bq, align 8, !noalias !3112
  store i8 2, ptr %i.b, align 8, !noalias !3112
  %i.br = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2), !noalias !3113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3112
  %i.bs = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.br, ptr %i.bs, align 8, !alias.scope !3114, !noalias !3108
  br label %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i3.i.i.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.bt = trunc nuw i64 %.sroa.213.0.copyload.i.i.i.i.i to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  store i8 %i.bt, ptr %i.bu, align 1, !alias.scope !3114, !noalias !3108
  br label %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i3.i.i.i.i.i

_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i3.i.i.i.i.i: ; preds = %bb.ae, %bb.ad
  %storemerge.i1.i4.i.i.i.i.i = phi i8 [ 0, %bb.ae ], [ 1, %bb.ad ]
  store i8 %storemerge.i1.i4.i.i.i.i.i, ptr %i.h, align 8, !alias.scope !3114, !noalias !3108
  br label %_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtB1a_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core.exit8.i.i.i.i.i

_RINvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB6_12ParserNumber5visitNtNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtB1a_11Deserialize11deserialize16PrimitiveVisitorECsbzNSmZPCnTx_10tgrep_core.exit8.i.i.i.i.i: ; preds = %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_i64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i3.i.i.i.i.i, %_RINvXNvXsY_NtNtCs4ZeZeX9PAiK_10serde_core2de5implshNtBb_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBb_7Visitor9visit_u64NtNtCs6MoqnCnVQOT_10serde_json5error5ErrorECsbzNSmZPCnTx_10tgrep_core.exit.i5.i.i.i.i.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3090
  br label %bb.s

_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread.i: ; preds = %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread6.i, %bb.t, %.loopexit.i.i.i.i.i
  %.sroa.101.25.i = phi ptr [ %i.bg, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread6.i ], [ %i.af, %.loopexit.i.i.i.i.i ], [ %.sroa.101.1.i, %bb.t ]
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.101.25.i, ptr %i.bv, align 8, !alias.scope !3075, !noalias !3076
  store i8 1, ptr %0, align 8, !alias.scope !3075, !noalias !3076
  br label %_RINvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahEECsbzNSmZPCnTx_10tgrep_core.exit

bb.af:                                            ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !3090, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3090
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.by, align 1, !alias.scope !3075, !noalias !3076
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.bx, ptr %i.bz, align 2, !alias.scope !3075, !noalias !3076
  store i8 0, ptr %0, align 8, !alias.scope !3075, !noalias !3076
  br label %_RINvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahEECsbzNSmZPCnTx_10tgrep_core.exit

_RINvXs7_NtCs6MoqnCnVQOT_10serde_json2deINtB6_9SeqAccessNtNtB8_4read9SliceReadENtNtCs4ZeZeX9PAiK_10serde_core2de9SeqAccess17next_element_seedINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahEECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.b, %bb.d, %_RINvXs3_NtCs4ZeZeX9PAiK_10serde_core2deINtNtCsf3Ta7LF998c_4core6marker11PhantomDatahENtB6_15DeserializeSeed11deserializeQINtNtCs6MoqnCnVQOT_10serde_json2de12DeserializerNtNtB20_4read9SliceReadEECsbzNSmZPCnTx_10tgrep_core.exit.thread.i, %bb.af
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs6MoqnCnVQOT_10serde_json5error9ErrorCodeECsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #16
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #17
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !6
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %.promoted)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !3123, !noundef !6
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !3124, !noalias !3125
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !6
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !16

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12fix_positionCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias noundef nonnull align 8 %1, ptr noundef nonnull align 8 %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3149)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3150, !noalias !3151, !noundef !6 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3150, !noalias !3151, !noundef !6 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3150, !noalias !3151, !nonnull !6, !noundef !6 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !3152, !noundef !6
  switch i8 %i.o, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3154)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !3155, !noalias !3153
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !3156, !noundef !6 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3157
  store i64 13, ptr %i.d, align 8, !noalias !3157
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3157
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !3153, !noalias !3154
  store i64 1, ptr %i.f, align 8, !alias.scope !3153, !noalias !3154
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbzNSmZPCnTx_10tgrep_core.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3157
  store i64 5, ptr %i.c, align 8, !noalias !3157
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3157
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !3153, !noalias !3154
  store i64 1, ptr %i.f, align 8, !alias.scope !3153, !noalias !3154
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCsbzNSmZPCnTx_10tgrep_core.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3158)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs6MoqnCnVQOT_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !3159, !noundef !6 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3159
  store i64 14, ptr %i.a, align 8, !noalias !3159
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3160
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3159
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !3160, !noalias !3161
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !3160, !noalias !3161
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit.i
end_hunk_5
begin_hunk_6_@_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCsbzNSmZPCnTx_10tgrep_core:bb.a

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
  %i.aq = load double, ptr %i.ap, align 8, !noalias !3354, !noundef !6 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3354
  store i64 14, ptr %i.a, align 8, !noalias !3354
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3354
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !3353, !noalias !3355
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !3353, !noalias !3355
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !22

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3354
  store i64 14, ptr %i.b, align 8, !noalias !3354
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3353
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3354
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !3353, !noalias !3355
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3353, !noalias !3355
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !24

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #22
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3364, !noalias !3365, !noundef !6 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3364, !noalias !3365, !nonnull !6, !noundef !6
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !3365, !noalias !3364
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3365, !noalias !3364
  br label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %._RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !3365, !noalias !3364
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3366)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3368)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3369)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !3370, !noundef !6 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !3371
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3365, !noalias !3364
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3430)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3431, !noalias !3432, !noundef !6 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3431, !noalias !3432, !noundef !6 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !3431, !noalias !3432, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !3433, !noundef !6 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !31

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !20

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !3434
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3435)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !3435, !noalias !3436, !nonnull !6 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3438)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !3439, !noundef !6
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !3440, !noalias !3441
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !20

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3443)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !3444, !noundef !6
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !3445, !noalias !3441
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !20

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3446)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !3448, !noundef !6
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !3449, !noalias !3441
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.j, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3450
  store i64 5, ptr %i.f, align 8, !noalias !3450
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3450
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3450
  store i64 9, ptr %i.e, align 8, !noalias !3450
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3450
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !3451
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3452)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !3452, !noalias !3453, !nonnull !6 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3455)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3456, !noundef !6
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !3457, !noalias !3458
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3461, !noundef !6
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !3462, !noalias !3458
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !20

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3465, !noundef !6
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !3466, !noalias !3458
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit30, label %bb.q, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3467
  store i64 5, ptr %i.d, align 8, !noalias !3467
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3467
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3467
  store i64 9, ptr %i.c, align 8, !noalias !3467
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3467
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !3468
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !3469, !noalias !3470, !nonnull !6 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3471)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !3473, !noundef !6
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !3474, !noalias !3475
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !20

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3477)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !3478, !noundef !6
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !3479, !noalias !3475
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !20

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3481)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !3482, !noundef !6
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !3483, !noalias !3475
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !20

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3484)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !3486, !noundef !6
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !3487, !noalias !3475
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit38, label %bb.z, !prof !20

_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3488
  store i64 5, ptr %i.b, align 8, !noalias !3488
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3488
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3488
  store i64 9, ptr %i.a, align 8, !noalias !3488
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3488
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !3489
  call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !21, !noundef !6
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !16

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !3490
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !5, !noundef !6
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !16

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

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit38, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit30, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.ce, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit30 ], [ %i.cg, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !6, !align !14, !noundef !6
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

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

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !21, !noundef !6
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !6, !align !14, !noundef !6
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread: ; preds = %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs6MoqnCnVQOT_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_6
begin_hunk_7_@_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14parse_exponentCsbzNSmZPCnTx_10tgrep_core:bb.a
  store i64 5, ptr %i.d, align 8
  %i.w = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.x, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 13, ptr %i.c, align 8
  %i.y = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.z, align 8
  store i64 1, ptr %0, align 8
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.aa = zext nneg i8 %i.v to i32                ; 2 uses
  %i.ab = icmp ult i64 %i.u, %i.j
  br i1 %i.ab, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28: ; preds = %bb.f, %bb.s
  %.sroa.08.054 = phi i32 [ %i.bj, %bb.s ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ac = phi i64 [ %i.ag, %bb.s ], [ %i.u, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !noalias !3717, !noundef !6
  %i.af = add i8 %i.ae, -48                       ; 3 uses
  %or.cond1 = icmp ult i8 %i.af, 10
  br i1 %or.cond1, label %bb.g, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread: ; preds = %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28, %bb.s, %bb.f
  %.sroa.08.0.lcssa = phi i32 [ %i.aa, %bb.f ], [ %i.bj, %bb.s ], [ %.sroa.08.054, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28 ] ; 2 uses
  br i1 %.sroa.0.0, label %bb.i, label %bb.h

bb.g:                                             ; preds = %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28
  %i.ag = add i64 %i.ac, 1                        ; 3 uses
  store i64 %i.ag, ptr %i.f, align 8, !alias.scope !3718
  %i.ah = zext nneg i8 %i.af to i32
  %i.ai = icmp sgt i32 %.sroa.08.054, 214748363
  br i1 %i.ai, label %bb.r, label %bb.s

bb.h:                                             ; preds = %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.aj = tail call i32 @llvm.ssub.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.i:                                             ; preds = %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread
  %i.ak = tail call i32 @llvm.sadd.sat.i32(i32 %4, i32 %.sroa.08.0.lcssa)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.015.0 = phi i32 [ %i.ak, %bb.i ], [ %i.aj, %bb.h ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3719)
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
  %i.aq = load double, ptr %i.ap, align 8, !noalias !3720, !noundef !6 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !22

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3720
  store i64 14, ptr %i.a, align 8, !noalias !3720
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3720
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !3719, !noalias !3721
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !3719, !noalias !3721
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !22

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3720
  store i64 14, ptr %i.b, align 8, !noalias !3720
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3720
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !3719, !noalias !3721
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3719, !noalias !3721
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE14f64_from_partsCsbzNSmZPCnTx_10tgrep_core.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !24

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28.thread, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE23parse_exponent_overflowCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0) #22
  br label %bb.q
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE17peek_invalid_typeCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3760)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3760, !noalias !3761, !noundef !6 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3760, !noalias !3761, !noundef !6 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !3760, !noalias !3761, !nonnull !6, !noundef !6
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !3762, !noundef !6 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !31

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !20

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !3763
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3764)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !3764, !noalias !3765, !nonnull !6 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3766)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !3767, !noundef !6
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !3768, !noalias !3769
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !20

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3770)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !3771, !noundef !6
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !3772, !noalias !3769
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !20

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3773)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !3774, !noundef !6
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !3775, !noalias !3769
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, label %bb.j, !prof !20

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3776
  store i64 5, ptr %i.f, align 8, !noalias !3776
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3776
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3776
  store i64 9, ptr %i.e, align 8, !noalias !3776
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3776
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !3777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3778)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !3778, !noalias !3779, !nonnull !6 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3780)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3781, !noundef !6
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !3782, !noalias !3783
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !20

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3784)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3785, !noundef !6
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !3786, !noalias !3783
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !20

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3787)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3788, !noundef !6
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !3789, !noalias !3783
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit30, label %bb.q, !prof !20

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3790
  store i64 5, ptr %i.d, align 8, !noalias !3790
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3790
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3790
  store i64 9, ptr %i.c, align 8, !noalias !3790
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3790
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !3791
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3792)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !3792, !noalias !3793, !nonnull !6 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3794)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !3795, !noundef !6
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !3796, !noalias !3797
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !20

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3798)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !3799, !noundef !6
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !3800, !noalias !3797
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !20

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3801)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !3802, !noundef !6
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !3803, !noalias !3797
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !20

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3804)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !3805, !noundef !6
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !3806, !noalias !3797
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit38, label %bb.z, !prof !20

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3807
  store i64 5, ptr %i.b, align 8, !noalias !3807
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3807
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3807
  store i64 9, ptr %i.a, align 8, !noalias !3807
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE5errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3807
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !3808
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !21, !noundef !6
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !16

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !3809
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read9parse_str(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !5, !noundef !6
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !6, !noundef !6 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !16

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

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit38, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit30, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit ], [ %i.ce, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit30 ], [ %i.cg, %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs6MoqnCnVQOT_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read9SliceReadE12fix_position0ECsbzNSmZPCnTx_10tgrep_core(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull readonly align 8 dereferenceable(56) %0)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs6MoqnCnVQOT_10serde_json5errorNtB5_5ErrorNtNtCs4ZeZeX9PAiK_10serde_core2de5Error12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !6, !align !14, !noundef !6
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

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

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE13parse_integerCsbzNSmZPCnTx_10tgrep_core(ptr noalias nofree noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias nofree noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !21, !noundef !6
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !16

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !6, !align !14, !noundef !6
  br label %_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs6MoqnCnVQOT_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE11parse_identCsbzNSmZPCnTx_10tgrep_core.exit.thread: ; preds = %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs3_NtCs6MoqnCnVQOT_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE18parse_long_integerCsbzNSmZPCnTx_10tgrep_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #4 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3818, !noalias !3819, !noundef !6 ; 3 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 3 uses
  %i.f = icmp ult i64 %.promoted, %i.e
  br i1 %i.f, label %_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph, label %.thread

_RNvXs5_NtCs6MoqnCnVQOT_10serde_json4readNtB5_9SliceReadNtB5_4Read4peek.exit.lr.ph: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !3818, !noalias !3819, !nonnull !6, !noundef !6
  %i.i = trunc i64 %i.e to i32
end_hunk_7
