Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.07?download=true
inline.NumInlined: 5610
inline.NumDeleted: 2048
loop-unroll.NumCompletelyUnrolled: 37
loop-unroll.NumUnrolled: 37
loop-unroll.NumUnrolledNotLatch: 3
begin_hunk_0_@_ZN10anki_proto9scheduler16scheduling_state6normal4Kind5merge17hd32c20fef6b1e0dbE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.t, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i32 0, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  store i32 0, ptr %i.v, align 4
  store i32 0, ptr %i.e, align 4
  %i.w = call noundef align 8 ptr @_ZN5prost8encoding7message5merge17h2b96bb03580fe1a2E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not39 = icmp eq ptr %i.w, null
  br i1 %.not39, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = tail call noundef align 8 ptr @_ZN5prost8encoding7message5merge17h2b96bb03580fe1a2E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.i

bb.n:                                             ; preds = %bb.l
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(24) %i.e, i64 24, i1 false)
  store i32 4, ptr %0, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.d, align 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %i.z, i8 0, i64 17, i1 false)
  %i.aa = call noundef align 8 ptr @_ZN5prost8encoding7message5merge17h83b342ebfcb2fab8E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not36 = icmp eq ptr %i.aa, null
  br i1 %.not36, label %bb.r, label %bb.s

bb.q:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ac = tail call noundef align 8 ptr @_ZN5prost8encoding7message5merge17h83b342ebfcb2fab8E(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(32) %i.ab, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.i

bb.r:                                             ; preds = %bb.p
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %i.d, i64 32, i1 false)
  store i32 5, ptr %0, align 4
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.t:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 2, ptr %i.c, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i32 2, ptr %i.ad, align 4
  %i.ae = call noundef align 8 ptr @_ZN5prost8encoding7message5merge17h1be9d6327ad6dfbbE(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4) ; 2 uses
  %.not33 = icmp eq ptr %i.ae, null
  br i1 %.not33, label %bb.v, label %bb.w

bb.u:                                             ; preds = %bb.f
  %i.af = tail call noundef align 8 ptr @_ZN5prost8encoding7message5merge17h1be9d6327ad6dfbbE(i8 noundef %2, ptr noalias noundef nonnull align 4 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4)
  br label %bb.i

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %0, ptr noundef nonnull align 4 dereferenceable(56) %i.c, i64 56, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10anki_proto9scheduler16scheduling_state6normal4Kind6encode17hace3f80acbe47de5E(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !range !60, !noundef !5 ; 2 uses
  %i.b = add nsw i32 %i.a, -3
  %.inv = icmp samesign ult i32 %i.a, 3
  %narrow = select i1 %.inv, i32 3, i32 %i.b
  switch i32 %narrow, label %bb.b [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN5prost8encoding7message6encode17h5a62c81e4411f4faE(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN5prost8encoding7message6encode17hdffda0ac73f9d3e0E(i32 noundef 2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @_ZN5prost8encoding7message6encode17h263e67778dab42bcE(i32 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZN5prost8encoding7message6encode17h6092db1b349abb63E(i32 noundef 4, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117h49a93c87aebcb319E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 45 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !137, !noalias !138, !noundef !5 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.u, align 8, !alias.scope !139, !noalias !140 ; 2 uses
  %i.x = icmp ult i64 %.promoted.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !137, !noalias !138, !nonnull !5, !align !6, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.aa = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ad, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !142, !noundef !5 ; 3 uses
  switch i8 %i.ac, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ad = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ad, ptr %i.u, align 8, !alias.scope !143, !noalias !140
  %exitcond.not.i.i = icmp eq i64 %i.ad, %i.w
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !144
  switch i8 %i.ac, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !144
  store i64 5, ptr %i.t, align 8, !noalias !144
  %i.ae = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !144
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !134, !noalias !135
  store i8 22, ptr %0, align 8, !alias.scope !134, !noalias !135
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h16809c113ad0b875E.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.ag = add i8 %i.ac, -48
  %or.cond8.i = icmp ult i8 %i.ag, 10
  br i1 %or.cond8.i, label %bb.bw, label %bb.bv, !prof !7

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.ah = add i64 %i.aa, 1                        ; 4 uses
  store i64 %i.ah, ptr %i.u, align 8, !alias.scope !145, !noalias !134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %exitcond.not.i70.not.i = icmp ult i64 %i.ah, %i.w
  br i1 %exitcond.not.i70.not.i, label %bb.f, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i"

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !148, !noundef !5
  %i.ak = add i64 %i.aa, 2                        ; 3 uses
  store i64 %i.ak, ptr %i.u, align 8, !alias.scope !149, !noalias !150
  %.not.i.i = icmp eq i8 %i.aj, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %exitcond.not.i70.1.i = icmp eq i64 %i.ak, %umax.i.i
  br i1 %exitcond.not.i70.1.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !152, !noundef !5
  %i.an = add i64 %i.aa, 3                        ; 3 uses
  store i64 %i.an, ptr %i.u, align 8, !alias.scope !153, !noalias !150
  %.not.i.1.i = icmp eq i8 %i.am, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %exitcond.not.i70.2.i = icmp eq i64 %i.an, %umax.i.i
  br i1 %exitcond.not.i70.2.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !155, !noundef !5
  %i.aq = add i64 %i.aa, 4
  store i64 %i.aq, ptr %i.u, align 8, !alias.scope !156, !noalias !150
  %.not.i.2.i = icmp eq i8 %i.ap, 108
  br i1 %.not.i.2.i, label %bb.ag, label %bb.k, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !157
  store i64 5, ptr %i.f, align 8, !noalias !157
  %i.ar = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !157
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !157
  store i64 9, ptr %i.e, align 8, !noalias !157
  %i.as = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !157
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.at = add i64 %i.aa, 1                        ; 4 uses
  store i64 %i.at, ptr %i.u, align 8, !alias.scope !159, !noalias !134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !160)
  %umax.i73.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %exitcond.not.i75.not.i = icmp ult i64 %i.at, %i.w
  br i1 %exitcond.not.i75.not.i, label %bb.m, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79.i"

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !162, !noundef !5
  %i.aw = add i64 %i.aa, 2                        ; 3 uses
  store i64 %i.aw, ptr %i.u, align 8, !alias.scope !163, !noalias !164
  %.not.i76.i = icmp eq i8 %i.av, 114
  br i1 %.not.i76.i, label %bb.n, label %bb.r, !prof !8

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %exitcond.not.i75.1.i = icmp eq i64 %i.aw, %umax.i73.i
  br i1 %exitcond.not.i75.1.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !166, !noundef !5
  %i.az = add i64 %i.aa, 3                        ; 3 uses
  store i64 %i.az, ptr %i.u, align 8, !alias.scope !167, !noalias !164
  %.not.i76.1.i = icmp eq i8 %i.ay, 117
  br i1 %.not.i76.1.i, label %bb.p, label %bb.r, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %exitcond.not.i75.2.i = icmp eq i64 %i.az, %umax.i73.i
  br i1 %exitcond.not.i75.2.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !169, !noundef !5
  %i.bc = add i64 %i.aa, 4
  store i64 %i.bc, ptr %i.u, align 8, !alias.scope !170, !noalias !164
  %.not.i76.2.i = icmp eq i8 %i.bb, 101
  br i1 %.not.i76.2.i, label %bb.aj, label %bb.r, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79.i": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !171
  store i64 5, ptr %i.d, align 8, !noalias !171
  %i.bd = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !171
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !171
  store i64 9, ptr %i.c, align 8, !noalias !171
  %i.be = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !171
  br label %bb.ai

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.bf = add i64 %i.aa, 1                        ; 4 uses
  store i64 %i.bf, ptr %i.u, align 8, !alias.scope !173, !noalias !134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %umax.i82.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.w) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %exitcond.not.i84.not.i = icmp ult i64 %i.bf, %i.w
  br i1 %exitcond.not.i84.not.i, label %bb.t, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88.i"

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !176, !noundef !5
  %i.bi = add i64 %i.aa, 2                        ; 3 uses
  store i64 %i.bi, ptr %i.u, align 8, !alias.scope !177, !noalias !178
  %.not.i85.i = icmp eq i8 %i.bh, 97
  br i1 %.not.i85.i, label %bb.u, label %bb.aa, !prof !8

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %exitcond.not.i84.1.i = icmp eq i64 %i.bi, %umax.i82.i
  br i1 %exitcond.not.i84.1.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !180, !noundef !5
  %i.bl = add i64 %i.aa, 3                        ; 3 uses
  store i64 %i.bl, ptr %i.u, align 8, !alias.scope !181, !noalias !178
  %.not.i85.1.i = icmp eq i8 %i.bk, 108
  br i1 %.not.i85.1.i, label %bb.w, label %bb.aa, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %exitcond.not.i84.2.i = icmp eq i64 %i.bl, %umax.i82.i
  br i1 %exitcond.not.i84.2.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !183, !noundef !5
  %i.bo = add i64 %i.aa, 4                        ; 3 uses
  store i64 %i.bo, ptr %i.u, align 8, !alias.scope !184, !noalias !178
  %.not.i85.2.i = icmp eq i8 %i.bn, 115
  br i1 %.not.i85.2.i, label %bb.y, label %bb.aa, !prof !8

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %exitcond.not.i84.3.i = icmp eq i64 %i.bo, %umax.i82.i
  br i1 %exitcond.not.i84.3.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !186, !noundef !5
  %i.br = add i64 %i.aa, 5
  store i64 %i.br, ptr %i.u, align 8, !alias.scope !187, !noalias !178
  %.not.i85.3.i = icmp eq i8 %i.bq, 101
  br i1 %.not.i85.3.i, label %bb.al, label %bb.aa, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !188
  store i64 5, ptr %i.b, align 8, !noalias !188
  %i.bs = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !188
  br label %bb.ak

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !188
  store i64 9, ptr %i.a, align 8, !noalias !188
  %i.bt = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !189
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !188
  br label %bb.ak

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.bu = add i64 %i.aa, 1
  store i64 %i.bu, ptr %i.u, align 8, !alias.scope !190, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !144
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h45aa5fe29e981b15E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false), !noalias !134
  %i.bv = load i64, ptr %i.r, align 8, !range !9, !noalias !144, !noundef !5 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.bw, label %bb.am, label %switch.lookup

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.by = add i64 %i.aa, 1
  store i64 %i.by, ptr %i.u, align 8, !alias.scope !191, !noalias !134
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bz, align 8, !alias.scope !135, !noalias !134
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !144
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hae7e20f71263c1f7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !134
  %i.ca = load i64, ptr %i.p, align 8, !range !10, !noalias !144, !noundef !5 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !144 ; 4 uses
  br i1 %i.cb, label %bb.an, label %bb.ao

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cf = load i8, ptr %i.ce, align 8, !alias.scope !135, !noalias !134, !noundef !5
  %i.cg = add i8 %i.cf, -1                        ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 8, !alias.scope !135, !noalias !134
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.at, label %bb.au, !prof !11

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i"
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cj = load i8, ptr %i.ci, align 8, !alias.scope !135, !noalias !134, !noundef !5
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.ci, align 8, !alias.scope !135, !noalias !134
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.bh, label %bb.bi, !prof !11

bb.af:                                            ; preds = %bb.k, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i"
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ar, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i" ], [ %i.as, %bb.k ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.cm, align 8, !alias.scope !134, !noalias !135
  store i8 22, ptr %0, align 8, !alias.scope !134, !noalias !135
  br label %bb.ah

bb.ag:                                            ; preds = %bb.j
  store i8 18, ptr %i.s, align 8, !alias.scope !192, !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !144
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h16809c113ad0b875E.exit"

bb.ah:                                            ; preds = %bb.bx, %bb.bh, %bb.at, %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !144
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h16809c113ad0b875E.exit"

bb.ai:                                            ; preds = %bb.r, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79.i"
  %.sroa.0.1.i78.ph.i = phi ptr [ %i.bd, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79.i" ], [ %i.be, %bb.r ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i78.ph.i, ptr %i.cn, align 8, !alias.scope !134, !noalias !135
  store i8 22, ptr %0, align 8, !alias.scope !134, !noalias !135
  br label %bb.ah

bb.aj:                                            ; preds = %bb.q
  store i8 0, ptr %i.s, align 8, !alias.scope !193, !noalias !144
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !193, !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !144
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h16809c113ad0b875E.exit"

bb.ak:                                            ; preds = %bb.aa, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88.i"
  %.sroa.0.1.i87.ph.i = phi ptr [ %i.bs, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88.i" ], [ %i.bt, %bb.aa ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i87.ph.i, ptr %i.co, align 8, !alias.scope !134, !noalias !135
  store i8 22, ptr %0, align 8, !alias.scope !134, !noalias !135
  br label %bb.ah

bb.al:                                            ; preds = %bb.z
  store i8 0, ptr %i.s, align 8, !alias.scope !194, !noalias !144
  %.sroa.4.0..sroa_idx.i90.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i90.i, align 1, !alias.scope !194, !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !144
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h16809c113ad0b875E.exit"

bb.am:                                            ; preds = %bb.ab
  %i.cp = load ptr, ptr %i.bx, align 8, !noalias !144, !nonnull !5, !align !12, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %i.cq, align 8, !alias.scope !134, !noalias !135
  store i8 22, ptr %0, align 8, !alias.scope !134, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !144
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bx, align 8, !noalias !144
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %switch.cast = trunc nuw i64 %i.bv to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.s, align 8, !alias.scope !195, !noalias !196
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !195, !noalias !196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !144
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h16809c113ad0b875E.exit"

bb.an:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.cr, align 8, !alias.scope !134, !noalias !135
  store i8 22, ptr %0, align 8, !alias.scope !134, !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !144
  br label %bb.ah

bb.ao:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !144 ; 2 uses
  %i.cs = trunc nuw i64 %i.ca to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br i1 %i.cs, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @"_ZN87_$LT$serde..private..de..content..ContentVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hec89a4a2041dd71fE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cd, i64 noundef %.sroa.4.0.copyload.i), !noalias !134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !144
  %i.ct = load i8, ptr %i.s, align 8, !range !13, !noalias !144, !noundef !5
  %i.cu = icmp eq i8 %i.ct, 22
  br i1 %i.cu, label %bb.aq, label %bb.as, !prof !11

bb.aq:                                            ; preds = %bb.bv, %bb.bg, %bb.ap
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !noalias !144, !nonnull !5, !align !12, !noundef !5
  %i.cx = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.cw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !134
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cx, ptr %i.cy, align 8, !alias.scope !134, !noalias !135
end_hunk_0
begin_hunk_1_@_ZN10serde_core2de12Deserializer24__deserialize_content_v117h49a93c87aebcb319E:bb.a
  store i64 %.sroa.2102.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i95.i, align 8, !alias.scope !209, !noalias !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !144
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h16809c113ad0b875E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h16809c113ad0b875E.exit": ; preds = %.loopexit.i, %bb.ag, %bb.ah, %bb.aj, %bb.al, %switch.lookup, %bb.ar, %bb.as, %bb.bu, %switch.lookup30
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117hc6268b853a6d35eaE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(64) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !221, !noalias !219, !noundef !5
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !221, !noalias !219
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !220, !noalias !219
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hae7e20f71263c1f7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !219
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noalias !222, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !222 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !219, !noalias !220
  store i8 22, ptr %0, align 8, !alias.scope !219, !noalias !220
  br label %"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0ba8f4928f31f548E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !222 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @"_ZN87_$LT$serde..private..de..content..ContentVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hec89a4a2041dd71fE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0ba8f4928f31f548E.exit"

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !223, !noalias !224
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !223, !noalias !224
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !223, !noalias !224
  br label %"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0ba8f4928f31f548E.exit"

"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h0ba8f4928f31f548E.exit": ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !222
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117hccc97e907c4f89b7E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(80) initializes((16, 24)) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !235, !noalias !233, !noundef !5
  %i.e = add i64 %i.d, 1
  store i64 %i.e, ptr %i.c, align 8, !alias.scope !235, !noalias !233
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.f, align 8, !alias.scope !234, !noalias !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !236
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h8029598f5bdd8687E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !233
  %i.g = load i64, ptr %i.a, align 8, !range !10, !noalias !236, !noundef !5 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !236 ; 4 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.k, align 8, !alias.scope !233, !noalias !234
  store i8 22, ptr %0, align 8, !alias.scope !233, !noalias !234
  br label %"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb68fa05c02e7553E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !236 ; 2 uses
  %i.l = trunc nuw i64 %i.g to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @"_ZN87_$LT$serde..private..de..content..ContentVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hec89a4a2041dd71fE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %.sroa.4.0.copyload.i)
  br label %"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb68fa05c02e7553E.exit"

bb.e:                                             ; preds = %bb.c
  store i8 13, ptr %0, align 8, !alias.scope !237, !noalias !238
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !237, !noalias !238
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.4.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !237, !noalias !238
  br label %"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb68fa05c02e7553E.exit"

"_ZN80_$LT$serde_json..de..MapKey$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hbb68fa05c02e7553E.exit": ; preds = %bb.b, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !236
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10serde_core2de12Deserializer24__deserialize_content_v117hd9207f4fd690907cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 8 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 6 uses
  %i.s = alloca [32 x i8], align 8                ; 45 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !333)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !334, !noalias !335, !noundef !5 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.u, align 8, !alias.scope !336, !noalias !337 ; 2 uses
  %i.x = icmp ult i64 %.promoted.i.i, %i.w
  br i1 %i.x, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !334, !noalias !335, !nonnull !5, !align !6, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.aa = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.ad, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !340, !noundef !5 ; 3 uses
  switch i8 %i.ac, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ad = add i64 %i.aa, 1                        ; 3 uses
  store i64 %i.ad, ptr %i.u, align 8, !alias.scope !341, !noalias !337
  %exitcond.not.i.i = icmp eq i64 %i.ad, %i.w
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !342
  switch i8 %i.ac, label %bb.d [
    i8 110, label %bb.e
    i8 116, label %bb.l
    i8 102, label %bb.s
    i8 45, label %bb.ab
    i8 34, label %bb.ac
    i8 91, label %bb.ad
    i8 123, label %bb.ae
  ]

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !342
  store i64 5, ptr %i.t, align 8, !noalias !342
  %i.ae = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t), !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !342
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ae, ptr %i.af, align 8, !alias.scope !331, !noalias !332
  store i8 22, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h1db2d3aaab2856dcE.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.ag = add i8 %i.ac, -48
  %or.cond8.i = icmp ult i8 %i.ag, 10
  br i1 %or.cond8.i, label %bb.bw, label %bb.bv, !prof !7

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.ah = add i64 %i.aa, 1                        ; 4 uses
  store i64 %i.ah, ptr %i.u, align 8, !alias.scope !343, !noalias !331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !344)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !346)
  %exitcond.not.i70.not.i = icmp ult i64 %i.ah, %i.w
  br i1 %exitcond.not.i70.not.i, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i"

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !347, !noundef !5
  %i.ak = add i64 %i.aa, 2                        ; 3 uses
  store i64 %i.ak, ptr %i.u, align 8, !alias.scope !348, !noalias !349
  %.not.i.i = icmp eq i8 %i.aj, 117
  br i1 %.not.i.i, label %bb.g, label %bb.k, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !350)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  %exitcond.not.i70.1.i = icmp eq i64 %i.ak, %umax.i.i
  br i1 %exitcond.not.i70.1.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !352, !noundef !5
  %i.an = add i64 %i.aa, 3                        ; 3 uses
  store i64 %i.an, ptr %i.u, align 8, !alias.scope !353, !noalias !349
  %.not.i.1.i = icmp eq i8 %i.am, 108
  br i1 %.not.i.1.i, label %bb.i, label %bb.k, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  %exitcond.not.i70.2.i = icmp eq i64 %i.an, %umax.i.i
  br i1 %exitcond.not.i70.2.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !356, !noundef !5
  %i.aq = add i64 %i.aa, 4
  store i64 %i.aq, ptr %i.u, align 8, !alias.scope !357, !noalias !349
  %.not.i.2.i = icmp eq i8 %i.ap, 108
  br i1 %.not.i.2.i, label %bb.ag, label %bb.k, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !358
  store i64 5, ptr %i.f, align 8, !noalias !358
  %i.ar = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !358
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !358
  store i64 9, ptr %i.e, align 8, !noalias !358
  %i.as = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !358
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.at = add i64 %i.aa, 1                        ; 4 uses
  store i64 %i.at, ptr %i.u, align 8, !alias.scope !360, !noalias !331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !361)
  %umax.i73.i = tail call i64 @llvm.umax.i64(i64 %i.at, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !362)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !363)
  %exitcond.not.i75.not.i = icmp ult i64 %i.at, %i.w
  br i1 %exitcond.not.i75.not.i, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79.i"

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !364, !noundef !5
  %i.aw = add i64 %i.aa, 2                        ; 3 uses
  store i64 %i.aw, ptr %i.u, align 8, !alias.scope !365, !noalias !366
  %.not.i76.i = icmp eq i8 %i.av, 114
  br i1 %.not.i76.i, label %bb.n, label %bb.r, !prof !8

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !367)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  %exitcond.not.i75.1.i = icmp eq i64 %i.aw, %umax.i73.i
  br i1 %exitcond.not.i75.1.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !369, !noundef !5
  %i.az = add i64 %i.aa, 3                        ; 3 uses
  store i64 %i.az, ptr %i.u, align 8, !alias.scope !370, !noalias !366
  %.not.i76.1.i = icmp eq i8 %i.ay, 117
  br i1 %.not.i76.1.i, label %bb.p, label %bb.r, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !371)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !372)
  %exitcond.not.i75.2.i = icmp eq i64 %i.az, %umax.i73.i
  br i1 %exitcond.not.i75.2.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79.i", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !373, !noundef !5
  %i.bc = add i64 %i.aa, 4
  store i64 %i.bc, ptr %i.u, align 8, !alias.scope !374, !noalias !366
  %.not.i76.2.i = icmp eq i8 %i.bb, 101
  br i1 %.not.i76.2.i, label %bb.aj, label %bb.r, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79.i": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !375
  store i64 5, ptr %i.d, align 8, !noalias !375
  %i.bd = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !375
  br label %bb.ai

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !375
  store i64 9, ptr %i.c, align 8, !noalias !375
  %i.be = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !376
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !375
  br label %bb.ai

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.bf = add i64 %i.aa, 1                        ; 4 uses
  store i64 %i.bf, ptr %i.u, align 8, !alias.scope !377, !noalias !331
  tail call void @llvm.experimental.noalias.scope.decl(metadata !378)
  %umax.i82.i = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 %i.w) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %exitcond.not.i84.not.i = icmp ult i64 %i.bf, %i.w
  br i1 %exitcond.not.i84.not.i, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88.i"

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !noalias !381, !noundef !5
  %i.bi = add i64 %i.aa, 2                        ; 3 uses
  store i64 %i.bi, ptr %i.u, align 8, !alias.scope !382, !noalias !383
  %.not.i85.i = icmp eq i8 %i.bh, 97
  br i1 %.not.i85.i, label %bb.u, label %bb.aa, !prof !8

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !384)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  %exitcond.not.i84.1.i = icmp eq i64 %i.bi, %umax.i82.i
  br i1 %exitcond.not.i84.1.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !noalias !386, !noundef !5
  %i.bl = add i64 %i.aa, 3                        ; 3 uses
  store i64 %i.bl, ptr %i.u, align 8, !alias.scope !387, !noalias !383
  %.not.i85.1.i = icmp eq i8 %i.bk, 108
  br i1 %.not.i85.1.i, label %bb.w, label %bb.aa, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !389)
  %exitcond.not.i84.2.i = icmp eq i64 %i.bl, %umax.i82.i
  br i1 %exitcond.not.i84.2.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88.i", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bm = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noalias !390, !noundef !5
  %i.bo = add i64 %i.aa, 4                        ; 3 uses
  store i64 %i.bo, ptr %i.u, align 8, !alias.scope !391, !noalias !383
  %.not.i85.2.i = icmp eq i8 %i.bn, 115
  br i1 %.not.i85.2.i, label %bb.y, label %bb.aa, !prof !8

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !392)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !393)
  %exitcond.not.i84.3.i = icmp eq i64 %i.bo, %umax.i82.i
  br i1 %exitcond.not.i84.3.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88.i", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bp = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !394, !noundef !5
  %i.br = add i64 %i.aa, 5
  store i64 %i.br, ptr %i.u, align 8, !alias.scope !395, !noalias !383
  %.not.i85.3.i = icmp eq i8 %i.bq, 101
  br i1 %.not.i85.3.i, label %bb.al, label %bb.aa, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88.i": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !396
  store i64 5, ptr %i.b, align 8, !noalias !396
  %i.bs = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !396
  br label %bb.ak

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !396
  store i64 9, ptr %i.a, align 8, !noalias !396
  %i.bt = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !397
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !396
  br label %bb.ak

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.bu = add i64 %i.aa, 1
  store i64 %i.bu, ptr %i.u, align 8, !alias.scope !398, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !342
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h35a28843eeccb114E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(80) %1, i1 noundef zeroext false), !noalias !331
  %i.bv = load i64, ptr %i.r, align 8, !range !9, !noalias !342, !noundef !5 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 3
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  br i1 %i.bw, label %bb.am, label %switch.lookup

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.by = add i64 %i.aa, 1
  store i64 %i.by, ptr %i.u, align 8, !alias.scope !399, !noalias !331
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.bz, align 8, !alias.scope !332, !noalias !331
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !342
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h8029598f5bdd8687E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(80) %1), !noalias !331
  %i.ca = load i64, ptr %i.p, align 8, !range !10, !noalias !342, !noundef !5 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !342 ; 4 uses
  br i1 %i.cb, label %bb.an, label %bb.ao

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.cf = load i8, ptr %i.ce, align 8, !alias.scope !332, !noalias !331, !noundef !5
  %i.cg = add i8 %i.cf, -1                        ; 2 uses
  store i8 %i.cg, ptr %i.ce, align 8, !alias.scope !332, !noalias !331
  %i.ch = icmp eq i8 %i.cg, 0
  br i1 %i.ch, label %bb.at, label %bb.au, !prof !11

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit.i"
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.cj = load i8, ptr %i.ci, align 8, !alias.scope !332, !noalias !331, !noundef !5
  %i.ck = add i8 %i.cj, -1                        ; 2 uses
  store i8 %i.ck, ptr %i.ci, align 8, !alias.scope !332, !noalias !331
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %bb.bh, label %bb.bi, !prof !11

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i"
  %.sroa.0.1.i.ph.i = phi ptr [ %i.ar, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i" ], [ %i.as, %bb.k ]
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph.i, ptr %i.cm, align 8, !alias.scope !331, !noalias !332
  store i8 22, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.ah

bb.ag:                                            ; preds = %bb.j
  store i8 18, ptr %i.s, align 8, !alias.scope !400, !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !342
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h1db2d3aaab2856dcE.exit"

bb.ah:                                            ; preds = %bb.bx, %bb.bh, %bb.at, %bb.an, %bb.am, %bb.ak, %bb.ai, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !342
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h1db2d3aaab2856dcE.exit"

bb.ai:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79.i"
  %.sroa.0.1.i78.ph.i = phi ptr [ %i.bd, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79.i" ], [ %i.be, %bb.r ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i78.ph.i, ptr %i.cn, align 8, !alias.scope !331, !noalias !332
  store i8 22, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.ah

bb.aj:                                            ; preds = %bb.q
  store i8 0, ptr %i.s, align 8, !alias.scope !401, !noalias !342
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx.i.i, align 1, !alias.scope !401, !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !342
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h1db2d3aaab2856dcE.exit"

bb.ak:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88.i"
  %.sroa.0.1.i87.ph.i = phi ptr [ %i.bs, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88.i" ], [ %i.bt, %bb.aa ]
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i87.ph.i, ptr %i.co, align 8, !alias.scope !331, !noalias !332
  store i8 22, ptr %0, align 8, !alias.scope !331, !noalias !332
  br label %bb.ah

bb.al:                                            ; preds = %bb.z
  store i8 0, ptr %i.s, align 8, !alias.scope !402, !noalias !342
  %.sroa.4.0..sroa_idx.i90.i = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store i8 0, ptr %.sroa.4.0..sroa_idx.i90.i, align 1, !alias.scope !402, !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !342
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h1db2d3aaab2856dcE.exit"

bb.am:                                            ; preds = %bb.ab
  %i.cp = load ptr, ptr %i.bx, align 8, !noalias !342, !nonnull !5, !align !12, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %i.cq, align 8, !alias.scope !331, !noalias !332
  store i8 22, ptr %0, align 8, !alias.scope !331, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !342
  br label %bb.ah

switch.lookup:                                    ; preds = %bb.ab
  %.sroa.2.0.copyload.i = load i64, ptr %i.bx, align 8, !noalias !342
  %.sroa.41.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %switch.cast = trunc nuw i64 %i.bv to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 525322, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  store i8 %switch.masked, ptr %i.s, align 8, !alias.scope !403, !noalias !404
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.41.0..sroa_idx.i.i.i, align 8, !alias.scope !403, !noalias !404
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !342
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !342
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h1db2d3aaab2856dcE.exit"

bb.an:                                            ; preds = %bb.ac
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cd, ptr %i.cr, align 8, !alias.scope !331, !noalias !332
  store i8 22, ptr %0, align 8, !alias.scope !331, !noalias !332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !342
  br label %bb.ah

bb.ao:                                            ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !342 ; 2 uses
  %i.cs = trunc nuw i64 %i.ca to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cd) ]
  br i1 %i.cs, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @"_ZN87_$LT$serde..private..de..content..ContentVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17hec89a4a2041dd71fE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.cd, i64 noundef %.sroa.4.0.copyload.i), !noalias !331
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !342
  %i.ct = load i8, ptr %i.s, align 8, !range !13, !noalias !342, !noundef !5
  %i.cu = icmp eq i8 %i.ct, 22
  br i1 %i.cu, label %bb.aq, label %bb.as, !prof !11

bb.aq:                                            ; preds = %bb.bv, %bb.bg, %bb.ap
  %i.cv = getelementptr inbounds nuw i8, ptr %i.s, i64 8
end_hunk_1
begin_hunk_2_@"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E":bb.a

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.d, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_json..error..ErrorCode$GT$17h69c53e0846280739E"(ptr noalias noundef align 8 dereferenceable(24) %1) #27
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = invoke { i64, i64 } @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$13peek_position17he7d6b9c5047be58fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { i64, i64 } %i.c, 0
  %i.e = extractvalue { i64, i64 } %i.c, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.f = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.d, i64 noundef %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.f

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$serde_json..error..ErrorCode$GT$17h69c53e0846280739E"(ptr noalias noundef align 8 dereferenceable(24) %1) #27
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h1ab37c61650c0065E"(ptr noalias noundef align 8 dereferenceable(344) %0, ptr noalias noundef nonnull readonly align 1 captures(address) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 305
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.k = icmp samesign eq i64 %2, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.thread
  %i.l = icmp eq ptr %i.m, %i.d
  br i1 %i.l, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.031 = phi ptr [ %i.m, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.01.031, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1969)
  %i.n = load i8, ptr %i.e, align 8, !range !18, !alias.scope !1969, !noalias !1970, !noundef !5
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = load i8, ptr %i.f, align 1, !alias.scope !1969, !noalias !1970 ; 3 uses
  store i8 0, ptr %i.e, align 8, !alias.scope !1969, !noalias !1970
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.q = load i64, ptr %i.h, align 8, !range !19, !alias.scope !1969, !noalias !1970, !noundef !5 ; 2 uses
  %.not5.i = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not5.i, label %.thread, label %bb.h

bb.d:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1971
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1ba360a0b463dbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(312) %0), !noalias !1970
  %i.r = load i8, ptr %i.c, align 8, !range !28, !noalias !1971, !noundef !5
  switch i8 %i.r, label %bb.j [
    i8 2, label %bb.k
    i8 0, label %bb.e
  ], !prof !29

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %i.g, align 1, !noalias !1971, !noundef !5 ; 2 uses
  %i.t = load i64, ptr %i.h, align 8, !range !19, !alias.scope !1969, !noalias !1970, !noundef !5 ; 2 uses
  %.not4.i = icmp eq i64 %i.t, -9223372036854775808
  br i1 %.not4.i, label %.thread27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = load i64, ptr %i.i, align 8, !alias.scope !1972, !noalias !1970, !noundef !5 ; 3 uses
  %i.v = icmp eq i64 %i.u, %i.t
  br i1 %i.v, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"

bb.g:                                             ; preds = %bb.f
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !1970
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i": ; preds = %bb.g, %bb.f
  %i.w = load ptr, ptr %i.j, align 8, !alias.scope !1972, !noalias !1970, !nonnull !5, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 %i.s, ptr %i.x, align 1, !noalias !1970
  %i.y = add i64 %i.u, 1
  store i64 %i.y, ptr %i.i, align 8, !alias.scope !1972, !noalias !1970
  br label %.thread27

bb.h:                                             ; preds = %bb.c
  %i.z = load i64, ptr %i.i, align 8, !alias.scope !1973, !noalias !1970, !noundef !5 ; 3 uses
  %i.aa = icmp eq i64 %i.z, %i.q
  br i1 %i.aa, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !1970
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i": ; preds = %bb.i, %bb.h
  %i.ab = load ptr, ptr %i.j, align 8, !alias.scope !1973, !noalias !1970, !nonnull !5, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.z
  store i8 %i.p, ptr %i.ac, align 1, !noalias !1970
  %i.ad = add i64 %i.z, 1
  store i64 %i.ad, ptr %i.i, align 8, !alias.scope !1973, !noalias !1970
  br label %.thread

bb.j:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !1971, !nonnull !5, !noundef !5
  %i.ag = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.af), !noalias !1970
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1971
  br label %.loopexit

.thread27:                                        ; preds = %bb.e, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1971
  br label %.thread

.thread:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i", %bb.c, %.thread27
  %.sroa.10.11626 = phi i8 [ %i.s, %.thread27 ], [ %i.p, %bb.c ], [ %i.p, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i" ]
  %i.ah = load i8, ptr %.sroa.01.031, align 1, !noundef !5
  %.not = icmp eq i8 %.sroa.10.11626, %i.ah
  br i1 %.not, label %bb.b, label %bb.l, !prof !30

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1971
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val.i = load i64, ptr %i.ai, align 8, !noalias !1974, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val2.i = load i64, ptr %i.aj, align 8, !noalias !1974, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1974
  store i64 5, ptr %i.b, align 8
  %i.ak = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val2.i), !noalias !1974
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1974
  br label %.loopexit

bb.l:                                             ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val.i5 = load i64, ptr %i.al, align 8, !noalias !1975, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val2.i6 = load i64, ptr %i.am, align 8, !noalias !1975, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1975
  store i64 9, ptr %i.a, align 8
  %i.an = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val.i5, i64 noundef %.val2.i6), !noalias !1975
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1975
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.j, %bb.k, %bb.l
  %.sroa.0.1 = phi ptr [ %i.ak, %bb.k ], [ %i.ag, %bb.j ], [ %i.an, %bb.l ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E"(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.f)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1982)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1983)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !1984, !noundef !5
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !1985, !noalias !1986
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !5
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !30

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit": ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit", %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit" ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17ha4b3dc034e26000eE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %0, ptr noalias noundef nonnull readonly align 1 captures(address) %1, i64 noundef range(i64 3, 5) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  br label %bb.b

bb.a:                                             ; preds = %.thread
  %i.k = icmp eq ptr %i.l, %i.d
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %.sroa.01.031 = phi ptr [ %1, %.lr.ph ], [ %i.l, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.01.031, i64 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1998)
  %i.m = load i8, ptr %i.e, align 8, !range !18, !alias.scope !1998, !noalias !1999, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i8, ptr %i.f, align 1, !alias.scope !1998, !noalias !1999 ; 3 uses
  store i8 0, ptr %i.e, align 8, !alias.scope !1998, !noalias !1999
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = load i64, ptr %i.h, align 8, !range !19, !alias.scope !1998, !noalias !1999, !noundef !5 ; 2 uses
  %.not5.i = icmp eq i64 %i.p, -9223372036854775808
  br i1 %.not5.i, label %.thread, label %bb.h

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2000
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27e7bfe28c0a3852E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(296) %0), !noalias !1999
  %i.q = load i8, ptr %i.c, align 8, !range !28, !noalias !2000, !noundef !5
  switch i8 %i.q, label %bb.j [
    i8 2, label %bb.k
    i8 0, label %bb.e
  ], !prof !29

bb.e:                                             ; preds = %bb.d
  %i.r = load i8, ptr %i.g, align 1, !noalias !2000, !noundef !5 ; 2 uses
  %i.s = load i64, ptr %i.h, align 8, !range !19, !alias.scope !1998, !noalias !1999, !noundef !5 ; 2 uses
  %.not4.i = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not4.i, label %.thread27, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.i, align 8, !alias.scope !2001, !noalias !1999, !noundef !5 ; 3 uses
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"

bb.g:                                             ; preds = %bb.f
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !1999
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i": ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr %i.j, align 8, !alias.scope !2001, !noalias !1999, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 %i.r, ptr %i.w, align 1, !noalias !1999
  %i.x = add i64 %i.t, 1
  store i64 %i.x, ptr %i.i, align 8, !alias.scope !2001, !noalias !1999
  br label %.thread27

bb.h:                                             ; preds = %bb.c
  %i.y = load i64, ptr %i.i, align 8, !alias.scope !2002, !noalias !1999, !noundef !5 ; 3 uses
  %i.z = icmp eq i64 %i.y, %i.p
  br i1 %i.z, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !1999
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i": ; preds = %bb.i, %bb.h
  %i.aa = load ptr, ptr %i.j, align 8, !alias.scope !2002, !noalias !1999, !nonnull !5, !noundef !5
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 %i.o, ptr %i.ab, align 1, !noalias !1999
  %i.ac = add i64 %i.y, 1
  store i64 %i.ac, ptr %i.i, align 8, !alias.scope !2002, !noalias !1999
  br label %.thread

bb.j:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !2000, !nonnull !5, !noundef !5
  %i.af = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.ae), !noalias !1999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2000
  br label %.loopexit

.thread27:                                        ; preds = %bb.e, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2000
  br label %.thread

.thread:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i", %bb.c, %.thread27
  %.sroa.10.11626 = phi i8 [ %i.r, %.thread27 ], [ %i.o, %bb.c ], [ %i.o, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit6.i" ]
  %i.ag = load i8, ptr %.sroa.01.031, align 1, !noundef !5
  %.not = icmp eq i8 %.sroa.10.11626, %i.ag
  br i1 %.not, label %bb.a, label %bb.l, !prof !30

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2000
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val.i = load i64, ptr %i.ah, align 8, !noalias !2003, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val2.i = load i64, ptr %i.ai, align 8, !noalias !2003, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2003
  store i64 5, ptr %i.b, align 8
  %i.aj = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val2.i), !noalias !2003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2003
  br label %.loopexit

bb.l:                                             ; preds = %.thread
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val.i5 = load i64, ptr %i.ak, align 8, !noalias !2004, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248
  %.val2.i6 = load i64, ptr %i.al, align 8, !noalias !2004, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2004
  store i64 9, ptr %i.a, align 8
  %i.am = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val.i5, i64 noundef %.val2.i6), !noalias !2004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2004
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.j, %bb.k, %bb.l
  %.sroa.0.1 = phi ptr [ %i.aj, %bb.k ], [ %i.af, %bb.j ], [ %i.am, %bb.l ], [ null, %bb.a ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE"(ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(address) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6
  %.promoted = load i64, ptr %i.d, align 8        ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %.promoted, i64 %i.f)
  %i.i = icmp samesign eq i64 %2, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.01.09, i64 1 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.c
  br i1 %i.k, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.09 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.l = phi i64 [ %i.o, %bb.b ], [ %.promoted, %bb.a ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2008)
  %exitcond.not = icmp eq i64 %i.l, %umax
  br i1 %exitcond.not, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit", label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !2009, !noundef !5
  %i.o = add i64 %i.l, 1                          ; 2 uses
  store i64 %i.o, ptr %i.d, align 8, !alias.scope !2008, !noalias !2010
  %i.p = load i8, ptr %.sroa.01.09, align 1, !noundef !5
  %.not = icmp eq i8 %i.n, %i.p
  br i1 %.not, label %bb.b, label %bb.d, !prof !30

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit": ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 5, ptr %i.b, align 8
  %i.q = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 9, ptr %i.a, align 8
  %i.r = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit", %bb.d
  %.sroa.0.1 = phi ptr [ %i.r, %bb.d ], [ %i.q, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit" ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$12fix_position17h8921728eef9d2adeE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17hc52a355ff55369d6E"(ptr noalias noundef nonnull align 8 dereferenceable(80) initializes((16, 24)) %0) unnamed_addr #0 {
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
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2118, !noalias !2119, !noundef !5 ; 2 uses
  %.promoted.i185 = load i64, ptr %i.p, align 8, !alias.scope !2120, !noalias !2121 ; 2 uses
  %i.s = icmp ult i64 %.promoted.i185, %i.r
  br i1 %i.s, label %.lr.ph.i.lr.ph, label %.loopexit147

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !2122, !noalias !2119
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ba
  %i.v = phi ptr [ %.pre, %.lr.ph.i.lr.ph ], [ %i.du, %bb.ba ] ; 11 uses
  %.promoted.i188 = phi i64 [ %.promoted.i185, %.lr.ph.i.lr.ph ], [ %.promoted.i, %bb.ba ]
  %i.w = phi i64 [ %i.r, %.lr.ph.i.lr.ph ], [ %i.dt, %bb.ba ] ; 7 uses
  %.sroa.643.0187 = phi i8 [ undef, %.lr.ph.i.lr.ph ], [ %.sroa.029.2180, %bb.ba ] ; 2 uses
  %.sroa.041.0186 = phi i1 [ false, %.lr.ph.i.lr.ph ], [ true, %bb.ba ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2123)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.x = phi i64 [ %.promoted.i188, %.lr.ph.i ], [ %i.aa, %bb.c ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2124)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2125)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !2126, !noundef !5 ; 3 uses
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
    i8 91, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit"
    i8 123, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit"
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aa = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.p, align 8, !alias.scope !2127, !noalias !2121
  %exitcond.not.i = icmp eq i64 %i.aa, %i.w
  br i1 %exitcond.not.i, label %.loopexit147, label %bb.b

.loopexit147:                                     ; preds = %bb.ba, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 5, ptr %i.n, align 8
  %i.ab = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.d:                                             ; preds = %bb.b
  %i.ac = add i8 %i.z, -48
  %or.cond = icmp ult i8 %i.ac, 10
  br i1 %or.cond, label %bb.ab, label %bb.aa, !prof !7

bb.e:                                             ; preds = %bb.b
  %i.ad = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.ad, ptr %i.p, align 8, !alias.scope !2128
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2129)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2131)
  %exitcond.not.i59.not = icmp ult i64 %i.ad, %i.w
  br i1 %exitcond.not.i59.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !2132, !noundef !5
  %i.ag = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.ag, ptr %i.p, align 8, !alias.scope !2133, !noalias !2134
  %.not.i = icmp eq i8 %i.af, 117
  br i1 %.not.i, label %bb.g, label %.loopexit250, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2136)
  %exitcond.not.i59.1 = icmp eq i64 %i.ag, %umax.i
  br i1 %exitcond.not.i59.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !2137, !noundef !5
  %i.aj = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.aj, ptr %i.p, align 8, !alias.scope !2138, !noalias !2134
  %.not.i.1 = icmp eq i8 %i.ai, 108
  br i1 %.not.i.1, label %bb.i, label %.loopexit250, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2139)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2140)
  %exitcond.not.i59.2 = icmp eq i64 %i.aj, %umax.i
  br i1 %exitcond.not.i59.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !2141, !noundef !5
  %i.am = add i64 %i.x, 4
  store i64 %i.am, ptr %i.p, align 8, !alias.scope !2142, !noalias !2134
  %.not.i.2 = icmp eq i8 %i.al, 108
  br i1 %.not.i.2, label %.loopexit144, label %.loopexit250, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2143
  store i64 5, ptr %i.f, align 8, !noalias !2143
  %i.an = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2143
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

.loopexit250:                                     ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2143
  store i64 9, ptr %i.e, align 8, !noalias !2143
  %i.ao = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2143
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ap = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.ap, ptr %i.p, align 8, !alias.scope !2145
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2146)
  %umax.i62 = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2148)
  %exitcond.not.i64.not = icmp ult i64 %i.ap, %i.w
  br i1 %exitcond.not.i64.not, label %bb.l, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i68"

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !2149, !noundef !5
  %i.as = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.as, ptr %i.p, align 8, !alias.scope !2150, !noalias !2151
  %.not.i65 = icmp eq i8 %i.ar, 114
  br i1 %.not.i65, label %bb.m, label %.loopexit243, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2152)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  %exitcond.not.i64.1 = icmp eq i64 %i.as, %umax.i62
  br i1 %exitcond.not.i64.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i68", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !2154, !noundef !5
  %i.av = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.av, ptr %i.p, align 8, !alias.scope !2155, !noalias !2151
  %.not.i65.1 = icmp eq i8 %i.au, 117
  br i1 %.not.i65.1, label %bb.o, label %.loopexit243, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2157)
  %exitcond.not.i64.2 = icmp eq i64 %i.av, %umax.i62
  br i1 %exitcond.not.i64.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i68", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2158, !noundef !5
  %i.ay = add i64 %i.x, 4
  store i64 %i.ay, ptr %i.p, align 8, !alias.scope !2159, !noalias !2151
  %.not.i65.2 = icmp eq i8 %i.ax, 101
  br i1 %.not.i65.2, label %.loopexit144, label %.loopexit243, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i68": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2160
  store i64 5, ptr %i.d, align 8, !noalias !2160
  %i.az = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2160
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

.loopexit243:                                     ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2160
  store i64 9, ptr %i.c, align 8, !noalias !2160
  %i.ba = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2160
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.q:                                             ; preds = %bb.b
  %i.bb = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.p, align 8, !alias.scope !2162
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2163)
  %umax.i71 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.w) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2164)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2165)
  %exitcond.not.i73.not = icmp ult i64 %i.bb, %i.w
  br i1 %exitcond.not.i73.not, label %bb.r, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i77"

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !2166, !noundef !5
  %i.be = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.be, ptr %i.p, align 8, !alias.scope !2167, !noalias !2168
  %.not.i74 = icmp eq i8 %i.bd, 97
  br i1 %.not.i74, label %bb.s, label %.loopexit236, !prof !8

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2170)
  %exitcond.not.i73.1 = icmp eq i64 %i.be, %umax.i71
  br i1 %exitcond.not.i73.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i77", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2171, !noundef !5
  %i.bh = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.p, align 8, !alias.scope !2172, !noalias !2168
  %.not.i74.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i74.1, label %bb.u, label %.loopexit236, !prof !8

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  %exitcond.not.i73.2 = icmp eq i64 %i.bh, %umax.i71
  br i1 %exitcond.not.i73.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i77", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !2175, !noundef !5
  %i.bk = add i64 %i.x, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.p, align 8, !alias.scope !2176, !noalias !2168
  %.not.i74.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i74.2, label %bb.w, label %.loopexit236, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2178)
  %exitcond.not.i73.3 = icmp eq i64 %i.bk, %umax.i71
  br i1 %exitcond.not.i73.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i77", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !2179, !noundef !5
  %i.bn = add i64 %i.x, 5
  store i64 %i.bn, ptr %i.p, align 8, !alias.scope !2180, !noalias !2168
  %.not.i74.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i74.3, label %.loopexit144, label %.loopexit236, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i77": ; preds = %bb.w, %bb.u, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2181
  store i64 5, ptr %i.b, align 8, !noalias !2181
  %i.bo = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2181
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

.loopexit236:                                     ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2181
  store i64 9, ptr %i.a, align 8, !noalias !2181
  %i.bp = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2181
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.y:                                             ; preds = %bb.b
  %i.bq = add i64 %i.x, 1
  store i64 %i.bq, ptr %i.p, align 8, !alias.scope !2183
  %i.br = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h221653cfb3e48a2fE"(ptr noalias noundef align 8 dereferenceable(80) %0) ; 2 uses
  %.not49 = icmp eq ptr %i.br, null
  br i1 %.not49, label %.loopexit144, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.z:                                             ; preds = %bb.b
  %i.bs = add i64 %i.x, 1
  store i64 %i.bs, ptr %i.p, align 8, !alias.scope !2184
  %i.bt = tail call noundef align 8 ptr @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17hb71f203abf5d2488E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t) ; 2 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.loopexit144, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit": ; preds = %bb.b, %bb.b
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h9cfc58147c1b1e16E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %.sroa.041.0186, i8 %.sroa.643.0187)
  %i.bu = load i64, ptr %i.p, align 8, !alias.scope !2185, !noundef !5
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.p, align 8, !alias.scope !2185
  br label %bb.ae

bb.aa:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 10, ptr %i.m, align 8
  %i.bw = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.ab:                                            ; preds = %bb.d
  %i.bx = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17h221653cfb3e48a2fE"(ptr noalias noundef align 8 dereferenceable(80) %0) ; 2 uses
  %.not53 = icmp eq ptr %i.bx, null
  br i1 %.not53, label %.loopexit144, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

.loopexit144:                                     ; preds = %bb.x, %bb.p, %bb.j, %bb.z, %bb.ab, %bb.y
  br i1 %.sroa.041.0186, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.loopexit144
  %i.by = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.not54 = icmp eq i64 %i.by, 0
  br i1 %.not54, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = add i64 %i.by, -1                       ; 3 uses
  store i64 %i.bz, ptr %i.o, align 8
  %i.ca = load i64, ptr %0, align 8, !range !31, !noundef !5
  %i.cb = icmp ult i64 %i.bz, %i.ca
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !noundef !5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit", %.loopexit144
  %.sroa.045.1 = phi i1 [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit" ], [ true, %.loopexit144 ], [ true, %bb.ad ]
  %.sroa.029.1 = phi i8 [ %i.z, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit" ], [ %.sroa.643.0187, %.loopexit144 ], [ %i.ce, %bb.ad ] ; 2 uses
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !2186, !noalias !2187, !noundef !5 ; 6 uses
  %.promoted.i79179 = load i64, ptr %i.p, align 8, !alias.scope !2188, !noalias !2189 ; 2 uses
  %i.cg = icmp ult i64 %.promoted.i79179, %i.cf
  br i1 %i.cg, label %.lr.ph.i81.lr.ph, label %.loopexit139

.lr.ph.i81.lr.ph:                                 ; preds = %bb.ae
  %i.ch = load ptr, ptr %i.t, align 8, !alias.scope !2186, !noalias !2187, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.lr.ph, %bb.ap
  %.promoted.i79182 = phi i64 [ %.promoted.i79179, %.lr.ph.i81.lr.ph ], [ %i.cr, %bb.ap ]
  %.sroa.045.2181 = phi i1 [ %.sroa.045.1, %.lr.ph.i81.lr.ph ], [ true, %bb.ap ] ; 2 uses
  %.sroa.029.2180 = phi i8 [ %.sroa.029.1, %.lr.ph.i81.lr.ph ], [ %i.cy, %bb.ap ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i81
  %i.ci = phi i64 [ %.promoted.i79182, %.lr.ph.i81 ], [ %i.cl, %bb.ag ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2192)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !2193, !noundef !5
  switch i8 %i.ck, label %.loopexit [
    i8 32, label %bb.ag
    i8 10, label %bb.ag
    i8 9, label %bb.ag
    i8 13, label %bb.ag
    i8 44, label %bb.ak
    i8 93, label %bb.al
    i8 125, label %bb.am
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af
  %i.cl = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cl, ptr %i.p, align 8, !alias.scope !2194, !noalias !2189
  %exitcond.not.i82 = icmp eq i64 %i.cl, %i.cf
  br i1 %exitcond.not.i82, label %.loopexit139, label %bb.af

.loopexit139:                                     ; preds = %bb.ae, %bb.ap, %bb.ag
  %.sroa.029.2176 = phi i8 [ %i.cy, %bb.ap ], [ %.sroa.029.2180, %bb.ag ], [ %.sroa.029.1, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  switch i8 %.sroa.029.2176, label %bb.ah [
    i8 91, label %bb.aj
    i8 123, label %bb.ai
  ]

bb.ah:                                            ; preds = %.loopexit139
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
  unreachable

bb.ai:                                            ; preds = %.loopexit139
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit139, %bb.ai
  %storemerge = phi i64 [ 3, %bb.ai ], [ 2, %.loopexit139 ]
  store i64 %storemerge, ptr %i.k, align 8
  %i.cm = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

.loopexit:                                        ; preds = %bb.am, %bb.al, %bb.af
  br i1 %.sroa.045.2181, label %bb.aq, label %.critedge, !prof !11

bb.ak:                                            ; preds = %bb.af
  br i1 %.sroa.045.2181, label %bb.an, label %.critedge

bb.al:                                            ; preds = %bb.af
  %i.cn = icmp eq i8 %.sroa.029.2180, 91
  br i1 %i.cn, label %bb.ao, label %.loopexit

bb.am:                                            ; preds = %bb.af
  %i.co = icmp eq i8 %.sroa.029.2180, 123
  br i1 %i.co, label %bb.ao, label %.loopexit

bb.an:                                            ; preds = %bb.ak
  %i.cp = add i64 %i.ci, 1                        ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17hc52a355ff55369d6E":bb.a
  %i.da = icmp ult i64 %.promoted.i86, %i.cf
  br i1 %i.da, label %.lr.ph.i88, label %.loopexit141

.lr.ph.i88:                                       ; preds = %bb.ar, %bb.as
  %i.db = phi i64 [ %i.de, %bb.as ], [ %.promoted.i86, %bb.ar ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !noalias !2198, !noundef !5
  switch i8 %i.dd, label %bb.au [
    i8 32, label %bb.as
    i8 10, label %bb.as
    i8 9, label %bb.as
    i8 13, label %bb.as
    i8 34, label %bb.at
  ], !prof !20

bb.as:                                            ; preds = %.lr.ph.i88, %.lr.ph.i88, %.lr.ph.i88, %.lr.ph.i88
  %i.de = add i64 %i.db, 1                        ; 3 uses
  store i64 %i.de, ptr %i.p, align 8, !alias.scope !2199, !noalias !2200
  %exitcond.not.i89 = icmp eq i64 %i.de, %i.cf
  br i1 %exitcond.not.i89, label %.loopexit141, label %.lr.ph.i88

.loopexit141:                                     ; preds = %bb.ar, %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 3, ptr %i.i, align 8
  %i.df = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.at:                                            ; preds = %.lr.ph.i88
  %i.dg = add i64 %i.db, 1
  store i64 %i.dg, ptr %i.p, align 8, !alias.scope !2201
  %i.dh = tail call noundef align 8 ptr @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17hb71f203abf5d2488E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.t) ; 2 uses
  %.not56 = icmp eq ptr %i.dh, null
  br i1 %.not56, label %bb.av, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.au:                                            ; preds = %.lr.ph.i88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 17, ptr %i.j, align 8
  %i.di = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.av:                                            ; preds = %bb.at
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2202)
  %i.dj = load i64, ptr %i.q, align 8, !alias.scope !2203, !noalias !2204, !noundef !5 ; 3 uses
  %.promoted.i93 = load i64, ptr %i.p, align 8, !alias.scope !2202, !noalias !2205 ; 2 uses
  %i.dk = icmp ult i64 %.promoted.i93, %i.dj
  br i1 %i.dk, label %.lr.ph.i95, label %.loopexit140

.lr.ph.i95:                                       ; preds = %bb.av
  %i.dl = load ptr, ptr %i.t, align 8, !alias.scope !2203, !noalias !2204, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i95
  %i.dm = phi i64 [ %.promoted.i93, %.lr.ph.i95 ], [ %i.dp, %bb.ax ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noalias !2208, !noundef !5
  switch i8 %i.do, label %bb.az [
    i8 32, label %bb.ax
    i8 10, label %bb.ax
    i8 9, label %bb.ax
    i8 13, label %bb.ax
    i8 58, label %bb.ay
  ], !prof !20

bb.ax:                                            ; preds = %bb.aw, %bb.aw, %bb.aw, %bb.aw
  %i.dp = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.dp, ptr %i.p, align 8, !alias.scope !2209, !noalias !2205
  %exitcond.not.i96 = icmp eq i64 %i.dp, %i.dj
  br i1 %exitcond.not.i96, label %.loopexit140, label %bb.aw

.loopexit140:                                     ; preds = %bb.av, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 3, ptr %i.g, align 8
  %i.dq = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.ay:                                            ; preds = %bb.aw
  %i.dr = add i64 %i.dm, 1                        ; 2 uses
  store i64 %i.dr, ptr %i.p, align 8, !alias.scope !2210
  br label %bb.ba

bb.az:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 6, ptr %i.h, align 8
  %i.ds = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.ba:                                            ; preds = %.critedge, %bb.ay
  %.promoted.i = phi i64 [ %.promoted.i86, %.critedge ], [ %i.dr, %bb.ay ] ; 2 uses
  %i.dt = phi i64 [ %i.cf, %.critedge ], [ %i.dj, %bb.ay ] ; 2 uses
  %i.du = phi ptr [ %i.ch, %.critedge ], [ %i.dl, %bb.ay ]
  %i.dv = icmp ult i64 %.promoted.i, %i.dt
  br i1 %i.dv, label %.lr.ph.i, label %.loopexit147

bb.bb:                                            ; preds = %bb.aq
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #26
  unreachable

bb.bc:                                            ; preds = %bb.aq
  br label %bb.bd

bb.bd:                                            ; preds = %bb.aq, %bb.bc
  %storemerge57 = phi i64 [ 8, %bb.bc ], [ 7, %bb.aq ]
  store i64 %storemerge57, ptr %i.l, align 8
  %i.dw = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread": ; preds = %bb.ac, %bb.at, %bb.ab, %bb.z, %bb.y, %bb.ao, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i77", %.loopexit236, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i68", %.loopexit243, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", %.loopexit250, %.loopexit140, %bb.az, %.loopexit141, %bb.au, %bb.aj, %bb.bd, %bb.aa, %.loopexit147
  %.sroa.0.4 = phi ptr [ %i.ab, %.loopexit147 ], [ %i.dq, %.loopexit140 ], [ %i.an, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i" ], [ %i.dw, %bb.bd ], [ %i.az, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i68" ], [ %i.di, %bb.au ], [ %i.bp, %.loopexit236 ], [ %i.bo, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i77" ], [ %i.bw, %bb.aa ], [ null, %bb.ao ], [ %i.ds, %bb.az ], [ %i.ao, %.loopexit250 ], [ %i.ba, %.loopexit243 ], [ %i.cm, %bb.aj ], [ %i.df, %.loopexit141 ], [ %i.br, %bb.y ], [ %i.bx, %bb.ab ], [ null, %bb.ac ], [ %i.dh, %bb.at ], [ %i.bt, %bb.z ]
  ret ptr %.sroa.0.4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$12ignore_value17hea9e11daff56b422E"(ptr noalias noundef nonnull align 8 dereferenceable(64) initializes((16, 24)) %0) unnamed_addr #0 {
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
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store i64 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 28 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !2290, !noalias !2291, !noundef !5 ; 2 uses
  %.promoted.i185 = load i64, ptr %i.p, align 8, !alias.scope !2292, !noalias !2293 ; 2 uses
  %i.s = icmp ult i64 %.promoted.i185, %i.r
  br i1 %i.s, label %.lr.ph.i.lr.ph, label %.loopexit147

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load ptr, ptr %i.t, align 8, !alias.scope !2294, !noalias !2291
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ba
  %i.v = phi ptr [ %.pre, %.lr.ph.i.lr.ph ], [ %i.du, %bb.ba ] ; 11 uses
  %.promoted.i188 = phi i64 [ %.promoted.i185, %.lr.ph.i.lr.ph ], [ %.promoted.i, %bb.ba ]
  %i.w = phi i64 [ %i.r, %.lr.ph.i.lr.ph ], [ %i.dt, %bb.ba ] ; 7 uses
  %.sroa.643.0187 = phi i8 [ undef, %.lr.ph.i.lr.ph ], [ %.sroa.029.2180, %bb.ba ] ; 2 uses
  %.sroa.041.0186 = phi i1 [ false, %.lr.ph.i.lr.ph ], [ true, %bb.ba ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.x = phi i64 [ %.promoted.i188, %.lr.ph.i ], [ %i.aa, %bb.c ] ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2296)
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noalias !2297, !noundef !5 ; 3 uses
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
    i8 91, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit"
    i8 123, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit"
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.aa = add i64 %i.x, 1                         ; 3 uses
  store i64 %i.aa, ptr %i.p, align 8, !alias.scope !2298, !noalias !2293
  %exitcond.not.i = icmp eq i64 %i.aa, %i.w
  br i1 %exitcond.not.i, label %.loopexit147, label %bb.b

.loopexit147:                                     ; preds = %bb.ba, %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store i64 5, ptr %i.n, align 8
  %i.ab = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.d:                                             ; preds = %bb.b
  %i.ac = add i8 %i.z, -48
  %or.cond = icmp ult i8 %i.ac, 10
  br i1 %or.cond, label %bb.ab, label %bb.aa, !prof !7

bb.e:                                             ; preds = %bb.b
  %i.ad = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.ad, ptr %i.p, align 8, !alias.scope !2299
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2300)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2301)
  %exitcond.not.i59.not = icmp ult i64 %i.ad, %i.w
  br i1 %exitcond.not.i59.not, label %bb.f, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !noalias !2302, !noundef !5
  %i.ag = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.ag, ptr %i.p, align 8, !alias.scope !2303, !noalias !2304
  %.not.i = icmp eq i8 %i.af, 117
  br i1 %.not.i, label %bb.g, label %.loopexit250, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2305)
  %exitcond.not.i59.1 = icmp eq i64 %i.ag, %umax.i
  br i1 %exitcond.not.i59.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !2306, !noundef !5
  %i.aj = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.aj, ptr %i.p, align 8, !alias.scope !2307, !noalias !2304
  %.not.i.1 = icmp eq i8 %i.ai, 108
  br i1 %.not.i.1, label %bb.i, label %.loopexit250, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2308)
  %exitcond.not.i59.2 = icmp eq i64 %i.aj, %umax.i
  br i1 %exitcond.not.i59.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !2309, !noundef !5
  %i.am = add i64 %i.x, 4
  store i64 %i.am, ptr %i.p, align 8, !alias.scope !2310, !noalias !2304
  %.not.i.2 = icmp eq i8 %i.al, 108
  br i1 %.not.i.2, label %.loopexit144, label %.loopexit250, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2311
  store i64 5, ptr %i.f, align 8, !noalias !2311
  %i.an = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !2312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2311
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

.loopexit250:                                     ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2311
  store i64 9, ptr %i.e, align 8, !noalias !2311
  %i.ao = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !2312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2311
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ap = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.ap, ptr %i.p, align 8, !alias.scope !2313
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2314)
  %umax.i62 = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2315)
  %exitcond.not.i64.not = icmp ult i64 %i.ap, %i.w
  br i1 %exitcond.not.i64.not, label %bb.l, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i68"

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !noalias !2316, !noundef !5
  %i.as = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.as, ptr %i.p, align 8, !alias.scope !2317, !noalias !2318
  %.not.i65 = icmp eq i8 %i.ar, 114
  br i1 %.not.i65, label %bb.m, label %.loopexit243, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2319)
  %exitcond.not.i64.1 = icmp eq i64 %i.as, %umax.i62
  br i1 %exitcond.not.i64.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i68", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !noalias !2320, !noundef !5
  %i.av = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.av, ptr %i.p, align 8, !alias.scope !2321, !noalias !2318
  %.not.i65.1 = icmp eq i8 %i.au, 117
  br i1 %.not.i65.1, label %bb.o, label %.loopexit243, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2322)
  %exitcond.not.i64.2 = icmp eq i64 %i.av, %umax.i62
  br i1 %exitcond.not.i64.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i68", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noalias !2323, !noundef !5
  %i.ay = add i64 %i.x, 4
  store i64 %i.ay, ptr %i.p, align 8, !alias.scope !2324, !noalias !2318
  %.not.i65.2 = icmp eq i8 %i.ax, 101
  br i1 %.not.i65.2, label %.loopexit144, label %.loopexit243, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i68": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2325
  store i64 5, ptr %i.d, align 8, !noalias !2325
  %i.az = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !2326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2325
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

.loopexit243:                                     ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2325
  store i64 9, ptr %i.c, align 8, !noalias !2325
  %i.ba = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !2326
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2325
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.q:                                             ; preds = %bb.b
  %i.bb = add i64 %i.x, 1                         ; 4 uses
  store i64 %i.bb, ptr %i.p, align 8, !alias.scope !2327
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2328)
  %umax.i71 = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.w) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2329)
  %exitcond.not.i73.not = icmp ult i64 %i.bb, %i.w
  br i1 %exitcond.not.i73.not, label %bb.r, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i77"

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !noalias !2330, !noundef !5
  %i.be = add i64 %i.x, 2                         ; 3 uses
  store i64 %i.be, ptr %i.p, align 8, !alias.scope !2331, !noalias !2332
  %.not.i74 = icmp eq i8 %i.bd, 97
  br i1 %.not.i74, label %bb.s, label %.loopexit236, !prof !8

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2333)
  %exitcond.not.i73.1 = icmp eq i64 %i.be, %umax.i71
  br i1 %exitcond.not.i73.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i77", label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !2334, !noundef !5
  %i.bh = add i64 %i.x, 3                         ; 3 uses
  store i64 %i.bh, ptr %i.p, align 8, !alias.scope !2335, !noalias !2332
  %.not.i74.1 = icmp eq i8 %i.bg, 108
  br i1 %.not.i74.1, label %bb.u, label %.loopexit236, !prof !8

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2336)
  %exitcond.not.i73.2 = icmp eq i64 %i.bh, %umax.i71
  br i1 %exitcond.not.i73.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i77", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bh
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !2337, !noundef !5
  %i.bk = add i64 %i.x, 4                         ; 3 uses
  store i64 %i.bk, ptr %i.p, align 8, !alias.scope !2338, !noalias !2332
  %.not.i74.2 = icmp eq i8 %i.bj, 115
  br i1 %.not.i74.2, label %bb.w, label %.loopexit236, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2339)
  %exitcond.not.i73.3 = icmp eq i64 %i.bk, %umax.i71
  br i1 %exitcond.not.i73.3, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i77", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !2340, !noundef !5
  %i.bn = add i64 %i.x, 5
  store i64 %i.bn, ptr %i.p, align 8, !alias.scope !2341, !noalias !2332
  %.not.i74.3 = icmp eq i8 %i.bm, 101
  br i1 %.not.i74.3, label %.loopexit144, label %.loopexit236, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i77": ; preds = %bb.w, %bb.u, %bb.s, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2342
  store i64 5, ptr %i.b, align 8, !noalias !2342
  %i.bo = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2342
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

.loopexit236:                                     ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2342
  store i64 9, ptr %i.a, align 8, !noalias !2342
  %i.bp = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2342
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.y:                                             ; preds = %bb.b
  %i.bq = add i64 %i.x, 1
  store i64 %i.bq, ptr %i.p, align 8, !alias.scope !2344
  %i.br = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17ha1ff03ba31ac7f9eE"(ptr noalias noundef align 8 dereferenceable(64) %0) ; 2 uses
  %.not49 = icmp eq ptr %i.br, null
  br i1 %.not49, label %.loopexit144, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.z:                                             ; preds = %bb.b
  %i.bs = add i64 %i.x, 1
  store i64 %i.bs, ptr %i.p, align 8, !alias.scope !2345
  %i.bt = tail call noundef align 8 ptr @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$10ignore_str17h8ea854f77f9b1a43E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.t) ; 2 uses
  %.not = icmp eq ptr %i.bt, null
  br i1 %.not, label %.loopexit144, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit": ; preds = %bb.b, %bb.b
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h9cfc58147c1b1e16E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i1 noundef zeroext %.sroa.041.0186, i8 %.sroa.643.0187)
  %i.bu = load i64, ptr %i.p, align 8, !alias.scope !2346, !noundef !5
  %i.bv = add i64 %i.bu, 1
  store i64 %i.bv, ptr %i.p, align 8, !alias.scope !2346
  br label %bb.ae

bb.aa:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 10, ptr %i.m, align 8
  %i.bw = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.ab:                                            ; preds = %bb.d
  %i.bx = tail call fastcc noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$14ignore_integer17ha1ff03ba31ac7f9eE"(ptr noalias noundef align 8 dereferenceable(64) %0) ; 2 uses
  %.not53 = icmp eq ptr %i.bx, null
  br i1 %.not53, label %.loopexit144, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

.loopexit144:                                     ; preds = %bb.x, %bb.p, %bb.j, %bb.z, %bb.ab, %bb.y
  br i1 %.sroa.041.0186, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %.loopexit144
  %i.by = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %.not54 = icmp eq i64 %i.by, 0
  br i1 %.not54, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = add i64 %i.by, -1                       ; 3 uses
  store i64 %i.bz, ptr %i.o, align 8
  %i.ca = load i64, ptr %0, align 8, !range !31, !noundef !5
  %i.cb = icmp ult i64 %i.bz, %i.ca
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = load ptr, ptr %i.u, align 8, !nonnull !5, !noundef !5
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.bz
  %i.ce = load i8, ptr %i.cd, align 1, !noundef !5
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit", %.loopexit144
  %.sroa.045.1 = phi i1 [ false, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit" ], [ true, %.loopexit144 ], [ true, %bb.ad ]
  %.sroa.029.1 = phi i8 [ %i.z, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit" ], [ %.sroa.643.0187, %.loopexit144 ], [ %i.ce, %bb.ad ] ; 2 uses
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !2347, !noalias !2348, !noundef !5 ; 6 uses
  %.promoted.i79179 = load i64, ptr %i.p, align 8, !alias.scope !2349, !noalias !2350 ; 2 uses
  %i.cg = icmp ult i64 %.promoted.i79179, %i.cf
  br i1 %i.cg, label %.lr.ph.i81.lr.ph, label %.loopexit139

.lr.ph.i81.lr.ph:                                 ; preds = %bb.ae
  %i.ch = load ptr, ptr %i.t, align 8, !alias.scope !2347, !noalias !2348, !nonnull !5, !align !6, !noundef !5 ; 3 uses
  br label %.lr.ph.i81

.lr.ph.i81:                                       ; preds = %.lr.ph.i81.lr.ph, %bb.ap
  %.promoted.i79182 = phi i64 [ %.promoted.i79179, %.lr.ph.i81.lr.ph ], [ %i.cr, %bb.ap ]
  %.sroa.045.2181 = phi i1 [ %.sroa.045.1, %.lr.ph.i81.lr.ph ], [ true, %bb.ap ] ; 2 uses
  %.sroa.029.2180 = phi i8 [ %.sroa.029.1, %.lr.ph.i81.lr.ph ], [ %i.cy, %bb.ap ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2351)
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.lr.ph.i81
  %i.ci = phi i64 [ %.promoted.i79182, %.lr.ph.i81 ], [ %i.cl, %bb.ag ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2352)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !noalias !2353, !noundef !5
  switch i8 %i.ck, label %.loopexit [
    i8 32, label %bb.ag
    i8 10, label %bb.ag
    i8 9, label %bb.ag
    i8 13, label %bb.ag
    i8 44, label %bb.ak
    i8 93, label %bb.al
    i8 125, label %bb.am
  ]

bb.ag:                                            ; preds = %bb.af, %bb.af, %bb.af, %bb.af
  %i.cl = add i64 %i.ci, 1                        ; 3 uses
  store i64 %i.cl, ptr %i.p, align 8, !alias.scope !2354, !noalias !2350
  %exitcond.not.i82 = icmp eq i64 %i.cl, %i.cf
  br i1 %exitcond.not.i82, label %.loopexit139, label %bb.af

.loopexit139:                                     ; preds = %bb.ae, %bb.ap, %bb.ag
  %.sroa.029.2176 = phi i8 [ %i.cy, %bb.ap ], [ %.sroa.029.2180, %bb.ag ], [ %.sroa.029.1, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  switch i8 %.sroa.029.2176, label %bb.ah [
    i8 91, label %bb.aj
    i8 123, label %bb.ai
  ]

bb.ah:                                            ; preds = %.loopexit139
  tail call void @_ZN4core9panicking5panic17hfe04fa80380612d4E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #26
  unreachable

bb.ai:                                            ; preds = %.loopexit139
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit139, %bb.ai
  %storemerge = phi i64 [ 3, %bb.ai ], [ 2, %.loopexit139 ]
  store i64 %storemerge, ptr %i.k, align 8
  %i.cm = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

.loopexit:                                        ; preds = %bb.am, %bb.al, %bb.af
  br i1 %.sroa.045.2181, label %bb.aq, label %.critedge, !prof !11

bb.ak:                                            ; preds = %bb.af
  br i1 %.sroa.045.2181, label %bb.an, label %.critedge

bb.al:                                            ; preds = %bb.af
  %i.cn = icmp eq i8 %.sroa.029.2180, 91
  br i1 %i.cn, label %bb.ao, label %.loopexit

bb.am:                                            ; preds = %bb.af
  %i.co = icmp eq i8 %.sroa.029.2180, 123
  br i1 %i.co, label %bb.ao, label %.loopexit

bb.an:                                            ; preds = %bb.ak
  %i.cp = add i64 %i.ci, 1                        ; 2 uses
  store i64 %i.cp, ptr %i.p, align 8, !alias.scope !2355
  br label %.critedge

.critedge:                                        ; preds = %bb.ak, %.loopexit, %bb.an
  %.promoted.i86 = phi i64 [ %i.ci, %bb.ak ], [ %i.ci, %.loopexit ], [ %i.cp, %bb.an ] ; 3 uses
end_hunk_3
begin_hunk_4_@"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h3a4201d07d0407d5E":"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit.peel.begin"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3231
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hbc1ba360a0b463dbE"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(312) %1), !noalias !3226
  %i.ap = load i8, ptr %i.a, align 8, !range !28, !noalias !3231, !noundef !5
  switch i8 %i.ap, label %bb.n [
    i8 2, label %bb.m
    i8 0, label %bb.o
  ], !prof !29

bb.m:                                             ; preds = %bb.l, %bb.o, %bb.n
  %i.aq = phi ptr [ %i.ak, %bb.o ], [ %i.au, %bb.n ], [ %i.ak, %bb.l ]
  %i.ar = phi i8 [ %i.av, %bb.o ], [ %i.al, %bb.n ], [ %i.al, %bb.l ]
  %i.as = phi i8 [ 1, %bb.o ], [ 1, %bb.n ], [ 0, %bb.l ]
  %.sink.i = phi i8 [ 0, %bb.o ], [ 1, %bb.n ], [ 0, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3231
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit"

bb.n:                                             ; preds = %bb.l
  %i.at = load ptr, ptr %i.g, align 8, !noalias !3231, !nonnull !5, !noundef !5
  %i.au = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.at), !noalias !3226
  br label %bb.m

bb.o:                                             ; preds = %bb.l
  %i.av = load i8, ptr %i.d, align 1, !noalias !3231, !noundef !5 ; 2 uses
  store i8 1, ptr %i.b, align 8, !alias.scope !3230, !noalias !3226
  store i8 %i.av, ptr %i.c, align 1, !alias.scope !3230, !noalias !3226
  br label %bb.m

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit": ; preds = %bb.k, %bb.m
  %i.aw = phi ptr [ %i.ak, %bb.k ], [ %i.aq, %bb.m ] ; 3 uses
  %i.ax = phi i8 [ %i.ao, %bb.k ], [ %i.ar, %bb.m ] ; 4 uses
  %i.ay = phi i8 [ 1, %bb.k ], [ %i.as, %bb.m ]   ; 2 uses
  %i.az = phi i8 [ 0, %bb.k ], [ %.sink.i, %bb.m ] ; 3 uses
  %i.ba = trunc nuw i8 %i.az to i1
  %.not = xor i1 %i.ba, true
  %i.bb = trunc nuw i8 %i.ay to i1
  %or.cond = select i1 %.not, i1 %i.bb, i1 false
  br i1 %or.cond, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit"
  switch i8 %i.ax, label %.loopexit [
    i8 32, label %bb.q
    i8 10, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p, %bb.p
  %i.bc = load i8, ptr %i.b, align 8, !range !18, !alias.scope !3228, !noundef !5
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i8, ptr %i.c, align 1, !alias.scope !3228
  store i8 0, ptr %i.b, align 8, !alias.scope !3228
  br i1 %i.bd, label %bb.r, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit.backedge": ; preds = %bb.q, %bb.r, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit", !llvm.loop !3224

bb.r:                                             ; preds = %bb.q
  %i.bf = load i64, ptr %i.i, align 8, !range !19, !alias.scope !3228, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.bf, -9223372036854775808
  br i1 %.not.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit.backedge", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = load i64, ptr %i.j, align 8, !alias.scope !3229, !noundef !5 ; 3 uses
  %i.bh = icmp eq i64 %i.bg, %i.bf
  br i1 %i.bh, label %bb.t, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"

bb.t:                                             ; preds = %bb.s
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i": ; preds = %bb.t, %bb.s
  %i.bi = load ptr, ptr %i.k, align 8, !alias.scope !3229, !nonnull !5, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bg
  store i8 %i.be, ptr %i.bj, align 1
  %i.bk = add i64 %i.bg, 1
  store i64 %i.bk, ptr %i.j, align 8, !alias.scope !3229
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit.backedge"

.loopexit:                                        ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit", %bb.p, %bb.f, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.peel"
  %.lcssa17 = phi ptr [ %i.v, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.peel" ], [ %i.v, %bb.f ], [ %i.aw, %bb.p ], [ %i.aw, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit" ]
  %.lcssa16 = phi i8 [ %i.w, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.peel" ], [ %i.w, %bb.f ], [ %i.ax, %bb.p ], [ %i.ax, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit" ]
  %.lcssa = phi i8 [ %i.y, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.peel" ], [ %i.y, %bb.f ], [ %i.az, %bb.p ], [ %i.az, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit" ]
  %.lcssa9 = phi i8 [ %i.x, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit.peel" ], [ 1, %bb.f ], [ 1, %bb.p ], [ %i.ay, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h86c58ccf0ee0692cE.exit" ]
  store i8 %.lcssa9, ptr %i.e, align 1
  store i8 %.lcssa16, ptr %i.f, align 2
  store ptr %.lcssa17, ptr %i.h, align 8
  store i8 %.lcssa, ptr %0, align 8
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((1, 2)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3237, !noalias !3238, !noundef !5 ; 2 uses
  %.promoted = load i64, ptr %i.a, align 8        ; 2 uses
  %i.d = icmp ult i64 %.promoted, %i.c
  br i1 %i.d, label %.lr.ph, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !3237, !noalias !3238, !nonnull !5, !align !6, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.g, align 1, !alias.scope !3238, !noalias !3237
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  br label %bb.b

"._ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit_crit_edge": ; preds = %bb.c
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3238, !noalias !3237
  br label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit"

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit": ; preds = %"._ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit_crit_edge", %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.i, align 1, !alias.scope !3238, !noalias !3237
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.j = phi i64 [ %.promoted, %.lr.ph ], [ %i.m, %bb.c ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3238)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3237)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !3239, !noundef !5 ; 3 uses
  switch i8 %i.l, label %.loopexit [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !alias.scope !3240
  %exitcond.not = icmp eq i64 %i.m, %i.c
  br i1 %exitcond.not, label %"._ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit_crit_edge", label %bb.b

.loopexit:                                        ; preds = %bb.b
  store i8 %i.l, ptr %i.h, align 2, !alias.scope !3238, !noalias !3237
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4peek17h641ae5bbc8b08eb6E.exit"
  store i8 0, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h51dcb800462713beE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3299)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3300, !noalias !3301, !noundef !5 ; 17 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3300, !noalias !3301, !noundef !5 ; 10 uses
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.s, align 8, !alias.scope !3300, !noalias !3301, !nonnull !5, !align !6, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1, !noalias !3302, !noundef !5 ; 2 uses
  switch i8 %i.aa, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !35

bb.c:                                             ; preds = %bb.b
  %i.ab = add i8 %i.aa, -48
  %or.cond = icmp ult i8 %i.ab, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !8

bb.d:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.u, 1                     ; 4 uses
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !3303
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3304)
  %i.ad = load ptr, ptr %i.s, align 8, !alias.scope !3304, !noalias !3305, !nonnull !5, !align !6 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.w)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3306)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3307)
  %exitcond.not.i.not = icmp ult i64 %i.ac, %i.w
  br i1 %exitcond.not.i.not, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !noalias !3308, !noundef !5
  %i.ag = add nuw i64 %i.u, 2                     ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !3309, !noalias !3310
  %.not.i = icmp eq i8 %i.af, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3311)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3312)
  %exitcond.not.i.1 = icmp eq i64 %i.w, %i.ag
  br i1 %exitcond.not.i.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !3313, !noundef !5
  %i.aj = add i64 %i.u, 3                         ; 3 uses
  store i64 %i.aj, ptr %i.t, align 8, !alias.scope !3314, !noalias !3310
  %.not.i.1 = icmp eq i8 %i.ai, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3315)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3316)
  %exitcond.not.i.2 = icmp eq i64 %i.aj, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !3317, !noundef !5
  %i.am = add i64 %i.u, 4
  store i64 %i.am, ptr %i.t, align 8, !alias.scope !3318, !noalias !3310
  %.not.i.2 = icmp eq i8 %i.al, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit", label %bb.j, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3319
  store i64 5, ptr %i.f, align 8, !noalias !3319
  %i.an = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3319
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3319
  store i64 9, ptr %i.e, align 8, !noalias !3319
  %i.ao = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3305
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3319
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.u, 1                     ; 4 uses
  store i64 %i.ap, ptr %i.t, align 8, !alias.scope !3320
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3321)
  %i.aq = load ptr, ptr %i.s, align 8, !alias.scope !3321, !noalias !3322, !nonnull !5, !align !6 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.w)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3323)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3324)
  %exitcond.not.i26.not = icmp ult i64 %i.ap, %i.w
  br i1 %exitcond.not.i26.not, label %bb.l, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i29"

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !noalias !3325, !noundef !5
  %i.at = add nuw i64 %i.u, 2                     ; 3 uses
  store i64 %i.at, ptr %i.t, align 8, !alias.scope !3326, !noalias !3327
  %.not.i27 = icmp eq i8 %i.as, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3328)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3329)
  %exitcond.not.i26.1 = icmp eq i64 %i.w, %i.at
  br i1 %exitcond.not.i26.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i29", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !3330, !noundef !5
  %i.aw = add i64 %i.u, 3                         ; 3 uses
  store i64 %i.aw, ptr %i.t, align 8, !alias.scope !3331, !noalias !3327
  %.not.i27.1 = icmp eq i8 %i.av, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3332)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3333)
  %exitcond.not.i26.2 = icmp eq i64 %i.aw, %umax.i24
  br i1 %exitcond.not.i26.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i29", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !3334, !noundef !5
  %i.az = add i64 %i.u, 4
  store i64 %i.az, ptr %i.t, align 8, !alias.scope !3335, !noalias !3327
  %.not.i27.2 = icmp eq i8 %i.ay, 101
  br i1 %.not.i27.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit30", label %bb.q, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i29": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3336
  store i64 5, ptr %i.d, align 8, !noalias !3336
  %i.ba = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3336
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3336
  store i64 9, ptr %i.c, align 8, !noalias !3336
  %i.bb = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3322
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3336
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.r:                                             ; preds = %bb.b
  %i.bc = add nuw i64 %i.u, 1                     ; 4 uses
  store i64 %i.bc, ptr %i.t, align 8, !alias.scope !3337
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3338)
  %i.bd = load ptr, ptr %i.s, align 8, !alias.scope !3338, !noalias !3339, !nonnull !5, !align !6 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3341)
  %exitcond.not.i34.not = icmp ult i64 %i.bc, %i.w
  br i1 %exitcond.not.i34.not, label %bb.s, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i37"

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !noalias !3342, !noundef !5
  %i.bg = add nuw i64 %i.u, 2                     ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !alias.scope !3343, !noalias !3344
  %.not.i35 = icmp eq i8 %i.bf, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !8

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3345)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3346)
  %exitcond.not.i34.1 = icmp eq i64 %i.w, %i.bg
  br i1 %exitcond.not.i34.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i37", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !3347, !noundef !5
  %i.bj = add i64 %i.u, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.t, align 8, !alias.scope !3348, !noalias !3344
  %.not.i35.1 = icmp eq i8 %i.bi, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !8

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3349)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3350)
  %exitcond.not.i34.2 = icmp eq i64 %i.bj, %umax.i32
  br i1 %exitcond.not.i34.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i37", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !3351, !noundef !5
  %i.bm = add i64 %i.u, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.t, align 8, !alias.scope !3352, !noalias !3344
  %.not.i35.2 = icmp eq i8 %i.bl, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !8

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3353)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3354)
  %exitcond.not.i34.3 = icmp eq i64 %i.bm, %umax.i32
  br i1 %exitcond.not.i34.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i37", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !3355, !noundef !5
  %i.bp = add i64 %i.u, 5
  store i64 %i.bp, ptr %i.t, align 8, !alias.scope !3356, !noalias !3344
  %.not.i35.3 = icmp eq i8 %i.bo, 101
  br i1 %.not.i35.3, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit38", label %bb.z, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i37": ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3357
  store i64 5, ptr %i.b, align 8, !noalias !3357
  %i.bq = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3357
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3357
  store i64 9, ptr %i.a, align 8, !noalias !3357
  %i.br = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3339
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3357
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.aa:                                            ; preds = %bb.b
  %i.bs = add nuw i64 %i.u, 1
  store i64 %i.bs, ptr %i.t, align 8, !alias.scope !3358
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h35a28843eeccb114E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef align 8 dereferenceable(80) %0, i1 noundef zeroext false)
  %i.bt = load i64, ptr %i.o, align 8, !range !9, !noundef !5
  %i.bu = icmp eq i64 %i.bt, 3
  br i1 %i.bu, label %bb.af, label %bb.ag, !prof !30

bb.ab:                                            ; preds = %bb.b
  %i.bv = add nuw i64 %i.u, 1
  store i64 %i.bv, ptr %i.t, align 8, !alias.scope !3359
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h8029598f5bdd8687E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bx = load i64, ptr %i.k, align 8, !range !10, !noundef !5
  %i.by = icmp eq i64 %i.bx, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.by, label %bb.ah, label %bb.ai, !prof !30

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.cb = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.cc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit": ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 7, ptr %i.r, align 8
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit38", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit30", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit", %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cu, %bb.al ], [ %i.cp, %.thread64 ], [ %i.cd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit" ], [ %i.cg, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit30" ], [ %i.ci, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit38" ], [ %i.cl, %bb.ag ], [ %i.co, %bb.ai ], [ %i.cb, %bb.ac ], [ %i.cc, %bb.ad ]
  %i.ce = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h7d383251b064efd6E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit30": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.cf, align 1
  store i8 0, ptr %i.q, align 8
  %i.cg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit38": ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.ch, align 1
  store i8 0, ptr %i.p, align 8
  %i.ci = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.cl = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17hcfe70100dd45d34aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ca, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cn, align 8
  store i8 5, ptr %i.j, align 8
  %i.co = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cp = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h35a28843eeccb114E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef align 8 dereferenceable(80) %0, i1 noundef zeroext true)
  %i.cq = load i64, ptr %i.m, align 8, !range !9, !noundef !5
  %i.cr = icmp eq i64 %i.cq, 3
  br i1 %i.cr, label %bb.ak, label %bb.al, !prof !30

bb.ak:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.cu = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17hcfe70100dd45d34aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17h89ebb1737da05694E.exit.thread": ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i37", %bb.z, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i29", %bb.q, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.ce, %bb.ae ], [ %i.ct, %bb.ak ], [ %i.ca, %bb.ah ], [ %i.bb, %bb.q ], [ %i.ao, %bb.j ], [ %i.ck, %bb.af ], [ %i.an, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i" ], [ %i.ba, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i29" ], [ %i.bq, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i37" ], [ %i.br, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hcee2f20a31f6f8dfE"(ptr noalias noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_4
begin_hunk_5_@"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17hcee2f20a31f6f8dfE":bb.a
bb.ab:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !range !19, !alias.scope !3403, !noundef !5 ; 2 uses
  %.not.i34 = icmp eq i64 %i.ck, -9223372036854775808
  br i1 %.not.i34, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit36", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !alias.scope !3404, !noundef !5 ; 3 uses
  %i.cn = icmp eq i64 %i.cm, %i.ck
  br i1 %i.cn, label %bb.ad, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i35"

bb.ad:                                            ; preds = %bb.ac
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cj)
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i35"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i35": ; preds = %bb.ad, %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !3404, !nonnull !5, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cm
  store i8 %i.ci, ptr %i.cq, align 1
  %i.cr = add i64 %i.cm, 1
  store i64 %i.cr, ptr %i.cl, align 8, !alias.scope !3404
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit36"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit36": ; preds = %bb.aa, %bb.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i35"
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 0, ptr %i.ct, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$9parse_str17h1dd0d02816dcc938E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef align 8 dereferenceable(312) %0, ptr noalias noundef align 8 dereferenceable(24) %i.cs)
  %i.cu = load i64, ptr %i.f, align 8, !range !10, !noundef !5
  %i.cv = icmp eq i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.cv, label %bb.am, label %bb.an, !prof !30

bb.ae:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 10, ptr %i.d, align 8
  %i.cy = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ah

bb.af:                                            ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 11, ptr %i.c, align 8
  %i.cz = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.ah

bb.ag:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i8 7, ptr %i.m, align 8
  %i.da = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.m, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ar, %bb.ao, %bb.an, %bb.al, %bb.aj, %bb.ai, %bb.ag, %bb.af, %bb.ae
  %.sroa.02.0 = phi ptr [ %i.dt, %bb.ar ], [ %i.do, %bb.ao ], [ %i.da, %bb.ag ], [ %i.dd, %bb.ai ], [ %i.df, %bb.aj ], [ %i.di, %bb.al ], [ %i.dl, %bb.an ], [ %i.cy, %bb.ae ], [ %i.cz, %bb.af ]
  %i.db = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h0a40332d2f9c0f31E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noundef nonnull align 8 %0)
  br label %bb.as

bb.ai:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit27"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 1, ptr %i.dc, align 1
  store i8 0, ptr %i.l, align 8
  %i.dd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.ah

bb.aj:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit30"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 0, ptr %i.de, align 1
  store i8 0, ptr %i.k, align 8
  %i.df = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ah

bb.ak:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit33"
  %i.dg = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.as

bb.al:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit33"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  %i.di = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17hcfe70100dd45d34aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ah

bb.am:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit36"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.as

bb.an:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit36"
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.cx, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.dk, align 8
  store i8 5, ptr %i.e, align 8
  %i.dl = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ah

bb.ao:                                            ; preds = %.thread66, %bb.j
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.val23 = load i64, ptr %i.dm, align 8, !noundef !5
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.val24 = load i64, ptr %i.dn, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3405
  store i64 10, ptr %i.a, align 8
  %i.do = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %.val23, i64 noundef %.val24), !noalias !3405
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3405
  br label %bb.ah

bb.ap:                                            ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17ha51f34cb5c15ad40E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(344) %0, i1 noundef zeroext true)
  %i.dp = load i64, ptr %i.h, align 8, !range !9, !noundef !5
  %i.dq = icmp eq i64 %i.dp, 3
  br i1 %i.dq, label %bb.aq, label %bb.ar, !prof !30

bb.aq:                                            ; preds = %bb.ap
  %i.dr = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  %i.dt = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17hcfe70100dd45d34aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ah

bb.as:                                            ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit30", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit27", %bb.ak, %bb.am, %bb.aq, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit", %bb.ah
  %.sroa.0.1 = phi ptr [ %i.db, %bb.ah ], [ %i.ds, %bb.aq ], [ %i.cx, %bb.am ], [ %i.ar, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit" ], [ %i.be, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit27" ], [ %i.dh, %bb.ak ], [ %i.br, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h281cfffdeec8ace5E.exit30" ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
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
  %i.l = alloca [16 x i8], align 8                ; 2 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 2 uses
  %i.o = alloca [16 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3444)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 16 uses
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !3444, !noalias !3445, !noundef !5 ; 17 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !3444, !noalias !3445, !noundef !5 ; 10 uses
  %i.x = icmp ult i64 %i.u, %i.w
  br i1 %i.x, label %bb.b, label %.thread64

bb.b:                                             ; preds = %bb.a
  %i.y = load ptr, ptr %i.s, align 8, !alias.scope !3444, !noalias !3445, !nonnull !5, !align !6, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  %i.aa = load i8, ptr %i.z, align 1, !noalias !3446, !noundef !5 ; 2 uses
  switch i8 %i.aa, label %bb.c [
    i8 110, label %bb.d
    i8 116, label %bb.k
    i8 102, label %bb.r
    i8 45, label %bb.aa
    i8 34, label %bb.ab
    i8 91, label %bb.ac
    i8 123, label %bb.ad
  ], !prof !35

bb.c:                                             ; preds = %bb.b
  %i.ab = add i8 %i.aa, -48
  %or.cond = icmp ult i8 %i.ab, 10
  br i1 %or.cond, label %bb.aj, label %.thread64, !prof !8

bb.d:                                             ; preds = %bb.b
  %i.ac = add nuw i64 %i.u, 1                     ; 4 uses
  store i64 %i.ac, ptr %i.t, align 8, !alias.scope !3447
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3448)
  %i.ad = load ptr, ptr %i.s, align 8, !alias.scope !3448, !noalias !3449, !nonnull !5, !align !6 ; 3 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 %i.w)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  %exitcond.not.i.not = icmp ult i64 %i.ac, %i.w
  br i1 %exitcond.not.i.not, label %bb.e, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  %i.af = load i8, ptr %i.ae, align 1, !noalias !3451, !noundef !5
  %i.ag = add nuw i64 %i.u, 2                     ; 3 uses
  store i64 %i.ag, ptr %i.t, align 8, !alias.scope !3452, !noalias !3453
  %.not.i = icmp eq i8 %i.af, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3454)
  %exitcond.not.i.1 = icmp eq i64 %i.w, %i.ag
  br i1 %exitcond.not.i.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !noalias !3455, !noundef !5
  %i.aj = add i64 %i.u, 3                         ; 3 uses
  store i64 %i.aj, ptr %i.t, align 8, !alias.scope !3456, !noalias !3453
  %.not.i.1 = icmp eq i8 %i.ai, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3457)
  %exitcond.not.i.2 = icmp eq i64 %i.aj, %umax.i
  br i1 %exitcond.not.i.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !noalias !3458, !noundef !5
  %i.am = add i64 %i.u, 4
  store i64 %i.am, ptr %i.t, align 8, !alias.scope !3459, !noalias !3453
  %.not.i.2 = icmp eq i8 %i.al, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit", label %bb.j, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3460
  store i64 5, ptr %i.f, align 8, !noalias !3460
  %i.an = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f), !noalias !3449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3460
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3460
  store i64 9, ptr %i.e, align 8, !noalias !3460
  %i.ao = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !3449
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3460
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.k:                                             ; preds = %bb.b
  %i.ap = add nuw i64 %i.u, 1                     ; 4 uses
  store i64 %i.ap, ptr %i.t, align 8, !alias.scope !3461
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3462)
  %i.aq = load ptr, ptr %i.s, align 8, !alias.scope !3462, !noalias !3463, !nonnull !5, !align !6 ; 3 uses
  %umax.i24 = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.w)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3464)
  %exitcond.not.i26.not = icmp ult i64 %i.ap, %i.w
  br i1 %exitcond.not.i26.not, label %bb.l, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i29"

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !noalias !3465, !noundef !5
  %i.at = add nuw i64 %i.u, 2                     ; 3 uses
  store i64 %i.at, ptr %i.t, align 8, !alias.scope !3466, !noalias !3467
  %.not.i27 = icmp eq i8 %i.as, 114
  br i1 %.not.i27, label %bb.m, label %bb.q, !prof !8

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3468)
  %exitcond.not.i26.1 = icmp eq i64 %i.w, %i.at
  br i1 %exitcond.not.i26.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i29", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !noalias !3469, !noundef !5
  %i.aw = add i64 %i.u, 3                         ; 3 uses
  store i64 %i.aw, ptr %i.t, align 8, !alias.scope !3470, !noalias !3467
  %.not.i27.1 = icmp eq i8 %i.av, 117
  br i1 %.not.i27.1, label %bb.o, label %bb.q, !prof !8

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3471)
  %exitcond.not.i26.2 = icmp eq i64 %i.aw, %umax.i24
  br i1 %exitcond.not.i26.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i29", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !3472, !noundef !5
  %i.az = add i64 %i.u, 4
  store i64 %i.az, ptr %i.t, align 8, !alias.scope !3473, !noalias !3467
  %.not.i27.2 = icmp eq i8 %i.ay, 101
  br i1 %.not.i27.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit30", label %bb.q, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i29": ; preds = %bb.o, %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3474
  store i64 5, ptr %i.d, align 8, !noalias !3474
  %i.ba = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !3463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3474
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.q:                                             ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3474
  store i64 9, ptr %i.c, align 8, !noalias !3474
  %i.bb = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !3463
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3474
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.r:                                             ; preds = %bb.b
  %i.bc = add nuw i64 %i.u, 1                     ; 4 uses
  store i64 %i.bc, ptr %i.t, align 8, !alias.scope !3475
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3476)
  %i.bd = load ptr, ptr %i.s, align 8, !alias.scope !3476, !noalias !3477, !nonnull !5, !align !6 ; 4 uses
  %umax.i32 = tail call i64 @llvm.umax.i64(i64 %i.bc, i64 %i.w) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3478)
  %exitcond.not.i34.not = icmp ult i64 %i.bc, %i.w
  br i1 %exitcond.not.i34.not, label %bb.s, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i37"

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %i.bf = load i8, ptr %i.be, align 1, !noalias !3479, !noundef !5
  %i.bg = add nuw i64 %i.u, 2                     ; 3 uses
  store i64 %i.bg, ptr %i.t, align 8, !alias.scope !3480, !noalias !3481
  %.not.i35 = icmp eq i8 %i.bf, 97
  br i1 %.not.i35, label %bb.t, label %bb.z, !prof !8

bb.t:                                             ; preds = %bb.s
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3482)
  %exitcond.not.i34.1 = icmp eq i64 %i.w, %i.bg
  br i1 %exitcond.not.i34.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i37", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !3483, !noundef !5
  %i.bj = add i64 %i.u, 3                         ; 3 uses
  store i64 %i.bj, ptr %i.t, align 8, !alias.scope !3484, !noalias !3481
  %.not.i35.1 = icmp eq i8 %i.bi, 108
  br i1 %.not.i35.1, label %bb.v, label %bb.z, !prof !8

bb.v:                                             ; preds = %bb.u
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3485)
  %exitcond.not.i34.2 = icmp eq i64 %i.bj, %umax.i32
  br i1 %exitcond.not.i34.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i37", label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !noalias !3486, !noundef !5
  %i.bm = add i64 %i.u, 4                         ; 3 uses
  store i64 %i.bm, ptr %i.t, align 8, !alias.scope !3487, !noalias !3481
  %.not.i35.2 = icmp eq i8 %i.bl, 115
  br i1 %.not.i35.2, label %bb.x, label %bb.z, !prof !8

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3488)
  %exitcond.not.i34.3 = icmp eq i64 %i.bm, %umax.i32
  br i1 %exitcond.not.i34.3, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i37", label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !3489, !noundef !5
  %i.bp = add i64 %i.u, 5
  store i64 %i.bp, ptr %i.t, align 8, !alias.scope !3490, !noalias !3481
  %.not.i35.3 = icmp eq i8 %i.bo, 101
  br i1 %.not.i35.3, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit38", label %bb.z, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i37": ; preds = %bb.x, %bb.v, %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3491
  store i64 5, ptr %i.b, align 8, !noalias !3491
  %i.bq = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !3477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3491
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.z:                                             ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3491
  store i64 9, ptr %i.a, align 8, !noalias !3491
  %i.br = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !3477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3491
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.aa:                                            ; preds = %bb.b
  %i.bs = add nuw i64 %i.u, 1
  store i64 %i.bs, ptr %i.t, align 8, !alias.scope !3492
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h45aa5fe29e981b15E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext false)
  %i.bt = load i64, ptr %i.o, align 8, !range !9, !noundef !5
  %i.bu = icmp eq i64 %i.bt, 3
  br i1 %i.bu, label %bb.af, label %bb.ag, !prof !30

bb.ab:                                            ; preds = %bb.b
  %i.bv = add nuw i64 %i.u, 1
  store i64 %i.bv, ptr %i.t, align 8, !alias.scope !3493
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.bw, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hae7e20f71263c1f7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.s, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  %i.bx = load i64, ptr %i.k, align 8, !range !10, !noundef !5
  %i.by = icmp eq i64 %i.bx, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.by, label %bb.ah, label %bb.ai, !prof !30

bb.ac:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 10, ptr %i.i, align 8
  %i.cb = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.i, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 11, ptr %i.h, align 8
  %i.cc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.h, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit": ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i8 7, ptr %i.r, align 8
  %i.cd = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.r, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.al, %.thread64, %bb.ai, %bb.ag, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit38", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit30", %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit", %bb.ad, %bb.ac
  %.sroa.02.0 = phi ptr [ %i.cu, %bb.al ], [ %i.cp, %.thread64 ], [ %i.cd, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit" ], [ %i.cg, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit30" ], [ %i.ci, %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit38" ], [ %i.cl, %bb.ag ], [ %i.co, %bb.ai ], [ %i.cb, %bb.ac ], [ %i.cc, %bb.ad ]
  %i.ce = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit30": ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  store i8 1, ptr %i.cf, align 1
  store i8 0, ptr %i.q, align 8
  %i.cg = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.q, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit38": ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  store i8 0, ptr %i.ch, align 1
  store i8 0, ptr %i.p, align 8
  %i.ci = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.p, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.ae

bb.af:                                            ; preds = %bb.aa
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.ag:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false)
  %i.cl = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17hcfe70100dd45d34aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.n, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ae

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.ai:                                            ; preds = %bb.ab
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ca, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.6.0.copyload, ptr %i.cn, align 8
  store i8 5, ptr %i.j, align 8
  %i.co = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.j, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ae

.thread64:                                        ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 10, ptr %i.g, align 8
  %i.cp = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.ae

bb.aj:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h45aa5fe29e981b15E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(64) %0, i1 noundef zeroext true)
  %i.cq = load i64, ptr %i.m, align 8, !range !9, !noundef !5
  %i.cr = icmp eq i64 %i.cq, 3
  br i1 %i.cr, label %bb.ak, label %bb.al, !prof !30

bb.ak:                                            ; preds = %bb.aj
  %i.cs = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !5, !align !12, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.cu = call noundef nonnull align 8 ptr @_ZN10serde_json2de12ParserNumber12invalid_type17hcfe70100dd45d34aE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.l, ptr noundef nonnull align 1 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.ae

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit.thread": ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i37", %bb.z, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i29", %bb.q, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", %bb.j, %bb.af, %bb.ah, %bb.ak, %bb.ae
  %.sroa.0.1 = phi ptr [ %i.ce, %bb.ae ], [ %i.ct, %bb.ak ], [ %i.ca, %bb.ah ], [ %i.bb, %bb.q ], [ %i.ao, %bb.j ], [ %i.ck, %bb.af ], [ %i.an, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i" ], [ %i.ba, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i29" ], [ %i.bq, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i37" ], [ %i.br, %bb.z ]
  ret ptr %.sroa.0.1
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he819fa158968f5fdE"(ptr noalias noundef nonnull align 8 dereferenceable(328) %0, ptr noundef nonnull align 1 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
end_hunk_5
begin_hunk_6_@"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hd34f403ec2c4c8c4E":bb.a
  br label %"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$f32$GT$11deserialize17h5284f660d24a19bdE.exit"

"_ZN10serde_core2de5impls61_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$f32$GT$11deserialize17h5284f660d24a19bdE.exit": ; preds = %.loopexit.i.i.i, %bb.f, %bb.k, %bb.l, %bb.n, %bb.s
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17he7da48aee07f4eb3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11121)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !11122, !noalias !11123, !noundef !5 ; 2 uses
  %.promoted.i.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !11124, !noalias !11125 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !11122, !noalias !11123, !nonnull !5, !align !6, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %i.k = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11126)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !11127, !noundef !5 ; 2 uses
  switch i8 %i.m, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i.i.i" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !11128, !noalias !11125
  %exitcond.not.i.i.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i.i.i, label %.loopexit.i.i.i, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i.i.i": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11129
  %i.o = icmp eq i8 %i.m, 34
  br i1 %i.o, label %bb.d, label %bb.e, !prof !30

.loopexit.i.i.i:                                  ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11129
  store i64 5, ptr %i.d, align 8, !noalias !11129
  %i.p = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !11130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11129
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8, !alias.scope !11130, !noalias !11131
  store i8 1, ptr %0, align 8, !alias.scope !11130, !noalias !11131
  br label %"_ZN187_$LT$anki..backend..dbproxy.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..backend..dbproxy..DbRequest$GT$..deserialize..__Field$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h09c5693f831b0bbcE.exit"

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i.i.i"
  %i.r = add i64 %i.k, 1
  store i64 %i.r, ptr %i.e, align 8, !alias.scope !11132, !noalias !11130
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.s, align 8, !alias.scope !11131, !noalias !11130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11129
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hae7e20f71263c1f7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !11130
  %i.t = load i64, ptr %i.b, align 8, !range !10, !noalias !11129, !noundef !5 ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noalias !11129 ; 3 uses
  br i1 %i.u, label %bb.f, label %bb.g

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit.i.i.i"
  %i.x = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @437), !noalias !11130
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.x, ptr %i.y, align 8, !noalias !11129
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.z, align 8, !alias.scope !11130, !noalias !11131
  store i8 1, ptr %0, align 8, !alias.scope !11130, !noalias !11131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11129
  br label %"_ZN187_$LT$anki..backend..dbproxy.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..backend..dbproxy..DbRequest$GT$..deserialize..__Field$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h09c5693f831b0bbcE.exit"

bb.g:                                             ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !11129
  %i.aa = trunc nuw i64 %i.t to i1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  call void @"_ZN190_$LT$anki..backend..dbproxy.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..backend..dbproxy..DbRequest$GT$..deserialize..__FieldVisitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_str17h6e4d534ebbeabb88E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.w, i64 noundef %.sroa.4.0.copyload.i.i.i), !noalias !11130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11129
  %i.ab = load i8, ptr %i.c, align 8, !range !18, !noalias !11129, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.ac, label %bb.j, label %bb.l, !prof !11

bb.i:                                             ; preds = %bb.g
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !11

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !11129, !nonnull !5, !align !12, !noundef !5
  %i.af = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !11130
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !alias.scope !11130, !noalias !11131
  store i8 1, ptr %0, align 8, !alias.scope !11130, !noalias !11131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11129
  br label %"_ZN187_$LT$anki..backend..dbproxy.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..backend..dbproxy..DbRequest$GT$..deserialize..__Field$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h09c5693f831b0bbcE.exit"

bb.k:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !range !42, !noalias !11129, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.ai, ptr %i.aj, align 1, !alias.scope !11130, !noalias !11131
  store i8 0, ptr %0, align 8, !alias.scope !11130, !noalias !11131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11129
  br label %"_ZN187_$LT$anki..backend..dbproxy.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..backend..dbproxy..DbRequest$GT$..deserialize..__Field$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h09c5693f831b0bbcE.exit"

bb.l:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !range !42, !noalias !11129, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.al, ptr %i.am, align 1, !alias.scope !11130, !noalias !11131
  store i8 0, ptr %0, align 8, !alias.scope !11130, !noalias !11131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11129
  br label %"_ZN187_$LT$anki..backend..dbproxy.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..backend..dbproxy..DbRequest$GT$..deserialize..__Field$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h09c5693f831b0bbcE.exit"

"_ZN187_$LT$anki..backend..dbproxy.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..backend..dbproxy..DbRequest$GT$..deserialize..__Field$u20$as$u20$serde_core..de..Deserialize$GT$11deserialize17h09c5693f831b0bbcE.exit": ; preds = %.loopexit.i.i.i, %bb.f, %bb.j, %bb.k, %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17h443f547ae875f7f7E"(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h6e62d471286653acE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN88_$LT$serde_json..de..VariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..VariantAccess$GT$12unit_variant17hb3ee6cdef100f2c5E"(ptr noalias noundef align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11161)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11162)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !11163, !noalias !11164, !noundef !5 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !11165, !noalias !11166 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !11163, !noalias !11164, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11168)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !11169, !noundef !5
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !20

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !11170, !noalias !11166
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11161
  store i64 5, ptr %i.d, align 8, !noalias !11161
  %i.o = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11161
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h1ac8346ef60a6230E.exit"

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !11171
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11172)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.g) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11173)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11174)
  %exitcond.not.i17.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i17.not.i, label %bb.e, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i"

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !11175, !noundef !5
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !11176, !noalias !11177
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11178)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11179)
  %exitcond.not.i17.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i17.1.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !11180, !noundef !5
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !11181, !noalias !11177
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11183)
  %exitcond.not.i17.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i17.2.i, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !11184, !noundef !5
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !11185, !noalias !11177
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h1ac8346ef60a6230E.exit", label %bb.j, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11186
  store i64 5, ptr %i.c, align 8, !noalias !11186
  %i.z = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !11187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11186
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h1ac8346ef60a6230E.exit"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11186
  store i64 9, ptr %i.b, align 8, !noalias !11186
  %i.aa = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !11187
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11186
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h1ac8346ef60a6230E.exit"

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h51dcb800462713beE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @439)
  %i.ac = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h7d383251b064efd6E(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %0)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h1ac8346ef60a6230E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h1ac8346ef60a6230E.exit": ; preds = %.loopexit.i, %bb.i, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i", %bb.j, %bb.k
  %.sroa.0.1.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i.i" ], [ null, %bb.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN89_$LT$serde_json..de..UnitVariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..EnumAccess$GT$12variant_seed17h0759ba36ab8dfa50E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h31783d68192fd25eE"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !28
  %.sink1 = select i1 %i.c, ptr %i.e, ptr %1
  %.sink = select i1 %i.c, i8 3, i8 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1, ptr %i.h, align 8
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN89_$LT$serde_json..de..UnitVariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..EnumAccess$GT$12variant_seed17h60e023c362fb18bcE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h486ffbdf76d96dc4E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(80) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !18
  %.sink1 = select i1 %i.c, ptr %i.e, ptr %1
  %.sink = select i1 %i.c, i8 2, i8 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1, ptr %i.h, align 8
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN89_$LT$serde_json..de..UnitVariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..EnumAccess$GT$12variant_seed17h94cbc2c9cc1bc6b0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h232c95151d0c2885E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !18
  %.sink1 = select i1 %i.c, ptr %i.e, ptr %1
  %.sink = select i1 %i.c, i8 2, i8 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1, ptr %i.h, align 8
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN89_$LT$serde_json..de..UnitVariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..EnumAccess$GT$12variant_seed17hcc6bb7e1b4a48425E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17hbeee6eb266378065E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(80) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !28
  %.sink1 = select i1 %i.c, ptr %i.e, ptr %1
  %.sink = select i1 %i.c, i8 3, i8 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1, ptr %i.h, align 8
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN89_$LT$serde_json..de..UnitVariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..EnumAccess$GT$12variant_seed17hd8abcd3e97b7b5f9E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17h33febccb6c12ab48E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !18
  %.sink1 = select i1 %i.c, ptr %i.e, ptr %1
  %.sink = select i1 %i.c, i8 2, i8 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1, ptr %i.h, align 8
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN89_$LT$serde_json..de..UnitVariantAccess$LT$R$GT$$u20$as$u20$serde_core..de..EnumAccess$GT$12variant_seed17he81dce02560f52b8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 1), (8, 16)) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @"_ZN86_$LT$core..marker..PhantomData$LT$T$GT$$u20$as$u20$serde_core..de..DeserializeSeed$GT$11deserialize17ha9d14e8df06f8f14E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef align 8 dereferenceable(64) %1)
  %i.b = load i8, ptr %i.a, align 8, !range !18, !noundef !5
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !align !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !range !28
  %.sink1 = select i1 %i.c, ptr %i.e, ptr %1
  %.sink = select i1 %i.c, i8 3, i8 %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink1, ptr %i.h, align 8
  store i8 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN91_$LT$anki_proto..stats..graphs_response..hours..Hour$u20$as$u20$prost..message..Message$GT$10encode_raw17heba8209a4f51477fE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !5
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5prost8encoding6uint326encode17h4939b4130adf3468E(i32 noundef 1, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
end_hunk_6
begin_hunk_7_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$14deserialize_u817hff049c26f3c37338E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11479
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17hb268aa60c3b2941aE.exit"

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11479
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h45aa5fe29e981b15E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !11469
  %i.av = load i64, ptr %i.f, align 8, !range !9, !noalias !11479, !noundef !5 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !11479, !nonnull !5, !align !12, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !11469, !noalias !11470
  store i8 1, ptr %0, align 8, !alias.scope !11469, !noalias !11470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11479
  br label %bb.n

bb.r:                                             ; preds = %bb.p
  %.sroa.227.0.copyload.i = load i64, ptr %i.ax, align 8, !noalias !11479 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11488)
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i
    i64 1, label %bb.s
    i64 2, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp ugt i64 %.sroa.227.0.copyload.i, 255
  br i1 %i.ba, label %bb.t, label %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread4, !prof !11

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11489
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.227.0.copyload.i, ptr %i.bb, align 8, !noalias !11489
  store i8 1, ptr %i.c, align 8, !noalias !11489
  %i.bc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h6a499f02f367aa19E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16), !noalias !11490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11489
  br label %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread

bb.u:                                             ; preds = %bb.r
  %i.bd = icmp ugt i64 %.sroa.227.0.copyload.i, 255
  br i1 %i.bd, label %bb.v, label %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread4, !prof !15

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11491
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.227.0.copyload.i, ptr %i.be, align 8, !noalias !11491
  store i8 2, ptr %i.b, align 8, !noalias !11491
  %i.bf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h6a499f02f367aa19E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @16), !noalias !11492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11491
  br label %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread

_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread: ; preds = %bb.t, %bb.v
  %.sink27 = phi ptr [ %i.bc, %bb.t ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sink27, ptr %i.bg, align 8, !alias.scope !11488, !noalias !11493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11479
  br label %bb.w

_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread4: ; preds = %bb.u, %bb.s
  %i.bh = trunc nuw i64 %.sroa.227.0.copyload.i to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11479
  br label %bb.x

_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i: ; preds = %bb.r
  %i.bi = bitcast i64 %.sroa.227.0.copyload.i to double
  call void @_ZN10serde_core2de7Visitor9visit_f6417h500279122eb37d29E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, double noundef %i.bi), !noalias !11494
  %.pre.i = load i8, ptr %i.h, align 8, !range !18, !noalias !11479
  %i.bj = trunc nuw i8 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !11479
  br i1 %i.bj, label %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i._crit_edge11, label %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i._crit_edge, !prof !17

_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i._crit_edge11: ; preds = %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8, !noalias !11479
  br label %bb.w

_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i._crit_edge: ; preds = %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !11479
  br label %bb.x

bb.w:                                             ; preds = %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i._crit_edge11, %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread
  %i.bk = phi ptr [ %.pre13, %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i._crit_edge11 ], [ %.sink27, %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread ]
  %i.bl = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !11469
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !11469, !noalias !11470
  store i8 1, ptr %0, align 8, !alias.scope !11469, !noalias !11470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11479
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17hb268aa60c3b2941aE.exit"

bb.x:                                             ; preds = %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i._crit_edge, %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread4
  %i.bn = phi i8 [ %.pre, %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i._crit_edge ], [ %i.bh, %_ZN10serde_json2de12ParserNumber5visit17h9088a8b9c8a11a29E.exit22.i.thread4 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.bn, ptr %i.bo, align 1, !alias.scope !11469, !noalias !11470
  store i8 0, ptr %0, align 8, !alias.scope !11469, !noalias !11470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11479
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17hb268aa60c3b2941aE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17hb268aa60c3b2941aE.exit": ; preds = %.loopexit.i, %bb.l, %bb.m, %bb.n, %bb.o, %bb.w, %bb.x
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h65e4bcb3dc16473dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.9127 = alloca [16 x i8], align 8         ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.38 = alloca [6 x i8], align 2            ; 13 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11617)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !11618, !noalias !11619, !noundef !5 ; 8 uses
  %.promoted.i = load i64, ptr %i.ab, align 8, !alias.scope !11617, !noalias !11620 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !11618, !noalias !11619, !nonnull !5, !align !6, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11622)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !11623, !noundef !5 ; 3 uses
  switch i8 %i.aj, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !11624, !noalias !11620
  %exitcond.not.i = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.38)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 5, ptr %i.aa, align 8
  %i.al = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ah

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit"
  %i.an = add i8 %i.aj, -48
  %or.cond8 = icmp ult i8 %i.an, 10
  br i1 %or.cond8, label %bb.cv, label %bb.cu, !prof !7

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit"
  %i.ao = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !11625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11626)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11628)
  %exitcond.not.i70.not = icmp ult i64 %i.ao, %i.ad
  br i1 %exitcond.not.i70.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !11629, !noundef !5
  %i.ar = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !11630, !noalias !11631
  %.not.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11632)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11633)
  %exitcond.not.i70.1 = icmp eq i64 %i.ar, %umax.i
  br i1 %exitcond.not.i70.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !11634, !noundef !5
  %i.au = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !11635, !noalias !11631
  %.not.i.1 = icmp eq i8 %i.at, 108
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11636)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11637)
  %exitcond.not.i70.2 = icmp eq i64 %i.au, %umax.i
  br i1 %exitcond.not.i70.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !11638, !noundef !5
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !11639, !noalias !11631
  %.not.i.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2, label %bb.ag, label %bb.k, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11640
  store i64 5, ptr %i.o, align 8, !noalias !11640
  %i.ay = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !11641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11640
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11640
  store i64 9, ptr %i.n, align 8, !noalias !11640
  %i.az = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !11641
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11640
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit"
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !11642
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11643)
  %umax.i73 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11644)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11645)
  %exitcond.not.i75.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i75.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79"

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !11646, !noundef !5
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !11647, !noalias !11648
  %.not.i76 = icmp eq i8 %i.bc, 114
  br i1 %.not.i76, label %bb.n, label %bb.r, !prof !8

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11649)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11650)
  %exitcond.not.i75.1 = icmp eq i64 %i.bd, %umax.i73
  br i1 %exitcond.not.i75.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !11651, !noundef !5
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !11652, !noalias !11648
  %.not.i76.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i76.1, label %bb.p, label %bb.r, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11654)
  %exitcond.not.i75.2 = icmp eq i64 %i.bg, %umax.i73
  br i1 %exitcond.not.i75.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !11655, !noundef !5
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !11656, !noalias !11648
  %.not.i76.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i76.2, label %bb.ak, label %bb.r, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11657
  store i64 5, ptr %i.m, align 8, !noalias !11657
  %i.bk = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !11658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11657
  br label %bb.aj

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11657
  store i64 9, ptr %i.l, align 8, !noalias !11657
  %i.bl = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !11658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11657
  br label %bb.aj

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit"
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !11659
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11660)
  %umax.i82 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ad) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11661)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11662)
  %exitcond.not.i84.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i84.not, label %bb.t, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88"

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !11663, !noundef !5
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !11664, !noalias !11665
  %.not.i85 = icmp eq i8 %i.bo, 97
  br i1 %.not.i85, label %bb.u, label %bb.aa, !prof !8

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11666)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11667)
  %exitcond.not.i84.1 = icmp eq i64 %i.bp, %umax.i82
  br i1 %exitcond.not.i84.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !11668, !noundef !5
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !11669, !noalias !11665
  %.not.i85.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i85.1, label %bb.w, label %bb.aa, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11670)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11671)
  %exitcond.not.i84.2 = icmp eq i64 %i.bs, %umax.i82
  br i1 %exitcond.not.i84.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !11672, !noundef !5
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !11673, !noalias !11665
  %.not.i85.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i85.2, label %bb.y, label %bb.aa, !prof !8

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11675)
  %exitcond.not.i84.3 = icmp eq i64 %i.bv, %umax.i82
  br i1 %exitcond.not.i84.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !11676, !noundef !5
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !11677, !noalias !11665
  %.not.i85.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i85.3, label %bb.am, label %bb.aa, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11678
  store i64 5, ptr %i.k, align 8, !noalias !11678
  %i.bz = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !11679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11678
  br label %bb.al

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11678
  store i64 9, ptr %i.j, align 8, !noalias !11678
  %i.ca = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !11679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11678
  br label %bb.al

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit"
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !11680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h35a28843eeccb114E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.z, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext false)
  %i.cc = load i64, ptr %i.z, align 8, !range !9, !noundef !5 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.an, label %bb.ao

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit"
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !11681
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17h8029598f5bdd8687E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.ch = load i64, ptr %i.x, align 8, !range !10, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  br i1 %i.ci, label %bb.at, label %bb.au

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit"
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !noundef !5
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.bc, label %bb.bd, !prof !11

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h399da35d74dda4e0E.exit"
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !noundef !5
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.cg, label %bb.ch, !prof !11

bb.af:                                            ; preds = %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.ay, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i" ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.ct, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.j
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ct, %.loopexit, %bb.ai, %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117.thread, %bb.bb, %bb.ba, %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit.thread, %bb.am, %bb.ak, %bb.ag
  ret void

bb.ai:                                            ; preds = %bb.cw, %bb.cg, %bb.bc, %bb.at, %bb.an, %bb.al, %bb.aj, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.r, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79"
  %.sroa.0.1.i78.ph = phi ptr [ %i.bk, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i79" ], [ %i.bl, %bb.r ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i78.ph, ptr %i.cu, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.ak:                                            ; preds = %bb.q
  store i8 1, ptr %0, align 8
  %.sroa.36.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.36.0..sroa_idx207, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.al:                                            ; preds = %bb.aa, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88"
  %.sroa.0.1.i87.ph = phi ptr [ %i.bz, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i88" ], [ %i.ca, %bb.aa ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i87.ph, ptr %i.cv, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  store i8 1, ptr %0, align 8
  %.sroa.36.0..sroa_idx209 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.36.0..sroa_idx209, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %i.cw = load ptr, ptr %i.ce, align 8, !nonnull !5, !align !12, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8
  store i8 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ai

bb.ao:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.ce, align 8 ; 3 uses
  %i.cy = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.2.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cc, label %default.unreachable316 [
    i64 0, label %bb.ap
    i64 1, label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit.thread
    i64 2, label %bb.as
  ]

default.unreachable316:                           ; preds = %bb.cx, %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.cz = bitcast i64 %.sroa.2.0.copyload to double
  %i.da = tail call double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp ueq double %i.da, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11682
  br i1 %i.db, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.sroa.4.0.copyload10.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i, align 8, !alias.scope !11683, !noalias !11684
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dc = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i, align 8, !alias.scope !11683, !noalias !11684
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit

bb.ar:                                            ; preds = %bb.ap
  store i8 0, ptr %i.i, align 8, !noalias !11682
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11685)
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i), !noalias !11686
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit

bb.as:                                            ; preds = %bb.ao
  %.lobit.i.i = lshr i64 %.sroa.2.0.copyload, 63
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit.thread

_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit: ; preds = %bb.aq, %bb.ar
end_hunk_7
begin_hunk_8_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17h65e4bcb3dc16473dE":bb.a
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i93)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit96" unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit96": ; preds = %bb.cn, %bb.co, %bb.cp, %bb.cq
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.gg, i64 noundef 40, i64 noundef 8) #29
  br label %.thread160

bb.cs:                                            ; preds = %bb.cf
  store i8 %.sroa.0.2, ptr %0, align 8
  %.sroa.36.0..sroa_idx221 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %.sroa.36.1, ptr %.sroa.36.0..sroa_idx221, align 1
  %.sroa.38.0..sroa_idx232 = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.38.0..sroa_idx232, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.38, i64 6, i1 false)
  %.sroa.38234.0..sroa_idx249 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.38234.3, ptr %.sroa.38234.0..sroa_idx249, align 8
  %.sroa.50.0..sroa_idx267 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.fz, ptr %.sroa.50.0..sroa_idx267, align 8
  br label %bb.ct

bb.ct:                                            ; preds = %bb.az, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.cu:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 10, ptr %i.p, align 8
  %i.gx = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %i.gy = ptrtoint ptr %i.gx to i64
  br label %bb.az

bb.cv:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call fastcc void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h35a28843eeccb114E"(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.y, ptr noalias noundef align 8 dereferenceable(80) %1, i1 noundef zeroext true)
  %i.gz = load i64, ptr %i.y, align 8, !range !9, !noundef !5 ; 2 uses
  %i.ha = icmp eq i64 %i.gz, 3
  %i.hb = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  br i1 %i.ha, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.hc = load ptr, ptr %i.hb, align 8, !nonnull !5, !align !12, !noundef !5
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hc, ptr %i.hd, align 8
  store i8 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ai

bb.cx:                                            ; preds = %bb.cv
  %.sroa.2124.0.copyload = load i64, ptr %i.hb, align 8 ; 3 uses
  %i.he = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.2124.0.copyload, i64 0 ; 3 uses
  switch i64 %i.gz, label %default.unreachable316 [
    i64 0, label %bb.cy
    i64 1, label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117.thread
    i64 2, label %bb.db
  ]

bb.cy:                                            ; preds = %bb.cx
  %i.hf = bitcast i64 %.sroa.2124.0.copyload to double
  %i.hg = tail call double @llvm.fabs.f64(double %i.hf)
  %i.hh = fcmp ueq double %i.hg, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11709
  br i1 %i.hh, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.5.sroa.4.0.copyload10.i.i111 = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i110, align 8, !alias.scope !11710, !noalias !11711
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i112 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.hi = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i112, align 8, !alias.scope !11710, !noalias !11711
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117

bb.da:                                            ; preds = %bb.cy
  store i8 0, ptr %i.e, align 8, !noalias !11709
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11712)
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e), !noalias !11713
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117

bb.db:                                            ; preds = %bb.cx
  %.lobit.i.i97 = lshr i64 %.sroa.2124.0.copyload, 63
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117.thread

_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117: ; preds = %bb.cz, %bb.da
  %.sroa.5.sroa.4.0.i.i104 = phi i64 [ %.sroa.5.sroa.4.0.copyload10.i.i111, %bb.cz ], [ 2, %bb.da ]
  %.sroa.0.0.i.i106 = phi i8 [ 0, %bb.cz ], [ 2, %bb.da ]
  %i.hj = phi <2 x i64> [ %i.hi, %bb.cz ], [ %i.he, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11709
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117.thread

_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117.thread: ; preds = %bb.db, %bb.cx, %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117
  %.sroa.38234.5 = phi i64 [ %.sroa.5.sroa.4.0.i.i104, %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117 ], [ 0, %bb.cx ], [ %.lobit.i.i97, %bb.db ]
  %.sroa.0.4 = phi i8 [ %.sroa.0.0.i.i106, %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117 ], [ 2, %bb.cx ], [ 2, %bb.db ]
  %i.hk = phi <2 x i64> [ %i.hj, %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117 ], [ %i.he, %bb.cx ], [ %i.he, %bb.db ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  store i8 %.sroa.0.4, ptr %0, align 8
  %.sroa.38234.0..sroa_idx251 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.38234.5, ptr %.sroa.38234.0..sroa_idx251, align 8
  %.sroa.50.0..sroa_idx269 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x i64> %i.hk, ptr %.sroa.50.0..sroa_idx269, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_any17hef0618edcc235835E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = alloca [32 x i8], align 8                ; 6 uses
  %i.f = alloca [32 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  %i.i = alloca [32 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [24 x i8], align 8                ; 4 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 7 uses
  %i.s = alloca [32 x i8], align 8                ; 12 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [32 x i8], align 8                ; 7 uses
  %i.v = alloca [40 x i8], align 8                ; 11 uses
  %.sroa.9127 = alloca [16 x i8], align 8         ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 4 uses
  %i.x = alloca [24 x i8], align 8                ; 8 uses
  %i.y = alloca [16 x i8], align 8                ; 6 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.38 = alloca [6 x i8], align 2            ; 13 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11817)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 19 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !11818, !noalias !11819, !noundef !5 ; 8 uses
  %.promoted.i = load i64, ptr %i.ab, align 8, !alias.scope !11817, !noalias !11820 ; 2 uses
  %i.ae = icmp ult i64 %.promoted.i, %i.ad
  br i1 %i.ae, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !11818, !noalias !11819, !nonnull !5, !align !6, !noundef !5 ; 11 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.ah = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.ak, %bb.c ] ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11821)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !11822, !noundef !5 ; 3 uses
  switch i8 %i.aj, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit" [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ak = add i64 %i.ah, 1                        ; 3 uses
  store i64 %i.ak, ptr %i.ab, align 8, !alias.scope !11823, !noalias !11820
  %exitcond.not.i = icmp eq i64 %i.ak, %i.ad
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit": ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.38)
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 5, ptr %i.aa, align 8
  %i.al = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.al, ptr %i.am, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ah

bb.d:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.an = add i8 %i.aj, -48
  %or.cond8 = icmp ult i8 %i.an, 10
  br i1 %or.cond8, label %bb.cv, label %bb.cu, !prof !7

bb.e:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.ao = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ao, ptr %i.ab, align 8, !alias.scope !11824
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11825)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.ao, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11826)
  %exitcond.not.i70.not = icmp ult i64 %i.ao, %i.ad
  br i1 %exitcond.not.i70.not, label %bb.f, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !noalias !11827, !noundef !5
  %i.ar = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.ar, ptr %i.ab, align 8, !alias.scope !11828, !noalias !11829
  %.not.i = icmp eq i8 %i.aq, 117
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11830)
  %exitcond.not.i70.1 = icmp eq i64 %i.ar, %umax.i
  br i1 %exitcond.not.i70.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !noalias !11831, !noundef !5
  %i.au = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.au, ptr %i.ab, align 8, !alias.scope !11832, !noalias !11829
  %.not.i.1 = icmp eq i8 %i.at, 108
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11833)
  %exitcond.not.i70.2 = icmp eq i64 %i.au, %umax.i
  br i1 %exitcond.not.i70.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !noalias !11834, !noundef !5
  %i.ax = add i64 %i.ah, 4
  store i64 %i.ax, ptr %i.ab, align 8, !alias.scope !11835, !noalias !11829
  %.not.i.2 = icmp eq i8 %i.aw, 108
  br i1 %.not.i.2, label %bb.ag, label %bb.k, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !11836
  store i64 5, ptr %i.o, align 8, !noalias !11836
  %i.ay = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.o), !noalias !11837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !11836
  br label %bb.af

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11836
  store i64 9, ptr %i.n, align 8, !noalias !11836
  %i.az = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.n), !noalias !11837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11836
  br label %bb.af

bb.l:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.ba = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.ba, ptr %i.ab, align 8, !alias.scope !11838
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11839)
  %umax.i73 = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 %i.ad) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11840)
  %exitcond.not.i75.not = icmp ult i64 %i.ba, %i.ad
  br i1 %exitcond.not.i75.not, label %bb.m, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79"

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !noalias !11841, !noundef !5
  %i.bd = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bd, ptr %i.ab, align 8, !alias.scope !11842, !noalias !11843
  %.not.i76 = icmp eq i8 %i.bc, 114
  br i1 %.not.i76, label %bb.n, label %bb.r, !prof !8

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11844)
  %exitcond.not.i75.1 = icmp eq i64 %i.bd, %umax.i73
  br i1 %exitcond.not.i75.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !11845, !noundef !5
  %i.bg = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bg, ptr %i.ab, align 8, !alias.scope !11846, !noalias !11843
  %.not.i76.1 = icmp eq i8 %i.bf, 117
  br i1 %.not.i76.1, label %bb.p, label %bb.r, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11847)
  %exitcond.not.i75.2 = icmp eq i64 %i.bg, %umax.i73
  br i1 %exitcond.not.i75.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noalias !11848, !noundef !5
  %i.bj = add i64 %i.ah, 4
  store i64 %i.bj, ptr %i.ab, align 8, !alias.scope !11849, !noalias !11843
  %.not.i76.2 = icmp eq i8 %i.bi, 101
  br i1 %.not.i76.2, label %bb.ak, label %bb.r, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79": ; preds = %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11850
  store i64 5, ptr %i.m, align 8, !noalias !11850
  %i.bk = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.m), !noalias !11851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11850
  br label %bb.aj

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11850
  store i64 9, ptr %i.l, align 8, !noalias !11850
  %i.bl = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.l), !noalias !11851
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11850
  br label %bb.aj

bb.s:                                             ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.bm = add i64 %i.ah, 1                        ; 4 uses
  store i64 %i.bm, ptr %i.ab, align 8, !alias.scope !11852
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11853)
  %umax.i82 = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 %i.ad) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11854)
  %exitcond.not.i84.not = icmp ult i64 %i.bm, %i.ad
  br i1 %exitcond.not.i84.not, label %bb.t, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88"

bb.t:                                             ; preds = %bb.s
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !11855, !noundef !5
  %i.bp = add i64 %i.ah, 2                        ; 3 uses
  store i64 %i.bp, ptr %i.ab, align 8, !alias.scope !11856, !noalias !11857
  %.not.i85 = icmp eq i8 %i.bo, 97
  br i1 %.not.i85, label %bb.u, label %bb.aa, !prof !8

bb.u:                                             ; preds = %bb.t
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11858)
  %exitcond.not.i84.1 = icmp eq i64 %i.bp, %umax.i82
  br i1 %exitcond.not.i84.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !noalias !11859, !noundef !5
  %i.bs = add i64 %i.ah, 3                        ; 3 uses
  store i64 %i.bs, ptr %i.ab, align 8, !alias.scope !11860, !noalias !11857
  %.not.i85.1 = icmp eq i8 %i.br, 108
  br i1 %.not.i85.1, label %bb.w, label %bb.aa, !prof !8

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11861)
  %exitcond.not.i84.2 = icmp eq i64 %i.bs, %umax.i82
  br i1 %exitcond.not.i84.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88", label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bs
  %i.bu = load i8, ptr %i.bt, align 1, !noalias !11862, !noundef !5
  %i.bv = add i64 %i.ah, 4                        ; 3 uses
  store i64 %i.bv, ptr %i.ab, align 8, !alias.scope !11863, !noalias !11857
  %.not.i85.2 = icmp eq i8 %i.bu, 115
  br i1 %.not.i85.2, label %bb.y, label %bb.aa, !prof !8

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11864)
  %exitcond.not.i84.3 = icmp eq i64 %i.bv, %umax.i82
  br i1 %exitcond.not.i84.3, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88", label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !11865, !noundef !5
  %i.by = add i64 %i.ah, 5
  store i64 %i.by, ptr %i.ab, align 8, !alias.scope !11866, !noalias !11857
  %.not.i85.3 = icmp eq i8 %i.bx, 101
  br i1 %.not.i85.3, label %bb.am, label %bb.aa, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88": ; preds = %bb.y, %bb.w, %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !11867
  store i64 5, ptr %i.k, align 8, !noalias !11867
  %i.bz = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k), !noalias !11868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11867
  br label %bb.al

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11867
  store i64 9, ptr %i.j, align 8, !noalias !11867
  %i.ca = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j), !noalias !11868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11867
  br label %bb.al

bb.ab:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.cb = add i64 %i.ah, 1
  store i64 %i.cb, ptr %i.ab, align 8, !alias.scope !11869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h45aa5fe29e981b15E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext false)
  %i.cc = load i64, ptr %i.z, align 8, !range !9, !noundef !5 ; 2 uses
  %i.cd = icmp eq i64 %i.cc, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  br i1 %i.cd, label %bb.an, label %bb.ao

bb.ac:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.cf = add i64 %i.ah, 1
  store i64 %i.cf, ptr %i.ab, align 8, !alias.scope !11870
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.cg, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$9parse_str17hae7e20f71263c1f7E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  %i.ch = load i64, ptr %i.x, align 8, !range !10, !noundef !5 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8            ; 4 uses
  br i1 %i.ci, label %bb.at, label %bb.au

bb.ad:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cm = load i8, ptr %i.cl, align 8, !noundef !5
  %i.cn = add i8 %i.cm, -1                        ; 2 uses
  store i8 %i.cn, ptr %i.cl, align 8
  %i.co = icmp eq i8 %i.cn, 0
  br i1 %i.co, label %bb.bc, label %bb.bd, !prof !11

bb.ae:                                            ; preds = %"_ZN10serde_json2de21Deserializer$LT$R$GT$16parse_whitespace17h40ab685ac789d80aE.exit"
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.cq = load i8, ptr %i.cp, align 8, !noundef !5
  %i.cr = add i8 %i.cq, -1                        ; 2 uses
  store i8 %i.cr, ptr %i.cp, align 8
  %i.cs = icmp eq i8 %i.cr, 0
  br i1 %i.cs, label %bb.cg, label %bb.ch, !prof !11

bb.af:                                            ; preds = %bb.k, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i"
  %.sroa.0.1.i.ph = phi ptr [ %i.ay, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i" ], [ %i.az, %bb.k ]
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i.ph, ptr %i.ct, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.ag:                                            ; preds = %bb.j
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ct, %.loopexit, %bb.ai, %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit117.thread, %bb.bb, %bb.ba, %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit.thread, %bb.am, %bb.ak, %bb.ag
  ret void

bb.ai:                                            ; preds = %bb.cw, %bb.cg, %bb.bc, %bb.at, %bb.an, %bb.al, %bb.aj, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.aj:                                            ; preds = %bb.r, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79"
  %.sroa.0.1.i78.ph = phi ptr [ %i.bk, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i79" ], [ %i.bl, %bb.r ]
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i78.ph, ptr %i.cu, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.ak:                                            ; preds = %bb.q
  store i8 1, ptr %0, align 8
  %.sroa.36.0..sroa_idx207 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %.sroa.36.0..sroa_idx207, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.al:                                            ; preds = %bb.aa, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88"
  %.sroa.0.1.i87.ph = phi ptr [ %i.bz, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i88" ], [ %i.ca, %bb.aa ]
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i87.ph, ptr %i.cv, align 8
  store i8 6, ptr %0, align 8
  br label %bb.ai

bb.am:                                            ; preds = %bb.z
  store i8 1, ptr %0, align 8
  %.sroa.36.0..sroa_idx209 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %.sroa.36.0..sroa_idx209, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.38)
  br label %bb.ah

bb.an:                                            ; preds = %bb.ab
  %i.cw = load ptr, ptr %i.ce, align 8, !nonnull !5, !align !12, !noundef !5
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8
  store i8 6, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ai

bb.ao:                                            ; preds = %bb.ab
  %.sroa.2.0.copyload = load i64, ptr %i.ce, align 8 ; 3 uses
  %i.cy = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.2.0.copyload, i64 0 ; 3 uses
  switch i64 %i.cc, label %default.unreachable316 [
    i64 0, label %bb.ap
    i64 1, label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit.thread
    i64 2, label %bb.as
  ]

default.unreachable316:                           ; preds = %bb.cx, %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.cz = bitcast i64 %.sroa.2.0.copyload to double
  %i.da = tail call double @llvm.fabs.f64(double %i.cz)
  %i.db = fcmp ueq double %i.da, +inf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !11871
  br i1 %i.db, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.5.sroa.4.0.copyload10.i.i = load i64, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx5.sroa_idx.i.i, align 8, !alias.scope !11872, !noalias !11873
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.dc = load <2 x i64>, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx5.sroa_idx.i.i, align 8, !alias.scope !11872, !noalias !11873
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit

bb.ar:                                            ; preds = %bb.ap
  store i8 0, ptr %i.i, align 8, !noalias !11871
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11874)
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i), !noalias !11875
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit

bb.as:                                            ; preds = %bb.ao
  %.lobit.i.i = lshr i64 %.sroa.2.0.copyload, 63
  br label %_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit.thread

_ZN10serde_json2de12ParserNumber5visit17ha73d2e93e5a15f72E.exit: ; preds = %bb.aq, %bb.ar
  %.sroa.5.sroa.4.0.i.i = phi i64 [ %.sroa.5.sroa.4.0.copyload10.i.i, %bb.aq ], [ 2, %bb.ar ]
  %.sroa.0.0.i.i = phi i8 [ 0, %bb.aq ], [ 2, %bb.ar ]
  %i.dd = phi <2 x i64> [ %i.dc, %bb.aq ], [ %i.cy, %bb.ar ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !11871
end_hunk_8
begin_hunk_9_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_u1617h68f786db218c9ce4E":bb.a
_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i._crit_edge: ; preds = %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i
  %.phi.trans.insert14 = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.pre15 = load i16, ptr %.phi.trans.insert14, align 2, !noalias !15067
  br label %bb.m

bb.l:                                             ; preds = %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i._crit_edge16, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i.thread
  %i.an = phi ptr [ %.pre18, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i._crit_edge16 ], [ %.sink, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i.thread ]
  %i.ao = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.an, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !15057
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !alias.scope !15057, !noalias !15058
  store i16 1, ptr %0, align 8, !alias.scope !15057, !noalias !15058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15067
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h704d46d1b797760aE.exit"

bb.m:                                             ; preds = %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i._crit_edge, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i.thread2
  %i.aq = phi i16 [ %.pre15, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i._crit_edge ], [ %i.ak, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit.i.thread2 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.aq, ptr %i.ar, align 2, !alias.scope !15057, !noalias !15058
  store i16 0, ptr %0, align 8, !alias.scope !15057, !noalias !15058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15067
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h704d46d1b797760aE.exit"

bb.n:                                             ; preds = %bb.q, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15067
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h704d46d1b797760aE.exit"

bb.o:                                             ; preds = %bb.e
  %i.as = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14), !noalias !15057
  %i.at = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !15057
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %i.au, align 8, !alias.scope !15057, !noalias !15058
  store i16 1, ptr %0, align 8, !alias.scope !15057, !noalias !15058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15067
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h704d46d1b797760aE.exit"

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15067
  call void @"_ZN10serde_json2de21Deserializer$LT$R$GT$13parse_integer17h45aa5fe29e981b15E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, i1 noundef zeroext true), !noalias !15057
  %i.av = load i64, ptr %i.f, align 8, !range !9, !noalias !15067, !noundef !5 ; 2 uses
  %i.aw = icmp eq i64 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br i1 %i.aw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.ax, align 8, !noalias !15067, !nonnull !5, !align !12, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8, !alias.scope !15057, !noalias !15058
  store i16 1, ptr %0, align 8, !alias.scope !15057, !noalias !15058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15067
  br label %bb.n

bb.r:                                             ; preds = %bb.p
  %.sroa.227.0.copyload.i = load i64, ptr %i.ax, align 8, !noalias !15067 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15076)
  switch i64 %i.av, label %default.unreachable [
    i64 0, label %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i
    i64 1, label %bb.s
    i64 2, label %bb.u
  ]

bb.s:                                             ; preds = %bb.r
  %i.ba = icmp ugt i64 %.sroa.227.0.copyload.i, 65535
  br i1 %i.ba, label %bb.t, label %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread4, !prof !11

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15077
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.227.0.copyload.i, ptr %i.bb, align 8, !noalias !15077
  store i8 1, ptr %i.c, align 8, !noalias !15077
  %i.bc = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h6a499f02f367aa19E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14), !noalias !15078
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15077
  br label %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread

bb.u:                                             ; preds = %bb.r
  %i.bd = icmp ugt i64 %.sroa.227.0.copyload.i, 65535
  br i1 %i.bd, label %bb.v, label %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread4, !prof !15

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15079
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sroa.227.0.copyload.i, ptr %i.be, align 8, !noalias !15079
  store i8 2, ptr %i.b, align 8, !noalias !15079
  %i.bf = call noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$13invalid_value17h6a499f02f367aa19E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @14), !noalias !15080
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15079
  br label %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread

_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread: ; preds = %bb.t, %bb.v
  %.sink27 = phi ptr [ %i.bc, %bb.t ], [ %i.bf, %bb.v ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sink27, ptr %i.bg, align 8, !alias.scope !15076, !noalias !15081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15067
  br label %bb.w

_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread4: ; preds = %bb.u, %bb.s
  %i.bh = trunc nuw i64 %.sroa.227.0.copyload.i to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15067
  br label %bb.x

_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i: ; preds = %bb.r
  %i.bi = bitcast i64 %.sroa.227.0.copyload.i to double
  call void @_ZN10serde_core2de7Visitor9visit_f6417hc00798ffa8f6ff1bE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, double noundef %i.bi), !noalias !15082
  %.pre.i = load i16, ptr %i.h, align 8, !range !24, !noalias !15067
  %i.bj = trunc nuw i16 %.pre.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15067
  br i1 %i.bj, label %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i._crit_edge11, label %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i._crit_edge, !prof !17

_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i._crit_edge11: ; preds = %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i
  %.phi.trans.insert12 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.pre13 = load ptr, ptr %.phi.trans.insert12, align 8, !noalias !15067
  br label %bb.w

_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i._crit_edge: ; preds = %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.pre = load i16, ptr %.phi.trans.insert, align 2, !noalias !15067
  br label %bb.x

bb.w:                                             ; preds = %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i._crit_edge11, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread
  %i.bk = phi ptr [ %.pre13, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i._crit_edge11 ], [ %.sink27, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread ]
  %i.bl = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.bk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1), !noalias !15057
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8, !alias.scope !15057, !noalias !15058
  store i16 1, ptr %0, align 8, !alias.scope !15057, !noalias !15058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15067
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h704d46d1b797760aE.exit"

bb.x:                                             ; preds = %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i._crit_edge, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread4
  %i.bn = phi i16 [ %.pre, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i._crit_edge ], [ %i.bh, %_ZN10serde_json2de12ParserNumber5visit17he6ec8ea3df1c5cb2E.exit22.i.thread4 ]
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.bn, ptr %i.bo, align 2, !alias.scope !15057, !noalias !15058
  store i16 0, ptr %0, align 8, !alias.scope !15057, !noalias !15058
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15067
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h704d46d1b797760aE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$18deserialize_number17h704d46d1b797760aE.exit": ; preds = %.loopexit.i, %bb.l, %bb.m, %bb.n, %bb.o, %bb.w, %bb.x
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_bool17h21000abe7b48766cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15126)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !15127, !noalias !15128, !noundef !5 ; 6 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !15126, !noalias !15129 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15127, !noalias !15128, !nonnull !5, !align !6, !noundef !5 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.m = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15131)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !15132, !noundef !5
  switch i8 %i.o, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 116, label %bb.e
    i8 102, label %bb.l
  ], !prof !52

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !15133, !noalias !15129
  %exitcond.not.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.f, align 8
  %i.q = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17hb1a19b7e56e1eb20E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.s = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17h51dcb800462713beE"(ptr noalias noundef align 8 dereferenceable(80) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @438)
  %i.t = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17h7d383251b064efd6E(ptr noalias noundef nonnull align 8 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.v = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !15134
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15135)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.i) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15136)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15137)
  %exitcond.not.i23.not = icmp ult i64 %i.v, %i.i
  br i1 %exitcond.not.i23.not, label %bb.f, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !15138, !noundef !5
  %i.y = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !15139, !noalias !15140
  %.not.i = icmp eq i8 %i.x, 114
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15142)
  %exitcond.not.i23.1 = icmp eq i64 %i.y, %umax.i
  br i1 %exitcond.not.i23.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !15143, !noundef !5
  %i.ab = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !15144, !noalias !15140
  %.not.i.1 = icmp eq i8 %i.aa, 117
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15145)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15146)
  %exitcond.not.i23.2 = icmp eq i64 %i.ab, %umax.i
  br i1 %exitcond.not.i23.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !15147, !noundef !5
  %i.ae = add i64 %i.m, 4
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !15148, !noalias !15140
  %.not.i.2 = icmp eq i8 %i.ad, 101
  br i1 %.not.i.2, label %bb.u, label %bb.k, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15149
  store i64 5, ptr %i.e, align 8, !noalias !15149
  %i.af = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !15150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15149
  br label %bb.w

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15149
  store i64 9, ptr %i.d, align 8, !noalias !15149
  %i.ag = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !15150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15149
  br label %bb.w

bb.l:                                             ; preds = %bb.b
  %i.ah = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !15151
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15152)
  %umax.i26 = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.i) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15154)
  %exitcond.not.i28.not = icmp ult i64 %i.ah, %i.i
  br i1 %exitcond.not.i28.not, label %bb.m, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i32"

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !15155, !noundef !5
  %i.ak = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !15156, !noalias !15157
  %.not.i29 = icmp eq i8 %i.aj, 97
  br i1 %.not.i29, label %bb.n, label %bb.t, !prof !8

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15158)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15159)
  %exitcond.not.i28.1 = icmp eq i64 %i.ak, %umax.i26
  br i1 %exitcond.not.i28.1, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i32", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !15160, !noundef !5
  %i.an = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !15161, !noalias !15157
  %.not.i29.1 = icmp eq i8 %i.am, 108
  br i1 %.not.i29.1, label %bb.p, label %bb.t, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15162)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15163)
  %exitcond.not.i28.2 = icmp eq i64 %i.an, %umax.i26
  br i1 %exitcond.not.i28.2, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i32", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !15164, !noundef !5
  %i.aq = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !15165, !noalias !15157
  %.not.i29.2 = icmp eq i8 %i.ap, 115
  br i1 %.not.i29.2, label %bb.r, label %bb.t, !prof !8

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15166)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15167)
  %exitcond.not.i28.3 = icmp eq i64 %i.aq, %umax.i26
  br i1 %exitcond.not.i28.3, label %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i32", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !15168, !noundef !5
  %i.at = add i64 %i.m, 5
  store i64 %i.at, ptr %i.g, align 8, !alias.scope !15169, !noalias !15157
  %.not.i29.3 = icmp eq i8 %i.as, 101
  br i1 %.not.i29.3, label %bb.x, label %bb.t, !prof !8

"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i32": ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15170
  store i64 5, ptr %i.c, align 8, !noalias !15170
  %i.au = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !15171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15170
  br label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15170
  store i64 9, ptr %i.b, align 8, !noalias !15170
  %i.av = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h547dcfea6ddca5a3E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !15171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15170
  br label %bb.w

bb.u:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aw, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %.loopexit, %bb.w, %bb.x, %bb.u
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %.loopexit ], [ 1, %bb.w ], [ 0, %bb.x ], [ 0, %bb.u ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.w:                                             ; preds = %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i", %bb.k, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i32", %bb.t
  %.sroa.0.1.i31.ph.sink = phi ptr [ %i.av, %bb.t ], [ %i.au, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i32" ], [ %i.af, %"_ZN68_$LT$serde_json..read..StrRead$u20$as$u20$serde_json..read..Read$GT$4next17h778717e7f4492bfcE.exit.i" ], [ %i.ag, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i31.ph.sink, ptr %i.ax, align 8
  br label %bb.v

bb.x:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ay, align 1
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_bool17h60540ff5502d116aE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15201)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 11 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !15202, !noalias !15203, !noundef !5 ; 6 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !15201, !noalias !15204 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i, %i.i
  br i1 %i.j, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !15202, !noalias !15203, !nonnull !5, !align !6, !noundef !5 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.m = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.p, %bb.c ] ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15205)
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !noalias !15206, !noundef !5
  switch i8 %i.o, label %bb.d [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 116, label %bb.e
    i8 102, label %bb.l
  ], !prof !52

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = add i64 %i.m, 1                          ; 3 uses
  store i64 %i.p, ptr %i.g, align 8, !alias.scope !15207, !noalias !15204
  %exitcond.not.i = icmp eq i64 %i.p, %i.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 5, ptr %i.f, align 8
  %i.q = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.r, align 8
  br label %bb.v

bb.d:                                             ; preds = %bb.b
  %i.s = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @438)
  %i.t = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %i.u, align 8
  br label %bb.v

bb.e:                                             ; preds = %bb.b
  %i.v = add i64 %i.m, 1                          ; 4 uses
  store i64 %i.v, ptr %i.g, align 8, !alias.scope !15208
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15209)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.v, i64 %i.i) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15210)
  %exitcond.not.i23.not = icmp ult i64 %i.v, %i.i
  br i1 %exitcond.not.i23.not, label %bb.f, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i"

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !15211, !noundef !5
  %i.y = add i64 %i.m, 2                          ; 3 uses
  store i64 %i.y, ptr %i.g, align 8, !alias.scope !15212, !noalias !15213
  %.not.i = icmp eq i8 %i.x, 114
  br i1 %.not.i, label %bb.g, label %bb.k, !prof !8

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15214)
  %exitcond.not.i23.1 = icmp eq i64 %i.y, %umax.i
  br i1 %exitcond.not.i23.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noalias !15215, !noundef !5
  %i.ab = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.ab, ptr %i.g, align 8, !alias.scope !15216, !noalias !15213
  %.not.i.1 = icmp eq i8 %i.aa, 117
  br i1 %.not.i.1, label %bb.i, label %bb.k, !prof !8

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15217)
  %exitcond.not.i23.2 = icmp eq i64 %i.ab, %umax.i
  br i1 %exitcond.not.i23.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !noalias !15218, !noundef !5
  %i.ae = add i64 %i.m, 4
  store i64 %i.ae, ptr %i.g, align 8, !alias.scope !15219, !noalias !15213
  %.not.i.2 = icmp eq i8 %i.ad, 101
  br i1 %.not.i.2, label %bb.u, label %bb.k, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i": ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15220
  store i64 5, ptr %i.e, align 8, !noalias !15220
  %i.af = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e), !noalias !15221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15220
  br label %bb.w

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15220
  store i64 9, ptr %i.d, align 8, !noalias !15220
  %i.ag = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d), !noalias !15221
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15220
  br label %bb.w

bb.l:                                             ; preds = %bb.b
  %i.ah = add i64 %i.m, 1                         ; 4 uses
  store i64 %i.ah, ptr %i.g, align 8, !alias.scope !15222
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15223)
  %umax.i26 = tail call i64 @llvm.umax.i64(i64 %i.ah, i64 %i.i) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15224)
  %exitcond.not.i28.not = icmp ult i64 %i.ah, %i.i
  br i1 %exitcond.not.i28.not, label %bb.m, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i32"

bb.m:                                             ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !noalias !15225, !noundef !5
  %i.ak = add i64 %i.m, 2                         ; 3 uses
  store i64 %i.ak, ptr %i.g, align 8, !alias.scope !15226, !noalias !15227
  %.not.i29 = icmp eq i8 %i.aj, 97
  br i1 %.not.i29, label %bb.n, label %bb.t, !prof !8

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15228)
  %exitcond.not.i28.1 = icmp eq i64 %i.ak, %umax.i26
  br i1 %exitcond.not.i28.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i32", label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !noalias !15229, !noundef !5
  %i.an = add i64 %i.m, 3                         ; 3 uses
  store i64 %i.an, ptr %i.g, align 8, !alias.scope !15230, !noalias !15227
  %.not.i29.1 = icmp eq i8 %i.am, 108
  br i1 %.not.i29.1, label %bb.p, label %bb.t, !prof !8

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15231)
  %exitcond.not.i28.2 = icmp eq i64 %i.an, %umax.i26
  br i1 %exitcond.not.i28.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i32", label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noalias !15232, !noundef !5
  %i.aq = add i64 %i.m, 4                         ; 3 uses
  store i64 %i.aq, ptr %i.g, align 8, !alias.scope !15233, !noalias !15227
  %.not.i29.2 = icmp eq i8 %i.ap, 115
  br i1 %.not.i29.2, label %bb.r, label %bb.t, !prof !8

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15234)
  %exitcond.not.i28.3 = icmp eq i64 %i.aq, %umax.i26
  br i1 %exitcond.not.i28.3, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i32", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noalias !15235, !noundef !5
  %i.at = add i64 %i.m, 5
  store i64 %i.at, ptr %i.g, align 8, !alias.scope !15236, !noalias !15227
  %.not.i29.3 = icmp eq i8 %i.as, 101
  br i1 %.not.i29.3, label %bb.x, label %bb.t, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i32": ; preds = %bb.r, %bb.p, %bb.n, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15237
  store i64 5, ptr %i.c, align 8, !noalias !15237
  %i.au = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !15238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15237
  br label %bb.w

bb.t:                                             ; preds = %bb.s, %bb.q, %bb.o, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15237
  store i64 9, ptr %i.b, align 8, !noalias !15237
  %i.av = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !15238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15237
  br label %bb.w

bb.u:                                             ; preds = %bb.j
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.aw, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.d, %.loopexit, %bb.w, %bb.x, %bb.u
  %.sink = phi i8 [ 1, %bb.d ], [ 1, %.loopexit ], [ 1, %bb.w ], [ 0, %bb.x ], [ 0, %bb.u ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.w:                                             ; preds = %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", %bb.k, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i32", %bb.t
  %.sroa.0.1.i31.ph.sink = phi ptr [ %i.av, %bb.t ], [ %i.au, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i32" ], [ %i.af, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i" ], [ %i.ag, %bb.k ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.1.i31.ph.sink, ptr %i.ax, align 8
  br label %bb.v

bb.x:                                             ; preds = %bb.s
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.ay, align 1
  br label %bb.v
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h6e62d471286653acE"(ptr noalias noundef align 8 dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15257)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !15258, !noalias !15259, !noundef !5 ; 4 uses
  %.promoted.i = load i64, ptr %i.e, align 8, !alias.scope !15257, !noalias !15260 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i, %i.g
  br i1 %i.h, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !15258, !noalias !15259, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %i.k = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15261)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !15262, !noundef !5
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !20

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !15263, !noalias !15260
  %exitcond.not.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 5, ptr %i.d, align 8
  %i.o = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit"

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !15264
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15265)
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.g) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15266)
  %exitcond.not.i17.not = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i17.not, label %bb.e, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i"

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !15267, !noundef !5
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !15268, !noalias !15269
  %.not.i = icmp eq i8 %i.r, 117
  br i1 %.not.i, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15270)
  %exitcond.not.i17.1 = icmp eq i64 %i.s, %umax.i
  br i1 %exitcond.not.i17.1, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !15271, !noundef !5
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !15272, !noalias !15269
  %.not.i.1 = icmp eq i8 %i.u, 108
  br i1 %.not.i.1, label %bb.h, label %bb.j, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15273)
  %exitcond.not.i17.2 = icmp eq i64 %i.v, %umax.i
  br i1 %exitcond.not.i17.2, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !15274, !noundef !5
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !15275, !noalias !15269
  %.not.i.2 = icmp eq i8 %i.x, 108
  br i1 %.not.i.2, label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit", label %bb.j, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15276
  store i64 5, ptr %i.c, align 8, !noalias !15276
  %i.z = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !15277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15276
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15276
  store i64 9, ptr %i.b, align 8, !noalias !15276
  %i.aa = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !15277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15276
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit"

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @439)
  %i.ac = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit"

"_ZN10serde_json2de21Deserializer$LT$R$GT$11parse_ident17hf62c4877cbdcc9ccE.exit": ; preds = %bb.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i", %bb.j, %bb.k, %.loopexit
  %.sroa.0.1 = phi ptr [ %i.o, %.loopexit ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i" ], [ null, %bb.i ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_string17h0cba7efbd9e21facE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(328) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15297)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15298)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15299)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 289 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 280 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i.backedge", %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !15300)
  %i.m = load i8, ptr %i.f, align 8, !range !18, !alias.scope !15301, !noalias !15302, !noundef !5
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.i.thread.i", label %bb.b

bb.b:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15303
  call void @"_ZN101_$LT$serde_json..iter..LineColIterator$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27e7bfe28c0a3852E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(328) %1), !noalias !15302
  %i.o = load i8, ptr %i.c, align 8, !range !28, !noalias !15303, !noundef !5
  switch i8 %i.o, label %bb.g [
    i8 2, label %bb.h
    i8 0, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.i.i"
  ], !prof !29

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.i.i": ; preds = %bb.b
  %i.p = load i8, ptr %i.h, align 1, !noalias !15303, !noundef !5 ; 2 uses
  store i8 1, ptr %i.f, align 8, !alias.scope !15301, !noalias !15302
  store i8 %i.p, ptr %i.g, align 1, !alias.scope !15301, !noalias !15302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15303
  br label %bb.c

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.i.thread.i": ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i"
  %i.q = load i8, ptr %i.g, align 1, !alias.scope !15301, !noalias !15302, !noundef !5
  br label %bb.c

bb.c:                                             ; preds = %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.i.thread.i", %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.i.i"
  %i.r = phi i8 [ %i.q, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.i.thread.i" ], [ %i.p, %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$4peek17h84ffad7c02e1486aE.exit.i.i" ] ; 3 uses
  switch i8 %i.r, label %.thread.i [
    i8 32, label %bb.d
    i8 10, label %bb.d
    i8 9, label %bb.d
    i8 13, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  store i8 0, ptr %i.f, align 8, !alias.scope !15304, !noalias !15305
  %i.s = load i64, ptr %i.j, align 8, !range !19, !alias.scope !15304, !noalias !15305, !noundef !5 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.s, -9223372036854775808
  br i1 %.not.i.i.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i.backedge", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load i64, ptr %i.k, align 8, !alias.scope !15306, !noalias !15305, !noundef !5 ; 3 uses
  %i.u = icmp eq i64 %i.t, %i.s
  br i1 %i.u, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i.i.i"

bb.f:                                             ; preds = %bb.e
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !15305
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i.i.i": ; preds = %bb.f, %bb.e
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !15306, !noalias !15305, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.t
  store i8 %i.r, ptr %i.w, align 1, !noalias !15305
  %i.x = add i64 %i.t, 1
  store i64 %i.x, ptr %i.k, align 8, !alias.scope !15306, !noalias !15305
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i.backedge"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i.backedge": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i.i.i", %bb.d
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i.i"

bb.g:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.i, align 8, !noalias !15303, !nonnull !5, !noundef !5
  %i.z = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error2io17h61031030b3ff451eE(ptr noundef nonnull %i.y), !noalias !15302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15303
  br label %bb.i

.thread.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15307
  %i.aa = icmp eq i8 %i.r, 34
  br i1 %i.aa, label %bb.j, label %bb.m, !prof !30

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15303
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val.i = load i64, ptr %i.ab, align 8, !alias.scope !15298, !noalias !15297, !noundef !5
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 248
  %.val11.i = load i64, ptr %i.ac, align 8, !alias.scope !15298, !noalias !15297, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15308
  store i64 5, ptr %i.b, align 8, !noalias !15307
  %i.ad = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error6syntax17h96531816825467c1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.val.i, i64 noundef %.val11.i), !noalias !15309
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15308
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sink.i = phi ptr [ %i.ad, %bb.h ], [ %i.z, %bb.g ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink.i, ptr %i.ae, align 8, !alias.scope !15297, !noalias !15298
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !15297, !noalias !15298
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$15deserialize_str17hcd0395a993cec5a9E.exit"

bb.j:                                             ; preds = %.thread.i
  store i8 0, ptr %i.f, align 8, !alias.scope !15310, !noalias !15297
  %i.af = load i64, ptr %i.j, align 8, !range !19, !alias.scope !15310, !noalias !15297, !noundef !5 ; 2 uses
  %.not.i12.i = icmp eq i64 %i.af, -9223372036854775808
  br i1 %.not.i12.i, label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = load i64, ptr %i.k, align 8, !alias.scope !15311, !noalias !15297, !noundef !5 ; 3 uses
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i.i"

bb.l:                                             ; preds = %bb.k
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2ec2bdbfaa8067b2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j), !noalias !15297
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i.i": ; preds = %bb.l, %bb.k
  %i.ai = load ptr, ptr %i.l, align 8, !alias.scope !15311, !noalias !15297, !nonnull !5, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 34, ptr %i.aj, align 1, !noalias !15297
  %i.ak = add i64 %i.ag, 1
  store i64 %i.ak, ptr %i.k, align 8, !alias.scope !15311, !noalias !15297
  br label %"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i"

"_ZN76_$LT$serde_json..read..IoRead$LT$R$GT$$u20$as$u20$serde_json..read..Read$GT$7discard17h3a3e2c93d05b745bE.exit.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h0db420c9b9dad85cE.exit.i.i", %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 0, ptr %i.am, align 8, !alias.scope !15298, !noalias !15297
end_hunk_9
begin_hunk_10_@"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$18deserialize_struct17hffb3028b8a1356bfE":bb.a
  %.pn144235.i = phi { ptr, i32 } [ %eh.lpad-body196.i, %.thread.i ], [ %.pn144.ph.i, %.body202.i ]
  %.sroa.0113.1234.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0113.1.ph.i, %.body202.i ]
  %.sroa.0115.1233.i = phi i8 [ 1, %.thread.i ], [ %.sroa.0115.1.ph.i, %.body202.i ]
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef align 8 dereferenceable(24) %i.q) #27
          to label %.body209.i unwind label %bb.dh, !noalias !27012

bb.du:                                            ; preds = %.body209.i
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef align 8 dereferenceable(24) %i.r) #27
          to label %.body215.i unwind label %bb.dh, !noalias !27012

bb.dv:                                            ; preds = %.body215.i
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #27
          to label %common.resume unwind label %bb.dh, !noalias !27012

"_ZN197_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignTemplate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hc33b3517732a4fc8E.exit": ; preds = %bb.dg, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit218.i", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit221.i"
  %.sroa.28.sroa.0.0 = phi i64 [ undef, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit221.i" ], [ undef, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit218.i" ], [ %i.in, %bb.dg ]
  %.sroa.29.0 = phi ptr [ undef, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit221.i" ], [ undef, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit218.i" ], [ %.sroa.3101.0.copyload.i, %bb.dg ]
  %.sroa.2870.0 = phi i64 [ undef, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit221.i" ], [ undef, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit218.i" ], [ %i.ii, %bb.dg ]
  %.sroa.17.3 = phi ptr [ %.sroa.17.2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit221.i" ], [ %.sroa.17.2, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit218.i" ], [ %.sroa.0107.i.sroa.4.0.copyload, %bb.dg ]
  %.sroa.067.3 = phi i64 [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit221.i" ], [ -9223372036854775808, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit218.i" ], [ %i.fk, %bb.dg ]
  %.sroa.30.0 = phi i64 [ undef, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit221.i" ], [ undef, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit218.i" ], [ %.sroa.4104.0.copyload.i, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !27008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.jk = load i8, ptr %i.bb, align 8, !noundef !5
  %i.jl = add i8 %i.jk, 1
  store i8 %i.jl, ptr %i.bb, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  store i64 %.sroa.067.3, ptr %i.ad, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.17.3, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i64 %.sroa.28.sroa.0.0, ptr %.sroa.28.0..sroa_idx, align 8
  %.sroa.28.sroa.6.0..sroa.28.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.sroa.6.0..sroa.28.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.28.sroa.6, i64 24, i1 false)
  %.sroa.2870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 %.sroa.2870.0, ptr %.sroa.2870.0..sroa_idx, align 8
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store ptr %.sroa.29.0, ptr %.sroa.29.0..sroa_idx, align 8
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store i64 %.sroa.30.0, ptr %.sroa.30.0..sroa_idx, align 8
  %i.jm = invoke noundef align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$7end_map17hd5d6f5827429f5a6E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %bb.dx unwind label %bb.dw     ; 10 uses

bb.dw:                                            ; preds = %"_ZN197_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignTemplate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hc33b3517732a4fc8E.exit"
  %i.jn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr118drop_in_place$LT$core..result..Result$LT$anki..import_export..text..ForeignTemplate$C$serde_json..error..Error$GT$$GT$17ha95ba0ef59b6d8e4E"(ptr noalias noundef align 8 dereferenceable(72) %i.ad) #27
          to label %common.resume unwind label %bb.ao

bb.dx:                                            ; preds = %"_ZN197_$LT$anki..import_export..text.._..$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..import_export..text..ForeignTemplate$GT$..deserialize..__Visitor$u20$as$u20$serde_core..de..Visitor$GT$9visit_map17hc33b3517732a4fc8E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store ptr %i.jm, ptr %i.jo, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.jp = load i64, ptr %i.ae, align 8, !range !19, !noundef !5 ; 4 uses
  %i.jq = icmp eq i64 %i.jp, -9223372036854775808
  br i1 %i.jq, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %.not = icmp eq ptr %i.jm, null
  br i1 %.not, label %.thread290, label %bb.ea

.thread290:                                       ; preds = %bb.dy
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.sroa.223.0.copyload = load ptr, ptr %.sroa.223.0..sroa_idx, align 8
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.324.0..sroa_idx, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.sroa.6)
  br label %.thread79

bb.dz:                                            ; preds = %bb.dx
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.js = load ptr, ptr %i.jr, align 8, !nonnull !5, !align !12, !noundef !5 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.sroa.6)
  %.not86 = icmp eq ptr %i.jm, null
  br i1 %.not86, label %.thread79, label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.28.sroa.6)
  call fastcc void @"_ZN4core3ptr63drop_in_place$LT$anki..import_export..text..ForeignTemplate$GT$17h49e19661b8947ca6E"(ptr noalias noundef align 8 dereferenceable(72) %i.ae)
  br label %.thread79

.thread79:                                        ; preds = %.thread290, %bb.ea, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit59", %bb.dz
  %.sroa.09.385 = phi i64 [ %i.jp, %bb.dz ], [ %i.jp, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit59" ], [ -9223372036854775808, %bb.ea ], [ %i.jp, %.thread290 ]
  %.sroa.12.384 = phi ptr [ %i.js, %bb.dz ], [ %i.js, %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit59" ], [ %i.jm, %bb.ea ], [ %.sroa.223.0.copyload, %.thread290 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.au

bb.eb:                                            ; preds = %bb.dz
  call void @llvm.experimental.noalias.scope.decl(metadata !27074)
  call void @llvm.experimental.noalias.scope.decl(metadata !27075)
  %i.jt = load i64, ptr %i.jm, align 8, !range !14, !alias.scope !27076, !noundef !5
  switch i64 %i.jt, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit59" [
    i64 0, label %bb.ec
    i64 1, label %bb.ee
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jm, i64 16
  %.val1.i.i.i.i57 = load i64, ptr %i.ju, align 8, !alias.scope !27076, !noundef !5 ; 2 uses
  %i.jv = icmp eq i64 %.val1.i.i.i.i57, 0
  br i1 %i.jv, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit59", label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.val.i.i.i.i58 = load ptr, ptr %i.jw, align 8, !alias.scope !27076, !nonnull !5, !noundef !5
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i58, i64 noundef range(i64 1, 0) %.val1.i.i.i.i57, i64 noundef 1) #29, !noalias !27076
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit59"

bb.ee:                                            ; preds = %bb.eb
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %.val2.i.i.i.i56 = load ptr, ptr %i.jx, align 8, !alias.scope !27076, !nonnull !5, !noundef !5
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %.val2.i.i.i.i56)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit59" unwind label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17ha6e3142304deb797E.exit59": ; preds = %bb.eb, %bb.ec, %bb.ed, %bb.ee
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.jm, i64 noundef 40, i64 noundef 8) #29
  br label %.thread79

bb.eg:                                            ; preds = %bb.d, %bb.au
  %.sroa.12.5 = phi ptr [ %.sroa.12.2, %bb.au ], [ %i.aw, %bb.d ]
  %i.jz = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %.sroa.12.5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1)
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.jz, ptr %i.ka, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.ei

bb.eh:                                            ; preds = %bb.au
  %.sroa.329.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.329.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.18, i64 56, i1 false)
  store i64 %.sroa.09.2, ptr %0, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.2, ptr %.sroa.228.0..sroa_idx, align 8
  br label %bb.ei

bb.ei:                                            ; preds = %bb.eg, %bb.eh
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %.loopexit, %bb.ai
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$23deserialize_unit_struct17h7cbe8327fdfc0917E"(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27097)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27098)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !27099, !noalias !27100, !noundef !5 ; 4 uses
  %.promoted.i.i = load i64, ptr %i.e, align 8, !alias.scope !27101, !noalias !27102 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !27099, !noalias !27100, !nonnull !5, !align !6, !noundef !5 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.k = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27103)
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !noalias !27104, !noundef !5
  switch i8 %i.m, label %bb.k [
    i8 32, label %bb.c
    i8 10, label %bb.c
    i8 9, label %bb.c
    i8 13, label %bb.c
    i8 110, label %bb.d
  ], !prof !20

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.n = add i64 %i.k, 1                          ; 3 uses
  store i64 %i.n, ptr %i.e, align 8, !alias.scope !27105, !noalias !27102
  %exitcond.not.i.i = icmp eq i64 %i.n, %i.g
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %bb.b

.loopexit.i:                                      ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !27097
  store i64 5, ptr %i.d, align 8, !noalias !27097
  %i.o = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$10peek_error17h806d8fa239f5ee22E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !27097
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h28d1a91328c132e1E.exit"

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.k, 1                          ; 4 uses
  store i64 %i.p, ptr %i.e, align 8, !alias.scope !27106
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27107)
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 %i.g) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27108)
  %exitcond.not.i17.not.i = icmp ult i64 %i.p, %i.g
  br i1 %exitcond.not.i17.not.i, label %bb.e, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i"

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !noalias !27109, !noundef !5
  %i.s = add i64 %i.k, 2                          ; 3 uses
  store i64 %i.s, ptr %i.e, align 8, !alias.scope !27110, !noalias !27111
  %.not.i.i = icmp eq i8 %i.r, 117
  br i1 %.not.i.i, label %bb.f, label %bb.j, !prof !8

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27112)
  %exitcond.not.i17.1.i = icmp eq i64 %i.s, %umax.i.i
  br i1 %exitcond.not.i17.1.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noalias !27113, !noundef !5
  %i.v = add i64 %i.k, 3                          ; 3 uses
  store i64 %i.v, ptr %i.e, align 8, !alias.scope !27114, !noalias !27111
  %.not.i.1.i = icmp eq i8 %i.u, 108
  br i1 %.not.i.1.i, label %bb.h, label %bb.j, !prof !8

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27115)
  %exitcond.not.i17.2.i = icmp eq i64 %i.v, %umax.i.i
  br i1 %exitcond.not.i17.2.i, label %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noalias !27116, !noundef !5
  %i.y = add i64 %i.k, 4
  store i64 %i.y, ptr %i.e, align 8, !alias.scope !27117, !noalias !27111
  %.not.i.2.i = icmp eq i8 %i.x, 108
  br i1 %.not.i.2.i, label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h28d1a91328c132e1E.exit", label %bb.j, !prof !8

"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i": ; preds = %bb.h, %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !27118
  store i64 5, ptr %i.c, align 8, !noalias !27118
  %i.z = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !noalias !27119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !27118
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h28d1a91328c132e1E.exit"

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !27118
  store i64 9, ptr %i.b, align 8, !noalias !27118
  %i.aa = call noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$5error17h52ee6edb33def3ecE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !27119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !27118
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h28d1a91328c132e1E.exit"

bb.k:                                             ; preds = %bb.b
  %i.ab = call fastcc noundef nonnull align 8 ptr @"_ZN10serde_json2de21Deserializer$LT$R$GT$17peek_invalid_type17he3395e43ce67b25fE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @440)
  %i.ac = call noundef nonnull align 8 ptr @_ZN10serde_json5error5Error12fix_position17hfc537fcc47dbaae6E(ptr noalias noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %0)
  br label %"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h28d1a91328c132e1E.exit"

"_ZN98_$LT$$RF$mut$u20$serde_json..de..Deserializer$LT$R$GT$$u20$as$u20$serde_core..de..Deserializer$GT$16deserialize_unit17h28d1a91328c132e1E.exit": ; preds = %.loopexit.i, %bb.i, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i", %bb.j, %bb.k
  %.sroa.0.1.i = phi ptr [ %i.o, %.loopexit.i ], [ %i.aa, %bb.j ], [ %i.ac, %bb.k ], [ %i.z, %"_ZN70_$LT$serde_json..read..SliceRead$u20$as$u20$serde_json..read..Read$GT$4next17h858d9a56323d1623E.exit.i.i" ], [ null, %bb.i ]
  ret ptr %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h368673526fff32caE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not20 = icmp eq ptr %.promoted, null
  br i1 %.not20, label %"_ZN4core3ptr172drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$alloc..vec..Vec$LT$f32$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h312ca39510fbd080E.exit12", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted19 = load i64, ptr %i.b, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.c = phi ptr [ %i.f, %bb.h ], [ %.promoted, %.lr.ph.preheader ] ; 6 uses
  %i.d = phi i64 [ %i.h, %bb.h ], [ %.promoted19, %.lr.ph.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5 ; 4 uses
  store ptr %i.f, ptr %0, align 8
  %.not3 = icmp eq ptr %i.f, null                 ; 2 uses
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce7e94c3e5886d6aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i": ; preds = %bb.d
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h839c12d139ef9055E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i"
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.g, %bb.e
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.i, %bb.e ]
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #29
  invoke fastcc void @"_ZN4core3ptr192drop_in_place$LT$$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$alloc..vec..Vec$LT$f32$GT$$C$alloc..alloc..Global$GT$$GT$17hf04cfd0303bde621E"(ptr nonnull %0) #27
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$f32$GT$$GT$17h856f8f2c8d511aa4E.exit.i.i.i"
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.c, i64 noundef 40, i64 noundef 8) #29
  br i1 %.not3, label %"_ZN4core3ptr172drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$alloc..vec..Vec$LT$f32$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h312ca39510fbd080E.exit12", label %.lr.ph

"_ZN4core3ptr172drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$alloc..vec..Vec$LT$f32$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h312ca39510fbd080E.exit12": ; preds = %bb.h, %bb.a
  ret void

bb.i:                                             ; preds = %.body
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN98_$LT$alloc..collections..linked_list..LinkedList$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h576cc74f61c106d4E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  %.not20 = icmp eq ptr %.promoted, null
  br i1 %.not20, label %"_ZN4core3ptr206drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$alloc..collections..linked_list..Node$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$$C$$RF$alloc..alloc..Global$GT$$GT$$GT$17h9bbd9f6d75df3eedE.exit12", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %.promoted19 = load i64, ptr %i.b, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %i.c = phi ptr [ %i.f, %bb.h ], [ %.promoted, %.lr.ph.preheader ] ; 6 uses
  %i.d = phi i64 [ %i.h, %bb.h ], [ %.promoted19, %.lr.ph.preheader ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !5 ; 4 uses
  store ptr %i.f, ptr %0, align 8
  %.not3 = icmp eq ptr %i.f, null                 ; 2 uses
  br i1 %.not3, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  store ptr null, ptr %i.a, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2b7f8a118e974f30E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h8fdafd3fe2ee6c64E.exit.i.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3429efa47f03bf93E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #28
  unreachable

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h8fdafd3fe2ee6c64E.exit.i.i.i": ; preds = %bb.d
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3429efa47f03bf93E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$f32$C$f32$C$u32$RP$$RP$$GT$$GT$17h8fdafd3fe2ee6c64E.exit.i.i.i"
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body
end_hunk_10
