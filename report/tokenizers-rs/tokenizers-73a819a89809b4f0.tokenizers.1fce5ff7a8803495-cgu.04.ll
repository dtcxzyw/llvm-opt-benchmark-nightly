Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.04?download=true
inline.NumInlined: 1221
inline.NumDeleted: 614
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtB3_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB29_4read7StrReadEEB5_:bb.a
    i64 13, label %bb.cy
  ]

bb.cm:                                            ; preds = %bb.cl
  %i.fj = ptrtoint ptr %i.bp to i64               ; 3 uses
  %.sroa.0215.0.extract.trunc = trunc i64 %i.fj to i8
  %.sroa.4216.0.extract.shift292 = lshr i64 %i.fj, 8
  %.sroa.4216.0.extract.trunc = trunc i64 %.sroa.4216.0.extract.shift292 to i8
  %.sroa.5217.0.extract.shift293 = lshr i64 %i.fj, 16
  %.sroa.5217.0.extract.trunc = trunc i64 %.sroa.5217.0.extract.shift293 to i16
  br label %bb.cz

bb.cn:                                            ; preds = %bb.cl
  %i.fk = ptrtoint ptr %i.bp to i64               ; 2 uses
  %.sroa.3208.0.extract.trunc = trunc i64 %i.fk to i8
  %.sroa.3208.1.extract.shift = lshr i64 %i.fk, 8
  %.sroa.3208.1.extract.trunc = trunc i64 %.sroa.3208.1.extract.shift to i8
  br label %bb.cz

bb.co:                                            ; preds = %bb.cl
  br label %bb.cz

bb.cp:                                            ; preds = %bb.cl
  br label %bb.cz

bb.cq:                                            ; preds = %bb.cl
  br label %bb.cz

bb.cr:                                            ; preds = %bb.cl
  br label %bb.cz

bb.cs:                                            ; preds = %bb.cl
  %i.fl = ptrtoint ptr %i.bp to i64               ; 4 uses
  %.sroa.0218.0.extract.trunc = trunc i64 %i.fl to i8
  %.sroa.0218.1.extract.shift = lshr i64 %i.fl, 8
  %.sroa.0218.1.extract.trunc = trunc i64 %.sroa.0218.1.extract.shift to i8
  %.sroa.0218.2.extract.shift = lshr i64 %i.fl, 16
  %.sroa.0218.2.extract.trunc = trunc i64 %.sroa.0218.2.extract.shift to i16
  %.sroa.0218.4.extract.shift = lshr i64 %i.fl, 32
  %.sroa.0218.4.extract.trunc = trunc nuw i64 %.sroa.0218.4.extract.shift to i32
  br label %bb.cz

bb.ct:                                            ; preds = %bb.cl
  br label %bb.cz

bb.cu:                                            ; preds = %bb.cl
  br label %bb.cz

bb.cv:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.44.sroa.14.sroa.14, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6, i64 40, i1 false)
  %i.fm = ptrtoint ptr %i.bp to i64               ; 4 uses
  %.sroa.4228.8.extract.trunc = trunc i64 %i.fm to i8
  %.sroa.4228.9.extract.shift = lshr i64 %i.fm, 8
  %.sroa.4228.9.extract.trunc = trunc i64 %.sroa.4228.9.extract.shift to i8
  %.sroa.4228.10.extract.shift = lshr i64 %i.fm, 16
  %.sroa.4228.10.extract.trunc = trunc i64 %.sroa.4228.10.extract.shift to i16
  %.sroa.4228.12.extract.shift = lshr i64 %i.fm, 32
  %.sroa.4228.12.extract.trunc = trunc nuw i64 %.sroa.4228.12.extract.shift to i32
  br label %bb.cz

bb.cw:                                            ; preds = %bb.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.44.sroa.14.sroa.14, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.sroa.6, i64 40, i1 false)
  %i.fn = ptrtoint ptr %i.bp to i64               ; 4 uses
  %.sroa.0230.0.extract.trunc = trunc i64 %i.fn to i8
  %.sroa.0230.1.extract.shift = lshr i64 %i.fn, 8
  %.sroa.0230.1.extract.trunc = trunc i64 %.sroa.0230.1.extract.shift to i8
  %.sroa.0230.2.extract.shift = lshr i64 %i.fn, 16
  %.sroa.0230.2.extract.trunc = trunc i64 %.sroa.0230.2.extract.shift to i16
  %.sroa.0230.4.extract.shift = lshr i64 %i.fn, 32
  %.sroa.0230.4.extract.trunc = trunc nuw i64 %.sroa.0230.4.extract.shift to i32
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cl
  %i.fo = ptrtoint ptr %i.bp to i64               ; 4 uses
  %.sroa.0234.0.extract.trunc = trunc i64 %i.fo to i8
  %.sroa.0234.1.extract.shift = lshr i64 %i.fo, 8
  %.sroa.0234.1.extract.trunc = trunc i64 %.sroa.0234.1.extract.shift to i8
  %.sroa.0234.2.extract.shift = lshr i64 %i.fo, 16
  %.sroa.0234.2.extract.trunc = trunc i64 %.sroa.0234.2.extract.shift to i16
  %.sroa.0234.4.extract.shift = lshr i64 %i.fo, 32
  %.sroa.0234.4.extract.trunc = trunc nuw i64 %.sroa.0234.4.extract.shift to i32
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cl
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cl, %bb.cy, %bb.cx, %bb.cw, %bb.cv, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co, %bb.cn, %bb.cm
  %.sroa.44.sroa.14.sroa.13.2 = phi i64 [ undef, %bb.cm ], [ undef, %bb.cn ], [ undef, %bb.cy ], [ undef, %bb.co ], [ undef, %bb.cp ], [ undef, %bb.cq ], [ undef, %bb.cr ], [ %.sroa.5275.sroa.4.0.copyload, %bb.cs ], [ undef, %bb.ct ], [ undef, %bb.cu ], [ %.sroa.5275.sroa.4.0.copyload, %bb.cv ], [ %.sroa.5275.sroa.4.0.copyload, %bb.cw ], [ %.sroa.5275.sroa.4.0.copyload, %bb.cx ], [ undef, %bb.cl ]
  %.sroa.44.sroa.14.sroa.12.2 = phi ptr [ undef, %bb.cm ], [ undef, %bb.cn ], [ undef, %bb.cy ], [ undef, %bb.co ], [ undef, %bb.cp ], [ undef, %bb.cq ], [ undef, %bb.cr ], [ %.sroa.5275.sroa.0.0.copyload, %bb.cs ], [ undef, %bb.ct ], [ undef, %bb.cu ], [ %.sroa.5275.sroa.0.0.copyload, %bb.cv ], [ %.sroa.5275.sroa.0.0.copyload, %bb.cw ], [ %.sroa.5275.sroa.0.0.copyload, %bb.cx ], [ undef, %bb.cl ]
  %.sroa.44.sroa.14.sroa.0.2 = phi i32 [ undef, %bb.cm ], [ undef, %bb.cn ], [ undef, %bb.cy ], [ undef, %bb.co ], [ undef, %bb.cp ], [ undef, %bb.cq ], [ undef, %bb.cr ], [ %.sroa.0218.4.extract.trunc, %bb.cs ], [ undef, %bb.ct ], [ undef, %bb.cu ], [ %.sroa.4228.12.extract.trunc, %bb.cv ], [ %.sroa.0230.4.extract.trunc, %bb.cw ], [ %.sroa.0234.4.extract.trunc, %bb.cx ], [ undef, %bb.cl ]
  %.sroa.44.sroa.0.2 = phi i16 [ %.sroa.5217.0.extract.trunc, %bb.cm ], [ undef, %bb.cn ], [ undef, %bb.cy ], [ undef, %bb.co ], [ undef, %bb.cp ], [ undef, %bb.cq ], [ undef, %bb.cr ], [ %.sroa.0218.2.extract.trunc, %bb.cs ], [ undef, %bb.ct ], [ undef, %bb.cu ], [ %.sroa.4228.10.extract.trunc, %bb.cv ], [ %.sroa.0230.2.extract.trunc, %bb.cw ], [ %.sroa.0234.2.extract.trunc, %bb.cx ], [ undef, %bb.cl ]
  %.sroa.42.2 = phi i8 [ %.sroa.4216.0.extract.trunc, %bb.cm ], [ %.sroa.3208.1.extract.trunc, %bb.cn ], [ undef, %bb.cy ], [ undef, %bb.co ], [ undef, %bb.cp ], [ undef, %bb.cq ], [ undef, %bb.cr ], [ %.sroa.0218.1.extract.trunc, %bb.cs ], [ undef, %bb.ct ], [ undef, %bb.cu ], [ %.sroa.4228.9.extract.trunc, %bb.cv ], [ %.sroa.0230.1.extract.trunc, %bb.cw ], [ %.sroa.0234.1.extract.trunc, %bb.cx ], [ undef, %bb.cl ]
  %.sroa.32.2 = phi i8 [ %.sroa.0215.0.extract.trunc, %bb.cm ], [ %.sroa.3208.0.extract.trunc, %bb.cn ], [ undef, %bb.cy ], [ undef, %bb.co ], [ undef, %bb.cp ], [ undef, %bb.cq ], [ undef, %bb.cr ], [ %.sroa.0218.0.extract.trunc, %bb.cs ], [ undef, %bb.ct ], [ undef, %bb.cu ], [ %.sroa.4228.8.extract.trunc, %bb.cv ], [ %.sroa.0230.0.extract.trunc, %bb.cw ], [ %.sroa.0234.0.extract.trunc, %bb.cx ], [ undef, %bb.cl ]
  %.sroa.09.2 = phi i64 [ -9223372036854775808, %bb.cm ], [ -9223372036854775807, %bb.cn ], [ -9223372036854775795, %bb.cy ], [ -9223372036854775805, %bb.co ], [ -9223372036854775804, %bb.cp ], [ -9223372036854775803, %bb.cq ], [ -9223372036854775802, %bb.cr ], [ -9223372036854775801, %bb.cs ], [ -9223372036854775800, %bb.ct ], [ -9223372036854775799, %bb.cu ], [ %i.bm, %bb.cv ], [ -9223372036854775797, %bb.cw ], [ -9223372036854775796, %bb.cx ], [ -9223372036854775806, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ch

bb.da:                                            ; preds = %bb.p, %bb.ci, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB5_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtB7_2de12DeserializerNtNtB7_4read7StrReadEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !609)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !610)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !611)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !612, !noalias !613, !noundef !3 ; 8 uses
  %.promoted.i49 = load i64, ptr %i.ab, align 8, !alias.scope !611, !noalias !614 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i49, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !612, !noalias !613, !nonnull !3, !noundef !3 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i49, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !616), !noalias !609
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !617, !noundef !3 ; 3 uses
  switch i8 %i.aj, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !618, !noalias !614
  %exitcond.not.i50 = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i50, label %.loopexit, label %bb.b

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !619
  store i64 5, ptr %i.aa, align 8, !noalias !619
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa), !noalias !609, !inline_history !503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !619
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.an = add i8 %i.aj, -48
  %or.cond8.i = icmp ult i8 %i.an, 10
  br i1 %or.cond8.i, label %bb.cn, label %bb.cm, !prof !28

bb.e:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.ao = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !620, !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %umax.i42 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !622), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !623), !noalias !609
  %exitcond.not.i44.not = icmp ult i64 %i.ao, %i.ad
  br i1 %exitcond.not.i44.not, label %bb.f, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i47

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !624, !noundef !3
  %i.ar = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !625, !noalias !626
  %.not.i45 = icmp eq i8 %i.aq, 117
  br i1 %.not.i45, label %bb.g, label %bb.k, !prof !29

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !627), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !628), !noalias !609
  %exitcond.not.i44.1 = icmp eq i64 %i.ar, %umax.i42
  br i1 %exitcond.not.i44.1, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i47, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !629, !noundef !3
  %i.au = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !630, !noalias !626
  %.not.i45.1 = icmp eq i8 %i.at, 108
  br i1 %.not.i45.1, label %bb.i, label %bb.k, !prof !29

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !631), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !632), !noalias !609
  %exitcond.not.i44.2 = icmp eq i64 %i.au, %umax.i42
  br i1 %exitcond.not.i44.2, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i47, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !633, !noundef !3
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !634, !noalias !626
  %.not.i45.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i45.2, label %.thread, label %bb.k, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i47: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !635
  store i64 5, ptr %i.f, align 8, !noalias !635
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !635
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !635
  store i64 9, ptr %i.e, align 8, !noalias !635
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !635
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !637, !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %umax.i34 = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !639), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !640), !noalias !609
  %exitcond.not.i36.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i36.not, label %bb.m, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i39

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !641, !noundef !3
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !642, !noalias !643
  %.not.i37 = icmp eq i8 %i.bc, 114
  br i1 %.not.i37, label %bb.n, label %bb.r, !prof !29

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !644), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !645), !noalias !609
  %exitcond.not.i36.1 = icmp eq i64 %i.bd, %umax.i34
  br i1 %exitcond.not.i36.1, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i39, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !646, !noundef !3
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !647, !noalias !643
  %.not.i37.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i37.1, label %bb.p, label %bb.r, !prof !29

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !648), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !649), !noalias !609
  %exitcond.not.i36.2 = icmp eq i64 %i.bg, %umax.i34
  br i1 %exitcond.not.i36.2, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i39, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !650, !noundef !3
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !651, !noalias !643
  %.not.i37.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i37.2, label %.thread, label %bb.r, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i39: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !652
  store i64 5, ptr %i.h, align 8, !noalias !652
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !652
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !652
  store i64 9, ptr %i.g, align 8, !noalias !652
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g), !noalias !653
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !652
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !654, !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !655)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !656), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !657), !noalias !609
  %exitcond.not.i.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i.not, label %bb.t, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !658, !noundef !3
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !659, !noalias !660
  %.not.i32 = icmp eq i8 %i.bo, 97
  br i1 %.not.i32, label %bb.u, label %bb.aa, !prof !29

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !661), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !662), !noalias !609
  %exitcond.not.i.1 = icmp eq i64 %i.bp, %umax.i
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !663, !noundef !3
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !664, !noalias !660
  %.not.i32.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i32.1, label %bb.w, label %bb.aa, !prof !29

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !665), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !666), !noalias !609
  %exitcond.not.i.2 = icmp eq i64 %i.bs, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !667, !noundef !3
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !668, !noalias !660
  %.not.i32.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i32.2, label %bb.y, label %bb.aa, !prof !29

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !669), !noalias !609
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670), !noalias !609
  %exitcond.not.i.3 = icmp eq i64 %i.bv, %umax.i
  br i1 %exitcond.not.i.3, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !671, !noundef !3
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !672, !noalias !660
  %.not.i32.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i32.3, label %.thread, label %bb.aa, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !673
  store i64 5, ptr %i.j, align 8, !noalias !673
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !673
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !673
  store i64 9, ptr %i.i, align 8, !noalias !673
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !673
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !675, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !619
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !609, !inline_history !503
  %i.cc = load i64, ptr %i.z, align 8, !range !13, !noalias !619, !noundef !3 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.ak, label %bb.al

bb.ac:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !676, !noalias !609
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8, !alias.scope !610, !noalias !609
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !619
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !609, !inline_history !503
  %i.ch = load i64, ptr %i.x, align 8, !range !10, !noalias !619, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !noalias !619 ; 3 uses
  br i1 %i.ci, label %bb.aq, label %bb.ar

bb.ad:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !alias.scope !610, !noalias !609, !noundef !3
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8, !alias.scope !610, !noalias !609
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.ay, label %bb.az, !prof !23

bb.ae:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !alias.scope !610, !noalias !609, !noundef !3
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8, !alias.scope !610, !noalias !609
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.ca, label %bb.cb, !prof !23

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i47
  %.sroa.0.1.i46.ph = phi ptr [ %i.ay, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i47 ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i46.ph, ptr %i.ct, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  br label %bb.ah

bb.ag:                                            ; preds = %.thread98, %.thread95
  %.sroa.24138.0 = phi i64 [ %.sroa.24138.4, %.thread98 ], [ %.sroa.24138.3, %.thread95 ] ; 2 uses
  %.sroa.22.0 = phi i8 [ %.sroa.22.2, %.thread98 ], [ %.sroa.22.1, %.thread95 ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.4, %.thread98 ], [ %.sroa.0.3, %.thread95 ] ; 2 uses
  %i.cu = phi <2 x i64> [ %i.go, %.thread98 ], [ %i.fs, %.thread95 ]
  %i.cv = icmp eq i8 %.sroa.0.0, -1
  br i1 %i.cv, label %._crit_edge, label %.thread, !prof !677

._crit_edge:                                      ; preds = %bb.ag
  %i.cw = inttoptr i64 %.sroa.24138.0 to ptr
  br label %bb.co

bb.ah:                                            ; preds = %bb.cp, %bb.ca, %bb.ay, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24)
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB8_5value2deNtB2q_5ValueNtB1j_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i39
  %.sroa.0.1.i38.ph = phi ptr [ %i.bk, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i39 ], [ %i.bl, %bb.r ]
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i38.ph, ptr %i.cx, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  br label %bb.ah

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i
  %.sroa.0.1.i.ph = phi ptr [ %i.bz, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ca, %bb.aa ]
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.cy, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  br label %bb.ah

bb.ak:                                            ; preds = %bb.ab
  %i.cz = load ptr, ptr %i.ce, align 8, !noalias !619, !nonnull !3, !align !5, !noundef !3
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8, !alias.scope !609, !noalias !610
  store i8 -1, ptr %0, align 8, !alias.scope !609, !noalias !610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !619
  br label %bb.ah

bb.al:                                            ; preds = %bb.ab
  %.sroa.4.0.copyload = load i64, ptr %i.ce, align 8, !noalias !619 ; 3 uses
  %i.db = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.4.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cc, label %default.unreachable186 [
    i64 0, label %bb.am
    i64 1, label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29
    i64 2, label %bb.ap
  ]

default.unreachable186:                           ; preds = %bb.cq, %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.dc = bitcast i64 %.sroa.4.0.copyload to double
  %i.dd = tail call double @llvm.fabs.f64(double %i.dc)
  %i.de = fcmp ueq double %i.dd, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !678
  br i1 %i.de, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.5.sroa.4.0.copyload10.i.i23 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i22, align 8, !alias.scope !679, !noalias !680
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.df = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i24, align 8, !alias.scope !679, !noalias !680
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14

bb.ao:                                            ; preds = %bb.am
  store i8 0, ptr %i.k, align 8, !noalias !678
  tail call void @llvm.experimental.noalias.scope.decl(metadata !681), !noalias !609
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k), !noalias !682
  br label %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14

_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14: ; preds = %bb.ao, %bb.an
  %.sroa.5.sroa.4.0.i.i16 = phi i64 [ %.sroa.5.sroa.4.0.copyload10.i.i23, %bb.an ], [ 2, %bb.ao ]
  %.sroa.0.0.i.i18 = phi i8 [ 0, %bb.an ], [ 2, %bb.ao ]
  %i.dg = phi <2 x i64> [ %i.df, %bb.an ], [ %i.db, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !678
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29

bb.ap:                                            ; preds = %bb.al
  %.lobit.i.i9 = lshr i64 %.sroa.4.0.copyload, 63
  br label %_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29

_RINvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB6_12ParserNumber5visitNtNvXNtNtB8_5value2deNtB17_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers.exit29: ; preds = %bb.al, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14, %bb.ap
  %.sroa.24138.1 = phi i64 [ %.sroa.5.sroa.4.0.i.i16, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14 ], [ %.lobit.i.i9, %bb.ap ], [ 0, %bb.al ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.i.i18, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14 ], [ 2, %bb.ap ], [ 2, %bb.al ]
  %i.dh = phi <2 x i64> [ %i.dg, %_RINvXNvXNtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB3_12ValueVisitorNtBW_7Visitor9visit_f64NtNtBa_5error5ErrorECs2JiOgHzbbc7_10tokenizers.exit.i14 ], [ %i.db, %bb.ap ], [ %i.db, %bb.al ]
end_hunk_0
begin_hunk_1_@_RINvXse_NtCs5PtHgSLqj5O_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB37_16PaddingDirectionNtB1n_11Deserialize11deserialize7___FieldEEB3b_:bb.a
bb.i:                                             ; preds = %bb.h, %_RINvXs3_NtCsboAIIHEtPkY_10serde_core2deINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers5utils7paddings_1__NtB1q_16PaddingDirectionNtB6_11Deserialize11deserialize7___FieldENtB6_15DeserializeSeed11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB3V_4read7StrReadEEB1u_.exit.thread
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define hidden { i64, ptr } @_RINvXsf_NtCs5PtHgSLqj5O_10serde_json2deINtB6_17UnitVariantAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess20newtype_variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatajEECs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(56) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 13, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @101, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.c = insertvalue { i64, ptr } { i64 1, ptr poison }, ptr %i.b, 1
  ret { i64, ptr } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(56) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2881)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2882)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !2883, !noalias !2881, !noundef !3
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !2883, !noalias !2881
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !2882, !noalias !2881
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2884
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !2881
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noalias !2884, !noundef !3 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !2884 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !2881, !noalias !2882
  store i8 -1, ptr %0, align 8, !alias.scope !2881, !noalias !2882
  br label %_RINvXsh_NtCs5PtHgSLqj5O_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2884 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @_RINvXsj_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentNtB6_14ContentVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %_RINvXsh_NtCs5PtHgSLqj5O_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !2885, !noalias !2886
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !2885, !noalias !2886
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !2885, !noalias !2886
  br label %_RINvXsh_NtCs5PtHgSLqj5O_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXsh_NtCs5PtHgSLqj5O_10serde_json2deINtB6_6MapKeyNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2884
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvYINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess10next_valueNtNtB18_11ignored_any10IgnoredAnyECs2JiOgHzbbc7_10tokenizers(ptr %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  %i.q = getelementptr inbounds nuw i8, ptr %.0.val, i64 40 ; 30 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 32 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3018, !noalias !3019, !noundef !3 ; 4 uses
  %.promoted.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !3020, !noalias !3021 ; 2 uses
  %i.t = icmp ult i64 %.promoted.i.i.i, %i.s
  br i1 %i.t, label %.lr.ph.i.i.i, label %.loopexit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !3018, !noalias !3019, !nonnull !3, !noundef !3 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.w = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.z, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3023)
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noalias !3024, !noundef !3
  switch i8 %i.y, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 58, label %bb.e
  ], !prof !35

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.z = add i64 %i.w, 1                          ; 3 uses
  store i64 %i.z, ptr %i.q, align 8, !alias.scope !3025, !noalias !3021
  %exitcond.not.i.i.i = icmp eq i64 %i.z, %i.s
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %bb.b

.loopexit.i.i:                                    ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3016
  store i64 3, ptr %i.o, align 8, !noalias !3016
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3016
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3016
  store i64 6, ptr %i.p, align 8, !noalias !3016
  %i.ab = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3016
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.e:                                             ; preds = %bb.b
  %i.ac = add i64 %i.w, 1                         ; 3 uses
  store i64 %i.ac, ptr %i.q, align 8, !alias.scope !3026
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3027)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3028)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3029)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3030)
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.val, i64 16 ; 5 uses
  store i64 0, ptr %i.ad, align 8, !alias.scope !3031
  %i.ae = icmp ult i64 %i.ac, %i.s
  br i1 %i.ae, label %.lr.ph.i.lr.ph.i.i.i.i.i, label %.loopexit130.i.i.i.i.i

.lr.ph.i.lr.ph.i.i.i.i.i:                         ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %.0.val, i64 8 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.bf, %.lr.ph.i.lr.ph.i.i.i.i.i
  %i.ag = phi ptr [ %i.v, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eh, %bb.bf ] ; 11 uses
  %.promoted.i171.i.i.i.i.i = phi i64 [ %i.ac, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i, %bb.bf ]
  %i.ah = phi i64 [ %i.s, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %i.eg, %bb.bf ] ; 7 uses
  %.sroa.7.0170.i.i.i.i.i = phi i8 [ undef, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ %.sroa.027.2163.i.i.i.i.i, %bb.bf ] ; 2 uses
  %.sroa.039.0169.i.i.i.i.i = phi i1 [ false, %.lr.ph.i.lr.ph.i.i.i.i.i ], [ true, %bb.bf ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3032)
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i
  %i.ai = phi i64 [ %.promoted.i171.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %bb.g ] ; 17 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !3033, !noundef !3 ; 3 uses
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
  store i64 %i.al, ptr %i.q, align 8, !alias.scope !3034, !noalias !3035
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.al, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit130.i.i.i.i.i, label %bb.f

.loopexit130.i.i.i.i.i:                           ; preds = %bb.bf, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3031
  store i64 5, ptr %i.n, align 8, !noalias !3031
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.h:                                             ; preds = %bb.f
  %i.an = add i8 %i.ak, -48
  %or.cond.i.i.i.i.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i.i.i.i.i, label %bb.ai, label %bb.ah, !prof !28

bb.i:                                             ; preds = %bb.f
  %i.ao = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.q, align 8, !alias.scope !3036
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3037)
  %umax.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ao) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3038)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3039)
  %exitcond.not.i53.not.i.i.i.i.i = icmp ult i64 %i.ao, %i.ah
  br i1 %exitcond.not.i53.not.i.i.i.i.i, label %bb.j, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3040, !noundef !3
  %i.ar = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.q, align 8, !alias.scope !3041, !noalias !3042
  %.not.i.i.i.i.i.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %.loopexit233.i.i.i.i.i, !prof !29

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3044)
  %exitcond.not.i53.1.i.i.i.i.i = icmp eq i64 %i.ar, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.1.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3045, !noundef !3
  %i.au = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.au, ptr %i.q, align 8, !alias.scope !3046, !noalias !3042
  %.not.i.1.i.i.i.i.i = icmp eq i8 %i.at, 108
  br i1 %.not.i.1.i.i.i.i.i, label %bb.m, label %.loopexit233.i.i.i.i.i, !prof !29

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3047)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3048)
  %exitcond.not.i53.2.i.i.i.i.i = icmp eq i64 %i.au, %umax.i.i.i.i.i.i
  br i1 %exitcond.not.i53.2.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3049, !noundef !3
  %i.ax = add i64 %i.ai, 4
  store i64 %i.ax, ptr %i.q, align 8, !alias.scope !3050, !noalias !3042
  %.not.i.2.i.i.i.i.i = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2.i.i.i.i.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %.loopexit233.i.i.i.i.i, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3051
  store i64 5, ptr %i.f, align 8, !noalias !3051
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3051
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

.loopexit233.i.i.i.i.i:                           ; preds = %bb.n, %bb.l, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3051
  store i64 9, ptr %i.e, align 8, !noalias !3051
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3051
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.o:                                             ; preds = %bb.f
  %i.ba = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.q, align 8, !alias.scope !3053
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3054)
  %umax.i56.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3055)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3056)
  %exitcond.not.i58.not.i.i.i.i.i = icmp ult i64 %i.ba, %i.ah
  br i1 %exitcond.not.i58.not.i.i.i.i.i, label %bb.p, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !3057, !noundef !3
  %i.bd = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.q, align 8, !alias.scope !3058, !noalias !3059
  %.not.i59.i.i.i.i.i = icmp eq i8 %i.bc, 114
  br i1 %.not.i59.i.i.i.i.i, label %bb.q, label %.loopexit226.i.i.i.i.i, !prof !29

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3060)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3061)
  %exitcond.not.i58.1.i.i.i.i.i = icmp eq i64 %i.bd, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.1.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !3062, !noundef !3
  %i.bg = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.q, align 8, !alias.scope !3063, !noalias !3059
  %.not.i59.1.i.i.i.i.i = icmp eq i8 %i.bf, 117
  br i1 %.not.i59.1.i.i.i.i.i, label %bb.s, label %.loopexit226.i.i.i.i.i, !prof !29

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3064)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3065)
  %exitcond.not.i58.2.i.i.i.i.i = icmp eq i64 %i.bg, %umax.i56.i.i.i.i.i
  br i1 %exitcond.not.i58.2.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !3066, !noundef !3
  %i.bj = add i64 %i.ai, 4
  store i64 %i.bj, ptr %i.q, align 8, !alias.scope !3067, !noalias !3059
  %.not.i59.2.i.i.i.i.i = icmp eq i8 %i.bi, 101
  br i1 %.not.i59.2.i.i.i.i.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %.loopexit226.i.i.i.i.i, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i62.i.i.i.i.i: ; preds = %bb.s, %bb.q, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3068
  store i64 5, ptr %i.d, align 8, !noalias !3068
  %i.bk = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3068
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

.loopexit226.i.i.i.i.i:                           ; preds = %bb.t, %bb.r, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3068
  store i64 9, ptr %i.c, align 8, !noalias !3068
  %i.bl = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3068
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.u:                                             ; preds = %bb.f
  %i.bm = add i64 %i.ai, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.q, align 8, !alias.scope !3070
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3071)
  %umax.i65.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.bm) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3073)
  %exitcond.not.i67.not.i.i.i.i.i = icmp ult i64 %i.bm, %i.ah
  br i1 %exitcond.not.i67.not.i.i.i.i.i, label %bb.v, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i

bb.v:                                             ; preds = %bb.u
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !3074, !noundef !3
  %i.bp = add i64 %i.ai, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.q, align 8, !alias.scope !3075, !noalias !3076
  %.not.i68.i.i.i.i.i = icmp eq i8 %i.bo, 97
  br i1 %.not.i68.i.i.i.i.i, label %bb.w, label %.loopexit219.i.i.i.i.i, !prof !29

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3077)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3078)
  %exitcond.not.i67.1.i.i.i.i.i = icmp eq i64 %i.bp, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.1.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !3079, !noundef !3
  %i.bs = add i64 %i.ai, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.q, align 8, !alias.scope !3080, !noalias !3076
  %.not.i68.1.i.i.i.i.i = icmp eq i8 %i.br, 108
  br i1 %.not.i68.1.i.i.i.i.i, label %bb.y, label %.loopexit219.i.i.i.i.i, !prof !29

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3081)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3082)
  %exitcond.not.i67.2.i.i.i.i.i = icmp eq i64 %i.bs, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.2.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !3083, !noundef !3
  %i.bv = add i64 %i.ai, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.q, align 8, !alias.scope !3084, !noalias !3076
  %.not.i68.2.i.i.i.i.i = icmp eq i8 %i.bu, 115
  br i1 %.not.i68.2.i.i.i.i.i, label %bb.aa, label %.loopexit219.i.i.i.i.i, !prof !29

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3086)
  %exitcond.not.i67.3.i.i.i.i.i = icmp eq i64 %i.bv, %umax.i65.i.i.i.i.i
  br i1 %exitcond.not.i67.3.i.i.i.i.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !3087, !noundef !3
  %i.by = add i64 %i.ai, 5
  store i64 %i.by, ptr %i.q, align 8, !alias.scope !3088, !noalias !3076
  %.not.i68.3.i.i.i.i.i = icmp eq i8 %i.bx, 101
  br i1 %.not.i68.3.i.i.i.i.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %.loopexit219.i.i.i.i.i, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i71.i.i.i.i.i: ; preds = %bb.aa, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3089
  store i64 5, ptr %i.b, align 8, !noalias !3089
  %i.bz = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3089
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

.loopexit219.i.i.i.i.i:                           ; preds = %bb.ab, %bb.z, %bb.x, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3089
  store i64 9, ptr %i.a, align 8, !noalias !3089
  %i.ca = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3089
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.ac:                                            ; preds = %bb.f
  %i.cb = add i64 %i.ai, 1
  store i64 %i.cb, ptr %i.q, align 8, !alias.scope !3091
  %i.cc = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not45.i.i.i.i.i = icmp eq ptr %i.cc, null
  br i1 %.not45.i.i.i.i.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.ad:                                            ; preds = %bb.f
  %i.cd = add i64 %i.ai, 1
  store i64 %i.cd, ptr %i.q, align 8, !alias.scope !3092
  %i.ce = tail call noundef align 8 ptr @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read10ignore_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u) ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ce, null
  br i1 %.not.i.i.i.i.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.ae:                                            ; preds = %bb.f, %bb.f
  tail call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VechE14extend_trustedINtNtCs4NRVxsYgnAr_4core6option8IntoIterhEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val, i1 noundef zeroext %.sroa.039.0169.i.i.i.i.i, i8 %.sroa.7.0170.i.i.i.i.i)
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !3093, !noundef !3
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %i.q, align 8, !alias.scope !3093
  br label %bb.ag

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ad, %bb.ac, %bb.ab, %bb.t, %bb.n
  br i1 %.sroa.039.0169.i.i.i.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  %i.ch = load i64, ptr %i.ad, align 8, !alias.scope !3031, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.aj

bb.ag:                                            ; preds = %bb.aj, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, %bb.ae
  %.sroa.027.0.i.i.i.i.i = phi i8 [ %i.ak, %bb.ae ], [ %i.ct, %bb.aj ], [ %.sroa.7.0170.i.i.i.i.i, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i ] ; 2 uses
  %.sroa.042.0.i.i.i.i.i = phi i1 [ false, %bb.ae ], [ true, %bb.aj ], [ true, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i ]
  %i.cj = load i64, ptr %i.r, align 8, !alias.scope !3094, !noalias !3095, !noundef !3 ; 6 uses
  %.promoted.i73162.i.i.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !3096, !noalias !3097 ; 2 uses
  %i.ck = icmp ult i64 %.promoted.i73162.i.i.i.i.i, %i.cj
  br i1 %i.ck, label %.lr.ph.i75.lr.ph.i.i.i.i.i, label %.loopexit123.i.i.i.i.i

.lr.ph.i75.lr.ph.i.i.i.i.i:                       ; preds = %bb.ag
  %i.cl = load ptr, ptr %i.u, align 8, !alias.scope !3094, !noalias !3095, !nonnull !3, !noundef !3 ; 3 uses
  br label %.lr.ph.i75.i.i.i.i.i

bb.ah:                                            ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3031
  store i64 10, ptr %i.m, align 8, !noalias !3031
  %i.cm = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.ai:                                            ; preds = %bb.h
  %i.cn = tail call fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14ignore_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %.0.val) ; 2 uses
  %.not49.i.i.i.i.i = icmp eq ptr %i.cn, null
  br i1 %.not49.i.i.i.i.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

bb.aj:                                            ; preds = %bb.af
  %i.co = add i64 %i.ch, -1                       ; 3 uses
  store i64 %i.co, ptr %i.ad, align 8, !alias.scope !3031
  %i.cp = load i64, ptr %.0.val, align 8, !range !6, !alias.scope !3031, !noundef !3
  %i.cq = icmp ult i64 %i.co, %i.cp
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = load ptr, ptr %i.af, align 8, !alias.scope !3031, !nonnull !3, !noundef !3
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  %i.ct = load i8, ptr %i.cs, align 1, !noundef !3
  br label %bb.ag

.lr.ph.i75.i.i.i.i.i:                             ; preds = %bb.au, %.lr.ph.i75.lr.ph.i.i.i.i.i
  %.promoted.i73165.i.i.i.i.i = phi i64 [ %.promoted.i73162.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dd, %bb.au ]
  %.sroa.042.2164.i.i.i.i.i = phi i1 [ %.sroa.042.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ true, %bb.au ] ; 2 uses
  %.sroa.027.2163.i.i.i.i.i = phi i8 [ %.sroa.027.0.i.i.i.i.i, %.lr.ph.i75.lr.ph.i.i.i.i.i ], [ %i.dl, %bb.au ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %.lr.ph.i75.i.i.i.i.i
  %i.cu = phi i64 [ %.promoted.i73165.i.i.i.i.i, %.lr.ph.i75.i.i.i.i.i ], [ %i.cx, %bb.al ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3099)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3100)
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !noalias !3101, !noundef !3
  switch i8 %i.cw, label %.loopexit.i.i.i.i.i [
    i8 32, label %bb.al
    i8 10, label %bb.al
    i8 9, label %bb.al
    i8 13, label %bb.al
    i8 44, label %bb.ap
    i8 93, label %bb.aq
    i8 125, label %bb.ar
  ]

bb.al:                                            ; preds = %bb.ak, %bb.ak, %bb.ak, %bb.ak
  %i.cx = add i64 %i.cu, 1                        ; 3 uses
  store i64 %i.cx, ptr %i.q, align 8, !alias.scope !3102, !noalias !3097
  %exitcond.not.i76.i.i.i.i.i = icmp eq i64 %i.cx, %i.cj
  br i1 %exitcond.not.i76.i.i.i.i.i, label %.loopexit123.i.i.i.i.i, label %bb.ak

.loopexit123.i.i.i.i.i:                           ; preds = %bb.ag, %bb.au, %bb.al
  %.sroa.027.2159.i.i.i.i.i = phi i8 [ %i.dl, %bb.au ], [ %.sroa.027.2163.i.i.i.i.i, %bb.al ], [ %.sroa.027.0.i.i.i.i.i, %bb.ag ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3031
  switch i8 %.sroa.027.2159.i.i.i.i.i, label %bb.am [
    i8 91, label %bb.ao
    i8 123, label %bb.an
  ]

bb.am:                                            ; preds = %.loopexit123.i.i.i.i.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @116) #27
  unreachable

bb.an:                                            ; preds = %.loopexit123.i.i.i.i.i
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.loopexit123.i.i.i.i.i
  %storemerge.i.i.i.i.i = phi i64 [ 3, %bb.an ], [ 2, %.loopexit123.i.i.i.i.i ]
  store i64 %storemerge.i.i.i.i.i, ptr %i.k, align 8, !noalias !3031
  %i.cy = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3031
  br label %_RINvXs9_NtCs5PtHgSLqj5O_10serde_json2deINtB6_9MapAccessNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtB1e_11ignored_any10IgnoredAnyEECs2JiOgHzbbc7_10tokenizers.exit

.loopexit.i.i.i.i.i:                              ; preds = %bb.ar, %bb.aq, %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.av, label %.critedge.i.i.i.i.i, !prof !23

bb.ap:                                            ; preds = %bb.ak
  br i1 %.sroa.042.2164.i.i.i.i.i, label %bb.as, label %.critedge.i.i.i.i.i

bb.aq:                                            ; preds = %bb.ak
  %i.cz = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 91
  br i1 %i.cz, label %bb.at, label %.loopexit.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ak
  %i.da = icmp eq i8 %.sroa.027.2163.i.i.i.i.i, 123
  br i1 %i.da, label %bb.at, label %.loopexit.i.i.i.i.i

bb.as:                                            ; preds = %bb.ap
  %i.db = add i64 %i.cu, 1                        ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvYNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers8decoders4fuses_1__NtBa_4FuseNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize14___FieldVisitorNtB19_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBe_:bb.a
  store i8 0, ptr %0, align 8, !alias.scope !3311
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYNtNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBd_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtBa_8EnumTypeB1g_11deserialize14___FieldVisitorNtB1i_7Visitor8visit_u8NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1)) %0, i8 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3314)
  switch i8 %1, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
    i8 6, label %bb.i
    i8 7, label %bb.j
    i8 8, label %bb.k
    i8 9, label %bb.l
    i8 10, label %bb.m
    i8 11, label %bb.n
    i8 12, label %bb.o
    i8 13, label %bb.p
  ], !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = zext i8 %1 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3314
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.b, ptr %i.c, align 8, !noalias !3314
  store i8 1, ptr %i.a, align 8, !noalias !3314
  %i.d = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull @63, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @52), !noalias !3314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3314
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.e, align 8, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.f, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.d:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.h, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.f:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.i, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.g:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 4, ptr %i.j, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 5, ptr %i.k, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 6, ptr %i.l, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.j:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 7, ptr %i.m, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.k:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 8, ptr %i.n, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.l:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 9, ptr %i.o, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.m:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 10, ptr %i.p, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.n:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 11, ptr %i.q, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.o:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 12, ptr %i.r, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

bb.p:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 13, ptr %i.s, align 1, !alias.scope !3314
  br label %_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit

_RINvXNvXNvNvXNtCs2JiOgHzbbc7_10tokenizers11normalizersNtBb_17NormalizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializes0_1__NtB8_8EnumTypeB1e_11deserializeNtB3_14___FieldVisitorNtB1g_7Visitor9visit_u64NtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEBd_.exit: ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %.sink.i = phi i8 [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 1, %bb.b ]
  store i8 %.sink.i, ptr %0, align 8, !alias.scope !3314
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 5 uses
  %i.l = alloca [40 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 29 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3413)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3414, !noalias !3415, !noundef !3 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.s, align 8, !alias.scope !3416, !noalias !3417 ; 2 uses
  %i.v = icmp ult i64 %.promoted.i.i, %i.u
  br i1 %i.v, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3414, !noalias !3415, !nonnull !3, !noundef !3 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.y = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ab, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3419)
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !3420, !noundef !3 ; 3 uses
  switch i8 %i.aa, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ab = add i64 %i.y, 1                         ; 3 uses
  store i64 %i.ab, ptr %i.s, align 8, !alias.scope !3421, !noalias !3417
  %exitcond.not.i.i = icmp eq i64 %i.ab, %i.u
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3422
  switch i8 %i.aa, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3422
  store i64 5, ptr %i.r, align 8, !noalias !3422
  %i.ac = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r), !noalias !3411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3422
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ae = add i8 %i.aa, -48
  %or.cond8.i = icmp ult i8 %i.ae, 10
  br i1 %or.cond8.i, label %bb.bq, label %bb.bp, !prof !28

bb.e:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.af = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.af, ptr %i.s, align 8, !alias.scope !3423, !noalias !3411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3424)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.af) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3426)
  %exitcond.not.i37.not.i = icmp ult i64 %i.af, %i.u
  br i1 %exitcond.not.i37.not.i, label %bb.f, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !3427, !noundef !3
  %i.ai = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.ai, ptr %i.s, align 8, !alias.scope !3428, !noalias !3429
  %.not.i.i = icmp eq i8 %i.ah, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !29

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3431)
  %exitcond.not.i37.1.i = icmp eq i64 %i.ai, %umax.i.i
  br i1 %exitcond.not.i37.1.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !3432, !noundef !3
  %i.al = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.al, ptr %i.s, align 8, !alias.scope !3433, !noalias !3429
  %.not.i.1.i = icmp eq i8 %i.ak, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !29

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3434)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3435)
  %exitcond.not.i37.2.i = icmp eq i64 %i.al, %umax.i.i
  br i1 %exitcond.not.i37.2.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !noalias !3436, !noundef !3
  %i.ao = add i64 %i.y, 4
  store i64 %i.ao, ptr %i.s, align 8, !alias.scope !3437, !noalias !3429
  %.not.i.2.i = icmp eq i8 %i.an, 108
  br i1 %.not.i.2.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.k, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3438
  store i64 5, ptr %i.f, align 8, !noalias !3438
  %i.ap = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3438
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3438
  store i64 9, ptr %i.e, align 8, !noalias !3438
  %i.aq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3438
  br label %bb.af

bb.l:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.ar = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.ar, ptr %i.s, align 8, !alias.scope !3440, !noalias !3411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3441)
  %umax.i40.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ar) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3443)
  %exitcond.not.i42.not.i = icmp ult i64 %i.ar, %i.u
  br i1 %exitcond.not.i42.not.i, label %bb.m, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46.i

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3444, !noundef !3
  %i.au = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.au, ptr %i.s, align 8, !alias.scope !3445, !noalias !3446
  %.not.i43.i = icmp eq i8 %i.at, 114
  br i1 %.not.i43.i, label %bb.n, label %bb.r, !prof !29

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3447)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  %exitcond.not.i42.1.i = icmp eq i64 %i.au, %umax.i40.i
  br i1 %exitcond.not.i42.1.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3449, !noundef !3
  %i.ax = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.ax, ptr %i.s, align 8, !alias.scope !3450, !noalias !3446
  %.not.i43.1.i = icmp eq i8 %i.aw, 117
  br i1 %.not.i43.1.i, label %bb.p, label %bb.r, !prof !29

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3452)
  %exitcond.not.i42.2.i = icmp eq i64 %i.ax, %umax.i40.i
  br i1 %exitcond.not.i42.2.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noalias !3453, !noundef !3
  %i.ba = add i64 %i.y, 4
  store i64 %i.ba, ptr %i.s, align 8, !alias.scope !3454, !noalias !3446
  %.not.i43.2.i = icmp eq i8 %i.az, 101
  br i1 %.not.i43.2.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit47.i, label %bb.r, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46.i: ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3455
  store i64 5, ptr %i.d, align 8, !noalias !3455
  %i.bb = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3455
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3455
  store i64 9, ptr %i.c, align 8, !noalias !3455
  %i.bc = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3455
  br label %bb.ai

bb.s:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bd = add i64 %i.y, 1                         ; 4 uses
  store i64 %i.bd, ptr %i.s, align 8, !alias.scope !3457, !noalias !3411
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3458)
  %umax.i49.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.bd) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3460)
  %exitcond.not.i51.not.i = icmp ult i64 %i.bd, %i.u
  br i1 %exitcond.not.i51.not.i, label %bb.t, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !3461, !noundef !3
  %i.bg = add i64 %i.y, 2                         ; 3 uses
  store i64 %i.bg, ptr %i.s, align 8, !alias.scope !3462, !noalias !3463
  %.not.i52.i = icmp eq i8 %i.bf, 97
  br i1 %.not.i52.i, label %bb.u, label %bb.aa, !prof !29

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3465)
  %exitcond.not.i51.1.i = icmp eq i64 %i.bg, %umax.i49.i
  br i1 %exitcond.not.i51.1.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !3466, !noundef !3
  %i.bj = add i64 %i.y, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.s, align 8, !alias.scope !3467, !noalias !3463
  %.not.i52.1.i = icmp eq i8 %i.bi, 108
  br i1 %.not.i52.1.i, label %bb.w, label %bb.aa, !prof !29

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3469)
  %exitcond.not.i51.2.i = icmp eq i64 %i.bj, %umax.i49.i
  br i1 %exitcond.not.i51.2.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !3470, !noundef !3
  %i.bm = add i64 %i.y, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.s, align 8, !alias.scope !3471, !noalias !3463
  %.not.i52.2.i = icmp eq i8 %i.bl, 115
  br i1 %.not.i52.2.i, label %bb.y, label %bb.aa, !prof !29

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3473)
  %exitcond.not.i51.3.i = icmp eq i64 %i.bm, %umax.i49.i
  br i1 %exitcond.not.i51.3.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bn = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !3474, !noundef !3
  %i.bp = add i64 %i.y, 5
  store i64 %i.bp, ptr %i.s, align 8, !alias.scope !3475, !noalias !3463
  %.not.i52.3.i = icmp eq i8 %i.bo, 101
  br i1 %.not.i52.3.i, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit56.i, label %bb.aa, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i: ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3476
  store i64 5, ptr %i.b, align 8, !noalias !3476
  %i.bq = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3476
  br label %bb.aj

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3476
  store i64 9, ptr %i.a, align 8, !noalias !3476
  %i.br = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3476
  br label %bb.aj

bb.ab:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bs = add i64 %i.y, 1
  store i64 %i.bs, ptr %i.s, align 8, !alias.scope !3478, !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3422
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext false), !noalias !3411
  %i.bt = load i64, ptr %i.p, align 8, !range !13, !noalias !3422, !noundef !3 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br i1 %i.bu, label %bb.ak, label %switch.lookup

bb.ac:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bw = add i64 %i.y, 1
  store i64 %i.bw, ptr %i.s, align 8, !alias.scope !3479, !noalias !3411
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bx, align 8, !alias.scope !3412, !noalias !3411
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3422
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !3411
  %i.by = load i64, ptr %i.n, align 8, !range !10, !noalias !3422, !noundef !3 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !3422 ; 4 uses
  br i1 %i.bz, label %bb.al, label %bb.am

bb.ad:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.cd = load i8, ptr %i.cc, align 8, !alias.scope !3412, !noalias !3411, !noundef !3
  %i.ce = add i8 %i.cd, -1                        ; 2 uses
  store i8 %i.ce, ptr %i.cc, align 8, !alias.scope !3412, !noalias !3411
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.aq, label %bb.ar, !prof !23

bb.ae:                                            ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.ch = load i8, ptr %i.cg, align 8, !alias.scope !3412, !noalias !3411, !noundef !3
  %i.ci = add i8 %i.ch, -1                        ; 2 uses
  store i8 %i.ci, ptr %i.cg, align 8, !alias.scope !3412, !noalias !3411
  %i.cj = icmp eq i8 %i.ci, 0
  br i1 %i.cj, label %bb.bd, label %bb.be, !prof !23

bb.af:                                            ; preds = %bb.k, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ap, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ %i.aq, %bb.k ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.ck, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %bb.ah

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.j
  store i8 18, ptr %i.q, align 8, !alias.scope !3480, !noalias !3422
  br label %.thread.i

bb.ag:                                            ; preds = %.thread92.i, %.thread89.i, %bb.ap
  %.pr.i.pr = load i8, ptr %i.q, align 8, !noalias !3422
  %i.cl = icmp eq i8 %.pr.i.pr, -1
  br i1 %i.cl, label %._crit_edge.i, label %.thread.i, !prof !3481

._crit_edge.i:                                    ; preds = %bb.ag
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !3422
  br label %bb.br

bb.ah:                                            ; preds = %bb.bs, %bb.bd, %bb.aq, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3422
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.ai:                                            ; preds = %bb.r, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46.i
  %.sroa.0.1.i45.ph.i = phi ptr [ %i.bb, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i46.i ], [ %i.bc, %bb.r ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i45.ph.i, ptr %i.cm, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %bb.ah

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit47.i: ; preds = %bb.q
  store i8 0, ptr %i.q, align 8, !alias.scope !3482, !noalias !3422
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !3482, !noalias !3422
  br label %.thread.i

bb.aj:                                            ; preds = %bb.aa, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i
  %.sroa.0.1.i54.ph.i = phi ptr [ %i.bq, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i55.i ], [ %i.br, %bb.aa ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i54.ph.i, ptr %i.cn, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  br label %bb.ah

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit56.i: ; preds = %bb.z
  store i8 0, ptr %i.q, align 8, !alias.scope !3483, !noalias !3422
  %.sroa.4.0..sroa_idx.i57.i = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i57.i, align 1, !alias.scope !3483, !noalias !3422
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ab
  %i.co = load ptr, ptr %i.bv, align 8, !noalias !3422, !nonnull !3, !align !5, !noundef !3
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3422
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bv, align 8, !noalias !3422
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %switch.cast = trunc i64 %i.bt to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.q, align 8, !alias.scope !3484, !noalias !3485
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !3484, !noalias !3485
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3422
  br label %.thread.i

bb.al:                                            ; preds = %bb.ac
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cb, ptr %i.cq, align 8, !alias.scope !3411, !noalias !3412
  store i8 -1, ptr %0, align 8, !alias.scope !3411, !noalias !3412
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3422
  br label %bb.ah

bb.am:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !3422 ; 2 uses
  %i.cr = trunc nuw i64 %i.by to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cb) ]
  br i1 %i.cr, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  call void @_RINvXsj_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentNtB6_14ContentVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_strNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cb, i64 noundef %.sroa.4.0.copyload.i), !noalias !3411
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  store i8 13, ptr %i.q, align 8, !alias.scope !3486, !noalias !3487
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
end_hunk_2
begin_hunk_3_@_RNvMNtCs2JiOgHzbbc7_10tokenizers9tokenizerDNtB2_13PostProcessorEL_15default_process:bb.a
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB11_(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit10 unwind label %bb.q

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit: ; preds = %bb.o, %bb.q
  %.pn.pn = phi { ptr, i32 } [ %i.bl, %bb.q ], [ %.pn, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.n) #24
          to label %bb.x unwind label %bb.w

bb.q:                                             ; preds = %bb.r, %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i._crit_edge
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit10: ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.bm = call noundef align 8 dereferenceable_or_null(256) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 729) 256, i64 noundef 8) #26 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.r, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !23

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit10
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 256) #27
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.r
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.bm, ptr noundef nonnull align 8 dereferenceable(256) %i.n, i64 256, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.53.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.m

bb.s:                                             ; preds = %bb.t
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.k, ptr noundef nonnull align 8 dereferenceable(256) %i.l, i64 256, i1 false)
  invoke void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding10merge_with(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(256) %i.k, i1 noundef zeroext false)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  %i.bp = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8, !alias.scope !3581, !noalias !3578, !nonnull !3, !noundef !3
  %i.bq = load ptr, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8, !alias.scope !3581, !noalias !3578, !nonnull !3, !noundef !3 ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.bp
  br i1 %i.br, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i._crit_edge, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i

bb.v:                                             ; preds = %bb.p
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.l) #24
          to label %bb.o unwind label %bb.w

bb.w:                                             ; preds = %bb.o, %.thread, %bb.v, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit, %.thread
  %.pn.pn.pn13 = phi { ptr, i32 } [ %i.ar, %.thread ], [ %.pn.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEEB2e_.exit ]
  resume { ptr, i32 } %.pn.pn.pn13

.thread:                                          ; preds = %bb.l
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %1) #24
          to label %bb.x unwind label %bb.w
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers10processors8sequenceNtB2_8Sequence7set_mut(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.a, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3
  %i.f = getelementptr inbounds nuw [128 x i8], ptr %i.e, i64 %1 ; 3 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.f)
          to label %bb.e unwind label %.thread

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %1, i64 noundef %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #27
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  unreachable

.thread:                                          ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.f, ptr noundef nonnull align 8 dereferenceable(128) %2, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.f:                                             ; preds = %.thread, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.g, %.thread ], [ %i.h, %bb.g ]
  resume { ptr, i32 } %.pn5

bb.g:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperEBF_(ptr noalias noundef align 8 dereferenceable(128) %i.a) #24
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvMs2_NtCscdodAO9FK5_5alloc5boxedINtB5_3BoxShE16new_uninit_sliceCs2JiOgHzbbc7_10tokenizers(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.b = load i64, ptr %i.a, align 8, !range !21, !noundef !3
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !22, !noundef !3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = insertvalue { ptr, i64 } poison, ptr %i.i, 0
  %i.k = insertvalue { ptr, i64 } %i.j, i64 %0, 1
  ret { ptr, i64 } %i.k
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read13peek_position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.f

bb.d:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5error9ErrorCodeECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #24
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull readonly captures(address) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !3
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3588)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3589)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !3590, !noundef !3
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !3591, !noalias !3592
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !3
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !25

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit, %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE12parse_numberCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3615)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3616)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !3617, !noalias !3618, !noundef !3 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !3617, !noalias !3618, !noundef !3 ; 4 uses
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !3617, !noalias !3618, !nonnull !3, !noundef !3 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.h
  %i.o = load i8, ptr %i.n, align 1, !noalias !3619, !noundef !3
  switch i8 %i.o, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread [
    i8 46, label %bb.b
    i8 101, label %bb.p
    i8 69, label %bb.p
  ]

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.thread: ; preds = %bb.a, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  br i1 %2, label %bb.s, label %bb.v

bb.b:                                             ; preds = %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3621)
  %i.p = add nuw i64 %i.h, 1                      ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !3622, !noalias !3620
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i, label %.thread.thread.i

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i: ; preds = %bb.b
  %i.r = trunc i64 %i.h to i32
  %i.s = add i32 %i.r, 1
  %i.t = trunc i64 %i.j to i32
  %i.u = sub i32 %i.s, %i.t                       ; 2 uses
  br label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i: ; preds = %bb.n, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i
  %.sroa.0.061.i = phi i64 [ %3, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bg, %bb.n ] ; 6 uses
  %.sroa.07.060.i = phi i32 [ 0, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.bh, %bb.n ] ; 5 uses
  %i.v = phi i64 [ %i.p, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.lr.ph.i ], [ %i.be, %bb.n ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !3623, !noundef !3 ; 2 uses
  %i.y = add i8 %i.x, -48                         ; 3 uses
  %or.cond.i = icmp ult i8 %i.y, 10
  br i1 %or.cond.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.z = icmp eq i32 %.sroa.07.060.i, 0
  br i1 %i.z, label %bb.e, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i

.thread.i:                                        ; preds = %bb.n
  %i.aa = icmp eq i32 %i.u, 0
  br i1 %i.aa, label %.thread.thread.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i

bb.d:                                             ; preds = %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit.i
  %i.ab = zext nneg i8 %i.y to i64
  %i.ac = icmp ugt i64 %.sroa.0.061.i, 1844674407370955160
  br i1 %i.ac, label %bb.m, label %bb.n

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3624
  store i64 13, ptr %i.d, align 8, !noalias !3624
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3624
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !3620, !noalias !3621
  store i64 1, ptr %i.f, align 8, !alias.scope !3620, !noalias !3621
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCs2JiOgHzbbc7_10tokenizers.exit

.thread.thread.i:                                 ; preds = %.thread.i, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3624
  store i64 5, ptr %i.c, align 8, !noalias !3624
  %i.af = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3620
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3624
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !3620, !noalias !3621
  store i64 1, ptr %i.f, align 8, !alias.scope !3620, !noalias !3621
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_decimalCs2JiOgHzbbc7_10tokenizers.exit

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i: ; preds = %bb.c
  switch i8 %i.x, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i [
    i8 101, label %bb.l
    i8 69, label %bb.l
  ]

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i: ; preds = %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i, %.thread.i
  %.sroa.07.059.i = phi i32 [ %i.u, %.thread.i ], [ %.sroa.07.060.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ] ; 3 uses
  %.sroa.0.056.i = phi i64 [ %i.bg, %.thread.i ], [ %.sroa.0.061.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  %i.ah = uitofp i64 %.sroa.0.056.i to double     ; 2 uses
  %.sroa.012.020.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.07.059.i, i1 false) ; 2 uses
  %i.ai = icmp ult i32 %.sroa.012.020.i.i, 309
  br i1 %i.ai, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i, %bb.g
  %.sroa.0.022.i.i = phi i32 [ %i.aq, %bb.g ], [ %.sroa.07.059.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 2 uses
  %.sroa.04.021.i.i = phi double [ %i.ap, %bb.g ], [ %i.ah, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ] ; 3 uses
  %i.aj = fcmp oeq double %.sroa.04.021.i.i, 0.000000e+00
  br i1 %i.aj, label %.loopexit.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.g, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i
  %.sroa.04.0.lcssa.i.i = phi double [ %i.ah, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.ap, %bb.g ] ; 2 uses
  %.sroa.0.0.lcssa.i.i = phi i32 [ %.sroa.07.059.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %i.aq, %bb.g ]
  %.sroa.012.0.lcssa.i.i = phi i32 [ %.sroa.012.020.i.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread.i ], [ %.sroa.012.0.i.i, %bb.g ]
  %i.ak = zext nneg i32 %.sroa.012.0.lcssa.i.i to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs5PtHgSLqj5O_10serde_json2de5POW10, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !noalias !3626, !noundef !3 ; 2 uses
  %i.an = icmp sgt i32 %.sroa.0.0.lcssa.i.i, -1
  br i1 %i.an, label %bb.j, label %bb.i

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.ao = icmp sgt i32 %.sroa.0.022.i.i, -1
  br i1 %i.ao, label %bb.h, label %bb.g, !prof !23

bb.g:                                             ; preds = %bb.f
  %i.ap = fdiv double %.sroa.04.021.i.i, 1.000000e+308 ; 2 uses
  %i.aq = add nsw i32 %.sroa.0.022.i.i, 308       ; 3 uses
  %.sroa.012.0.i.i = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %.sroa.012.0.i.i, 309
  br i1 %i.ar, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3626
  store i64 14, ptr %i.a, align 8, !noalias !3626
  %i.as = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3626
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !3627, !noalias !3628
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs2JiOgHzbbc7_10tokenizers.exit.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %bb.j, %bb.i
  %.sroa.04.1.i.i = phi double [ %i.ax, %bb.j ], [ %i.aw, %bb.i ], [ %.sroa.04.021.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.au = fneg double %.sroa.04.1.i.i
  %.sroa.04.2.i.i = select i1 %2, double %.sroa.04.1.i.i, double %i.au
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store double %.sroa.04.2.i.i, ptr %i.av, align 8, !alias.scope !3627, !noalias !3628
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs2JiOgHzbbc7_10tokenizers.exit.i

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.aw = fdiv double %.sroa.04.0.lcssa.i.i, %i.am
  br label %.loopexit.i.i

bb.j:                                             ; preds = %._crit_edge.i.i
  %i.ax = fmul double %.sroa.04.0.lcssa.i.i, %i.am ; 2 uses
end_hunk_3
begin_hunk_4_@_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14parse_exponentCs2JiOgHzbbc7_10tokenizers:bb.a

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
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr @_RNvNtCs5PtHgSLqj5O_10serde_json2de5POW10, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !noalias !3821, !noundef !3 ; 2 uses
  %i.ar = icmp sgt i32 %.sroa.0.0.lcssa.i, -1
  br i1 %i.ar, label %bb.o, label %bb.n

bb.k:                                             ; preds = %.lr.ph.i
  %i.as = icmp sgt i32 %.sroa.0.022.i, -1
  br i1 %i.as, label %bb.m, label %bb.l, !prof !23

bb.l:                                             ; preds = %bb.k
  %i.at = fdiv double %.sroa.04.021.i, 1.000000e+308 ; 2 uses
  %i.au = add nsw i32 %.sroa.0.022.i, 308         ; 3 uses
  %.sroa.012.0.i = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true) ; 2 uses
  %i.av = icmp samesign ult i32 %.sroa.012.0.i, 309
  br i1 %i.av, label %._crit_edge.i, label %.lr.ph.i

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3821
  store i64 14, ptr %i.a, align 8, !noalias !3821
  %i.aw = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3821
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ax, align 8, !alias.scope !3820, !noalias !3822
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs2JiOgHzbbc7_10tokenizers.exit

.loopexit.i:                                      ; preds = %.lr.ph.i, %bb.o, %bb.n
  %.sroa.04.1.i = phi double [ %i.bb, %bb.o ], [ %i.ba, %bb.n ], [ %.sroa.04.021.i, %.lr.ph.i ] ; 2 uses
  %i.ay = fneg double %.sroa.04.1.i
  %.sroa.04.2.i = select i1 %2, double %.sroa.04.1.i, double %i.ay
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %.sroa.04.2.i, ptr %i.az, align 8, !alias.scope !3820, !noalias !3822
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs2JiOgHzbbc7_10tokenizers.exit

bb.n:                                             ; preds = %._crit_edge.i
  %i.ba = fdiv double %.sroa.04.0.lcssa.i, %i.aq
  br label %.loopexit.i

bb.o:                                             ; preds = %._crit_edge.i
  %i.bb = fmul double %.sroa.04.0.lcssa.i, %i.aq  ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %i.bb)
  %i.bd = fcmp oeq double %i.bc, +inf
  br i1 %i.bd, label %bb.p, label %.loopexit.i, !prof !23

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3821
  store i64 14, ptr %i.b, align 8, !noalias !3821
  %i.be = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3820
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3821
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.be, ptr %i.bf, align 8, !alias.scope !3820, !noalias !3822
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs2JiOgHzbbc7_10tokenizers.exit

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.m, %.loopexit.i, %bb.p
  %storemerge.i = phi i64 [ 0, %.loopexit.i ], [ 1, %bb.p ], [ 1, %bb.m ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !3820, !noalias !3822
  br label %bb.q

bb.q:                                             ; preds = %bb.t, %bb.e, %bb.d, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE14f64_from_partsCs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.r:                                             ; preds = %bb.g
  %i.bg = icmp ne i32 %.sroa.08.054, 214748364
  %i.bh = icmp samesign ugt i8 %i.af, 7
  %or.cond2 = or i1 %i.bg, %i.bh
  br i1 %or.cond2, label %bb.t, label %bb.s, !prof !33

bb.s:                                             ; preds = %bb.r, %bb.g
  %i.bi = mul i32 %.sroa.08.054, 10
  %i.bj = add i32 %i.bi, %i.ah                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ag, %i.j
  br i1 %exitcond.not, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28.thread, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit28

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp eq i64 %3, 0
  tail call void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_exponent_overflowB7_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i1 noundef zeroext %2, i1 noundef zeroext %i.bk, i1 noundef zeroext %.sroa.0.0)
  br label %bb.q
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(56) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3831, !noalias !3832, !noundef !3 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3831, !noalias !3832, !nonnull !3, !noundef !3
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !3832, !noalias !3831
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

._RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge: ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3832, !noalias !3831
  br label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit: ; preds = %._RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !3832, !noalias !3831
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3834)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3836)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !3837, !noundef !3 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !3838
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %._RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit_crit_edge, label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3832, !noalias !3831
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4peek.exit
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3896)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3897)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !3898, !noalias !3899, !noundef !3 ; 17 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3898, !noalias !3899, !noundef !3 ; 10 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %i.q, align 8, !alias.scope !3898, !noalias !3899, !nonnull !3, !noundef !3
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  %i.y = load i8, ptr %i.x, align 1, !noalias !3900, !noundef !3 ; 2 uses
  switch i8 %i.y, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !3901

bb.c:                                             ; preds = %bb.b
  %i.z = add i8 %i.y, -48
  %or.cond = icmp ult i8 %i.z, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !29

bb.d:                                             ; preds = %bb.b
  %i.aa = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.aa, ptr %i.r, align 8, !alias.scope !3902
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3903)
  %i.ab = load ptr, ptr %i.q, align 8, !alias.scope !3903, !noalias !3904, !nonnull !3 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.aa)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3905)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3906)
  %exitcond.not.i.not = icmp ult i64 %i.aa, %i.u
  br i1 %exitcond.not.i.not, label %bb.e, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.aa
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !3907, !noundef !3
  %i.ae = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ae, ptr %i.r, align 8, !alias.scope !3908, !noalias !3909
  %.not.i = icmp eq i8 %i.ad, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !29

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3910)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3911)
  %exitcond.not.i.1 = icmp eq i64 %i.u, %i.ae
  br i1 %exitcond.not.i.1, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !noalias !3912, !noundef !3
  %i.ah = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !3913, !noalias !3909
  %.not.i.1 = icmp eq i8 %i.ag, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !29

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3914)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3915)
  %exitcond.not.i.2 = icmp eq i64 %i.ah, %umax.i
  br i1 %exitcond.not.i.2, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !3916, !noundef !3
  %i.ak = add i64 %i.s, 4
  store i64 %i.ak, ptr %i.r, align 8, !alias.scope !3917, !noalias !3909
  %.not.i.2 = icmp eq i8 %i.aj, 108
  br i1 %.not.i.2, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit, label %bb.j, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3918
  store i64 5, ptr %i.f, align 8, !noalias !3918
  %i.al = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3918
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3918
  store i64 9, ptr %i.e, align 8, !noalias !3918
  %i.am = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3904
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3918
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.k:                                             ; preds = %bb.b
  %i.an = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.an, ptr %i.r, align 8, !alias.scope !3919
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3920)
  %i.ao = load ptr, ptr %i.q, align 8, !alias.scope !3920, !noalias !3921, !nonnull !3 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.an)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3922)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3923)
  %exitcond.not.i26.not = icmp ult i64 %i.an, %i.u
  br i1 %exitcond.not.i26.not, label %bb.l, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !3924, !noundef !3
  %i.ar = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.ar, ptr %i.r, align 8, !alias.scope !3925, !noalias !3926
  %.not.i27 = icmp eq i8 %i.aq, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !29

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3927)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3928)
  %exitcond.not.i26.1 = icmp eq i64 %i.u, %i.ar
  br i1 %exitcond.not.i26.1, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !3929, !noundef !3
  %i.au = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.au, ptr %i.r, align 8, !alias.scope !3930, !noalias !3926
  %.not.i27.1 = icmp eq i8 %i.at, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !29

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3931)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3932)
  %exitcond.not.i26.2 = icmp eq i64 %i.au, %umax.i24
  br i1 %exitcond.not.i26.2, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !3933, !noundef !3
  %i.ax = add i64 %i.s, 4
  store i64 %i.ax, ptr %i.r, align 8, !alias.scope !3934, !noalias !3926
  %.not.i27.2 = icmp eq i8 %i.aw, 101
  br i1 %.not.i27.2, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit30, label %bb.q, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29: ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3935
  store i64 5, ptr %i.d, align 8, !noalias !3935
  %i.ay = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3935
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3935
  store i64 9, ptr %i.c, align 8, !noalias !3935
  %i.az = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3921
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3935
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.r:                                             ; preds = %bb.b
  %i.ba = add nuw i64 %i.s, 1                     ; 4 uses
  store i64 %i.ba, ptr %i.r, align 8, !alias.scope !3936
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3937)
  %i.bb = load ptr, ptr %i.q, align 8, !alias.scope !3937, !noalias !3938, !nonnull !3 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.ba) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3940)
  %exitcond.not.i34.not = icmp ult i64 %i.ba, %i.u
  br i1 %exitcond.not.i34.not, label %bb.s, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37

bb.s:                                             ; preds = %bb.r
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.ba
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !3941, !noundef !3
  %i.be = add nuw i64 %i.s, 2                     ; 3 uses
  store i64 %i.be, ptr %i.r, align 8, !alias.scope !3942, !noalias !3943
  %.not.i35 = icmp eq i8 %i.bd, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !29

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3944)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3945)
  %exitcond.not.i34.1 = icmp eq i64 %i.u, %i.be
  br i1 %exitcond.not.i34.1, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !3946, !noundef !3
  %i.bh = add i64 %i.s, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.r, align 8, !alias.scope !3947, !noalias !3943
  %.not.i35.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !29

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3948)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3949)
  %exitcond.not.i34.2 = icmp eq i64 %i.bh, %umax.i32
  br i1 %exitcond.not.i34.2, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !3950, !noundef !3
  %i.bk = add i64 %i.s, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.r, align 8, !alias.scope !3951, !noalias !3943
  %.not.i35.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !29

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3952)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3953)
  %exitcond.not.i34.3 = icmp eq i64 %i.bk, %umax.i32
  br i1 %exitcond.not.i34.3, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !3954, !noundef !3
  %i.bn = add i64 %i.s, 5
  store i64 %i.bn, ptr %i.r, align 8, !alias.scope !3955, !noalias !3943
  %.not.i35.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i35.3, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit38, label %bb.z, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37: ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3956
  store i64 5, ptr %i.b, align 8, !noalias !3956
  %i.bo = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3956
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3956
  store i64 9, ptr %i.a, align 8, !noalias !3956
  %i.bp = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3956
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.aa:                                            ; preds = %bb.b
  %i.bq = add nuw i64 %i.s, 1
  store i64 %i.bq, ptr %i.r, align 8, !alias.scope !3957
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext false)
  %i.br = load i64, ptr %i.m, align 8, !range !13, !noundef !3
  %i.bs = icmp eq i64 %i.br, -1
  br i1 %i.bs, label %bb.af, label %bb.ag, !prof !25

bb.ab:                                            ; preds = %bb.b
  %i.bt = add nuw i64 %i.s, 1
  store i64 %i.bt, ptr %i.r, align 8, !alias.scope !3958
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bu, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read9parse_str(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bv = load i64, ptr %i.k, align 8, !range !10, !noundef !3
  %i.bw = icmp eq i64 %i.bv, 2
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !3, !noundef !3 ; 2 uses
  br i1 %i.bw, label %bb.ah, label %bb.ai, !prof !25

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.bz = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.i, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.ca = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i8 7, ptr %i.p, align 8
  %i.cb = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit38, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit30, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit, %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cs, %bb.al ], [ %i.cn, %.thread64 ], [ %i.cb, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit ], [ %i.ce, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit30 ], [ %i.cg, %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit38 ], [ %i.cj, %bb.ag ], [ %i.cm, %bb.ai ], [ %i.bz, %bb.ac ], [ %i.ca, %bb.ad ]
  %i.cc = call noundef nonnull align 8 ptr @_RINvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit30: ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 1, ptr %i.cd, align 1
  store i8 0, ptr %i.o, align 8
  %i.ce = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit38: ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  store i8 0, ptr %i.cf, align 1
  store i8 0, ptr %i.n, align 8
  %i.cg = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.n, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !nonnull !3, !align !5, !noundef !3
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.ag:                                            ; preds = %bb.aa
  %i.cj = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.m, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.by, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cl, align 8
  store i8 5, ptr %i.j, align 8
  %i.cm = call noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cn = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call fastcc void @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE13parse_integerCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.l, ptr noalias noundef align 8 dereferenceable(56) %0, i1 noundef zeroext true)
  %i.co = load i64, ptr %i.l, align 8, !range !13, !noundef !3
  %i.cp = icmp eq i64 %i.co, -1
  br i1 %i.cp, label %bb.ak, label %bb.al, !prof !25

bb.ak:                                            ; preds = %bb.aj
  %i.cq = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !3, !align !5, !noundef !3
  br label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.cs = call noundef nonnull align 8 ptr @_RNvMs2_NtCs5PtHgSLqj5O_10serde_json2deNtB5_12ParserNumber12invalid_type(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(16) %i.l, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  br label %bb.ae

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE11parse_identCs2JiOgHzbbc7_10tokenizers.exit.thread: ; preds = %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37, %bb.z, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29, %bb.q, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i, %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.cc, %bb.ae ], [ %i.cr, %bb.ak ], [ %i.by, %bb.ah ], [ %i.az, %bb.q ], [ %i.am, %bb.j ], [ %i.ci, %bb.af ], [ %i.al, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i ], [ %i.ay, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i29 ], [ %i.bo, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i37 ], [ %i.bp, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = invoke { i64, i64 } @_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read8position(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.c = extractvalue { i64, i64 } %i.b, 0
  %i.d = extractvalue { i64, i64 } %i.b, 1
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5Error6syntax(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %i.c, i64 noundef %i.d)
  ret ptr %i.e
end_hunk_4
begin_hunk_5_@_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers11normalizers5stripNtB4_5StripNtNtB8_9tokenizer10Normalizer9normalize:bb.a
  %i.a = load i8, ptr %0, align 1, !range !24, !noundef !3
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !24
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  %i.f = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString6lstrip(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString5strip(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString6rstrip(ptr noalias noundef nonnull align 8 dereferenceable(80) %1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.b, %bb.e, %bb.d
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers8decoders4fuseNtB4_4FuseNtNtB8_9tokenizer7Decoder12decode_chain(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(none) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !3, !noundef !3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.d, i64 noundef %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.g, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %2) #24
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26
  %i.h = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 8, 729) 24, i64 noundef 8) #26 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !23

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #24
          to label %bb.b unwind label %bb.i

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.g

bb.g:                                             ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.i:                                             ; preds = %bb.f, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerRjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon3vecINtB5_13DrainProducerTTTmmElEjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  store i64 0, ptr %i.a, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXsb_NtCsgbNVBrIJ05E_5rayon3vecINtB5_10SliceDrainTTTmmElEjEENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator9size_hintCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = load ptr, ptr %1, align 8, !nonnull !3, !noundef !3
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 2 uses
  store i64 %i.g, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.g, ptr %i.i, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RNvXsc_NtCs5PtHgSLqj5O_10serde_json2deINtB5_13VariantAccessNtNtB7_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4121)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !4122, !noalias !4123, !noundef !3 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !4124, !noalias !4125 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4122, !noalias !4123, !nonnull !3, !noundef !3 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4126)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4127)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !4128, !noundef !3
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !35

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !4129, !noalias !4125
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4120
  store i64 5, ptr %i.d, align 8, !noalias !4120
  %i.o = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4120
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !4130
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4131)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.p) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4133)
  %exitcond.not.i10.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i10.not.i, label %bb.e, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !4134, !noundef !3
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !4135, !noalias !4136
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !29

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4137)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4138)
  %exitcond.not.i10.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i10.1.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !4139, !noundef !3
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !4140, !noalias !4136
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !29

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4142)
  %exitcond.not.i10.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i10.2.i, label %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !4143, !noundef !3
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !4144, !noalias !4136
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs2JiOgHzbbc7_10tokenizers.exit, label %bb.j, !prof !29

_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i: ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4145
  store i64 5, ptr %i.c, align 8, !noalias !4145
  %i.z = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !4146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4145
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4145
  store i64 9, ptr %i.b, align 8, !noalias !4145
  %i.aa = call noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE5errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !4146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4145
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs2JiOgHzbbc7_10tokenizers.exit

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @88)
  %i.ac = call noundef nonnull align 8 ptr @_RINvMs0_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5Error12fix_positionNCNvMs3_NtB8_2deINtB1b_12DeserializerNtNtB8_4read7StrReadE12fix_position0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0)
  br label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs2JiOgHzbbc7_10tokenizers.exit

_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer16deserialize_unitNtNtB1j_5impls11UnitVisitorECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit.i, %bb.i, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i, %bb.j, %bb.k
  %.sroa.0.2.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %_RNvXs8_NtCs5PtHgSLqj5O_10serde_json4readNtB5_7StrReadNtB5_4Read4next.exit.i.i ], [ null, %bb.i ]
  ret ptr %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXse_NtCs2JiOgHzbbc7_10tokenizers9tokenizerNtB5_9TokenizerNtNtNtCs4NRVxsYgnAr_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1112 x i8]) align 8 captures(none) dereferenceable(1112) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [1112 x i8], align 8              ; 5 uses
  %i.d = alloca [1120 x i8], align 8              ; 9 uses
  %i.e = alloca [1112 x i8], align 8              ; 5 uses
  %i.f = alloca [1120 x i8], align 8              ; 9 uses
  %.sroa.14.i.i.i.i.i = alloca [1096 x i8], align 8 ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [1112 x i8], align 8              ; 8 uses
  %i.i = alloca [56 x i8], align 8                ; 25 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.14 = alloca [1096 x i8], align 8         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !4204
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %1, ptr %i.k, align 8, !noalias !4205
  %.sroa.4.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.0..sroa_idx11, align 8, !noalias !4205
  %.sroa.5.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 6 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx12, align 8, !noalias !4205
  store i64 0, ptr %i.i, align 8, !noalias !4204
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !4204
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !4204
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 7 uses
  store i8 -128, ptr %i.l, align 8, !noalias !4204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !4204
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4207)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4208)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4210)
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %bb.b
  %i.m = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]    ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !4211, !noundef !3 ; 2 uses
  switch i8 %i.o, label %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i [
    i8 32, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
    i8 13, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %.sroa.5.0..sroa_idx12, align 8, !alias.scope !4212, !noalias !4213
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.p, %2
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i)
  switch i8 %i.o, label %bb.c [
    i8 91, label %bb.d
    i8 123, label %bb.q
  ], !prof !31

.loopexit.i.i.i.i.i:                              ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4214
  store i64 5, ptr %i.g, align 8, !noalias !4214
  %i.q = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE10peek_errorCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc.i unwind label %bb.ab, !noalias !4204

.noexc.i:                                         ; preds = %.loopexit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4214
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer9TokenizerEBF_.exit16.i

bb.c:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  %i.r = invoke fastcc noundef nonnull align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE17peek_invalid_typeCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @89)
          to label %_RINvXs5_NtCs5PtHgSLqj5O_10serde_json2deQINtB6_12DeserializerNtNtB8_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer18deserialize_structINtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13serialization16TokenizerVisitorNtNtB2t_6models12ModelWrapperNtNtB2t_11normalizers17NormalizerWrapperNtNtB2t_14pre_tokenizers19PreTokenizerWrapperNtNtB2t_10processors20PostProcessorWrapperNtNtB2t_8decoders14DecoderWrapperEEB2t_.exit.thread14.i.i.i.i unwind label %bb.ab, !noalias !4204

bb.d:                                             ; preds = %_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE16parse_whitespaceCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  store i8 127, ptr %i.l, align 8, !alias.scope !4215, !noalias !4216
  %i.s = add i64 %i.m, 1
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx12, align 8, !alias.scope !4217, !noalias !4216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4214
  invoke void @_RINvYINtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13serialization16TokenizerVisitorNtNtBa_6models12ModelWrapperNtNtBa_11normalizers17NormalizerWrapperNtNtBa_14pre_tokenizers19PreTokenizerWrapperNtNtBa_10processors20PostProcessorWrapperNtNtBa_8decoders14DecoderWrapperENtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_seqINtNtCs5PtHgSLqj5O_10serde_json2de9SeqAccessNtNtB5a_4read7StrReadEEBa_(ptr noalias noundef nonnull sret([1112 x i8]) align 8 captures(none) dereferenceable(1112) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i, i1 noundef zeroext true)
          to label %.noexc7.i unwind label %bb.ab, !noalias !4204

.noexc7.i:                                        ; preds = %bb.d
  %i.t = load i8, ptr %i.l, align 8, !alias.scope !4215, !noalias !4216, !noundef !3
  %i.u = add i8 %i.t, 1
  store i8 %i.u, ptr %i.l, align 8, !alias.scope !4215, !noalias !4216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4214
  %i.v = invoke fastcc noundef align 8 ptr @_RNvMs3_NtCs5PtHgSLqj5O_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE7end_seqCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.i)
          to label %bb.f unwind label %bb.e, !noalias !4216 ; 10 uses

bb.e:                                             ; preds = %.noexc7.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13TokenizerImplNtNtB12_6models12ModelWrapperNtNtB12_11normalizers17NormalizerWrapperNtNtB12_14pre_tokenizers19PreTokenizerWrapperNtNtB12_10processors20PostProcessorWrapperNtNtB12_8decoders14DecoderWrapperENtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB12_(ptr noalias noundef align 8 dereferenceable(1112) %i.e) #24
          to label %.body.i unwind label %bb.j, !noalias !4216

bb.f:                                             ; preds = %.noexc7.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %i.f, ptr noundef nonnull align 8 dereferenceable(1112) %i.e, i64 1112, i1 false), !noalias !4214
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 1112
  store ptr %i.v, ptr %i.x, align 8, !noalias !4214
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4214
  %i.y = load i64, ptr %i.f, align 8, !range !13, !noalias !4214, !noundef !3 ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  br i1 %i.z, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not36.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not36.i.i.i.i.i, label %.thread31.i.i.i.i.i, label %bb.i

.thread31.i.i.i.i.i:                              ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !4214
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1096) %.sroa.14.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(1096) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 1096, i1 false), !noalias !4214
  br label %.thread9.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !4214, !nonnull !3, !align !5, !noundef !3 ; 2 uses
  %.not24.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not24.i.i.i.i.i, label %.thread9.i.i.i.i.i, label %bb.k

bb.i:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13TokenizerImplNtNtBG_6models12ModelWrapperNtNtBG_11normalizers17NormalizerWrapperNtNtBG_14pre_tokenizers19PreTokenizerWrapperNtNtBG_10processors20PostProcessorWrapperNtNtBG_8decoders14DecoderWrapperEEBG_(ptr noalias noundef align 8 dereferenceable(1112) %i.f)
          to label %.thread9.i.i.i.i.i unwind label %bb.ab, !noalias !4204

bb.j:                                             ; preds = %bb.r, %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #25, !noalias !4216
  unreachable

end_hunk_5
