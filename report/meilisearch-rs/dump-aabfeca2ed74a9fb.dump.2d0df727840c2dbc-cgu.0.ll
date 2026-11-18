Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31029
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hfb67612dea9da96fE":bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val12 = load i64, ptr %i.bc, align 8, !noundef !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22431
  store i64 13, ptr %i.b, align 8
  %i.bd = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val, i64 noundef %.val12), !noalias !22431
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22431
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bd, ptr %i.be, align 8
  store i64 3, ptr %0, align 8
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.bf = add nsw i8 %i.q, -48
  %i.bg = zext nneg i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 121 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.phi.trans.insert.i.i.i29 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 32
  br label %bb.s

bb.r:                                             ; preds = %bb.w, %.loopexit, %bb.ag, %bb.n, %bb.o, %bb.f, %bb.l, %bb.p
  ret void

bb.s:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h76241d674a319c97E.exit", %bb.q
  %.sroa.05.0 = phi i64 [ %i.bg, %bb.q ], [ %i.cv, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h76241d674a319c97E.exit" ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22432)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22433)
  %i.br = load i8, ptr %i.bh, align 8, !range !86, !alias.scope !22434, !noundef !63
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bt = load i8, ptr %i.bi, align 1, !alias.scope !22434, !noundef !63
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22435)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22436
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22439)
  %i.bu = load i64, ptr %i.bk, align 8, !alias.scope !22440, !noundef !63 ; 3 uses
  %i.bv = load i64, ptr %i.bl, align 8, !alias.scope !22440, !noundef !63
  %.not.i.not.i.i.i.i.i17 = icmp eq i64 %i.bv, %i.bu
  br i1 %.not.i.not.i.i.i.i.i17, label %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.i.i.i26", label %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.thread.i.i.i18"

"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.thread.i.i.i18": ; preds = %bb.u
  %i.bw = load ptr, ptr %i.bj, align 8, !alias.scope !22440, !nonnull !63, !noundef !63
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  %.val3.i.i.i.i.i.i19 = load i8, ptr %i.bx, align 1, !noalias !22441, !noundef !63
  %i.by = add i64 %i.bu, 1
  store i64 %i.by, ptr %i.bk, align 8, !alias.scope !22440
  br label %bb.v

"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.i.i.i26": ; preds = %bb.u
  call void @_ZN3std2io24uninlined_slow_read_byte17h6e9510d7c4c7c928E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %i.bj), !noalias !22442
  %.pr.i.i.i27 = load i8, ptr %i.a, align 8, !noalias !22443
  switch i8 %.pr.i.i.i27, label %bb.w [
    i8 2, label %.thread55
    i8 0, label %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit._crit_edge.i.i.i28"
  ]

.thread55:                                        ; preds = %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.i.i.i26"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22436
  br label %.loopexit

"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit._crit_edge.i.i.i28": ; preds = %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.i.i.i26"
  %.pre.i.i.i30 = load i8, ptr %.phi.trans.insert.i.i.i29, align 1, !noalias !22443
  br label %bb.v

bb.v:                                             ; preds = %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit._crit_edge.i.i.i28", %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.thread.i.i.i18"
  %.sroa.7.0.copyload.i.i20 = phi i8 [ %.pre.i.i.i30, %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit._crit_edge.i.i.i28" ], [ %.val3.i.i.i.i.i.i19, %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.thread.i.i.i18" ] ; 3 uses
  %i.bz = icmp eq i8 %.sroa.7.0.copyload.i.i20, 10
  %i.ca = load i64, ptr %i.bm, align 8, !alias.scope !22444, !noundef !63
  %i.cb = add i64 %i.ca, 1                        ; 2 uses
  br i1 %i.bz, label %"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread11.i.i25", label %"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread17.i.i21"

"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread11.i.i25": ; preds = %bb.v
  %i.cc = load i64, ptr %i.bn, align 8, !alias.scope !22444, !noundef !63
  %i.cd = add i64 %i.cc, %i.cb
  store i64 %i.cd, ptr %i.bn, align 8, !alias.scope !22444
  %i.ce = load i64, ptr %i.bo, align 8, !alias.scope !22444, !noundef !63
  %i.cf = add i64 %i.ce, 1
  store i64 %i.cf, ptr %i.bo, align 8, !alias.scope !22444
  br label %"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread17.i.i21"

"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread17.i.i21": ; preds = %"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread11.i.i25", %bb.v
  %.sink.i.i22 = phi i64 [ 0, %"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread11.i.i25" ], [ %i.cb, %bb.v ]
  store i64 %.sink.i.i22, ptr %i.bm, align 8, !alias.scope !22444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22436
  store i8 1, ptr %i.bh, align 8, !alias.scope !22434
  store i8 %.sroa.7.0.copyload.i.i20, ptr %i.bi, align 1, !alias.scope !22434
  br label %bb.x

bb.w:                                             ; preds = %"_ZN82_$LT$std..io..Bytes$LT$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hce82c7a81be1b758E.exit.i.i.i26"
  %.sroa.95.0..sroa_idx6.i.i32 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.95.0.copyload7.i.i33 = load ptr, ptr %.sroa.95.0..sroa_idx6.i.i32, align 8, !noalias !22445, !nonnull !63, !noundef !63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22436
  %i.cg = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %.sroa.95.0.copyload7.i.i33), !noalias !22446
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cg, ptr %i.ch, align 8
  store i64 3, ptr %0, align 8
  br label %bb.r

bb.x:                                             ; preds = %"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread17.i.i21", %bb.t
  %i.ci = phi i8 [ %i.bt, %bb.t ], [ %.sroa.7.0.copyload.i.i20, %"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbd8a204f61c984edE.exit.thread17.i.i21" ] ; 2 uses
  %i.cj = add i8 %i.ci, -48                       ; 3 uses
  %or.cond2 = icmp ult i8 %i.cj, 10
  br i1 %or.cond2, label %bb.y, label %.loopexit

.loopexit:                                        ; preds = %bb.x, %.thread55
  tail call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$12parse_number17h665da78c45e7e314E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(136) %1, i1 noundef zeroext %2, i64 noundef %.sroa.05.0)
  br label %bb.r

bb.y:                                             ; preds = %bb.x
  %i.ck = zext nneg i8 %i.cj to i64
  %i.cl = icmp ugt i64 %.sroa.05.0, 1844674407370955160
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cm = icmp ne i64 %.sroa.05.0, 1844674407370955161
  %i.cn = icmp samesign ugt i8 %i.cj, 5
  %or.cond3 = or i1 %i.cm, %i.cn
  br i1 %or.cond3, label %bb.ad, label %bb.aa, !prof !118

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i8 0, ptr %i.bh, align 8, !alias.scope !22447
  %i.co = load i64, ptr %i.h, align 8, !range !76, !alias.scope !22447 ; 2 uses
  %.not.i.not = icmp eq i64 %i.co, -9223372036854775808
  br i1 %.not.i.not, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h76241d674a319c97E.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i64, ptr %i.bp, align 8, !alias.scope !22448, !noundef !63 ; 3 uses
  %i.cq = icmp eq i64 %i.cp, %i.co
  br i1 %i.cq, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i"

bb.ac:                                            ; preds = %bb.ab
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i": ; preds = %bb.ac, %bb.ab
  %i.cr = load ptr, ptr %i.bq, align 8, !alias.scope !22448, !nonnull !63, !noundef !63
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 %i.ci, ptr %i.cs, align 1
  %i.ct = add i64 %i.cp, 1
  store i64 %i.ct, ptr %i.bp, align 8, !alias.scope !22448
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h76241d674a319c97E.exit"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h76241d674a319c97E.exit": ; preds = %bb.aa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i"
  %i.cu = mul nuw i64 %.sroa.05.0, 10
  %i.cv = add i64 %i.cu, %i.ck
  br label %bb.s

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17h28e8ead7ef2d8eb9E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, i1 noundef zeroext %2, i64 noundef %.sroa.05.0)
  %i.cw = load i64, ptr %i.f, align 8, !range !88, !noundef !63
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.da = load ptr, ptr %i.cy, align 8, !nonnull !63, !align !64, !noundef !63
  store ptr %i.da, ptr %i.cz, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.db = load double, ptr %i.cy, align 8, !noundef !63
  store double %i.db, ptr %i.cz, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink = phi i64 [ 3, %bb.ae ], [ 0, %bb.af ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h0dc9ac9a11ffd039E"(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #2 !guid !22578 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22579)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22581)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !22582, !noundef !63 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !22582, !noundef !63 ; 17 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit", label %.thread

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !22582, !nonnull !63, !align !74, !noundef !63 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !22583, !noundef !63 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !22582
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit"
  %i.q = icmp ult i64 %i.o, %i.i
  br i1 %i.q, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"

bb.c:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit"
  %i.r = add i8 %i.n, -49
  %or.cond1 = icmp ult i8 %i.r, 9
  br i1 %or.cond1, label %.preheader, label %.thread, !prof !99

.preheader:                                       ; preds = %bb.c
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !22584, !noundef !63
  %i.v = add i8 %i.u, -48
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.d, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread", !prof !103

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7", %bb.e, %.preheader, %bb.b, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit"
  %i.w = phi i64 [ %i.o, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit" ], [ %i.o, %.preheader ], [ %i.o, %bb.b ], [ %i.aa, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7" ], [ %i.ae, %bb.e ] ; 5 uses
  %i.x = icmp ult i64 %i.w, %i.i
  br i1 %i.x, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 13, ptr %i.e, align 8
  %i.y = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

.thread:                                          ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 13, ptr %i.d, align 8
  %i.z = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7": ; preds = %.preheader, %bb.e
  %i.aa = phi i64 [ %i.ae, %bb.e ], [ %i.o, %.preheader ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !22585, !noundef !63
  %i.ad = add i8 %i.ac, -48
  %or.cond2 = icmp ult i8 %i.ad, 10
  br i1 %or.cond2, label %bb.e, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7"
  %i.ae = add nuw i64 %i.aa, 1                    ; 4 uses
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !22586
  %i.af = icmp ult i64 %i.ae, %i.i
  br i1 %i.af, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !22587, !noundef !63
  switch i8 %i.ah, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit" [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22588)
  %storemerge.peel.i = add nuw i64 %i.w, 1        ; 5 uses
  %i.ai = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i", label %.thread.thread.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i": ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !22589, !noundef !63
  %i.al = add i8 %i.ak, -48
  %or.cond.peel.i = icmp ult i8 %i.al, 10
  br i1 %or.cond.peel.i, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i"
  %i.am = add i64 %i.i, -1                        ; 2 uses
  %exitcond.not58 = icmp eq i64 %storemerge.peel.i, %i.am
  br i1 %exitcond.not58, label %.thread.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i"

.peel.next.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i"
  %exitcond.not = icmp eq i64 %storemerge.i, %i.am
  br i1 %exitcond.not, label %.thread.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i", !llvm.loop !22498

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i": ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in17.i59 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in17.i59, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.ao = load i8, ptr %i.an, align 1, !noalias !22590, !noundef !63 ; 2 uses
  %i.ap = add i8 %i.ao, -48
  %or.cond.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond.i, label %.peel.next.i, label %.loopexit.i, !llvm.loop !22498

.loopexit.i:                                      ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i"
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !22588
  switch i8 %i.ao, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit" [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.i:                                        ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !22588
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

.thread.thread.i:                                 ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i", %bb.f
  %umax.sink.i = phi i64 [ %i.i, %bb.f ], [ %storemerge.peel.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i" ]
  store i64 %umax.sink.i, ptr %i.f, align 8, !alias.scope !22588
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22588
  store i64 13, ptr %i.c, align 8, !noalias !22588
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22588
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22591)
  %i.ar = add nuw i64 %storemerge.in17.i59, 2     ; 5 uses
  store i64 %i.ar, ptr %i.f, align 8, !alias.scope !22592
  %i.as = icmp ult i64 %i.ar, %i.i
  br i1 %i.as, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i": ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !noalias !22593, !noundef !63
  switch i8 %i.au, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i" [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i": ; preds = %bb.h, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i", %bb.g
  %i.av = phi i64 [ %i.ar, %bb.g ], [ %i.ax, %bb.h ], [ %i.ar, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22594)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22596)
  %i.aw = icmp ult i64 %i.av, %i.i
  br i1 %i.aw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i"

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i"
  %i.ax = add nuw i64 %storemerge.in17.i59, 3     ; 2 uses
  store i64 %i.ax, ptr %i.f, align 8, !alias.scope !22597
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !noalias !22598, !noundef !63
  %i.ba = add nuw i64 %i.av, 1                    ; 3 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !22599
  %i.bb = add i8 %i.az, -48
  %or.cond.i.i = icmp ult i8 %i.bb, 10
  br i1 %or.cond.i.i, label %.preheader.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i", !prof !99

.preheader.i.i:                                   ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i.i"
  %i.bc = icmp ult i64 %i.ba, %i.i
  br i1 %i.bc, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22600
  store i64 13, ptr %i.b, align 8, !noalias !22600
  %i.bd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22600
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i": ; preds = %.preheader.i.i, %bb.i
  %i.be = phi i64 [ %i.bi, %bb.i ], [ %i.ba, %.preheader.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !22601, !noundef !63
  %i.bh = add i8 %i.bg, -48
  %or.cond1.i.i = icmp ult i8 %i.bh, 10
  br i1 %or.cond1.i.i, label %bb.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i"
  %i.bi = add nuw i64 %i.be, 1                    ; 3 uses
  store i64 %i.bi, ptr %i.f, align 8, !alias.scope !22602
  %exitcond.not.i.i = icmp eq i64 %i.bi, %i.i
  br i1 %exitcond.not.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i"

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22603)
  %i.bj = add nuw i64 %i.w, 1                     ; 5 uses
  store i64 %i.bj, ptr %i.f, align 8, !alias.scope !22604
  %i.bk = icmp ult i64 %i.bj, %i.i
  br i1 %i.bk, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9": ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !22605, !noundef !63
  switch i8 %i.bm, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i" [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i": ; preds = %bb.k, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9", %bb.j
  %i.bn = phi i64 [ %i.bj, %bb.j ], [ %i.bp, %bb.k ], [ %i.bj, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22607)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22608)
  %i.bo = icmp ult i64 %i.bn, %i.i
  br i1 %i.bo, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i"

bb.k:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9"
  %i.bp = add nuw i64 %i.w, 2                     ; 2 uses
  store i64 %i.bp, ptr %i.f, align 8, !alias.scope !22609
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1, !noalias !22610, !noundef !63
  %i.bs = add nuw i64 %i.bn, 1                    ; 3 uses
  store i64 %i.bs, ptr %i.f, align 8, !alias.scope !22611
  %i.bt = add i8 %i.br, -48
  %or.cond.i8 = icmp ult i8 %i.bt, 10
  br i1 %or.cond.i8, label %.preheader.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i", !prof !99

.preheader.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i"
  %i.bu = icmp ult i64 %i.bs, %i.i
  br i1 %i.bu, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22603
  store i64 13, ptr %i.a, align 8, !noalias !22603
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22603
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i": ; preds = %.preheader.i, %bb.l
  %i.bw = phi i64 [ %i.ca, %bb.l ], [ %i.bs, %.preheader.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !22612, !noundef !63
  %i.bz = add i8 %i.by, -48
  %or.cond1.i = icmp ult i8 %i.bz, 10
  br i1 %or.cond1.i, label %bb.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i"
  %i.ca = add nuw i64 %i.bw, 1                    ; 3 uses
  store i64 %i.ca, ptr %i.f, align 8, !alias.scope !22613
  %exitcond.not.i = icmp eq i64 %i.ca, %i.i
  br i1 %exitcond.not.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i", %bb.l, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i", %bb.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5", %.thread.i, %.thread.thread.i, %.loopexit.i, %.preheader.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i", %.preheader.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i", %bb.d, %.thread
  %.sroa.0.3 = phi ptr [ %i.z, %.thread ], [ %i.y, %bb.d ], [ null, %.preheader.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i" ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5" ], [ %i.aq, %.thread.thread.i ], [ null, %.thread.i ], [ null, %.loopexit.i ], [ %i.bd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i" ], [ null, %.preheader.i.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread" ], [ %i.bv, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i" ], [ null, %bb.i ], [ null, %bb.l ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i" ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h84cb0903d0a66233E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality !guid !22671 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 12 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 7 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hf94eebe6dded35b1E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.i, ptr noalias noundef align 8 dereferenceable(96) %0)
  %i.j = load i8, ptr %i.i, align 8, !range !86, !noundef !63
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !63, !align !64, !noundef !63
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !noundef !63 ; 2 uses
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22672)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22673)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !86, !alias.scope !22674, !noundef !63
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  br i1 %i.s, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i", label %bb.e

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i": ; preds = %bb.d
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !22674, !noundef !63
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !22675
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8e19cf1e210051eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(32) %i.v), !noalias !22676
  %i.w = load i8, ptr %i.h, align 8, !range !72, !noalias !22675, !noundef !63
  switch i8 %i.w, label %bb.h [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i"
    i8 0, label %bb.f
  ], !prof !119

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.y = load i8, ptr %i.x, align 1, !noalias !22675, !noundef !63 ; 2 uses
  store i8 1, ptr %i.q, align 8, !alias.scope !22674
  store i8 %i.y, ptr %i.t, align 1, !alias.scope !22674
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i": ; preds = %bb.f, %bb.e
  %.sroa.6.0.ph.i = phi i8 [ 0, %bb.e ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22675
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.z = add i8 %i.o, -49
  %or.cond1 = icmp ult i8 %i.z, 9
  br i1 %or.cond1, label %.preheader, label %bb.n, !prof !120

.preheader:                                       ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit"

bb.h:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !22675, !nonnull !63, !noundef !63
  %i.aj = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ai), !noalias !22675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !22675
  br label %bb.m

bb.i:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i"
  %.sroa.5.0.ph = phi i8 [ %.sroa.6.0.ph.i, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i" ], [ %i.u, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i" ]
  %i.ak = add i8 %.sroa.5.0.ph, -48
  %or.cond = icmp ult i8 %i.ak, 10
  br i1 %or.cond, label %bb.j, label %.loopexit, !prof !138

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val4 = load i64, ptr %i.al, align 8, !noundef !63
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val5 = load i64, ptr %i.am, align 8, !noundef !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !22677
  store i64 13, ptr %i.g, align 8
  %i.an = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.g, i64 noundef %.val4, i64 noundef %.val5), !noalias !22677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !22677
  br label %bb.m

.loopexit:                                        ; preds = %bb.r, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22679)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 14 uses
  %i.ap = load i8, ptr %i.ao, align 8, !range !86, !alias.scope !22680, !noundef !63
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 11 uses
  br i1 %i.aq, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i10", label %bb.k

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i10": ; preds = %.loopexit
  %i.as = load i8, ptr %i.ar, align 1, !alias.scope !22680, !noundef !63
  br label %bb.w

bb.k:                                             ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !22681
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8e19cf1e210051eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef align 8 dereferenceable(32) %i.at), !noalias !22682
  %i.au = load i8, ptr %i.f, align 8, !range !72, !noalias !22681, !noundef !63
  switch i8 %i.au, label %bb.v [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i6"
    i8 0, label %bb.l
  ], !prof !119

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !noalias !22681, !noundef !63 ; 2 uses
  store i8 1, ptr %i.ao, align 8, !alias.scope !22680
  store i8 %i.aw, ptr %i.ar, align 1, !alias.scope !22680
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i6"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i6": ; preds = %bb.l, %bb.k
  %.sroa.6.0.ph.i7 = phi i8 [ 0, %bb.k ], [ %i.aw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !22681
  br label %bb.w

bb.m:                                             ; preds = %bb.h, %bb.j, %bb.q, %bb.n, %bb.b
  %.sroa.0.1 = phi ptr [ %i.m, %bb.b ], [ %i.az, %bb.n ], [ %i.bh, %bb.q ], [ %i.aj, %bb.h ], [ %i.an, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17he3da0bebbce7a601E.exit"

bb.n:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val = load i64, ptr %i.ax, align 8, !noundef !63
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val3 = load i64, ptr %i.ay, align 8, !noundef !63
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22683
  store i64 13, ptr %i.e, align 8
  %i.az = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17hd0fb411d419d3392E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, i64 noundef %.val, i64 noundef %.val3), !noalias !22683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !22683
  br label %bb.m

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit.backedge", %.preheader
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22684)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22685)
  %i.ba = load i8, ptr %i.aa, align 8, !range !86, !alias.scope !22686, !noundef !63
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i16", label %bb.o

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i16": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit"
  %i.bc = load i8, ptr %i.ab, align 1, !alias.scope !22686, !noundef !63
  br label %bb.r

bb.o:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h83771550cbef8e56E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22687
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8e19cf1e210051eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef align 8 dereferenceable(32) %i.ac), !noalias !22688
  %i.bd = load i8, ptr %i.d, align 8, !range !72, !noalias !22687, !noundef !63
  switch i8 %i.bd, label %bb.q [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i12"
    i8 0, label %bb.p
  ], !prof !119

bb.p:                                             ; preds = %bb.o
  %i.be = load i8, ptr %i.ad, align 1, !noalias !22687, !noundef !63 ; 2 uses
  store i8 1, ptr %i.aa, align 8, !alias.scope !22686
  store i8 %i.be, ptr %i.ab, align 1, !alias.scope !22686
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i12"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i12": ; preds = %bb.p, %bb.o
  %.sroa.6.0.ph.i13 = phi i8 [ 0, %bb.o ], [ %i.be, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22687
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !22687, !nonnull !63, !noundef !63
  %i.bh = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.bg), !noalias !22687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22687
  br label %bb.m

bb.r:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i12", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i16"
  %.sroa.6.0.ph = phi i8 [ %.sroa.6.0.ph.i13, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i12" ], [ %i.bc, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i16" ]
  %i.bi = add i8 %.sroa.6.0.ph, -48
  %or.cond2 = icmp ult i8 %i.bi, 10
end_hunk_0
