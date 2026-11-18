Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6digest11FixedOutput14finalize_fixed17hd84f18d069fadc41E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(20) %i.g, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull align 1 %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality !guid !16722 {
vector.ph:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [64 x i8], align 1                ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 1                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 1                ; 6 uses
  %i.j = alloca [32 x i8], align 1                ; 5 uses
  %i.k = alloca [152 x i8], align 8               ; 15 uses
  %i.l = alloca [32 x i8], align 1                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [72 x i8], align 8                ; 6 uses
  %i.o = alloca [80 x i8], align 8                ; 4 uses
  %i.p = alloca [32 x i8], align 1                ; 5 uses
  %i.q = alloca [152 x i8], align 8               ; 7 uses
  %i.r = alloca [32 x i8], align 1                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [72 x i8], align 8                ; 6 uses
  %i.u = alloca [80 x i8], align 8                ; 4 uses
  %i.v = alloca [80 x i8], align 8                ; 5 uses
  %i.w = alloca [40 x i8], align 8                ; 6 uses
  %i.x = alloca [40 x i8], align 8                ; 6 uses
  %i.y = alloca [64 x i8], align 16               ; 15 uses
  %i.z = alloca [152 x i8], align 8               ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %i.ac = alloca [152 x i8], align 8              ; 8 uses
  %i.ad = alloca [32 x i8], align 1               ; 6 uses
  %i.ae = alloca [4 x i8], align 4                ; 5 uses
  %i.af = alloca [152 x i8], align 8              ; 10 uses
  %i.ag = alloca [32 x i8], align 1               ; 9 uses
  %i.ah = alloca [152 x i8], align 8              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16723)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !16724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16725
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16726
  call void @_ZN4hmac11get_der_key17he73918ba56005b2eE(ptr noalias noundef nonnull sret([64 x i8]) align 1 captures(address) dereferenceable(64) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !16727
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.y, align 16, !noalias !16726
  %wide.load66 = load <16 x i8>, ptr %i.ai, align 16, !noalias !16726
  %i.aj = xor <16 x i8> %wide.load, splat (i8 54)
  %i.ak = xor <16 x i8> %wide.load66, splat (i8 54)
  store <16 x i8> %i.aj, ptr %i.y, align 16, !noalias !16726
  store <16 x i8> %i.ak, ptr %i.ai, align 16, !noalias !16726
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.al, align 16, !noalias !16726
  %wide.load66.1 = load <16 x i8>, ptr %i.am, align 16, !noalias !16726
  %i.an = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.ao = xor <16 x i8> %wide.load66.1, splat (i8 54)
  store <16 x i8> %i.an, ptr %i.al, align 16, !noalias !16726
  store <16 x i8> %i.ao, ptr %i.am, align 16, !noalias !16726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(32) @635, i64 32, i1 false), !noalias !16728
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !16729, !noalias !16728
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 0) 1), !noalias !16730
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load70 = load <16 x i8>, ptr %i.y, align 16, !noalias !16726
  %wide.load71 = load <16 x i8>, ptr %i.ap, align 16, !noalias !16726
  %i.aq = xor <16 x i8> %wide.load70, splat (i8 106)
  %i.ar = xor <16 x i8> %wide.load71, splat (i8 106)
  store <16 x i8> %i.aq, ptr %i.y, align 16, !noalias !16726
  store <16 x i8> %i.ar, ptr %i.ap, align 16, !noalias !16726
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %wide.load70.1 = load <16 x i8>, ptr %i.as, align 16, !noalias !16726
  %wide.load71.1 = load <16 x i8>, ptr %i.at, align 16, !noalias !16726
  %i.au = xor <16 x i8> %wide.load70.1, splat (i8 106)
  %i.av = xor <16 x i8> %wide.load71.1, splat (i8 106)
  store <16 x i8> %i.au, ptr %i.as, align 16, !noalias !16726
  store <16 x i8> %i.av, ptr %i.at, align 16, !noalias !16726
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(32) @635, i64 32, i1 false), !noalias !16728
  %.sroa.42.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i3.i.i, align 8, !alias.scope !16731, !noalias !16728
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 0) 1), !noalias !16730
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false), !noalias !16725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !16725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16726
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16726
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  call void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h1cc16571f7c69110E"(ptr noalias noundef nonnull sret([65 x i8]) align 1 captures(address) dereferenceable(65) %i.ax), !noalias !16732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 80, i1 false), !noalias !16725
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ah, ptr noundef nonnull align 8 dereferenceable(152) %i.z, i64 152, i1 false), !noalias !16724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.ay = icmp eq i64 %6, 0
  br i1 %i.ay, label %_ZN6pbkdf26pbkdf217hf8e9f4dc14492918E.exit, label %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i"

"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i": ; preds = %vector.ph
  %i.az = getelementptr inbounds nuw i8, ptr %i.ah, i64 80 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 144 ; 4 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 10 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 9 uses
  %.sroa.4.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.af, i64 144 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.q, i64 80 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  %i.bj = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.bo = icmp ugt i32 %4, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.br = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ac, i64 80 ; 5 uses
  %.sroa.4.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 144 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4.0..sroa_idx.i.i49.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i50.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i51.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i52.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %i.k, i64 40 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.cp = getelementptr inbounds nuw i8, ptr %i.k, i64 113
  %scevgep = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %scevgep190 = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i"
  %.sroa.061.094.i = phi ptr [ %5, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.cq, %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i ] ; 4 uses
  %.sroa.562.093.i = phi i64 [ %6, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.cr, %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i ] ; 2 uses
  %.sroa.10.092.i = phi i32 [ 0, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.cs, %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i ]
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.562.093.i, i64 32) ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.061.094.i, i64 %.sroa.0.0.i.i.i.i ; 3 uses
  %i.cr = sub nuw i64 %.sroa.562.093.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %i.cs = add i32 %.sroa.10.092.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16733)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.061.094.i, i8 0, i64 %.sroa.0.0.i.i.i.i, i1 false), !alias.scope !16734
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !16735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !16735
  call void @llvm.experimental.noalias.scope.decl(metadata !16736)
  call void @llvm.experimental.noalias.scope.decl(metadata !16737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16738
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0b6a7abd591aeb2E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ah), !noalias !16739
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16740
  store i64 0, ptr %i.bb, align 8, !noalias !16740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16740
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.az, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bb), !noalias !16741
  call void @llvm.experimental.noalias.scope.decl(metadata !16742), !noalias !16743
  %.val.i.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !16742, !noalias !16740, !noundef !40 ; 10 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !16742, !noalias !16740, !noundef !40 ; 6 uses
  %i.ct = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !16744, !noalias !16740, !nonnull !40, !noundef !40 ; 6 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !16744, !noalias !16740, !nonnull !40, !noundef !40 ; 6 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !16745 ; 3 uses
  %min.iters.check192 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check192, label %scalar.ph191.preheader, label %vector.memcheck193

vector.memcheck193:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.cu = getelementptr nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %i.cv = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %7 = getelementptr nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %8 = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %bound0194 = icmp ult ptr %i.cu, %scevgep190
  %bound1195 = icmp ult ptr %i.bb, %i.cv
  %found.conflict196 = and i1 %bound0194, %bound1195
  %bound0197 = icmp ult ptr %i.cu, %8
  %bound1198 = icmp ult ptr %7, %i.cv
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %found.conflict196, %found.conflict199
  %bound0201 = icmp ult ptr %i.bb, %8
  %bound1202 = icmp ult ptr %7, %scevgep190
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  br i1 %conflict.rdx204, label %scalar.ph191.preheader, label %vector.ph205

vector.ph205:                                     ; preds = %vector.memcheck193
  %n.vec206 = and i64 %i.ct, -4                   ; 3 uses
  %i.cw = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i.i, i64 0
  br label %vector.body207

vector.body207:                                   ; preds = %vector.body207, %vector.ph205
  %index208 = phi i64 [ 0, %vector.ph205 ], [ %index.next213, %vector.body207 ] ; 2 uses
  %vec.phi209 = phi <2 x i64> [ %i.cw, %vector.ph205 ], [ %i.dc, %vector.body207 ]
  %vec.phi210 = phi <2 x i64> [ zeroinitializer, %vector.ph205 ], [ %i.dd, %vector.body207 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16746), !noalias !16743
  %i.cx = add i64 %index208, %.val.i.i.i.i.i      ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.cx ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  %wide.load211 = load <2 x i8>, ptr %i.cy, align 1, !alias.scope !16747, !noalias !16748
  %wide.load212 = load <2 x i8>, ptr %i.cz, align 1, !alias.scope !16747, !noalias !16748
  %i.da = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.cx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16749), !noalias !16743
  call void @llvm.experimental.noalias.scope.decl(metadata !16750), !noalias !16743
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 2
  store <2 x i8> %wide.load211, ptr %i.da, align 1, !alias.scope !16751, !noalias !16752
  store <2 x i8> %wide.load212, ptr %i.db, align 1, !alias.scope !16751, !noalias !16752
  %i.dc = add <2 x i64> %vec.phi209, splat (i64 1) ; 2 uses
  %i.dd = add <2 x i64> %vec.phi210, splat (i64 1) ; 2 uses
  %index.next213 = add nuw i64 %index208, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next213, %n.vec206
  br i1 %i.de, label %middle.block214, label %vector.body207, !llvm.loop !16482

middle.block214:                                  ; preds = %vector.body207
  %bin.rdx215 = add <2 x i64> %i.dd, %i.dc
  %i.df = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx215) ; 3 uses
  store i64 %i.df, ptr %i.bb, align 8, !alias.scope !16753, !noalias !16754
  %cmp.n216 = icmp eq i64 %i.ct, %n.vec206
  br i1 %cmp.n216, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i", label %scalar.ph191.preheader

scalar.ph191.preheader:                           ; preds = %vector.memcheck193, %.lr.ph.i.i.i.i.i, %middle.block214
  %.ph219 = phi i64 [ %.promoted.i.i.i.i.i, %vector.memcheck193 ], [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.df, %middle.block214 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck193 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec206, %middle.block214 ] ; 4 uses
  %i.dg = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  %i.dh = xor i64 %.sroa.0.011.i.i.i.i.i.ph, -1
  %i.di = add i64 %.val8.i.i.i.i.i, %i.dh
  %xtraiter = and i64 %i.dg, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph191.prol.loopexit, label %scalar.ph191.prol

scalar.ph191.prol:                                ; preds = %scalar.ph191.preheader
  %i.dj = or disjoint i64 %.sroa.0.011.i.i.i.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16746), !noalias !16743
  %i.dk = add i64 %.sroa.0.011.i.i.i.i.i.ph, %.val.i.i.i.i.i ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dk
  %.val1.i.i.i.i.i.i.i.prol = load i8, ptr %i.dl, align 1, !alias.scope !16755, !noalias !16748, !noundef !40
  %i.dm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dk
  call void @llvm.experimental.noalias.scope.decl(metadata !16749), !noalias !16743
  call void @llvm.experimental.noalias.scope.decl(metadata !16750), !noalias !16743
  store i8 %.val1.i.i.i.i.i.i.i.prol, ptr %i.dm, align 1, !alias.scope !16756, !noalias !16757
  %i.dn = add i64 %.ph219, 1                      ; 3 uses
  store i64 %i.dn, ptr %i.bb, align 8, !noalias !16745
  br label %scalar.ph191.prol.loopexit

scalar.ph191.prol.loopexit:                       ; preds = %scalar.ph191.prol, %scalar.ph191.preheader
  %.lcssa221.unr = phi i64 [ poison, %scalar.ph191.preheader ], [ %i.dn, %scalar.ph191.prol ]
  %.unr = phi i64 [ %.ph219, %scalar.ph191.preheader ], [ %i.dn, %scalar.ph191.prol ]
  %.sroa.0.011.i.i.i.i.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i.i.ph, %scalar.ph191.preheader ], [ %i.dj, %scalar.ph191.prol ]
  %i.do = icmp eq i64 %i.di, %.val.i.i.i.i.i
  br i1 %i.do, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i", label %scalar.ph191.preheader.new

scalar.ph191.preheader.new:                       ; preds = %scalar.ph191.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i.i.i.i
  br label %scalar.ph191

scalar.ph191:                                     ; preds = %scalar.ph191, %scalar.ph191.preheader.new
  %i.dp = phi i64 [ %.unr, %scalar.ph191.preheader.new ], [ %i.dx, %scalar.ph191 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %.sroa.0.011.i.i.i.i.i.unr, %scalar.ph191.preheader.new ], [ %i.du, %scalar.ph191 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16746), !noalias !16743
  %i.dq = add i64 %.sroa.0.011.i.i.i.i.i, %.val.i.i.i.i.i ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dq
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.dr, align 1, !alias.scope !16755, !noalias !16748, !noundef !40
  %i.ds = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !16749), !noalias !16743
  call void @llvm.experimental.noalias.scope.decl(metadata !16750), !noalias !16743
  store i8 %.val1.i.i.i.i.i.i.i, ptr %i.ds, align 1, !alias.scope !16756, !noalias !16757
  %i.dt = add i64 %i.dp, 1
  store i64 %i.dt, ptr %i.bb, align 8, !noalias !16745
  %i.du = add nuw i64 %.sroa.0.011.i.i.i.i.i, 2   ; 2 uses
  %.reass = add i64 %.sroa.0.011.i.i.i.i.i, %invariant.op ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.reass
  %.val1.i.i.i.i.i.i.i.1 = load i8, ptr %i.dv, align 1, !alias.scope !16755, !noalias !16758, !noundef !40
  %i.dw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.reass
  call void @llvm.experimental.noalias.scope.decl(metadata !16759), !noalias !16743
  call void @llvm.experimental.noalias.scope.decl(metadata !16760), !noalias !16743
  store i8 %.val1.i.i.i.i.i.i.i.1, ptr %i.dw, align 1, !alias.scope !16761, !noalias !16757
  %i.dx = add i64 %i.dp, 2                        ; 3 uses
  store i64 %i.dx, ptr %i.bb, align 8, !noalias !16762
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.du, %i.ct
  br i1 %exitcond.not.i.i.i.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i", label %scalar.ph191, !llvm.loop !16489

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i.i": ; preds = %._crit_edge.i
  %.pr.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !16740
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i": ; preds = %scalar.ph191.prol.loopexit, %scalar.ph191, %middle.block214, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i.i"
  %i.dy = phi i64 [ %.pr.i.i.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i.i" ], [ %i.df, %middle.block214 ], [ %.lcssa221.unr, %scalar.ph191.prol.loopexit ], [ %i.dx, %scalar.ph191 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16740
  %i.dz = icmp ult i64 %i.dy, 64
  br i1 %i.dz, label %bb.a, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit.i", !prof !48

bb.a:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.dy, i64 noundef 64) #50, !noalias !16741
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !16763
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16740
  %i.ea = load i8, ptr %i.ba, align 8, !alias.scope !16737, !noalias !16764, !noundef !40 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.af, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false), !noalias !16763
  store i8 %i.ea, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !alias.scope !16736, !noalias !16764
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16738
  call void @llvm.experimental.noalias.scope.decl(metadata !16765)
  call void @llvm.experimental.noalias.scope.decl(metadata !16766), !noalias !16733
  call void @llvm.experimental.noalias.scope.decl(metadata !16767), !noalias !16733
  %i.eb = zext nneg i8 %i.ea to i64               ; 4 uses
  %i.ec = icmp ult i8 %i.ea, 64
  call void @llvm.assume(i1 %i.ec), !noalias !16733
  %i.ed = sub nuw nsw i64 64, %i.eb               ; 4 uses
  %i.ee = icmp ult i64 %3, %i.ed
  br i1 %i.ee, label %bb.f, label %bb.b

bb.b:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit.i"
  %i.ef = icmp eq i8 %i.ea, 0
  br i1 %i.ef, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i", %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %3, %bb.b ], [ %i.el, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %2, %bb.b ], [ %i.em, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 2 uses
  %i.eg = lshr i64 %.sroa.7.0.i.i.i, 6            ; 3 uses
  %i.eh = and i64 %.sroa.7.0.i.i.i, -64
  %i.ei = and i64 %.sroa.7.0.i.i.i, 63            ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.eh
  %i.ek = icmp eq i64 %i.eg, 0
  br i1 %i.ek, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i": ; preds = %bb.b
  %i.el = sub nuw i64 %3, %i.ed
  %i.em = getelementptr inbounds nuw i8, ptr %2, i64 %i.ed
  %i.en = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.en, ptr nonnull readonly align 1 %2, i64 %i.ed, i1 false), !alias.scope !16768, !noalias !16769
  %i.eo = load i64, ptr %i.bg, align 8, !alias.scope !16770, !noalias !16771, !noundef !40
  %i.ep = add i64 %i.eo, 1
  store i64 %i.ep, ptr %i.bg, align 8, !alias.scope !16770, !noalias !16771
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bf, i64 noundef range(i64 1, 0) 1), !noalias !16772
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.eq = load i64, ptr %i.bg, align 8, !alias.scope !16773, !noalias !16774, !noundef !40
  %i.er = add i64 %i.eq, %i.eg
  store i64 %i.er, ptr %i.bg, align 8, !alias.scope !16773, !noalias !16774
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.eg), !noalias !16775
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.bf, ptr nonnull readonly align 1 %i.ej, i64 %i.ei, i1 false), !alias.scope !16776, !noalias !16769
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i"

bb.f:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit.i"
  %i.es = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.eb
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.es, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !alias.scope !16777, !noalias !16769
  %i.et = add nuw nsw i64 %3, %i.eb
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i": ; preds = %bb.f, %bb.e
  %storemerge.in.i.i.i = phi i64 [ %i.ei, %bb.e ], [ %i.et, %bb.f ] ; 8 uses
  %storemerge.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i to i8
  store i8 %storemerge.i.i.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !alias.scope !16778, !noalias !16779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !16735
  %i.eu = call i32 @llvm.bswap.i32(i32 %i.cs)     ; 2 uses
  store i32 %i.eu, ptr %i.ae, align 4, !noalias !16735
  call void @llvm.experimental.noalias.scope.decl(metadata !16780)
  call void @llvm.experimental.noalias.scope.decl(metadata !16781), !noalias !16733
  call void @llvm.experimental.noalias.scope.decl(metadata !16782), !noalias !16733
  %i.ev = icmp samesign ult i64 %storemerge.in.i.i.i, 64
  call void @llvm.assume(i1 %i.ev), !noalias !16733
  %i.ew = icmp samesign ult i64 %storemerge.in.i.i.i, 60
  br i1 %i.ew, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i"
  %i.ex = sub nuw nsw i64 64, %storemerge.in.i.i.i ; 2 uses
  %i.ey = add nsw i64 %storemerge.in.i.i.i, -60   ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ex
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bf, i64 %storemerge.in.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fa, ptr nonnull readonly align 4 %i.ae, i64 %i.ex, i1 false), !alias.scope !16783, !noalias !16779
  %i.fb = load i64, ptr %i.bg, align 8, !alias.scope !16784, !noalias !16785, !noundef !40
end_hunk_0
begin_hunk_1_@_ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E:vector.ph
  store i64 %i.fc, ptr %i.bg, align 8, !alias.scope !16784, !noalias !16785
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bf, i64 noundef range(i64 1, 0) 1), !noalias !16786
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.bf, ptr nonnull readonly align 1 %i.ez, i64 %i.ey, i1 false), !alias.scope !16787, !noalias !16779
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i"

bb.g:                                             ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i"
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bf, i64 %storemerge.in.i.i.i
  store i32 %i.eu, ptr %i.fd, align 1, !alias.scope !16788, !noalias !16779
  %i.fe = add nuw nsw i64 %storemerge.in.i.i.i, 4
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i": ; preds = %bb.g, %.thread.i
  %storemerge.in.i.i11.i = phi i64 [ %i.ey, %.thread.i ], [ %i.fe, %bb.g ]
  %storemerge.i.i12.i = trunc nuw nsw i64 %storemerge.in.i.i11.i to i8
  store i8 %storemerge.i.i12.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !alias.scope !16789, !noalias !16779
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !16735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !16735
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.q, ptr noundef nonnull align 8 dereferenceable(152) %i.af, i64 152, i1 false), !noalias !16779
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16790
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.r, i8 0, i64 32, i1 false), !alias.scope !16791, !noalias !16790
  call void @llvm.experimental.noalias.scope.decl(metadata !16792), !noalias !16733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16793
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.p, i8 0, i64 32, i1 false), !alias.scope !16794, !noalias !16793
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.q, ptr noalias noundef nonnull align 1 dereferenceable(65) %i.bh, ptr noalias noundef align 1 dereferenceable(32) %i.p), !noalias !16795
  call void @llvm.experimental.noalias.scope.decl(metadata !16796), !noalias !16733
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.p, i64 32, i1 false), !alias.scope !16797, !noalias !16798
  store i8 32, ptr %i.bi, align 8, !alias.scope !16799, !noalias !16800
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E"(ptr noalias noundef align 8 dereferenceable(40) %i.bj, ptr noalias noundef nonnull align 1 dereferenceable(65) %i.bh, ptr noalias noundef nonnull align 1 dereferenceable(32) %i.r), !noalias !16801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16793
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16790
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ad, ptr noundef nonnull align 1 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !16802
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16790
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16735
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h92fc9665f0656228E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ab, ptr noundef nonnull align 1 %.sroa.061.094.i, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.bk)
  call void @llvm.experimental.noalias.scope.decl(metadata !16803)
  %.val.i.i = load i64, ptr %i.bl, align 8, !alias.scope !16803, !noalias !16724, !noundef !40 ; 11 uses
  %.val8.i.i = load i64, ptr %i.bm, align 8, !alias.scope !16803, !noalias !16724, !noundef !40 ; 6 uses
  %i.ff = sub i64 %.val8.i.i, %.val.i.i           ; 8 uses
  %.not.i14.i = icmp eq i64 %.val8.i.i, %.val.i.i
  br i1 %.not.i14.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %iter.check158

iter.check158:                                    ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i"
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !16804, !noalias !16724, !nonnull !40, !noundef !40 ; 7 uses
  %.val.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !16804, !noalias !16724, !nonnull !40, !noundef !40 ; 7 uses
  %min.iters.check140 = icmp ult i64 %i.ff, 4
  br i1 %min.iters.check140, label %vec.epilog.scalar.ph160.preheader, label %vector.memcheck141

vector.memcheck141:                               ; preds = %iter.check158
  %i.fg = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %i.fh = getelementptr i8, ptr %.val1.i.i.i, i64 %.val8.i.i
  %i.fi = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %i.fj = getelementptr i8, ptr %.val.i.i.i, i64 %.val8.i.i
  %bound0142 = icmp ult ptr %i.fg, %i.fj
  %bound1143 = icmp ult ptr %i.fi, %i.fh
  %found.conflict144 = and i1 %bound0142, %bound1143
  br i1 %found.conflict144, label %vec.epilog.scalar.ph160.preheader, label %vector.main.loop.iter.check145

vector.main.loop.iter.check145:                   ; preds = %vector.memcheck141
  %min.iters.check146 = icmp ult i64 %i.ff, 32
  br i1 %min.iters.check146, label %vec.epilog.ph162, label %vector.ph147

vector.ph147:                                     ; preds = %vector.main.loop.iter.check145
  %i.fk = and i64 %i.ff, 28
  %n.vec148 = and i64 %i.ff, -32                  ; 4 uses
  br label %vector.body149

vector.body149:                                   ; preds = %vector.ph147, %vector.body149
  %index150 = phi i64 [ 0, %vector.ph147 ], [ %index.next155, %vector.body149 ] ; 2 uses
  %i.fl = add i64 %index150, %.val.i.i            ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.fl ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fl ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load151 = load <16 x i8>, ptr %i.fn, align 1, !alias.scope !16805, !noalias !16803
  %wide.load152 = load <16 x i8>, ptr %i.fo, align 1, !alias.scope !16805, !noalias !16803
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %wide.load153 = load <16 x i8>, ptr %i.fm, align 1, !alias.scope !16806, !noalias !16807
  %wide.load154 = load <16 x i8>, ptr %i.fp, align 1, !alias.scope !16806, !noalias !16807
  %i.fq = xor <16 x i8> %wide.load153, %wide.load151
  %i.fr = xor <16 x i8> %wide.load154, %wide.load152
  store <16 x i8> %i.fq, ptr %i.fm, align 1, !alias.scope !16806, !noalias !16807
  store <16 x i8> %i.fr, ptr %i.fp, align 1, !alias.scope !16806, !noalias !16807
  %index.next155 = add nuw i64 %index150, 32      ; 2 uses
  %i.fs = icmp eq i64 %index.next155, %n.vec148
  br i1 %i.fs, label %middle.block156, label %vector.body149, !llvm.loop !16571

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i64 %i.ff, %n.vec148
  br i1 %cmp.n157, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.iter.check159

vec.epilog.iter.check159:                         ; preds = %middle.block156
  %min.epilog.iters.check161 = icmp eq i64 %i.fk, 0
  br i1 %min.epilog.iters.check161, label %vec.epilog.scalar.ph160.preheader, label %vec.epilog.ph162, !prof !90

vec.epilog.ph162:                                 ; preds = %vector.main.loop.iter.check145, %vec.epilog.iter.check159
  %vec.epilog.resume.val163 = phi i64 [ %n.vec148, %vec.epilog.iter.check159 ], [ 0, %vector.main.loop.iter.check145 ]
  %n.vec164 = and i64 %i.ff, -4                   ; 3 uses
  br label %vec.epilog.vector.body165

vec.epilog.vector.body165:                        ; preds = %vec.epilog.vector.body165, %vec.epilog.ph162
  %index166 = phi i64 [ %vec.epilog.resume.val163, %vec.epilog.ph162 ], [ %index.next169, %vec.epilog.vector.body165 ] ; 2 uses
  %i.ft = add i64 %index166, %.val.i.i            ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ft
  %wide.load167 = load <4 x i8>, ptr %i.fv, align 1, !alias.scope !16805, !noalias !16803
  %wide.load168 = load <4 x i8>, ptr %i.fu, align 1, !alias.scope !16806, !noalias !16807
  %i.fw = xor <4 x i8> %wide.load168, %wide.load167
  store <4 x i8> %i.fw, ptr %i.fu, align 1, !alias.scope !16806, !noalias !16807
  %index.next169 = add nuw i64 %index166, 4       ; 2 uses
  %i.fx = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.fx, label %vec.epilog.middle.block170, label %vec.epilog.vector.body165, !llvm.loop !16572

vec.epilog.middle.block170:                       ; preds = %vec.epilog.vector.body165
  %cmp.n171 = icmp eq i64 %i.ff, %n.vec164
  br i1 %cmp.n171, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph160.preheader

vec.epilog.scalar.ph160.preheader:                ; preds = %iter.check158, %vector.memcheck141, %vec.epilog.iter.check159, %vec.epilog.middle.block170
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check158 ], [ 0, %vector.memcheck141 ], [ %n.vec148, %vec.epilog.iter.check159 ], [ %n.vec164, %vec.epilog.middle.block170 ] ; 4 uses
  %i.fy = sub i64 %.val8.i.i, %.val.i.i
  %i.fz = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.ga = add i64 %.val8.i.i, %i.fz
  %xtraiter236 = and i64 %i.fy, 1
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %vec.epilog.scalar.ph160.prol.loopexit, label %vec.epilog.scalar.ph160.prol

vec.epilog.scalar.ph160.prol:                     ; preds = %vec.epilog.scalar.ph160.preheader
  %i.gb = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.gc = add i64 %.sroa.0.010.i.i.ph, %.val.i.i  ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gc ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gc
  %.val9.i.i.prol = load i8, ptr %i.ge, align 1, !noalias !16803, !noundef !40
  %i.gf = load i8, ptr %i.gd, align 1, !alias.scope !16808, !noalias !16803, !noundef !40
  %i.gg = xor i8 %i.gf, %.val9.i.i.prol
  store i8 %i.gg, ptr %i.gd, align 1, !alias.scope !16808, !noalias !16803
  br label %vec.epilog.scalar.ph160.prol.loopexit

vec.epilog.scalar.ph160.prol.loopexit:            ; preds = %vec.epilog.scalar.ph160.prol, %vec.epilog.scalar.ph160.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph160.preheader ], [ %i.gb, %vec.epilog.scalar.ph160.prol ]
  %i.gh = icmp eq i64 %i.ga, %.val.i.i
  br i1 %i.gh, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph160.preheader.new

vec.epilog.scalar.ph160.preheader.new:            ; preds = %vec.epilog.scalar.ph160.prol.loopexit
  %invariant.op259 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph160

vec.epilog.scalar.ph160:                          ; preds = %vec.epilog.scalar.ph160, %vec.epilog.scalar.ph160.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph160.preheader.new ], [ %i.gn, %vec.epilog.scalar.ph160 ] ; 3 uses
  %i.gi = add i64 %.sroa.0.010.i.i, %.val.i.i     ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gi ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gi
  %.val9.i.i = load i8, ptr %i.gk, align 1, !noalias !16803, !noundef !40
  %i.gl = load i8, ptr %i.gj, align 1, !alias.scope !16808, !noalias !16803, !noundef !40
  %i.gm = xor i8 %i.gl, %.val9.i.i
  store i8 %i.gm, ptr %i.gj, align 1, !alias.scope !16808, !noalias !16803
  %i.gn = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass260 = add i64 %.sroa.0.010.i.i, %invariant.op259 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass260 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass260
  %.val9.i.i.1 = load i8, ptr %i.gp, align 1, !noalias !16803, !noundef !40
  %i.gq = load i8, ptr %i.go, align 1, !alias.scope !16808, !noalias !16803, !noundef !40
  %i.gr = xor i8 %i.gq, %.val9.i.i.1
  store i8 %i.gr, ptr %i.go, align 1, !alias.scope !16808, !noalias !16803
  %exitcond.not.i.i.1 = icmp eq i64 %i.gn, %i.ff
  br i1 %exitcond.not.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph160, !llvm.loop !16573

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i": ; preds = %vec.epilog.scalar.ph160.prol.loopexit, %vec.epilog.scalar.ph160, %middle.block156, %vec.epilog.middle.block170, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !16735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 1 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !16735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !16735
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !16735
  br i1 %i.bo, label %.lr.ph91.i, label %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i

.lr.ph91.i:                                       ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i"
  %.sroa.05.1.i90.i = phi i32 [ %.sroa.05.1.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i" ], [ 2, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !16735
  call void @llvm.experimental.noalias.scope.decl(metadata !16809)
  call void @llvm.experimental.noalias.scope.decl(metadata !16810)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16811
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0b6a7abd591aeb2E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ah), !noalias !16809
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16812
  store i64 0, ptr %i.bp, align 8, !noalias !16812
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16812
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.az, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull %i.n, ptr noundef nonnull %i.bp), !noalias !16813
  call void @llvm.experimental.noalias.scope.decl(metadata !16814)
  %.val.i.i.i.i15.i = load i64, ptr %i.bq, align 8, !alias.scope !16814, !noalias !16812, !noundef !40 ; 10 uses
  %.val8.i.i.i.i16.i = load i64, ptr %i.br, align 8, !alias.scope !16814, !noalias !16812, !noundef !40 ; 6 uses
  %i.gs = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i ; 4 uses
  %.not.i.i.i.i17.i = icmp eq i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i
  br i1 %.not.i.i.i.i17.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i27.i", label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph91.i
  %.val.i.i.i.i.i19.i = load ptr, ptr %i.m, align 8, !alias.scope !16815, !noalias !16812, !nonnull !40, !noundef !40 ; 6 uses
  %.val1.i.i.i.i.i20.i = load ptr, ptr %i.bs, align 8, !alias.scope !16815, !noalias !16812, !nonnull !40, !noundef !40 ; 6 uses
  %.promoted.i.i.i.i21.i = load i64, ptr %i.bp, align 8, !noalias !16816 ; 3 uses
  %min.iters.check108 = icmp ult i64 %i.gs, 8
  br i1 %min.iters.check108, label %scalar.ph.preheader, label %vector.memcheck109

vector.memcheck109:                               ; preds = %.lr.ph.i.i.i.i18.i
  %i.gt = getelementptr nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %.val.i.i.i.i15.i ; 2 uses
  %i.gu = getelementptr i8, ptr %.val1.i.i.i.i.i20.i, i64 %.val8.i.i.i.i16.i ; 2 uses
  %9 = getelementptr nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %.val.i.i.i.i15.i ; 2 uses
  %10 = getelementptr i8, ptr %.val.i.i.i.i.i19.i, i64 %.val8.i.i.i.i16.i ; 2 uses
  %bound0110 = icmp ult ptr %i.gt, %scevgep
  %bound1111 = icmp ult ptr %i.bp, %i.gu
  %found.conflict112 = and i1 %bound0110, %bound1111
  %bound0113 = icmp ult ptr %i.gt, %10
  %bound1114 = icmp ult ptr %9, %i.gu
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx = or i1 %found.conflict112, %found.conflict115
  %bound0116 = icmp ult ptr %i.bp, %10
  %bound1117 = icmp ult ptr %9, %scevgep
  %found.conflict118 = and i1 %bound0116, %bound1117
  %conflict.rdx119 = or i1 %conflict.rdx, %found.conflict118
  br i1 %conflict.rdx119, label %scalar.ph.preheader, label %vector.ph120

vector.ph120:                                     ; preds = %vector.memcheck109
  %n.vec121 = and i64 %i.gs, -4                   ; 3 uses
  %i.gv = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i21.i, i64 0
  br label %vector.body122

vector.body122:                                   ; preds = %vector.body122, %vector.ph120
  %index123 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body122 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.gv, %vector.ph120 ], [ %i.hb, %vector.body122 ]
  %vec.phi124 = phi <2 x i64> [ zeroinitializer, %vector.ph120 ], [ %i.hc, %vector.body122 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16817)
  %i.gw = add i64 %index123, %.val.i.i.i.i15.i    ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.gw ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 2
  %wide.load125 = load <2 x i8>, ptr %i.gx, align 1, !alias.scope !16818, !noalias !16819
  %wide.load126 = load <2 x i8>, ptr %i.gy, align 1, !alias.scope !16818, !noalias !16819
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.gw ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16820)
  call void @llvm.experimental.noalias.scope.decl(metadata !16821)
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 2
  store <2 x i8> %wide.load125, ptr %i.gz, align 1, !alias.scope !16822, !noalias !16823
  store <2 x i8> %wide.load126, ptr %i.ha, align 1, !alias.scope !16822, !noalias !16823
  %i.hb = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.hc = add <2 x i64> %vec.phi124, splat (i64 1) ; 2 uses
  %index.next127 = add nuw i64 %index123, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next127, %n.vec121
  br i1 %i.hd, label %middle.block128, label %vector.body122, !llvm.loop !16597

middle.block128:                                  ; preds = %vector.body122
  %bin.rdx = add <2 x i64> %i.hc, %i.hb
  %i.he = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  store i64 %i.he, ptr %i.bp, align 8, !alias.scope !16824, !noalias !16825
  %cmp.n129 = icmp eq i64 %i.gs, %n.vec121
  br i1 %cmp.n129, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck109, %.lr.ph.i.i.i.i18.i, %middle.block128
  %.ph = phi i64 [ %.promoted.i.i.i.i21.i, %vector.memcheck109 ], [ %.promoted.i.i.i.i21.i, %.lr.ph.i.i.i.i18.i ], [ %i.he, %middle.block128 ] ; 2 uses
  %.sroa.0.011.i.i.i.i22.i.ph = phi i64 [ 0, %vector.memcheck109 ], [ 0, %.lr.ph.i.i.i.i18.i ], [ %n.vec121, %middle.block128 ] ; 4 uses
  %i.hf = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i
  %i.hg = xor i64 %.sroa.0.011.i.i.i.i22.i.ph, -1
  %i.hh = add i64 %.val8.i.i.i.i16.i, %i.hg
  %xtraiter238 = and i64 %i.hf, 1
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hi = or disjoint i64 %.sroa.0.011.i.i.i.i22.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16817)
  %i.hj = add i64 %.sroa.0.011.i.i.i.i22.i.ph, %.val.i.i.i.i15.i ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.hj
  %.val1.i.i.i.i.i.i23.i.prol = load i8, ptr %i.hk, align 1, !alias.scope !16826, !noalias !16819, !noundef !40
  %i.hl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.hj
  call void @llvm.experimental.noalias.scope.decl(metadata !16820)
  call void @llvm.experimental.noalias.scope.decl(metadata !16821)
  store i8 %.val1.i.i.i.i.i.i23.i.prol, ptr %i.hl, align 1, !alias.scope !16827, !noalias !16828
  %i.hm = add i64 %.ph, 1                         ; 3 uses
  store i64 %i.hm, ptr %i.bp, align 8, !noalias !16816
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa224.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.hm, %scalar.ph.prol ]
  %.unr240 = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.hm, %scalar.ph.prol ]
  %.sroa.0.011.i.i.i.i22.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i22.i.ph, %scalar.ph.preheader ], [ %i.hi, %scalar.ph.prol ]
  %i.hn = icmp eq i64 %i.hh, %.val.i.i.i.i15.i
  br i1 %i.hn, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i", label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op261 = add i64 1, %.val.i.i.i.i15.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ho = phi i64 [ %.unr240, %scalar.ph.preheader.new ], [ %i.hw, %scalar.ph ] ; 2 uses
  %.sroa.0.011.i.i.i.i22.i = phi i64 [ %.sroa.0.011.i.i.i.i22.i.unr, %scalar.ph.preheader.new ], [ %i.ht, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16817)
  %i.hp = add i64 %.sroa.0.011.i.i.i.i22.i, %.val.i.i.i.i15.i ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.hp
  %.val1.i.i.i.i.i.i23.i = load i8, ptr %i.hq, align 1, !alias.scope !16826, !noalias !16819, !noundef !40
  %i.hr = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.hp
  call void @llvm.experimental.noalias.scope.decl(metadata !16820)
  call void @llvm.experimental.noalias.scope.decl(metadata !16821)
  store i8 %.val1.i.i.i.i.i.i23.i, ptr %i.hr, align 1, !alias.scope !16827, !noalias !16828
  %i.hs = add i64 %i.ho, 1
  store i64 %i.hs, ptr %i.bp, align 8, !noalias !16816
  %i.ht = add nuw i64 %.sroa.0.011.i.i.i.i22.i, 2 ; 2 uses
  %.reass262 = add i64 %.sroa.0.011.i.i.i.i22.i, %invariant.op261 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %.reass262
  %.val1.i.i.i.i.i.i23.i.1 = load i8, ptr %i.hu, align 1, !alias.scope !16826, !noalias !16829, !noundef !40
  %i.hv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %.reass262
  call void @llvm.experimental.noalias.scope.decl(metadata !16830)
  call void @llvm.experimental.noalias.scope.decl(metadata !16831)
  store i8 %.val1.i.i.i.i.i.i23.i.1, ptr %i.hv, align 1, !alias.scope !16832, !noalias !16828
  %i.hw = add i64 %i.ho, 2                        ; 3 uses
  store i64 %i.hw, ptr %i.bp, align 8, !noalias !16833
  %exitcond.not.i.i.i.i24.i.1 = icmp eq i64 %i.ht, %i.gs
  br i1 %exitcond.not.i.i.i.i24.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i", label %scalar.ph, !llvm.loop !16604

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i27.i": ; preds = %.lr.ph91.i
  %.pr.i.i.i28.i = load i64, ptr %i.bp, align 8, !noalias !16812
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block128, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i27.i"
  %i.hx = phi i64 [ %.pr.i.i.i28.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i27.i" ], [ %i.he, %middle.block128 ], [ %.lcssa224.unr, %scalar.ph.prol.loopexit ], [ %i.hw, %scalar.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16812
  %i.hy = icmp ult i64 %i.hx, 64
  br i1 %i.hy, label %bb.h, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit29.i", !prof !48

bb.h:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.hx, i64 noundef 64) #50, !noalias !16813
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit29.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !16834
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16812
  %i.hz = load i8, ptr %i.ba, align 8, !alias.scope !16810, !noalias !16724, !noundef !40 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !noalias !16834
  store i8 %i.hz, ptr %.sroa.4.0..sroa_idx.i26.i, align 8, !alias.scope !16809, !noalias !16724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16811
  call void @llvm.experimental.noalias.scope.decl(metadata !16835)
  call void @llvm.experimental.noalias.scope.decl(metadata !16836)
  call void @llvm.experimental.noalias.scope.decl(metadata !16837)
  %i.ia = zext nneg i8 %i.hz to i64               ; 5 uses
  %i.ib = icmp ult i8 %i.hz, 64
  call void @llvm.assume(i1 %i.ib)
  %i.ic = icmp samesign ult i8 %i.hz, 32
  br i1 %i.ic, label %bb.i, label %.thread75.i

.thread75.i:                                      ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit29.i"
  %i.id = sub nuw nsw i64 64, %i.ia               ; 2 uses
  %i.ie = add nsw i64 %i.ia, -32                  ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.id
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ig, ptr nonnull readonly align 1 %i.ag, i64 %i.id, i1 false), !alias.scope !16838, !noalias !16724
  %i.ih = load i64, ptr %i.bu, align 8, !alias.scope !16839, !noalias !16840, !noundef !40
  %i.ii = add i64 %i.ih, 1
  store i64 %i.ii, ptr %i.bu, align 8, !alias.scope !16839, !noalias !16840
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bt, i64 noundef range(i64 1, 0) 1), !noalias !16841
  %i.ij = and i64 %i.ie, -64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.if, i64 %i.ij
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.bt, ptr nonnull readonly align 1 %i.ik, i64 %i.ie, i1 false), !alias.scope !16842, !noalias !16724
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i"

bb.i:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit29.i"
  %i.il = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.ia
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.il, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ag, i64 32, i1 false), !alias.scope !16843, !noalias !16724
  %i.im = or disjoint i64 %i.ia, 32
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i": ; preds = %bb.i, %.thread75.i
  %storemerge.in.i.i33.i = phi i64 [ %i.ie, %.thread75.i ], [ %i.im, %bb.i ]
  %storemerge.i.i34.i = trunc nuw nsw i64 %storemerge.in.i.i33.i to i8
  store i8 %storemerge.i.i34.i, ptr %.sroa.4.0..sroa_idx.i26.i, align 8, !alias.scope !16844, !noalias !16724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16845
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull align 8 dereferenceable(152) %i.ac, i64 152, i1 false), !noalias !16724
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, i8 0, i64 32, i1 false), !alias.scope !16846, !noalias !16845
  call void @llvm.experimental.noalias.scope.decl(metadata !16847)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, i8 0, i64 32, i1 false), !alias.scope !16848, !noalias !16849
  call void @llvm.experimental.noalias.scope.decl(metadata !16850)
  call void @llvm.experimental.noalias.scope.decl(metadata !16851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16852
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !alias.scope !16853, !noalias !16852
  call void @llvm.experimental.noalias.scope.decl(metadata !16854), !noalias !16855
  call void @llvm.experimental.noalias.scope.decl(metadata !16856), !noalias !16855
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16852
  %i.in = load i8, ptr %i.bw, align 8, !alias.scope !16857, !noalias !16858, !noundef !40 ; 3 uses
  %i.io = zext nneg i8 %i.in to i64               ; 4 uses
  %i.ip = icmp ult i8 %i.in, 64
  call void @llvm.assume(i1 %i.ip), !noalias !16855
  %i.iq = load i64, ptr %i.bx, align 8, !alias.scope !16859, !noalias !16858, !noundef !40
  %i.ir = shl i64 %i.iq, 9
  %i.is = shl nuw nsw i64 %i.io, 3
  %i.it = or disjoint i64 %i.ir, %i.is
  %i.iu = call i64 @llvm.bswap.i64(i64 %i.it)     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16860), !noalias !16855
  %i.iv = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.io ; 2 uses
  store i8 -128, ptr %i.iv, align 1, !alias.scope !16861, !noalias !16858
  %i.iw = icmp eq i8 %i.in, 63
  br i1 %i.iw, label %._crit_edge.thread.i.i59.i, label %._crit_edge.i.i47.i

._crit_edge.i.i47.i:                              ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i"
  %i.ix = getelementptr i8, ptr %i.iv, i64 1
  %i.iy = xor i64 %i.io, 63
  call void @llvm.memset.p0.i64(ptr align 1 %i.ix, i8 0, i64 %i.iy, i1 false), !alias.scope !16861, !noalias !16858
  %i.iz = xor i64 %i.io, 56
  %i.ja = icmp samesign ult i64 %i.iz, 8
  br i1 %i.ja, label %._crit_edge.thread.i.i59.i, label %bb.j

._crit_edge.thread.i.i59.i:                       ; preds = %._crit_edge.i.i47.i, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i"
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bv, i64 noundef 1), !noalias !16862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16863
end_hunk_1
begin_hunk_2_@_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E:vector.ph
  %i.w = alloca [80 x i8], align 16               ; 6 uses
  %i.x = alloca [80 x i8], align 16               ; 6 uses
  %i.y = alloca [128 x i8], align 16              ; 23 uses
  %i.z = alloca [304 x i8], align 16              ; 5 uses
  %i.aa = alloca [48 x i8], align 8               ; 7 uses
  %i.ab = alloca [48 x i8], align 8               ; 7 uses
  %i.ac = alloca [304 x i8], align 16             ; 8 uses
  %i.ad = alloca [64 x i8], align 1               ; 6 uses
  %i.ae = alloca [4 x i8], align 4                ; 5 uses
  %i.af = alloca [304 x i8], align 16             ; 10 uses
  %i.ag = alloca [64 x i8], align 1               ; 9 uses
  %i.ah = alloca [304 x i8], align 16             ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17201)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !17202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !17203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !17204
  call void @_ZN4hmac11get_der_key17ha7356d8bfc044bd4E(ptr noalias noundef nonnull sret([128 x i8]) align 1 captures(address) dereferenceable(128) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !17205
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.y, align 16, !noalias !17204
  %wide.load64 = load <16 x i8>, ptr %i.ai, align 16, !noalias !17204
  %i.aj = xor <16 x i8> %wide.load, splat (i8 54)
  %i.ak = xor <16 x i8> %wide.load64, splat (i8 54)
  store <16 x i8> %i.aj, ptr %i.y, align 16, !noalias !17204
  store <16 x i8> %i.ak, ptr %i.ai, align 16, !noalias !17204
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.al, align 16, !noalias !17204
  %wide.load64.1 = load <16 x i8>, ptr %i.am, align 16, !noalias !17204
  %i.an = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.ao = xor <16 x i8> %wide.load64.1, splat (i8 54)
  store <16 x i8> %i.an, ptr %i.al, align 16, !noalias !17204
  store <16 x i8> %i.ao, ptr %i.am, align 16, !noalias !17204
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %wide.load.2 = load <16 x i8>, ptr %i.ap, align 16, !noalias !17204
  %wide.load64.2 = load <16 x i8>, ptr %i.aq, align 16, !noalias !17204
  %i.ar = xor <16 x i8> %wide.load.2, splat (i8 54)
  %i.as = xor <16 x i8> %wide.load64.2, splat (i8 54)
  store <16 x i8> %i.ar, ptr %i.ap, align 16, !noalias !17204
  store <16 x i8> %i.as, ptr %i.aq, align 16, !noalias !17204
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %wide.load.3 = load <16 x i8>, ptr %i.at, align 16, !noalias !17204
  %wide.load64.3 = load <16 x i8>, ptr %i.au, align 16, !noalias !17204
  %i.av = xor <16 x i8> %wide.load.3, splat (i8 54)
  %i.aw = xor <16 x i8> %wide.load64.3, splat (i8 54)
  store <16 x i8> %i.av, ptr %i.at, align 16, !noalias !17204
  store <16 x i8> %i.aw, ptr %i.au, align 16, !noalias !17204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !17204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.x, ptr noundef nonnull align 16 dereferenceable(64) @637, i64 64, i1 false), !noalias !17206
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i128 1, ptr %.sroa.42.0..sroa_idx.i.i.i, align 16, !alias.scope !17207, !noalias !17206
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 0) 1), !noalias !17208
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load68 = load <16 x i8>, ptr %i.y, align 16, !noalias !17204
  %wide.load69 = load <16 x i8>, ptr %i.ax, align 16, !noalias !17204
  %i.ay = xor <16 x i8> %wide.load68, splat (i8 106)
  %i.az = xor <16 x i8> %wide.load69, splat (i8 106)
  store <16 x i8> %i.ay, ptr %i.y, align 16, !noalias !17204
  store <16 x i8> %i.az, ptr %i.ax, align 16, !noalias !17204
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %wide.load68.1 = load <16 x i8>, ptr %i.ba, align 16, !noalias !17204
  %wide.load69.1 = load <16 x i8>, ptr %i.bb, align 16, !noalias !17204
  %i.bc = xor <16 x i8> %wide.load68.1, splat (i8 106)
  %i.bd = xor <16 x i8> %wide.load69.1, splat (i8 106)
  store <16 x i8> %i.bc, ptr %i.ba, align 16, !noalias !17204
  store <16 x i8> %i.bd, ptr %i.bb, align 16, !noalias !17204
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %wide.load68.2 = load <16 x i8>, ptr %i.be, align 16, !noalias !17204
  %wide.load69.2 = load <16 x i8>, ptr %i.bf, align 16, !noalias !17204
  %i.bg = xor <16 x i8> %wide.load68.2, splat (i8 106)
  %i.bh = xor <16 x i8> %wide.load69.2, splat (i8 106)
  store <16 x i8> %i.bg, ptr %i.be, align 16, !noalias !17204
  store <16 x i8> %i.bh, ptr %i.bf, align 16, !noalias !17204
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %wide.load68.3 = load <16 x i8>, ptr %i.bi, align 16, !noalias !17204
  %wide.load69.3 = load <16 x i8>, ptr %i.bj, align 16, !noalias !17204
  %i.bk = xor <16 x i8> %wide.load68.3, splat (i8 106)
  %i.bl = xor <16 x i8> %wide.load69.3, splat (i8 106)
  store <16 x i8> %i.bk, ptr %i.bi, align 16, !noalias !17204
  store <16 x i8> %i.bl, ptr %i.bj, align 16, !noalias !17204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !17204
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.w, ptr noundef nonnull align 16 dereferenceable(64) @637, i64 64, i1 false), !noalias !17206
  %.sroa.42.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i128 1, ptr %.sroa.42.0..sroa_idx.i3.i.i, align 16, !alias.scope !17209, !noalias !17206
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 0) 1), !noalias !17208
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bm, ptr noundef nonnull align 16 dereferenceable(80) %i.w, i64 80, i1 false), !noalias !17203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.v, ptr noundef nonnull align 16 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !17203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !17204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !17204
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !17204
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  call void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h04879785cfff0c90E"(ptr noalias noundef nonnull sret([129 x i8]) align 1 captures(address) dereferenceable(129) %i.bn), !noalias !17210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.z, ptr noundef nonnull align 16 dereferenceable(160) %i.v, i64 160, i1 false), !noalias !17203
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ah, ptr noundef nonnull align 16 dereferenceable(304) %i.z, i64 304, i1 false), !noalias !17202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !17203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  %i.bo = icmp eq i64 %6, 0
  br i1 %i.bo, label %_ZN6pbkdf26pbkdf217h2e7d54c9741cdbc3E.exit, label %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i"

"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i": ; preds = %vector.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 160 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ah, i64 288 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 128 ; 10 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.af, i64 160 ; 9 uses
  %.sroa.4.0..sroa_idx.i7.i = getelementptr inbounds nuw i8, ptr %i.af, i64 288 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.af, i64 64 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.q, i64 160 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.bz = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ce = icmp ugt i32 %4, 1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 10 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ac, i64 160 ; 5 uses
  %.sroa.4.0..sroa_idx.i26.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 288 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ac, i64 64 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.k, i64 160 ; 5 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.k, i64 288 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.k, i64 64 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.k, i64 272 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.4.0..sroa_idx.i.i49.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.5.0..sroa_idx.i.i50.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i.i51.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.7.0..sroa_idx.i.i52.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.cu = getelementptr inbounds nuw i8, ptr %i.k, i64 80 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.7.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.da = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.df = getelementptr inbounds nuw i8, ptr %i.k, i64 225
  %scevgep = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %scevgep188 = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i"
  %.sroa.061.094.i = phi ptr [ %5, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.dg, %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i ] ; 4 uses
  %.sroa.562.093.i = phi i64 [ %6, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.dh, %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i ] ; 2 uses
  %.sroa.10.092.i = phi i32 [ 0, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.di, %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i ]
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.562.093.i, i64 64) ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.061.094.i, i64 %.sroa.0.0.i.i.i.i ; 3 uses
  %i.dh = sub nuw i64 %.sroa.562.093.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %i.di = add i32 %.sroa.10.092.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17211)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.061.094.i, i8 0, i64 %.sroa.0.0.i.i.i.i, i1 false), !alias.scope !17212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !17213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !17213
  call void @llvm.experimental.noalias.scope.decl(metadata !17214)
  call void @llvm.experimental.noalias.scope.decl(metadata !17215)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !17216
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf154ea14edc61c23E"(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.u, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.ah), !noalias !17217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !17218
  store i64 0, ptr %i.br, align 8, !noalias !17218
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !17218
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(128) %i.bp, ptr noundef nonnull readonly %i.bq, ptr noundef nonnull %i.t, ptr noundef nonnull %i.br), !noalias !17219
  call void @llvm.experimental.noalias.scope.decl(metadata !17220), !noalias !17221
  %.val.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !17220, !noalias !17218, !noundef !40 ; 10 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !17220, !noalias !17218, !noundef !40 ; 6 uses
  %i.dj = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !17222, !noalias !17218, !nonnull !40, !noundef !40 ; 6 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !17222, !noalias !17218, !nonnull !40, !noundef !40 ; 6 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !17223 ; 3 uses
  %min.iters.check190 = icmp ult i64 %i.dj, 8
  br i1 %min.iters.check190, label %scalar.ph189.preheader, label %vector.memcheck191

vector.memcheck191:                               ; preds = %.lr.ph.i.i.i.i.i
  %i.dk = getelementptr nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %i.dl = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %7 = getelementptr nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %8 = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %bound0192 = icmp ult ptr %i.dk, %scevgep188
  %bound1193 = icmp ult ptr %i.br, %i.dl
  %found.conflict194 = and i1 %bound0192, %bound1193
  %bound0195 = icmp ult ptr %i.dk, %8
  %bound1196 = icmp ult ptr %7, %i.dl
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %found.conflict194, %found.conflict197
  %bound0199 = icmp ult ptr %i.br, %8
  %bound1200 = icmp ult ptr %7, %scevgep188
  %found.conflict201 = and i1 %bound0199, %bound1200
  %conflict.rdx202 = or i1 %conflict.rdx198, %found.conflict201
  br i1 %conflict.rdx202, label %scalar.ph189.preheader, label %vector.ph203

vector.ph203:                                     ; preds = %vector.memcheck191
  %n.vec204 = and i64 %i.dj, -4                   ; 3 uses
  %i.dm = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i.i, i64 0
  br label %vector.body205

vector.body205:                                   ; preds = %vector.body205, %vector.ph203
  %index206 = phi i64 [ 0, %vector.ph203 ], [ %index.next211, %vector.body205 ] ; 2 uses
  %vec.phi207 = phi <2 x i64> [ %i.dm, %vector.ph203 ], [ %i.ds, %vector.body205 ]
  %vec.phi208 = phi <2 x i64> [ zeroinitializer, %vector.ph203 ], [ %i.dt, %vector.body205 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17224), !noalias !17221
  %i.dn = add i64 %index206, %.val.i.i.i.i.i      ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  %wide.load209 = load <2 x i8>, ptr %i.do, align 1, !alias.scope !17225, !noalias !17226
  %wide.load210 = load <2 x i8>, ptr %i.dp, align 1, !alias.scope !17225, !noalias !17226
  %i.dq = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dn ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17227), !noalias !17221
  call void @llvm.experimental.noalias.scope.decl(metadata !17228), !noalias !17221
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  store <2 x i8> %wide.load209, ptr %i.dq, align 1, !alias.scope !17229, !noalias !17230
  store <2 x i8> %wide.load210, ptr %i.dr, align 1, !alias.scope !17229, !noalias !17230
  %i.ds = add <2 x i64> %vec.phi207, splat (i64 1) ; 2 uses
  %i.dt = add <2 x i64> %vec.phi208, splat (i64 1) ; 2 uses
  %index.next211 = add nuw i64 %index206, 4       ; 2 uses
  %i.du = icmp eq i64 %index.next211, %n.vec204
  br i1 %i.du, label %middle.block212, label %vector.body205, !llvm.loop !16960

middle.block212:                                  ; preds = %vector.body205
  %bin.rdx213 = add <2 x i64> %i.dt, %i.ds
  %i.dv = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx213) ; 3 uses
  store i64 %i.dv, ptr %i.br, align 8, !alias.scope !17231, !noalias !17232
  %cmp.n214 = icmp eq i64 %i.dj, %n.vec204
  br i1 %cmp.n214, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph189.preheader

scalar.ph189.preheader:                           ; preds = %vector.memcheck191, %.lr.ph.i.i.i.i.i, %middle.block212
  %.ph217 = phi i64 [ %.promoted.i.i.i.i.i, %vector.memcheck191 ], [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dv, %middle.block212 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck191 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec204, %middle.block212 ] ; 4 uses
  %i.dw = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  %i.dx = xor i64 %.sroa.0.011.i.i.i.i.i.ph, -1
  %i.dy = add i64 %.val8.i.i.i.i.i, %i.dx
  %xtraiter = and i64 %i.dw, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph189.prol.loopexit, label %scalar.ph189.prol

scalar.ph189.prol:                                ; preds = %scalar.ph189.preheader
  %i.dz = or disjoint i64 %.sroa.0.011.i.i.i.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !17224), !noalias !17221
  %i.ea = add i64 %.sroa.0.011.i.i.i.i.i.ph, %.val.i.i.i.i.i ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.ea
  %.val1.i.i.i.i.i.i.i.prol = load i8, ptr %i.eb, align 1, !alias.scope !17233, !noalias !17226, !noundef !40
  %i.ec = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.ea
  call void @llvm.experimental.noalias.scope.decl(metadata !17227), !noalias !17221
  call void @llvm.experimental.noalias.scope.decl(metadata !17228), !noalias !17221
  store i8 %.val1.i.i.i.i.i.i.i.prol, ptr %i.ec, align 1, !alias.scope !17234, !noalias !17235
  %i.ed = add i64 %.ph217, 1                      ; 3 uses
  store i64 %i.ed, ptr %i.br, align 8, !noalias !17223
  br label %scalar.ph189.prol.loopexit

scalar.ph189.prol.loopexit:                       ; preds = %scalar.ph189.prol, %scalar.ph189.preheader
  %.lcssa219.unr = phi i64 [ poison, %scalar.ph189.preheader ], [ %i.ed, %scalar.ph189.prol ]
  %.unr = phi i64 [ %.ph217, %scalar.ph189.preheader ], [ %i.ed, %scalar.ph189.prol ]
  %.sroa.0.011.i.i.i.i.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i.i.ph, %scalar.ph189.preheader ], [ %i.dz, %scalar.ph189.prol ]
  %i.ee = icmp eq i64 %i.dy, %.val.i.i.i.i.i
  br i1 %i.ee, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph189.preheader.new

scalar.ph189.preheader.new:                       ; preds = %scalar.ph189.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i.i.i.i
  br label %scalar.ph189

scalar.ph189:                                     ; preds = %scalar.ph189, %scalar.ph189.preheader.new
  %i.ef = phi i64 [ %.unr, %scalar.ph189.preheader.new ], [ %i.en, %scalar.ph189 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %.sroa.0.011.i.i.i.i.i.unr, %scalar.ph189.preheader.new ], [ %i.ek, %scalar.ph189 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17224), !noalias !17221
  %i.eg = add i64 %.sroa.0.011.i.i.i.i.i, %.val.i.i.i.i.i ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.eg
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.eh, align 1, !alias.scope !17233, !noalias !17226, !noundef !40
  %i.ei = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.eg
  call void @llvm.experimental.noalias.scope.decl(metadata !17227), !noalias !17221
  call void @llvm.experimental.noalias.scope.decl(metadata !17228), !noalias !17221
  store i8 %.val1.i.i.i.i.i.i.i, ptr %i.ei, align 1, !alias.scope !17234, !noalias !17235
  %i.ej = add i64 %i.ef, 1
  store i64 %i.ej, ptr %i.br, align 8, !noalias !17223
  %i.ek = add nuw i64 %.sroa.0.011.i.i.i.i.i, 2   ; 2 uses
  %.reass = add i64 %.sroa.0.011.i.i.i.i.i, %invariant.op ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.reass
  %.val1.i.i.i.i.i.i.i.1 = load i8, ptr %i.el, align 1, !alias.scope !17233, !noalias !17236, !noundef !40
  %i.em = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.reass
  call void @llvm.experimental.noalias.scope.decl(metadata !17237), !noalias !17221
  call void @llvm.experimental.noalias.scope.decl(metadata !17238), !noalias !17221
  store i8 %.val1.i.i.i.i.i.i.i.1, ptr %i.em, align 1, !alias.scope !17239, !noalias !17235
  %i.en = add i64 %i.ef, 2                        ; 3 uses
  store i64 %i.en, ptr %i.br, align 8, !noalias !17240
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.ek, %i.dj
  br i1 %exitcond.not.i.i.i.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph189, !llvm.loop !16967

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i": ; preds = %._crit_edge.i
  %.pr.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !17218
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i": ; preds = %scalar.ph189.prol.loopexit, %scalar.ph189, %middle.block212, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i"
  %i.eo = phi i64 [ %.pr.i.i.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i" ], [ %i.dv, %middle.block212 ], [ %.lcssa219.unr, %scalar.ph189.prol.loopexit ], [ %i.en, %scalar.ph189 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !17218
  %i.ep = icmp ult i64 %i.eo, 128
  br i1 %i.ep, label %bb.a, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i", !prof !48

bb.a:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.eo, i64 noundef 128) #50, !noalias !17219
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.bv, ptr noundef nonnull align 8 dereferenceable(128) %i.t, i64 128, i1 false), !noalias !17241
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !17218
  %i.eq = load i8, ptr %i.bq, align 16, !alias.scope !17215, !noalias !17242, !noundef !40 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.af, ptr noundef nonnull align 16 dereferenceable(160) %i.u, i64 160, i1 false), !noalias !17241
  store i8 %i.eq, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !17214, !noalias !17242
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !17216
  call void @llvm.experimental.noalias.scope.decl(metadata !17243)
  call void @llvm.experimental.noalias.scope.decl(metadata !17244), !noalias !17211
  call void @llvm.experimental.noalias.scope.decl(metadata !17245), !noalias !17211
  %i.er = zext nneg i8 %i.eq to i64               ; 4 uses
  %i.es = icmp sgt i8 %i.eq, -1
  call void @llvm.assume(i1 %i.es), !noalias !17211
  %i.et = sub nuw nsw i64 128, %i.er              ; 4 uses
  %i.eu = icmp ult i64 %3, %i.et
  br i1 %i.eu, label %bb.f, label %bb.b

bb.b:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i"
  %i.ev = icmp eq i8 %i.eq, 0
  br i1 %i.ev, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i", %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %3, %bb.b ], [ %i.fb, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %2, %bb.b ], [ %i.fc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 2 uses
  %i.ew = lshr i64 %.sroa.7.0.i.i.i, 7            ; 3 uses
  %i.ex = and i64 %.sroa.7.0.i.i.i, -128
  %i.ey = and i64 %.sroa.7.0.i.i.i, 127           ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.ex
  %i.fa = icmp eq i64 %i.ew, 0
  br i1 %i.fa, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i": ; preds = %bb.b
  %i.fb = sub nuw i64 %3, %i.et
  %i.fc = getelementptr inbounds nuw i8, ptr %2, i64 %i.et
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fd, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %i.et, i1 false), !alias.scope !17246, !noalias !17247
  %i.fe = load i128, ptr %i.bw, align 16, !alias.scope !17248, !noalias !17249, !noundef !40
  %i.ff = add i128 %i.fe, 1
  store i128 %i.ff, ptr %i.bw, align 16, !alias.scope !17248, !noalias !17249
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.bv, i64 noundef range(i64 1, 0) 1), !noalias !17250
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.fg = zext nneg i64 %i.ew to i128
  %i.fh = load i128, ptr %i.bw, align 16, !alias.scope !17251, !noalias !17252, !noundef !40
  %i.fi = add i128 %i.fh, %i.fg
  store i128 %i.fi, ptr %i.bw, align 16, !alias.scope !17251, !noalias !17252
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.ew), !noalias !17253
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.bv, ptr nonnull readonly align 1 %i.ez, i64 %i.ey, i1 false), !alias.scope !17254, !noalias !17247
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"

bb.f:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i"
  %i.fj = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.er
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fj, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !alias.scope !17255, !noalias !17247
  %i.fk = add nuw nsw i64 %3, %i.er
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i": ; preds = %bb.f, %bb.e
  %storemerge.in.i.i.i = phi i64 [ %i.ey, %bb.e ], [ %i.fk, %bb.f ] ; 7 uses
  %storemerge.i.i.i = trunc nuw i64 %storemerge.in.i.i.i to i8 ; 2 uses
  store i8 %storemerge.i.i.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !17256, !noalias !17257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !17213
  %i.fl = call i32 @llvm.bswap.i32(i32 %i.di)     ; 2 uses
  store i32 %i.fl, ptr %i.ae, align 4, !noalias !17213
  call void @llvm.experimental.noalias.scope.decl(metadata !17258)
  call void @llvm.experimental.noalias.scope.decl(metadata !17259), !noalias !17211
  call void @llvm.experimental.noalias.scope.decl(metadata !17260), !noalias !17211
  %i.fm = icmp sgt i8 %storemerge.i.i.i, -1
  call void @llvm.assume(i1 %i.fm), !noalias !17211
  %i.fn = icmp samesign ult i64 %storemerge.in.i.i.i, 124
  br i1 %i.fn, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"
  %i.fo = sub nuw nsw i64 128, %storemerge.in.i.i.i ; 2 uses
  %i.fp = add nsw i64 %storemerge.in.i.i.i, -124  ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fo
  %i.fr = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge.in.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fr, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.ae, i64 %i.fo, i1 false), !alias.scope !17261, !noalias !17257
end_hunk_2
begin_hunk_3_@_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E:vector.ph
  %i.fu = and i64 %i.fp, -128
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.bv, ptr nonnull readonly align 1 %i.fv, i64 %i.fp, i1 false), !alias.scope !17265, !noalias !17257
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"

bb.g:                                             ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"
  %i.fw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge.in.i.i.i
  store i32 %i.fl, ptr %i.fw, align 1, !alias.scope !17266, !noalias !17257
  %i.fx = add nuw nsw i64 %storemerge.in.i.i.i, 4
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i": ; preds = %bb.g, %.thread.i
  %storemerge.in.i.i11.i = phi i64 [ %i.fp, %.thread.i ], [ %i.fx, %bb.g ]
  %storemerge.i.i12.i = trunc nuw i64 %storemerge.in.i.i11.i to i8
  store i8 %storemerge.i.i12.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !17267, !noalias !17257
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !17213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !17213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !17268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.q, ptr noundef nonnull align 16 dereferenceable(304) %i.af, i64 304, i1 false), !noalias !17257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !17268
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.r, i8 0, i64 64, i1 false), !alias.scope !17269, !noalias !17268
  call void @llvm.experimental.noalias.scope.decl(metadata !17270), !noalias !17211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !17271
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !alias.scope !17272, !noalias !17271
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE"(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.q, ptr noalias noundef nonnull align 1 dereferenceable(129) %i.bx, ptr noalias noundef align 1 dereferenceable(64) %i.p), !noalias !17273
  call void @llvm.experimental.noalias.scope.decl(metadata !17274), !noalias !17211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.p, i64 64, i1 false), !alias.scope !17275, !noalias !17276
  store i8 64, ptr %i.by, align 16, !alias.scope !17277, !noalias !17278
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE"(ptr noalias noundef align 16 dereferenceable(80) %i.bz, ptr noalias noundef nonnull align 1 dereferenceable(129) %i.bx, ptr noalias noundef nonnull align 1 dereferenceable(64) %i.r), !noalias !17279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !17271
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !17268
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ad, ptr noundef nonnull align 1 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !17280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !17268
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !17213
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h92fc9665f0656228E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ab, ptr noundef nonnull align 1 %.sroa.061.094.i, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ca)
  call void @llvm.experimental.noalias.scope.decl(metadata !17281)
  %.val.i.i = load i64, ptr %i.cb, align 8, !alias.scope !17281, !noalias !17202, !noundef !40 ; 11 uses
  %.val8.i.i = load i64, ptr %i.cc, align 8, !alias.scope !17281, !noalias !17202, !noundef !40 ; 6 uses
  %i.fy = sub i64 %.val8.i.i, %.val.i.i           ; 8 uses
  %.not.i14.i = icmp eq i64 %.val8.i.i, %.val.i.i
  br i1 %.not.i14.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %iter.check156

iter.check156:                                    ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !17282, !noalias !17202, !nonnull !40, !noundef !40 ; 7 uses
  %.val.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !17282, !noalias !17202, !nonnull !40, !noundef !40 ; 7 uses
  %min.iters.check138 = icmp ult i64 %i.fy, 4
  br i1 %min.iters.check138, label %vec.epilog.scalar.ph158.preheader, label %vector.memcheck139

vector.memcheck139:                               ; preds = %iter.check156
  %i.fz = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %i.ga = getelementptr i8, ptr %.val1.i.i.i, i64 %.val8.i.i
  %i.gb = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %i.gc = getelementptr i8, ptr %.val.i.i.i, i64 %.val8.i.i
  %bound0140 = icmp ult ptr %i.fz, %i.gc
  %bound1141 = icmp ult ptr %i.gb, %i.ga
  %found.conflict142 = and i1 %bound0140, %bound1141
  br i1 %found.conflict142, label %vec.epilog.scalar.ph158.preheader, label %vector.main.loop.iter.check143

vector.main.loop.iter.check143:                   ; preds = %vector.memcheck139
  %min.iters.check144 = icmp ult i64 %i.fy, 32
  br i1 %min.iters.check144, label %vec.epilog.ph160, label %vector.ph145

vector.ph145:                                     ; preds = %vector.main.loop.iter.check143
  %i.gd = and i64 %i.fy, 28
  %n.vec146 = and i64 %i.fy, -32                  ; 4 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.ph145, %vector.body147
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next153, %vector.body147 ] ; 2 uses
  %i.ge = add i64 %index148, %.val.i.i            ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ge ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ge ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  %wide.load149 = load <16 x i8>, ptr %i.gg, align 1, !alias.scope !17283, !noalias !17281
  %wide.load150 = load <16 x i8>, ptr %i.gh, align 1, !alias.scope !17283, !noalias !17281
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 16 ; 2 uses
  %wide.load151 = load <16 x i8>, ptr %i.gf, align 1, !alias.scope !17284, !noalias !17285
  %wide.load152 = load <16 x i8>, ptr %i.gi, align 1, !alias.scope !17284, !noalias !17285
  %i.gj = xor <16 x i8> %wide.load151, %wide.load149
  %i.gk = xor <16 x i8> %wide.load152, %wide.load150
  store <16 x i8> %i.gj, ptr %i.gf, align 1, !alias.scope !17284, !noalias !17285
  store <16 x i8> %i.gk, ptr %i.gi, align 1, !alias.scope !17284, !noalias !17285
  %index.next153 = add nuw i64 %index148, 32      ; 2 uses
  %i.gl = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.gl, label %middle.block154, label %vector.body147, !llvm.loop !17049

middle.block154:                                  ; preds = %vector.body147
  %cmp.n155 = icmp eq i64 %i.fy, %n.vec146
  br i1 %cmp.n155, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.iter.check157

vec.epilog.iter.check157:                         ; preds = %middle.block154
  %min.epilog.iters.check159 = icmp eq i64 %i.gd, 0
  br i1 %min.epilog.iters.check159, label %vec.epilog.scalar.ph158.preheader, label %vec.epilog.ph160, !prof !90

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check143, %vec.epilog.iter.check157
  %vec.epilog.resume.val161 = phi i64 [ %n.vec146, %vec.epilog.iter.check157 ], [ 0, %vector.main.loop.iter.check143 ]
  %n.vec162 = and i64 %i.fy, -4                   ; 3 uses
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph160
  %index164 = phi i64 [ %vec.epilog.resume.val161, %vec.epilog.ph160 ], [ %index.next167, %vec.epilog.vector.body163 ] ; 2 uses
  %i.gm = add i64 %index164, %.val.i.i            ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gm
  %wide.load165 = load <4 x i8>, ptr %i.go, align 1, !alias.scope !17283, !noalias !17281
  %wide.load166 = load <4 x i8>, ptr %i.gn, align 1, !alias.scope !17284, !noalias !17285
  %i.gp = xor <4 x i8> %wide.load166, %wide.load165
  store <4 x i8> %i.gp, ptr %i.gn, align 1, !alias.scope !17284, !noalias !17285
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.gq, label %vec.epilog.middle.block168, label %vec.epilog.vector.body163, !llvm.loop !17050

vec.epilog.middle.block168:                       ; preds = %vec.epilog.vector.body163
  %cmp.n169 = icmp eq i64 %i.fy, %n.vec162
  br i1 %cmp.n169, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph158.preheader

vec.epilog.scalar.ph158.preheader:                ; preds = %iter.check156, %vector.memcheck139, %vec.epilog.iter.check157, %vec.epilog.middle.block168
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check156 ], [ 0, %vector.memcheck139 ], [ %n.vec146, %vec.epilog.iter.check157 ], [ %n.vec162, %vec.epilog.middle.block168 ] ; 4 uses
  %i.gr = sub i64 %.val8.i.i, %.val.i.i
  %i.gs = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.gt = add i64 %.val8.i.i, %i.gs
  %xtraiter234 = and i64 %i.gr, 1
  %lcmp.mod235.not = icmp eq i64 %xtraiter234, 0
  br i1 %lcmp.mod235.not, label %vec.epilog.scalar.ph158.prol.loopexit, label %vec.epilog.scalar.ph158.prol

vec.epilog.scalar.ph158.prol:                     ; preds = %vec.epilog.scalar.ph158.preheader
  %i.gu = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.gv = add i64 %.sroa.0.010.i.i.ph, %.val.i.i  ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gv ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gv
  %.val9.i.i.prol = load i8, ptr %i.gx, align 1, !noalias !17281, !noundef !40
  %i.gy = load i8, ptr %i.gw, align 1, !alias.scope !17286, !noalias !17281, !noundef !40
  %i.gz = xor i8 %i.gy, %.val9.i.i.prol
  store i8 %i.gz, ptr %i.gw, align 1, !alias.scope !17286, !noalias !17281
  br label %vec.epilog.scalar.ph158.prol.loopexit

vec.epilog.scalar.ph158.prol.loopexit:            ; preds = %vec.epilog.scalar.ph158.prol, %vec.epilog.scalar.ph158.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph158.preheader ], [ %i.gu, %vec.epilog.scalar.ph158.prol ]
  %i.ha = icmp eq i64 %i.gt, %.val.i.i
  br i1 %i.ha, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph158.preheader.new

vec.epilog.scalar.ph158.preheader.new:            ; preds = %vec.epilog.scalar.ph158.prol.loopexit
  %invariant.op257 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph158

vec.epilog.scalar.ph158:                          ; preds = %vec.epilog.scalar.ph158, %vec.epilog.scalar.ph158.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph158.preheader.new ], [ %i.hg, %vec.epilog.scalar.ph158 ] ; 3 uses
  %i.hb = add i64 %.sroa.0.010.i.i, %.val.i.i     ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.hb ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.hb
  %.val9.i.i = load i8, ptr %i.hd, align 1, !noalias !17281, !noundef !40
  %i.he = load i8, ptr %i.hc, align 1, !alias.scope !17286, !noalias !17281, !noundef !40
  %i.hf = xor i8 %i.he, %.val9.i.i
  store i8 %i.hf, ptr %i.hc, align 1, !alias.scope !17286, !noalias !17281
  %i.hg = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass258 = add i64 %.sroa.0.010.i.i, %invariant.op257 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass258 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass258
  %.val9.i.i.1 = load i8, ptr %i.hi, align 1, !noalias !17281, !noundef !40
  %i.hj = load i8, ptr %i.hh, align 1, !alias.scope !17286, !noalias !17281, !noundef !40
  %i.hk = xor i8 %i.hj, %.val9.i.i.1
  store i8 %i.hk, ptr %i.hh, align 1, !alias.scope !17286, !noalias !17281
  %exitcond.not.i.i.1 = icmp eq i64 %i.hg, %i.fy
  br i1 %exitcond.not.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph158, !llvm.loop !17051

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i": ; preds = %vec.epilog.scalar.ph158.prol.loopexit, %vec.epilog.scalar.ph158, %middle.block154, %vec.epilog.middle.block168, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !17213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ag, ptr noundef nonnull align 1 dereferenceable(64) %i.ad, i64 64, i1 false), !noalias !17213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !17213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !17213
  br i1 %i.ce, label %.lr.ph91.i, label %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i

.lr.ph91.i:                                       ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i"
  %.sroa.05.1.i90.i = phi i32 [ %.sroa.05.1.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i" ], [ 2, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !17213
  call void @llvm.experimental.noalias.scope.decl(metadata !17287)
  call void @llvm.experimental.noalias.scope.decl(metadata !17288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !17289
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf154ea14edc61c23E"(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.ah), !noalias !17287
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !17290
  store i64 0, ptr %i.cf, align 8, !noalias !17290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !17290
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(128) %i.bp, ptr noundef nonnull readonly %i.bq, ptr noundef nonnull %i.n, ptr noundef nonnull %i.cf), !noalias !17291
  call void @llvm.experimental.noalias.scope.decl(metadata !17292)
  %.val.i.i.i.i15.i = load i64, ptr %i.cg, align 8, !alias.scope !17292, !noalias !17290, !noundef !40 ; 10 uses
  %.val8.i.i.i.i16.i = load i64, ptr %i.ch, align 8, !alias.scope !17292, !noalias !17290, !noundef !40 ; 6 uses
  %i.hl = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i ; 4 uses
  %.not.i.i.i.i17.i = icmp eq i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i
  br i1 %.not.i.i.i.i17.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i27.i", label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph91.i
  %.val.i.i.i.i.i19.i = load ptr, ptr %i.m, align 8, !alias.scope !17293, !noalias !17290, !nonnull !40, !noundef !40 ; 6 uses
  %.val1.i.i.i.i.i20.i = load ptr, ptr %i.ci, align 8, !alias.scope !17293, !noalias !17290, !nonnull !40, !noundef !40 ; 6 uses
  %.promoted.i.i.i.i21.i = load i64, ptr %i.cf, align 8, !noalias !17294 ; 3 uses
  %min.iters.check106 = icmp ult i64 %i.hl, 8
  br i1 %min.iters.check106, label %scalar.ph.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %.lr.ph.i.i.i.i18.i
  %i.hm = getelementptr nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %.val.i.i.i.i15.i ; 2 uses
  %i.hn = getelementptr i8, ptr %.val1.i.i.i.i.i20.i, i64 %.val8.i.i.i.i16.i ; 2 uses
  %9 = getelementptr nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %.val.i.i.i.i15.i ; 2 uses
  %10 = getelementptr i8, ptr %.val.i.i.i.i.i19.i, i64 %.val8.i.i.i.i16.i ; 2 uses
  %bound0108 = icmp ult ptr %i.hm, %scevgep
  %bound1109 = icmp ult ptr %i.cf, %i.hn
  %found.conflict110 = and i1 %bound0108, %bound1109
  %bound0111 = icmp ult ptr %i.hm, %10
  %bound1112 = icmp ult ptr %9, %i.hn
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx = or i1 %found.conflict110, %found.conflict113
  %bound0114 = icmp ult ptr %i.cf, %10
  %bound1115 = icmp ult ptr %9, %scevgep
  %found.conflict116 = and i1 %bound0114, %bound1115
  %conflict.rdx117 = or i1 %conflict.rdx, %found.conflict116
  br i1 %conflict.rdx117, label %scalar.ph.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %vector.memcheck107
  %n.vec119 = and i64 %i.hl, -4                   ; 3 uses
  %i.ho = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i21.i, i64 0
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph118
  %index121 = phi i64 [ 0, %vector.ph118 ], [ %index.next125, %vector.body120 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ho, %vector.ph118 ], [ %i.hu, %vector.body120 ]
  %vec.phi122 = phi <2 x i64> [ zeroinitializer, %vector.ph118 ], [ %i.hv, %vector.body120 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !17295)
  %i.hp = add i64 %index121, %.val.i.i.i.i15.i    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.hp ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 2
  %wide.load123 = load <2 x i8>, ptr %i.hq, align 1, !alias.scope !17296, !noalias !17297
  %wide.load124 = load <2 x i8>, ptr %i.hr, align 1, !alias.scope !17296, !noalias !17297
  %i.hs = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.hp ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17298)
  call void @llvm.experimental.noalias.scope.decl(metadata !17299)
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  store <2 x i8> %wide.load123, ptr %i.hs, align 1, !alias.scope !17300, !noalias !17301
  store <2 x i8> %wide.load124, ptr %i.ht, align 1, !alias.scope !17300, !noalias !17301
  %i.hu = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.hv = add <2 x i64> %vec.phi122, splat (i64 1) ; 2 uses
  %index.next125 = add nuw i64 %index121, 4       ; 2 uses
  %i.hw = icmp eq i64 %index.next125, %n.vec119
  br i1 %i.hw, label %middle.block126, label %vector.body120, !llvm.loop !17075

middle.block126:                                  ; preds = %vector.body120
  %bin.rdx = add <2 x i64> %i.hv, %i.hu
  %i.hx = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  store i64 %i.hx, ptr %i.cf, align 8, !alias.scope !17302, !noalias !17303
  %cmp.n127 = icmp eq i64 %i.hl, %n.vec119
  br i1 %cmp.n127, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck107, %.lr.ph.i.i.i.i18.i, %middle.block126
  %.ph = phi i64 [ %.promoted.i.i.i.i21.i, %vector.memcheck107 ], [ %.promoted.i.i.i.i21.i, %.lr.ph.i.i.i.i18.i ], [ %i.hx, %middle.block126 ] ; 2 uses
  %.sroa.0.011.i.i.i.i22.i.ph = phi i64 [ 0, %vector.memcheck107 ], [ 0, %.lr.ph.i.i.i.i18.i ], [ %n.vec119, %middle.block126 ] ; 4 uses
  %i.hy = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i
  %i.hz = xor i64 %.sroa.0.011.i.i.i.i22.i.ph, -1
  %i.ia = add i64 %.val8.i.i.i.i16.i, %i.hz
  %xtraiter236 = and i64 %i.hy, 1
  %lcmp.mod237.not = icmp eq i64 %xtraiter236, 0
  br i1 %lcmp.mod237.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ib = or disjoint i64 %.sroa.0.011.i.i.i.i22.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !17295)
  %i.ic = add i64 %.sroa.0.011.i.i.i.i22.i.ph, %.val.i.i.i.i15.i ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.ic
  %.val1.i.i.i.i.i.i23.i.prol = load i8, ptr %i.id, align 1, !alias.scope !17304, !noalias !17297, !noundef !40
  %i.ie = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.ic
  call void @llvm.experimental.noalias.scope.decl(metadata !17298)
  call void @llvm.experimental.noalias.scope.decl(metadata !17299)
  store i8 %.val1.i.i.i.i.i.i23.i.prol, ptr %i.ie, align 1, !alias.scope !17305, !noalias !17306
  %i.if = add i64 %.ph, 1                         ; 3 uses
  store i64 %i.if, ptr %i.cf, align 8, !noalias !17294
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa222.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.if, %scalar.ph.prol ]
  %.unr238 = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.if, %scalar.ph.prol ]
  %.sroa.0.011.i.i.i.i22.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i22.i.ph, %scalar.ph.preheader ], [ %i.ib, %scalar.ph.prol ]
  %i.ig = icmp eq i64 %i.ia, %.val.i.i.i.i15.i
  br i1 %i.ig, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i", label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op259 = add i64 1, %.val.i.i.i.i15.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.ih = phi i64 [ %.unr238, %scalar.ph.preheader.new ], [ %i.ip, %scalar.ph ] ; 2 uses
  %.sroa.0.011.i.i.i.i22.i = phi i64 [ %.sroa.0.011.i.i.i.i22.i.unr, %scalar.ph.preheader.new ], [ %i.im, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17295)
  %i.ii = add i64 %.sroa.0.011.i.i.i.i22.i, %.val.i.i.i.i15.i ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.ii
  %.val1.i.i.i.i.i.i23.i = load i8, ptr %i.ij, align 1, !alias.scope !17304, !noalias !17297, !noundef !40
  %i.ik = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.ii
  call void @llvm.experimental.noalias.scope.decl(metadata !17298)
  call void @llvm.experimental.noalias.scope.decl(metadata !17299)
  store i8 %.val1.i.i.i.i.i.i23.i, ptr %i.ik, align 1, !alias.scope !17305, !noalias !17306
  %i.il = add i64 %i.ih, 1
  store i64 %i.il, ptr %i.cf, align 8, !noalias !17294
  %i.im = add nuw i64 %.sroa.0.011.i.i.i.i22.i, 2 ; 2 uses
  %.reass260 = add i64 %.sroa.0.011.i.i.i.i22.i, %invariant.op259 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %.reass260
  %.val1.i.i.i.i.i.i23.i.1 = load i8, ptr %i.in, align 1, !alias.scope !17304, !noalias !17307, !noundef !40
  %i.io = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %.reass260
  call void @llvm.experimental.noalias.scope.decl(metadata !17308)
  call void @llvm.experimental.noalias.scope.decl(metadata !17309)
  store i8 %.val1.i.i.i.i.i.i23.i.1, ptr %i.io, align 1, !alias.scope !17310, !noalias !17306
  %i.ip = add i64 %i.ih, 2                        ; 3 uses
  store i64 %i.ip, ptr %i.cf, align 8, !noalias !17311
  %exitcond.not.i.i.i.i24.i.1 = icmp eq i64 %i.im, %i.hl
  br i1 %exitcond.not.i.i.i.i24.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i", label %scalar.ph, !llvm.loop !17082

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i27.i": ; preds = %.lr.ph91.i
  %.pr.i.i.i28.i = load i64, ptr %i.cf, align 8, !noalias !17290
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block126, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i27.i"
  %i.iq = phi i64 [ %.pr.i.i.i28.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i27.i" ], [ %i.hx, %middle.block126 ], [ %.lcssa222.unr, %scalar.ph.prol.loopexit ], [ %i.ip, %scalar.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !17290
  %i.ir = icmp ult i64 %i.iq, 128
  br i1 %i.ir, label %bb.h, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit29.i", !prof !48

bb.h:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.iq, i64 noundef 128) #50, !noalias !17291
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit29.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.cj, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false), !noalias !17312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !17290
  %i.is = load i8, ptr %i.bq, align 16, !alias.scope !17288, !noalias !17202, !noundef !40 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ac, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !17312
  store i8 %i.is, ptr %.sroa.4.0..sroa_idx.i26.i, align 16, !alias.scope !17287, !noalias !17202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !17289
  call void @llvm.experimental.noalias.scope.decl(metadata !17313)
  call void @llvm.experimental.noalias.scope.decl(metadata !17314)
  call void @llvm.experimental.noalias.scope.decl(metadata !17315)
  %i.it = zext nneg i8 %i.is to i64               ; 5 uses
  %i.iu = icmp sgt i8 %i.is, -1
  call void @llvm.assume(i1 %i.iu)
  %i.iv = icmp samesign ult i8 %i.is, 64
  br i1 %i.iv, label %bb.i, label %.thread75.i

.thread75.i:                                      ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit29.i"
  %i.iw = sub nuw nsw i64 128, %i.it              ; 2 uses
  %i.ix = add nsw i64 %i.it, -64                  ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.iw
  %i.iz = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.iz, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ag, i64 %i.iw, i1 false), !alias.scope !17316, !noalias !17202
  %i.ja = load i128, ptr %i.ck, align 16, !alias.scope !17317, !noalias !17318, !noundef !40
  %i.jb = add i128 %i.ja, 1
  store i128 %i.jb, ptr %i.ck, align 16, !alias.scope !17317, !noalias !17318
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.cj, i64 noundef range(i64 1, 0) 1), !noalias !17319
  %i.jc = and i64 %i.ix, -128
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.jc
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.cj, ptr nonnull readonly align 1 %i.jd, i64 %i.ix, i1 false), !alias.scope !17320, !noalias !17202
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i"

bb.i:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit29.i"
  %i.je = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.it
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.je, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ag, i64 64, i1 false), !alias.scope !17321, !noalias !17202
  %i.jf = or disjoint i64 %i.it, 64
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i": ; preds = %bb.i, %.thread75.i
  %storemerge.in.i.i33.i = phi i64 [ %i.ix, %.thread75.i ], [ %i.jf, %bb.i ]
  %storemerge.i.i34.i = trunc nuw nsw i64 %storemerge.in.i.i33.i to i8
  store i8 %storemerge.i.i34.i, ptr %.sroa.4.0..sroa_idx.i26.i, align 16, !alias.scope !17322, !noalias !17202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !17323
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.k, ptr noundef nonnull align 16 dereferenceable(304) %i.ac, i64 304, i1 false), !noalias !17202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !alias.scope !17324, !noalias !17323
  call void @llvm.experimental.noalias.scope.decl(metadata !17325)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.j, i8 0, i64 64, i1 false), !alias.scope !17326, !noalias !17327
  call void @llvm.experimental.noalias.scope.decl(metadata !17328)
  call void @llvm.experimental.noalias.scope.decl(metadata !17329)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !17330
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false), !alias.scope !17331, !noalias !17330
  call void @llvm.experimental.noalias.scope.decl(metadata !17332), !noalias !17333
  call void @llvm.experimental.noalias.scope.decl(metadata !17334), !noalias !17333
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !17330
  %i.jg = load i8, ptr %i.cm, align 16, !alias.scope !17335, !noalias !17336, !noundef !40 ; 4 uses
  %i.jh = icmp sgt i8 %i.jg, -1
  call void @llvm.assume(i1 %i.jh), !noalias !17333
  %i.ji = zext nneg i8 %i.jg to i128
  %i.jj = load i128, ptr %i.cn, align 16, !alias.scope !17337, !noalias !17336, !noundef !40
  %i.jk = shl i128 %i.jj, 10
  %i.jl = shl nuw nsw i128 %i.ji, 3
  %i.jm = or disjoint i128 %i.jk, %i.jl
  %i.jn = call i128 @llvm.bswap.i128(i128 %i.jm)  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !17338), !noalias !17333
  %i.jo = zext nneg i8 %i.jg to i64               ; 3 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.jo ; 2 uses
  store i8 -128, ptr %i.jp, align 1, !alias.scope !17339, !noalias !17336
  %i.jq = icmp eq i8 %i.jg, 127
  br i1 %i.jq, label %._crit_edge.thread.i.i59.i, label %._crit_edge.i.i47.i

._crit_edge.i.i47.i:                              ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i"
  %i.jr = getelementptr i8, ptr %i.jp, i64 1
  %i.js = xor i64 %i.jo, 127
  call void @llvm.memset.p0.i64(ptr align 1 %i.jr, i8 0, i64 %i.js, i1 false), !alias.scope !17339, !noalias !17336
  %i.jt = xor i64 %i.jo, 112
  %i.ju = icmp samesign ult i64 %i.jt, 16
  br i1 %i.ju, label %._crit_edge.thread.i.i59.i, label %bb.j

._crit_edge.thread.i.i59.i:                       ; preds = %._crit_edge.i.i47.i, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i"
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.cl, i64 noundef 1), !noalias !17340
end_hunk_3
