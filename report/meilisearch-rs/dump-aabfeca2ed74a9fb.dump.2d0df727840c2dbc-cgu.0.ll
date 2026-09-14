Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/dump-aabfeca2ed74a9fb.dump.2d0df727840c2dbc-cgu.0?download=true
inline.NumInlined: 31028
inline.NumDeleted: 13504
loop-unroll.NumCompletelyUnrolled: 125
loop-unroll.NumRuntimeUnrolled: 228
loop-unroll.NumUnrolled: 353
loop-unroll.NumUnrolledNotLatch: 9
begin_hunk_0_@"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17hfb67612dea9da96fE":bb.a
  br i1 %i.cl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cm = icmp ne i64 %.sroa.05.0, 1844674407370955161
  %i.cn = icmp samesign ugt i8 %i.cj, 5
  %or.cond3 = or i1 %i.cm, %i.cn
  br i1 %or.cond3, label %bb.ad, label %bb.aa, !prof !76

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i8 0, ptr %i.bh, align 8, !alias.scope !23525
  %i.co = load i64, ptr %i.h, align 8, !range !34, !alias.scope !23525 ; 2 uses
  %.not.i.not = icmp eq i64 %i.co, -9223372036854775808
  br i1 %.not.i.not, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h76241d674a319c97E.exit", label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cp = load i64, ptr %i.bp, align 8, !alias.scope !23526, !noalias !23527, !noundef !21 ; 3 uses
  %i.cq = icmp eq i64 %i.cp, %i.co
  br i1 %i.cq, label %bb.ac, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i"

bb.ac:                                            ; preds = %bb.ab
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha41f396e8ea6efa1E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1725)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i": ; preds = %bb.ac, %bb.ab
  %i.cr = load ptr, ptr %i.bq, align 8, !alias.scope !23526, !noalias !23527, !nonnull !21, !noundef !21
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cp
  store i8 %i.ci, ptr %i.cs, align 1
  %i.ct = add i64 %i.cp, 1
  store i64 %i.ct, ptr %i.bp, align 8, !alias.scope !23526, !noalias !23527
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h76241d674a319c97E.exit"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h76241d674a319c97E.exit": ; preds = %bb.aa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h6569782c65035c47E.exit.i"
  %i.cu = mul nuw i64 %.sroa.05.0, 10
  %i.cv = add i64 %i.cu, %i.ck
  br label %bb.s

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$18parse_long_integer17h28e8ead7ef2d8eb9E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(136) %1, i1 noundef zeroext %2, i64 noundef %.sroa.05.0)
  %i.cw = load i64, ptr %i.f, align 8, !range !46, !noundef !21
  %i.cx = trunc nuw i64 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.da = load ptr, ptr %i.cy, align 8, !nonnull !21, !align !22, !noundef !21
  store ptr %i.da, ptr %i.cz, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.db = load double, ptr %i.cy, align 8, !noundef !21
  store double %i.db, ptr %i.cz, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.sink = phi i64 [ 3, %bb.ae ], [ 0, %bb.af ]
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h0dc9ac9a11ffd039E"(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) dereferenceable(80) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23651)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23652)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23653)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 14 uses
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !23654, !noalias !23655, !noundef !21 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !23654, !noalias !23655, !noundef !21 ; 16 uses
  %i.j = icmp ult i64 %i.g, %i.i
  br i1 %i.j, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit", label %.thread

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit": ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !23654, !noalias !23655, !nonnull !21, !align !32, !noundef !21 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.g
  %i.n = load i8, ptr %i.m, align 1, !noalias !23656, !noundef !21 ; 2 uses
  %i.o = add nuw i64 %i.g, 1                      ; 8 uses
  store i64 %i.o, ptr %i.f, align 8, !alias.scope !23654, !noalias !23655
  %i.p = icmp eq i8 %i.n, 48
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit"
  %i.q = icmp ult i64 %i.o, %i.i
  br i1 %i.q, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"

bb.c:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit"
  %i.r = add i8 %i.n, -49
  %or.cond1 = icmp ult i8 %i.r, 9
  br i1 %or.cond1, label %.preheader, label %.thread, !prof !57

.preheader:                                       ; preds = %bb.c
  %i.s = icmp ult i64 %i.o, %i.i
  br i1 %i.s, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.o
  %i.u = load i8, ptr %i.t, align 1, !noalias !23657, !noundef !21
  %i.v = add i8 %i.u, -48
  %or.cond = icmp ult i8 %i.v, 10
  br i1 %or.cond, label %bb.d, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread", !prof !61

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
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !23658, !noundef !21
  %i.ad = add i8 %i.ac, -48
  %or.cond2 = icmp ult i8 %i.ad, 10
  br i1 %or.cond2, label %bb.e, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7"
  %i.ae = add nuw i64 %i.aa, 1                    ; 4 uses
  store i64 %i.ae, ptr %i.f, align 8, !alias.scope !23659
  %i.af = icmp ult i64 %i.ae, %i.i
  br i1 %i.af, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit7", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread"
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.w
  %i.ah = load i8, ptr %i.ag, align 1, !noalias !23660, !noundef !21
  switch i8 %i.ah, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit" [
    i8 46, label %bb.f
    i8 101, label %bb.j
    i8 69, label %bb.j
  ]

bb.f:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23661)
  %storemerge.peel.i = add nuw i64 %i.w, 1        ; 5 uses
  store i64 %storemerge.peel.i, ptr %i.f, align 8, !alias.scope !23661
  %i.ai = icmp ult i64 %storemerge.peel.i, %i.i
  br i1 %i.ai, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i", label %.thread.thread.i

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i": ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.peel.i
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !23662, !noundef !21
  %i.al = add i8 %i.ak, -48
  %or.cond.peel.i = icmp ult i8 %i.al, 10
  br i1 %or.cond.peel.i, label %.peel.next.i.preheader, label %.thread.thread.i

.peel.next.i.preheader:                           ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i"
  %i.am = add i64 %i.i, -1                        ; 2 uses
  %exitcond.not58 = icmp eq i64 %storemerge.peel.i, %i.am
  br i1 %exitcond.not58, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit.loopexit30", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i"

.peel.next.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i"
  %exitcond.not = icmp eq i64 %storemerge.i, %i.am
  br i1 %exitcond.not, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit.loopexit30", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i", !llvm.loop !23577

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i": ; preds = %.peel.next.i.preheader, %.peel.next.i
  %storemerge.in17.i59 = phi i64 [ %storemerge.i, %.peel.next.i ], [ %storemerge.peel.i, %.peel.next.i.preheader ] ; 3 uses
  %storemerge.i = add nuw i64 %storemerge.in17.i59, 1 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %storemerge.i
  %i.ao = load i8, ptr %i.an, align 1, !noalias !23663, !noundef !21 ; 2 uses
  %i.ap = add i8 %i.ao, -48
  %or.cond.i = icmp ult i8 %i.ap, 10
  br i1 %or.cond.i, label %.peel.next.i, label %.loopexit.i, !llvm.loop !23577

.loopexit.i:                                      ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i"
  store i64 %storemerge.i, ptr %i.f, align 8, !alias.scope !23661
  switch i8 %i.ao, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit" [
    i8 101, label %bb.g
    i8 69, label %bb.g
  ]

.thread.thread.i:                                 ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.peel.i", %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23661
  store i64 13, ptr %i.c, align 8, !noalias !23661
  %i.aq = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h4bcb1ec0631805b8E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23661
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

bb.g:                                             ; preds = %.loopexit.i, %.loopexit.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23664)
  %i.ar = add i64 %storemerge.in17.i59, 2         ; 5 uses
  store i64 %i.ar, ptr %i.f, align 8, !alias.scope !23665
  %i.as = icmp ult i64 %i.ar, %i.i
  br i1 %i.as, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i": ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ar
  %i.au = load i8, ptr %i.at, align 1, !noalias !23666, !noundef !21
  switch i8 %i.au, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i" [
    i8 43, label %bb.h
    i8 45, label %bb.h
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i": ; preds = %bb.h, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i", %bb.g
  %i.av = phi i64 [ %i.ar, %bb.g ], [ %i.ax, %bb.h ], [ %i.ar, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23667)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23669)
  %i.aw = icmp ult i64 %i.av, %i.i
  br i1 %i.aw, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i"

bb.h:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i.i"
  %i.ax = add i64 %storemerge.in17.i59, 3         ; 2 uses
  store i64 %i.ax, ptr %i.f, align 8, !alias.scope !23670
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !noalias !23671, !noundef !21
  %i.ba = add nuw i64 %i.av, 1                    ; 3 uses
  store i64 %i.ba, ptr %i.f, align 8, !alias.scope !23672, !noalias !23673
  %i.bb = add i8 %i.az, -48
  %or.cond.i.i = icmp ult i8 %i.bb, 10
  br i1 %or.cond.i.i, label %.preheader.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i", !prof !57

.preheader.i.i:                                   ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i.i"
  %i.bc = icmp ult i64 %i.ba, %i.i
  br i1 %i.bc, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23674
  store i64 13, ptr %i.b, align 8, !noalias !23674
  %i.bd = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23674
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i": ; preds = %.preheader.i.i, %bb.i
  %i.be = phi i64 [ %i.bi, %bb.i ], [ %i.ba, %.preheader.i.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !23675, !noundef !21
  %i.bh = add i8 %i.bg, -48
  %or.cond1.i.i = icmp ult i8 %i.bh, 10
  br i1 %or.cond1.i.i, label %bb.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

bb.i:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i"
  %i.bi = add nuw i64 %i.be, 1                    ; 3 uses
  store i64 %i.bi, ptr %i.f, align 8, !alias.scope !23676
  %exitcond.not.i.i = icmp eq i64 %i.bi, %i.i
  br i1 %exitcond.not.i.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i"

bb.j:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23677)
  %i.bj = add nuw i64 %i.w, 1                     ; 5 uses
  store i64 %i.bj, ptr %i.f, align 8, !alias.scope !23678
  %i.bk = icmp ult i64 %i.bj, %i.i
  br i1 %i.bk, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9": ; preds = %bb.j
  %i.bl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !23679, !noundef !21
  switch i8 %i.bm, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i" [
    i8 43, label %bb.k
    i8 45, label %bb.k
  ]

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i": ; preds = %bb.k, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9", %bb.j
  %i.bn = phi i64 [ %i.bj, %bb.j ], [ %i.bp, %bb.k ], [ %i.bj, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9" ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23680)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23681)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23682)
  %i.bo = icmp ult i64 %i.bn, %i.i
  br i1 %i.bo, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i"

bb.k:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.i9"
  %i.bp = add nuw i64 %i.w, 2                     ; 2 uses
  store i64 %i.bp, ptr %i.f, align 8, !alias.scope !23683
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1, !noalias !23684, !noundef !21
  %i.bs = add nuw i64 %i.bn, 1                    ; 3 uses
  store i64 %i.bs, ptr %i.f, align 8, !alias.scope !23685, !noalias !23686
  %i.bt = add i8 %i.br, -48
  %or.cond.i8 = icmp ult i8 %i.bt, 10
  br i1 %or.cond.i8, label %.preheader.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i", !prof !57

.preheader.i:                                     ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i"
  %i.bu = icmp ult i64 %i.bs, %i.i
  br i1 %i.bu, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.i", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23677
  store i64 13, ptr %i.a, align 8, !noalias !23677
  %i.bv = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17hc41d812516ce183cE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23677
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i": ; preds = %.preheader.i, %bb.l
  %i.bw = phi i64 [ %i.ca, %bb.l ], [ %i.bs, %.preheader.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noalias !23687, !noundef !21
  %i.bz = add i8 %i.by, -48
  %or.cond1.i = icmp ult i8 %i.bz, 10
  br i1 %or.cond1.i, label %bb.l, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i"
  %i.ca = add nuw i64 %i.bw, 1                    ; 3 uses
  store i64 %i.ca, ptr %i.f, align 8, !alias.scope !23688
  %exitcond.not.i = icmp eq i64 %i.ca, %i.i
  br i1 %exitcond.not.i, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit", label %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit.loopexit30": ; preds = %.peel.next.i, %.peel.next.i.preheader
  store i64 %i.i, ptr %i.f, align 8, !alias.scope !23661
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit": ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i", %bb.l, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i", %bb.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit.loopexit30", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread", %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5", %.thread.thread.i, %.loopexit.i, %.preheader.i.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i", %.preheader.i, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i", %bb.d, %.thread
  %.sroa.0.3 = phi ptr [ %i.z, %.thread ], [ %i.y, %bb.d ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i.i" ], [ null, %.preheader.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit5" ], [ %i.aq, %.thread.thread.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_decimal17h3bd9de6e95d1f573E.exit.loopexit30" ], [ null, %.loopexit.i ], [ %i.bd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i.i" ], [ null, %.preheader.i.i ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit.thread" ], [ %i.bv, %"_ZN10serde_json2de21Deserializer$LT$R$GT$17next_char_or_null17hdcd4b45127ba7238E.exit.thread.i" ], [ null, %bb.i ], [ null, %bb.l ], [ null, %"_ZN10serde_json2de21Deserializer$LT$R$GT$12peek_or_null17hd4410d50bf3934c9E.exit4.i" ]
  ret ptr %.sroa.0.3
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h84cb0903d0a66233E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %i.j = load i8, ptr %i.i, align 8, !range !42, !noundef !21
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !21, !align !22, !noundef !21
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.o = load i8, ptr %i.n, align 1, !noundef !21 ; 2 uses
  %i.p = icmp eq i8 %i.o, 48
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23746)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8, !range !42, !alias.scope !23747, !noalias !23748, !noundef !21
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 81 ; 2 uses
  br i1 %i.s, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i", label %bb.e

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i": ; preds = %bb.d
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !23747, !noalias !23748, !noundef !21
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23749
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  call fastcc void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd8e19cf1e210051eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(32) %i.v), !noalias !23748
  %i.w = load i8, ptr %i.h, align 8, !range !30, !noalias !23749, !noundef !21
  switch i8 %i.w, label %bb.h [
    i8 2, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i"
    i8 0, label %bb.f
  ], !prof !77

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.y = load i8, ptr %i.x, align 1, !noalias !23749, !noundef !21 ; 2 uses
  store i8 1, ptr %i.q, align 8, !alias.scope !23747, !noalias !23748
  store i8 %i.y, ptr %i.t, align 1, !alias.scope !23747, !noalias !23748
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i": ; preds = %bb.f, %bb.e
  %.sroa.6.0.ph.i = phi i8 [ 0, %bb.e ], [ %i.y, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23749
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.z = add i8 %i.o, -49
  %or.cond1 = icmp ult i8 %i.z, 9
  br i1 %or.cond1, label %.preheader, label %bb.n, !prof !78

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
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !23749, !nonnull !21, !noundef !21
  %i.aj = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17hee74e472dc93099bE(ptr noundef nonnull %i.ai), !noalias !23749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !23749
  br label %bb.m

bb.i:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i"
  %.sroa.5.0.ph = phi i8 [ %.sroa.6.0.ph.i, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread11.i" ], [ %i.u, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17hc9c247b56217562eE.exit.thread.i" ]
  %i.ak = add i8 %.sroa.5.0.ph, -48
  %or.cond = icmp ult i8 %i.ak, 10
  br i1 %or.cond, label %bb.j, label %.loopexit, !prof !96

end_hunk_0
