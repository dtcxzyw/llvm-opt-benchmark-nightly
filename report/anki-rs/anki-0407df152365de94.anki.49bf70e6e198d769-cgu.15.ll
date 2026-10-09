Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN6digest11FixedOutput14finalize_fixed17hd84f18d069fadc41E:bb.a

bb.d:                                             ; preds = %bb.c
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.am, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @618) #50, !noalias !15828
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i": ; preds = %bb.c
  %i.ap = call i32 @llvm.bswap.i32(i32 %i.ao)
  store i32 %i.ap, ptr %i.al, align 1, !alias.scope !15829, !noalias !15830
  %i.aq = load i64, ptr %i.ac, align 8, !alias.scope !15823, !noalias !15824, !noundef !6 ; 2 uses
  %i.ar = load i64, ptr %i.ad, align 8, !alias.scope !15823, !noalias !15824, !noundef !6
  %i.as = icmp ult i64 %i.aq, %i.ar
  br i1 %i.as, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i", label %"_ZN87_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..FixedOutput$GT$13finalize_into17h9143f6f919d1f660E.exit"

"_ZN87_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..FixedOutput$GT$13finalize_into17h9143f6f919d1f660E.exit": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17hd9cd7ab7dcffd770E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15809
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15804
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %0, ptr noundef nonnull align 1 dereferenceable(20) %i.g, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull align 1 %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !16145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16147
  call void @_ZN4hmac11get_der_key17he73918ba56005b2eE(ptr noalias noundef nonnull sret([64 x i8]) align 1 captures(address) dereferenceable(64) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !16148
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.y, align 16, !noalias !16147
  %wide.load66 = load <16 x i8>, ptr %i.ai, align 16, !noalias !16147
  %i.aj = xor <16 x i8> %wide.load, splat (i8 54)
  %i.ak = xor <16 x i8> %wide.load66, splat (i8 54)
  store <16 x i8> %i.aj, ptr %i.y, align 16, !noalias !16147
  store <16 x i8> %i.ak, ptr %i.ai, align 16, !noalias !16147
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.al, align 16, !noalias !16147
  %wide.load66.1 = load <16 x i8>, ptr %i.am, align 16, !noalias !16147
  %i.an = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.ao = xor <16 x i8> %wide.load66.1, splat (i8 54)
  store <16 x i8> %i.an, ptr %i.al, align 16, !noalias !16147
  store <16 x i8> %i.ao, ptr %i.am, align 16, !noalias !16147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef nonnull align 8 dereferenceable(32) @635, i64 32, i1 false), !noalias !16149
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !16150, !noalias !16151
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 0) 1), !noalias !16152
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load70 = load <16 x i8>, ptr %i.y, align 16, !noalias !16147
  %wide.load71 = load <16 x i8>, ptr %i.ap, align 16, !noalias !16147
  %i.aq = xor <16 x i8> %wide.load70, splat (i8 106)
  %i.ar = xor <16 x i8> %wide.load71, splat (i8 106)
  store <16 x i8> %i.aq, ptr %i.y, align 16, !noalias !16147
  store <16 x i8> %i.ar, ptr %i.ap, align 16, !noalias !16147
  %i.as = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %wide.load70.1 = load <16 x i8>, ptr %i.as, align 16, !noalias !16147
  %wide.load71.1 = load <16 x i8>, ptr %i.at, align 16, !noalias !16147
  %i.au = xor <16 x i8> %wide.load70.1, splat (i8 106)
  %i.av = xor <16 x i8> %wide.load71.1, splat (i8 106)
  store <16 x i8> %i.au, ptr %i.as, align 16, !noalias !16147
  store <16 x i8> %i.av, ptr %i.at, align 16, !noalias !16147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16147
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.w, ptr noundef nonnull align 8 dereferenceable(32) @635, i64 32, i1 false), !noalias !16149
  %.sroa.42.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 1, ptr %.sroa.42.0..sroa_idx.i3.i.i, align 8, !alias.scope !16153, !noalias !16154
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 0) 1), !noalias !16152
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.aw, ptr noundef nonnull align 8 dereferenceable(40) %i.w, i64 40, i1 false), !noalias !16146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !noalias !16146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16147
  %i.ax = getelementptr inbounds nuw i8, ptr %i.z, i64 80
  call void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h1cc16571f7c69110E"(ptr noalias noundef nonnull sret([65 x i8]) align 1 captures(address) dereferenceable(65) %i.ax), !noalias !16155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.z, ptr noundef nonnull align 8 dereferenceable(80) %i.v, i64 80, i1 false), !noalias !16146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ah, ptr noundef nonnull align 8 dereferenceable(152) %i.z, i64 152, i1 false), !noalias !16145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16146
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
  %scevgep96 = getelementptr inbounds nuw i8, ptr %i.n, i64 72 ; 2 uses
  %scevgep162 = getelementptr inbounds nuw i8, ptr %i.t, i64 72 ; 2 uses
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i"
  %.sroa.061.094.i = phi ptr [ %5, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.cq, %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i ] ; 4 uses
  %.sroa.562.093.i = phi i64 [ %6, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.cr, %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i ] ; 2 uses
  %.sroa.10.092.i = phi i32 [ 0, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.cs, %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i ]
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.562.093.i, i64 32) ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.061.094.i, i64 %.sroa.0.0.i.i.i.i ; 3 uses
  %i.cr = sub nuw i64 %.sroa.562.093.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %i.cs = add i32 %.sroa.10.092.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16156)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.061.094.i, i8 0, i64 %.sroa.0.0.i.i.i.i, i1 false), !alias.scope !16157, !noalias !16158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !16159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !16159
  call void @llvm.experimental.noalias.scope.decl(metadata !16160)
  call void @llvm.experimental.noalias.scope.decl(metadata !16161)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16162
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0b6a7abd591aeb2E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ah), !noalias !16163
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16164
  store i64 0, ptr %i.bb, align 8, !noalias !16164
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16164
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.az, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull %i.t, ptr noundef nonnull %i.bb), !noalias !16165
  call void @llvm.experimental.noalias.scope.decl(metadata !16166), !noalias !16167
  %.val.i.i.i.i.i = load i64, ptr %i.bc, align 8, !alias.scope !16166, !noalias !16168, !noundef !6 ; 10 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.bd, align 8, !alias.scope !16166, !noalias !16168, !noundef !6 ; 6 uses
  %i.ct = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !16169, !noalias !16168, !nonnull !6, !noundef !6 ; 6 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.be, align 8, !alias.scope !16169, !noalias !16168, !nonnull !6, !noundef !6 ; 6 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !16170 ; 3 uses
  %min.iters.check177 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck159

vector.memcheck159:                               ; preds = %.lr.ph.i.i.i.i.i
  %scevgep160 = getelementptr nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %scevgep161 = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %scevgep163 = getelementptr nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %scevgep164 = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %bound0165 = icmp ult ptr %scevgep160, %scevgep162
  %bound1166 = icmp ult ptr %i.bb, %scevgep161
  %found.conflict167 = and i1 %bound0165, %bound1166
  %bound0168 = icmp ult ptr %scevgep160, %scevgep164
  %bound1169 = icmp ult ptr %scevgep163, %scevgep161
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %found.conflict167, %found.conflict170
  %bound0172 = icmp ult ptr %i.bb, %scevgep164
  %bound1173 = icmp ult ptr %scevgep163, %scevgep162
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  br i1 %conflict.rdx175, label %scalar.ph176.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck159
  %n.vec179 = and i64 %i.ct, -4                   ; 3 uses
  %i.cu = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i.i, i64 0
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph178
  %index181 = phi i64 [ 0, %vector.ph178 ], [ %index.next186, %vector.body180 ] ; 2 uses
  %vec.phi182 = phi <2 x i64> [ %i.cu, %vector.ph178 ], [ %i.da, %vector.body180 ]
  %vec.phi183 = phi <2 x i64> [ zeroinitializer, %vector.ph178 ], [ %i.db, %vector.body180 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16171), !noalias !16167
  %i.cv = add i64 %index181, %.val.i.i.i.i.i      ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.cv ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 2
  %wide.load184 = load <2 x i8>, ptr %i.cw, align 1, !alias.scope !16172, !noalias !16173
  %wide.load185 = load <2 x i8>, ptr %i.cx, align 1, !alias.scope !16172, !noalias !16173
  %i.cy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.cv ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16174), !noalias !16167
  call void @llvm.experimental.noalias.scope.decl(metadata !16175), !noalias !16167
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 2
  store <2 x i8> %wide.load184, ptr %i.cy, align 1, !alias.scope !16176, !noalias !16177
  store <2 x i8> %wide.load185, ptr %i.cz, align 1, !alias.scope !16176, !noalias !16177
  %i.da = add <2 x i64> %vec.phi182, splat (i64 1) ; 2 uses
  %i.db = add <2 x i64> %vec.phi183, splat (i64 1) ; 2 uses
  %index.next186 = add nuw i64 %index181, 4       ; 2 uses
  %i.dc = icmp eq i64 %index.next186, %n.vec179
  br i1 %i.dc, label %middle.block187, label %vector.body180, !llvm.loop !15880

middle.block187:                                  ; preds = %vector.body180
  %bin.rdx188 = add <2 x i64> %i.db, %i.da
  %i.dd = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx188) ; 3 uses
  store i64 %i.dd, ptr %i.bb, align 8, !alias.scope !16178, !noalias !16179
  %cmp.n189 = icmp eq i64 %i.ct, %n.vec179
  br i1 %cmp.n189, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i", label %scalar.ph176.preheader

scalar.ph176.preheader:                           ; preds = %vector.memcheck159, %.lr.ph.i.i.i.i.i, %middle.block187
  %.ph192 = phi i64 [ %.promoted.i.i.i.i.i, %vector.memcheck159 ], [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dd, %middle.block187 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck159 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec179, %middle.block187 ] ; 4 uses
  %7 = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  %i.de = xor i64 %.sroa.0.011.i.i.i.i.i.ph, -1
  %i.df = add i64 %.val8.i.i.i.i.i, %i.de
  %xtraiter = and i64 %7, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph176.prol.loopexit, label %scalar.ph176.prol

scalar.ph176.prol:                                ; preds = %scalar.ph176.preheader
  %i.dg = or disjoint i64 %.sroa.0.011.i.i.i.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16171), !noalias !16167
  %i.dh = add i64 %.sroa.0.011.i.i.i.i.i.ph, %.val.i.i.i.i.i ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dh
  %.val1.i.i.i.i.i.i.i.prol = load i8, ptr %i.di, align 1, !alias.scope !16180, !noalias !16173, !noundef !6
  %i.dj = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dh
  call void @llvm.experimental.noalias.scope.decl(metadata !16174), !noalias !16167
  call void @llvm.experimental.noalias.scope.decl(metadata !16175), !noalias !16167
  store i8 %.val1.i.i.i.i.i.i.i.prol, ptr %i.dj, align 1, !alias.scope !16181, !noalias !16182
  %i.dk = add i64 %.ph192, 1                      ; 3 uses
  store i64 %i.dk, ptr %i.bb, align 8, !noalias !16170
  br label %scalar.ph176.prol.loopexit

scalar.ph176.prol.loopexit:                       ; preds = %scalar.ph176.prol, %scalar.ph176.preheader
  %.lcssa194.unr = phi i64 [ poison, %scalar.ph176.preheader ], [ %i.dk, %scalar.ph176.prol ]
  %.unr = phi i64 [ %.ph192, %scalar.ph176.preheader ], [ %i.dk, %scalar.ph176.prol ]
  %.sroa.0.011.i.i.i.i.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i.i.ph, %scalar.ph176.preheader ], [ %i.dg, %scalar.ph176.prol ]
  %i.dl = icmp eq i64 %i.df, %.val.i.i.i.i.i
  br i1 %i.dl, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i", label %scalar.ph176.preheader.new

scalar.ph176.preheader.new:                       ; preds = %scalar.ph176.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i.i.i.i
  br label %scalar.ph176

scalar.ph176:                                     ; preds = %scalar.ph176, %scalar.ph176.preheader.new
  %i.dm = phi i64 [ %.unr, %scalar.ph176.preheader.new ], [ %i.du, %scalar.ph176 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %.sroa.0.011.i.i.i.i.i.unr, %scalar.ph176.preheader.new ], [ %i.dr, %scalar.ph176 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16171), !noalias !16167
  %i.dn = add i64 %.sroa.0.011.i.i.i.i.i, %.val.i.i.i.i.i ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dn
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.do, align 1, !alias.scope !16180, !noalias !16173, !noundef !6
  %i.dp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dn
  call void @llvm.experimental.noalias.scope.decl(metadata !16174), !noalias !16167
  call void @llvm.experimental.noalias.scope.decl(metadata !16175), !noalias !16167
  store i8 %.val1.i.i.i.i.i.i.i, ptr %i.dp, align 1, !alias.scope !16181, !noalias !16182
  %i.dq = add i64 %i.dm, 1
  store i64 %i.dq, ptr %i.bb, align 8, !noalias !16170
  %i.dr = add nuw i64 %.sroa.0.011.i.i.i.i.i, 2   ; 2 uses
  %.reass = add i64 %.sroa.0.011.i.i.i.i.i, %invariant.op ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.reass
  %.val1.i.i.i.i.i.i.i.1 = load i8, ptr %i.ds, align 1, !alias.scope !16180, !noalias !16183, !noundef !6
  %i.dt = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.reass
  call void @llvm.experimental.noalias.scope.decl(metadata !16184), !noalias !16167
  call void @llvm.experimental.noalias.scope.decl(metadata !16185), !noalias !16167
  store i8 %.val1.i.i.i.i.i.i.i.1, ptr %i.dt, align 1, !alias.scope !16186, !noalias !16182
  %i.du = add i64 %i.dm, 2                        ; 3 uses
  store i64 %i.du, ptr %i.bb, align 8, !noalias !16187
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.dr, %i.ct
  br i1 %exitcond.not.i.i.i.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i", label %scalar.ph176, !llvm.loop !15884

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i.i": ; preds = %._crit_edge.i
  %.pr.i.i.i.i = load i64, ptr %i.bb, align 8, !noalias !16164
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i": ; preds = %scalar.ph176.prol.loopexit, %scalar.ph176, %middle.block187, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i.i"
  %i.dv = phi i64 [ %.pr.i.i.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i.i" ], [ %i.dd, %middle.block187 ], [ %.lcssa194.unr, %scalar.ph176.prol.loopexit ], [ %i.du, %scalar.ph176 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16164
  %i.dw = icmp ult i64 %i.dv, 64
  br i1 %i.dw, label %bb.a, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit.i", !prof !14

bb.a:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.dv, i64 noundef 64) #50, !noalias !16165
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bf, ptr noundef nonnull align 8 dereferenceable(64) %i.t, i64 64, i1 false), !noalias !16188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16164
  %i.dx = load i8, ptr %i.ba, align 8, !alias.scope !16161, !noalias !16189, !noundef !6 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.af, ptr noundef nonnull align 8 dereferenceable(80) %i.u, i64 80, i1 false), !noalias !16188
  store i8 %i.dx, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !alias.scope !16160, !noalias !16188
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16162
  call void @llvm.experimental.noalias.scope.decl(metadata !16190)
  call void @llvm.experimental.noalias.scope.decl(metadata !16191), !noalias !16156
  call void @llvm.experimental.noalias.scope.decl(metadata !16192), !noalias !16156
  %i.dy = zext nneg i8 %i.dx to i64               ; 4 uses
  %i.dz = icmp ult i8 %i.dx, 64
  call void @llvm.assume(i1 %i.dz), !noalias !16156
  %i.ea = sub nuw nsw i64 64, %i.dy               ; 4 uses
  %i.eb = icmp ult i64 %3, %i.ea
  br i1 %i.eb, label %bb.f, label %bb.b

bb.b:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit.i"
  %i.ec = icmp eq i8 %i.dx, 0
  br i1 %i.ec, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i", %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %3, %bb.b ], [ %i.ei, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %2, %bb.b ], [ %i.ej, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 2 uses
  %i.ed = lshr i64 %.sroa.7.0.i.i.i, 6            ; 3 uses
  %i.ee = and i64 %.sroa.7.0.i.i.i, -64
  %i.ef = and i64 %.sroa.7.0.i.i.i, 63            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.ee
  %i.eh = icmp eq i64 %i.ed, 0
  br i1 %i.eh, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i": ; preds = %bb.b
  %i.ei = sub nuw i64 %3, %i.ea
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 %i.ea
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ek, ptr nonnull readonly align 1 %2, i64 %i.ea, i1 false), !alias.scope !16193, !noalias !16194
  %i.el = load i64, ptr %i.bg, align 8, !alias.scope !16195, !noalias !16196, !noundef !6
  %i.em = add i64 %i.el, 1
  store i64 %i.em, ptr %i.bg, align 8, !alias.scope !16195, !noalias !16196
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bf, i64 noundef range(i64 1, 0) 1), !noalias !16197
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.en = load i64, ptr %i.bg, align 8, !alias.scope !16198, !noalias !16199, !noundef !6
  %i.eo = add i64 %i.en, %i.ed
  store i64 %i.eo, ptr %i.bg, align 8, !alias.scope !16198, !noalias !16199
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.ed), !noalias !16200
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.bf, ptr nonnull readonly align 1 %i.eg, i64 %i.ef, i1 false), !alias.scope !16201, !noalias !16202
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i"

bb.f:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit.i"
  %i.ep = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.dy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ep, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !alias.scope !16203, !noalias !16204
  %i.eq = add nuw nsw i64 %3, %i.dy
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i": ; preds = %bb.f, %bb.e
  %storemerge.in.i.i.i = phi i64 [ %i.ef, %bb.e ], [ %i.eq, %bb.f ] ; 8 uses
  %storemerge.i.i.i = trunc nuw nsw i64 %storemerge.in.i.i.i to i8
  store i8 %storemerge.i.i.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !alias.scope !16205, !noalias !16206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !16159
  %i.er = call i32 @llvm.bswap.i32(i32 %i.cs)     ; 2 uses
  store i32 %i.er, ptr %i.ae, align 4, !noalias !16159
  call void @llvm.experimental.noalias.scope.decl(metadata !16207)
  call void @llvm.experimental.noalias.scope.decl(metadata !16208), !noalias !16156
  call void @llvm.experimental.noalias.scope.decl(metadata !16209), !noalias !16156
  %i.es = icmp samesign ult i64 %storemerge.in.i.i.i, 64
  call void @llvm.assume(i1 %i.es), !noalias !16156
  %i.et = icmp samesign ult i64 %storemerge.in.i.i.i, 60
  br i1 %i.et, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i"
  %i.eu = sub nuw nsw i64 64, %storemerge.in.i.i.i ; 2 uses
  %i.ev = add nsw i64 %storemerge.in.i.i.i, -60   ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.eu
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bf, i64 %storemerge.in.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ex, ptr nonnull readonly align 4 %i.ae, i64 %i.eu, i1 false), !alias.scope !16210, !noalias !16211
  %i.ey = load i64, ptr %i.bg, align 8, !alias.scope !16212, !noalias !16213, !noundef !6
  %i.ez = add i64 %i.ey, 1
  store i64 %i.ez, ptr %i.bg, align 8, !alias.scope !16212, !noalias !16213
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bf, i64 noundef range(i64 1, 0) 1), !noalias !16214
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.bf, ptr nonnull readonly align 1 %i.ew, i64 %i.ev, i1 false), !alias.scope !16215, !noalias !16216
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i"

bb.g:                                             ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit.i"
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bf, i64 %storemerge.in.i.i.i
  store i32 %i.er, ptr %i.fa, align 1, !alias.scope !16217, !noalias !16218
  %i.fb = add nuw nsw i64 %storemerge.in.i.i.i, 4
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i": ; preds = %bb.g, %.thread.i
  %storemerge.in.i.i11.i = phi i64 [ %i.ev, %.thread.i ], [ %i.fb, %bb.g ]
  %storemerge.i.i12.i = trunc nuw nsw i64 %storemerge.in.i.i11.i to i8
  store i8 %storemerge.i.i12.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 8, !alias.scope !16219, !noalias !16220
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !16159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !16159
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.q, ptr noundef nonnull align 8 dereferenceable(152) %i.af, i64 152, i1 false), !noalias !16222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16221
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.r, i8 0, i64 32, i1 false), !alias.scope !16223, !noalias !16221
  call void @llvm.experimental.noalias.scope.decl(metadata !16224), !noalias !16156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16225
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.p, i8 0, i64 32, i1 false), !alias.scope !16226, !noalias !16225
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.q, ptr noalias noundef nonnull align 1 dereferenceable(65) %i.bh, ptr noalias noundef align 1 dereferenceable(32) %i.p), !noalias !16227
  call void @llvm.experimental.noalias.scope.decl(metadata !16228), !noalias !16156
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bh, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.p, i64 32, i1 false), !alias.scope !16229, !noalias !16230
  store i8 32, ptr %i.bi, align 8, !alias.scope !16231, !noalias !16232
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E"(ptr noalias noundef align 8 dereferenceable(40) %i.bj, ptr noalias noundef nonnull align 1 dereferenceable(65) %i.bh, ptr noalias noundef nonnull align 1 dereferenceable(32) %i.r), !noalias !16233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ad, ptr noundef nonnull align 1 dereferenceable(32) %i.r, i64 32, i1 false), !noalias !16234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16221
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16159
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h92fc9665f0656228E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ab, ptr noundef nonnull align 1 %.sroa.061.094.i, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.bk)
  call void @llvm.experimental.noalias.scope.decl(metadata !16235)
  %.val.i.i = load i64, ptr %i.bl, align 8, !alias.scope !16235, !noalias !16145, !noundef !6 ; 11 uses
  %.val8.i.i = load i64, ptr %i.bm, align 8, !alias.scope !16235, !noalias !16145, !noundef !6 ; 6 uses
  %i.fc = sub i64 %.val8.i.i, %.val.i.i           ; 8 uses
  %.not.i14.i = icmp eq i64 %.val8.i.i, %.val.i.i
  br i1 %.not.i14.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %iter.check145

iter.check145:                                    ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i"
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !16236, !noalias !16145, !nonnull !6, !noundef !6 ; 7 uses
  %.val.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !16236, !noalias !16145, !nonnull !6, !noundef !6 ; 7 uses
  %min.iters.check130 = icmp ult i64 %i.fc, 4
  br i1 %min.iters.check130, label %vec.epilog.scalar.ph146.preheader, label %vector.memcheck121

vector.memcheck121:                               ; preds = %iter.check145
  %scevgep122 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep123 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val8.i.i
  %scevgep124 = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep125 = getelementptr i8, ptr %.val.i.i.i, i64 %.val8.i.i
  %bound0126 = icmp ult ptr %scevgep122, %scevgep125
  %bound1127 = icmp ult ptr %scevgep124, %scevgep123
  %found.conflict128 = and i1 %bound0126, %bound1127
  br i1 %found.conflict128, label %vec.epilog.scalar.ph146.preheader, label %vector.main.loop.iter.check131

vector.main.loop.iter.check131:                   ; preds = %vector.memcheck121
  %min.iters.check132 = icmp ult i64 %i.fc, 32
  br i1 %min.iters.check132, label %vec.epilog.ph149, label %vector.ph133

vector.ph133:                                     ; preds = %vector.main.loop.iter.check131
  %i.fd = and i64 %i.fc, 28
  %n.vec134 = and i64 %i.fc, -32                  ; 4 uses
  br label %vector.body135

vector.body135:                                   ; preds = %vector.ph133, %vector.body135
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next141, %vector.body135 ] ; 2 uses
  %i.fe = add i64 %index136, %.val.i.i            ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.fe ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fe ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %wide.load137 = load <16 x i8>, ptr %i.fg, align 1, !alias.scope !16237, !noalias !16235
  %wide.load138 = load <16 x i8>, ptr %i.fh, align 1, !alias.scope !16237, !noalias !16235
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ff, i64 16 ; 2 uses
  %wide.load139 = load <16 x i8>, ptr %i.ff, align 1, !alias.scope !16238, !noalias !16239
  %wide.load140 = load <16 x i8>, ptr %i.fi, align 1, !alias.scope !16238, !noalias !16239
  %i.fj = xor <16 x i8> %wide.load139, %wide.load137
  %i.fk = xor <16 x i8> %wide.load140, %wide.load138
  store <16 x i8> %i.fj, ptr %i.ff, align 1, !alias.scope !16238, !noalias !16239
  store <16 x i8> %i.fk, ptr %i.fi, align 1, !alias.scope !16238, !noalias !16239
  %index.next141 = add nuw i64 %index136, 32      ; 2 uses
  %i.fl = icmp eq i64 %index.next141, %n.vec134
  br i1 %i.fl, label %middle.block142, label %vector.body135, !llvm.loop !15980

middle.block142:                                  ; preds = %vector.body135
  %cmp.n143 = icmp eq i64 %i.fc, %n.vec134
  br i1 %cmp.n143, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.iter.check147

vec.epilog.iter.check147:                         ; preds = %middle.block142
  %min.epilog.iters.check148 = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check148, label %vec.epilog.scalar.ph146.preheader, label %vec.epilog.ph149, !prof !56

vec.epilog.ph149:                                 ; preds = %vector.main.loop.iter.check131, %vec.epilog.iter.check147
  %vec.epilog.resume.val144 = phi i64 [ %n.vec134, %vec.epilog.iter.check147 ], [ 0, %vector.main.loop.iter.check131 ]
  %n.vec150 = and i64 %i.fc, -4                   ; 3 uses
  br label %vec.epilog.vector.body151

vec.epilog.vector.body151:                        ; preds = %vec.epilog.vector.body151, %vec.epilog.ph149
  %index152 = phi i64 [ %vec.epilog.resume.val144, %vec.epilog.ph149 ], [ %index.next155, %vec.epilog.vector.body151 ] ; 2 uses
  %i.fm = add i64 %index152, %.val.i.i            ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.fm ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fm
  %wide.load153 = load <4 x i8>, ptr %i.fo, align 1, !alias.scope !16237, !noalias !16235
  %wide.load154 = load <4 x i8>, ptr %i.fn, align 1, !alias.scope !16238, !noalias !16239
  %i.fp = xor <4 x i8> %wide.load154, %wide.load153
  store <4 x i8> %i.fp, ptr %i.fn, align 1, !alias.scope !16238, !noalias !16239
  %index.next155 = add nuw i64 %index152, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next155, %n.vec150
  br i1 %i.fq, label %vec.epilog.middle.block156, label %vec.epilog.vector.body151, !llvm.loop !15981

vec.epilog.middle.block156:                       ; preds = %vec.epilog.vector.body151
  %cmp.n157 = icmp eq i64 %i.fc, %n.vec150
  br i1 %cmp.n157, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph146.preheader

vec.epilog.scalar.ph146.preheader:                ; preds = %iter.check145, %vector.memcheck121, %vec.epilog.iter.check147, %vec.epilog.middle.block156
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check145 ], [ 0, %vector.memcheck121 ], [ %n.vec134, %vec.epilog.iter.check147 ], [ %n.vec150, %vec.epilog.middle.block156 ] ; 4 uses
  %8 = sub i64 %.val8.i.i, %.val.i.i
  %i.fr = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.fs = add i64 %.val8.i.i, %i.fr
  %xtraiter209 = and i64 %8, 1
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %vec.epilog.scalar.ph146.prol.loopexit, label %vec.epilog.scalar.ph146.prol

vec.epilog.scalar.ph146.prol:                     ; preds = %vec.epilog.scalar.ph146.preheader
  %i.ft = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.fu = add i64 %.sroa.0.010.i.i.ph, %.val.i.i  ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fu
  %.val9.i.i.prol = load i8, ptr %i.fw, align 1, !noalias !16235, !noundef !6
  %i.fx = load i8, ptr %i.fv, align 1, !alias.scope !16240, !noalias !16235, !noundef !6
  %i.fy = xor i8 %i.fx, %.val9.i.i.prol
  store i8 %i.fy, ptr %i.fv, align 1, !alias.scope !16240, !noalias !16235
  br label %vec.epilog.scalar.ph146.prol.loopexit

vec.epilog.scalar.ph146.prol.loopexit:            ; preds = %vec.epilog.scalar.ph146.prol, %vec.epilog.scalar.ph146.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph146.preheader ], [ %i.ft, %vec.epilog.scalar.ph146.prol ]
  %i.fz = icmp eq i64 %i.fs, %.val.i.i
  br i1 %i.fz, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph146.preheader.new

vec.epilog.scalar.ph146.preheader.new:            ; preds = %vec.epilog.scalar.ph146.prol.loopexit
  %invariant.op232 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph146

vec.epilog.scalar.ph146:                          ; preds = %vec.epilog.scalar.ph146, %vec.epilog.scalar.ph146.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph146.preheader.new ], [ %i.gf, %vec.epilog.scalar.ph146 ] ; 3 uses
  %i.ga = add i64 %.sroa.0.010.i.i, %.val.i.i     ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ga
  %.val9.i.i = load i8, ptr %i.gc, align 1, !noalias !16235, !noundef !6
  %i.gd = load i8, ptr %i.gb, align 1, !alias.scope !16240, !noalias !16235, !noundef !6
  %i.ge = xor i8 %i.gd, %.val9.i.i
  store i8 %i.ge, ptr %i.gb, align 1, !alias.scope !16240, !noalias !16235
  %i.gf = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass233 = add i64 %.sroa.0.010.i.i, %invariant.op232 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass233 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass233
  %.val9.i.i.1 = load i8, ptr %i.gh, align 1, !noalias !16235, !noundef !6
  %i.gi = load i8, ptr %i.gg, align 1, !alias.scope !16240, !noalias !16235, !noundef !6
  %i.gj = xor i8 %i.gi, %.val9.i.i.1
  store i8 %i.gj, ptr %i.gg, align 1, !alias.scope !16240, !noalias !16235
  %exitcond.not.i.i.1 = icmp eq i64 %i.gf, %i.fc
  br i1 %exitcond.not.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph146, !llvm.loop !15982

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i": ; preds = %vec.epilog.scalar.ph146.prol.loopexit, %vec.epilog.scalar.ph146, %middle.block142, %vec.epilog.middle.block156, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit13.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !16159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 1 dereferenceable(32) %i.ad, i64 32, i1 false), !noalias !16159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !16159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !16159
  br i1 %i.bo, label %.lr.ph91.i, label %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i

.lr.ph91.i:                                       ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i"
  %.sroa.05.1.i90.i = phi i32 [ %.sroa.05.1.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i" ], [ 2, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !16159
  call void @llvm.experimental.noalias.scope.decl(metadata !16241)
  call void @llvm.experimental.noalias.scope.decl(metadata !16242)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16243
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb0b6a7abd591aeb2E"(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ah), !noalias !16241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16244
  store i64 0, ptr %i.bp, align 8, !noalias !16244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16244
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.az, ptr noundef nonnull readonly %i.ba, ptr noundef nonnull %i.n, ptr noundef nonnull %i.bp), !noalias !16245
  call void @llvm.experimental.noalias.scope.decl(metadata !16246)
  %.val.i.i.i.i15.i = load i64, ptr %i.bq, align 8, !alias.scope !16246, !noalias !16247, !noundef !6 ; 10 uses
  %.val8.i.i.i.i16.i = load i64, ptr %i.br, align 8, !alias.scope !16246, !noalias !16247, !noundef !6 ; 6 uses
  %i.gk = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i ; 4 uses
  %.not.i.i.i.i17.i = icmp eq i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i
  br i1 %.not.i.i.i.i17.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i27.i", label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph91.i
  %.val.i.i.i.i.i19.i = load ptr, ptr %i.m, align 8, !alias.scope !16248, !noalias !16247, !nonnull !6, !noundef !6 ; 6 uses
  %.val1.i.i.i.i.i20.i = load ptr, ptr %i.bs, align 8, !alias.scope !16248, !noalias !16247, !nonnull !6, !noundef !6 ; 6 uses
  %.promoted.i.i.i.i21.i = load i64, ptr %i.bp, align 8, !noalias !16249 ; 3 uses
  %min.iters.check109 = icmp ult i64 %i.gk, 8
  br i1 %min.iters.check109, label %scalar.ph.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph.i.i.i.i18.i
  %scevgep94 = getelementptr nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %.val.i.i.i.i15.i ; 2 uses
  %scevgep95 = getelementptr i8, ptr %.val1.i.i.i.i.i20.i, i64 %.val8.i.i.i.i16.i ; 2 uses
  %scevgep97 = getelementptr nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %.val.i.i.i.i15.i ; 2 uses
  %scevgep98 = getelementptr i8, ptr %.val.i.i.i.i.i19.i, i64 %.val8.i.i.i.i16.i ; 2 uses
  %bound099 = icmp ult ptr %scevgep94, %scevgep96
  %bound1100 = icmp ult ptr %i.bp, %scevgep95
  %found.conflict101 = and i1 %bound099, %bound1100
  %bound0102 = icmp ult ptr %scevgep94, %scevgep98
  %bound1103 = icmp ult ptr %scevgep97, %scevgep95
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx = or i1 %found.conflict101, %found.conflict104
  %bound0105 = icmp ult ptr %i.bp, %scevgep98
  %bound1106 = icmp ult ptr %scevgep97, %scevgep96
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %conflict.rdx, %found.conflict107
  br i1 %conflict.rdx108, label %scalar.ph.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck93
  %n.vec111 = and i64 %i.gk, -4                   ; 3 uses
  %i.gl = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i21.i, i64 0
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next117, %vector.body112 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.gl, %vector.ph110 ], [ %i.gr, %vector.body112 ]
  %vec.phi114 = phi <2 x i64> [ zeroinitializer, %vector.ph110 ], [ %i.gs, %vector.body112 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16250)
  %i.gm = add i64 %index113, %.val.i.i.i.i15.i    ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.gm ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 2
  %wide.load115 = load <2 x i8>, ptr %i.gn, align 1, !alias.scope !16251, !noalias !16252
  %wide.load116 = load <2 x i8>, ptr %i.go, align 1, !alias.scope !16251, !noalias !16252
  %i.gp = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.gm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16253)
  call void @llvm.experimental.noalias.scope.decl(metadata !16254)
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 2
  store <2 x i8> %wide.load115, ptr %i.gp, align 1, !alias.scope !16255, !noalias !16256
  store <2 x i8> %wide.load116, ptr %i.gq, align 1, !alias.scope !16255, !noalias !16256
  %i.gr = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.gs = add <2 x i64> %vec.phi114, splat (i64 1) ; 2 uses
  %index.next117 = add nuw i64 %index113, 4       ; 2 uses
  %i.gt = icmp eq i64 %index.next117, %n.vec111
  br i1 %i.gt, label %middle.block118, label %vector.body112, !llvm.loop !16006

middle.block118:                                  ; preds = %vector.body112
  %bin.rdx = add <2 x i64> %i.gs, %i.gr
  %i.gu = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  store i64 %i.gu, ptr %i.bp, align 8, !alias.scope !16257, !noalias !16258
  %cmp.n119 = icmp eq i64 %i.gk, %n.vec111
  br i1 %cmp.n119, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck93, %.lr.ph.i.i.i.i18.i, %middle.block118
  %.ph = phi i64 [ %.promoted.i.i.i.i21.i, %vector.memcheck93 ], [ %.promoted.i.i.i.i21.i, %.lr.ph.i.i.i.i18.i ], [ %i.gu, %middle.block118 ] ; 2 uses
  %.sroa.0.011.i.i.i.i22.i.ph = phi i64 [ 0, %vector.memcheck93 ], [ 0, %.lr.ph.i.i.i.i18.i ], [ %n.vec111, %middle.block118 ] ; 4 uses
  %9 = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i
  %i.gv = xor i64 %.sroa.0.011.i.i.i.i22.i.ph, -1
  %i.gw = add i64 %.val8.i.i.i.i16.i, %i.gv
  %xtraiter211 = and i64 %9, 1
  %lcmp.mod212.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod212.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.gx = or disjoint i64 %.sroa.0.011.i.i.i.i22.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16250)
  %i.gy = add i64 %.sroa.0.011.i.i.i.i22.i.ph, %.val.i.i.i.i15.i ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.gy
  %.val1.i.i.i.i.i.i23.i.prol = load i8, ptr %i.gz, align 1, !alias.scope !16259, !noalias !16252, !noundef !6
  %i.ha = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.gy
  call void @llvm.experimental.noalias.scope.decl(metadata !16253)
  call void @llvm.experimental.noalias.scope.decl(metadata !16254)
  store i8 %.val1.i.i.i.i.i.i23.i.prol, ptr %i.ha, align 1, !alias.scope !16260, !noalias !16261
  %i.hb = add i64 %.ph, 1                         ; 3 uses
  store i64 %i.hb, ptr %i.bp, align 8, !noalias !16249
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa197.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.hb, %scalar.ph.prol ]
  %.unr213 = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.hb, %scalar.ph.prol ]
  %.sroa.0.011.i.i.i.i22.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i22.i.ph, %scalar.ph.preheader ], [ %i.gx, %scalar.ph.prol ]
  %i.hc = icmp eq i64 %i.gw, %.val.i.i.i.i15.i
  br i1 %i.hc, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i", label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op234 = add i64 1, %.val.i.i.i.i15.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.hd = phi i64 [ %.unr213, %scalar.ph.preheader.new ], [ %i.hl, %scalar.ph ] ; 2 uses
  %.sroa.0.011.i.i.i.i22.i = phi i64 [ %.sroa.0.011.i.i.i.i22.i.unr, %scalar.ph.preheader.new ], [ %i.hi, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16250)
  %i.he = add i64 %.sroa.0.011.i.i.i.i22.i, %.val.i.i.i.i15.i ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.he
  %.val1.i.i.i.i.i.i23.i = load i8, ptr %i.hf, align 1, !alias.scope !16259, !noalias !16252, !noundef !6
  %i.hg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.he
  call void @llvm.experimental.noalias.scope.decl(metadata !16253)
  call void @llvm.experimental.noalias.scope.decl(metadata !16254)
  store i8 %.val1.i.i.i.i.i.i23.i, ptr %i.hg, align 1, !alias.scope !16260, !noalias !16261
  %i.hh = add i64 %i.hd, 1
  store i64 %i.hh, ptr %i.bp, align 8, !noalias !16249
  %i.hi = add nuw i64 %.sroa.0.011.i.i.i.i22.i, 2 ; 2 uses
  %.reass235 = add i64 %.sroa.0.011.i.i.i.i22.i, %invariant.op234 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %.reass235
  %.val1.i.i.i.i.i.i23.i.1 = load i8, ptr %i.hj, align 1, !alias.scope !16259, !noalias !16262, !noundef !6
  %i.hk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %.reass235
  call void @llvm.experimental.noalias.scope.decl(metadata !16263)
  call void @llvm.experimental.noalias.scope.decl(metadata !16264)
  store i8 %.val1.i.i.i.i.i.i23.i.1, ptr %i.hk, align 1, !alias.scope !16265, !noalias !16261
  %i.hl = add i64 %i.hd, 2                        ; 3 uses
  store i64 %i.hl, ptr %i.bp, align 8, !noalias !16266
  %exitcond.not.i.i.i.i24.i.1 = icmp eq i64 %i.hi, %i.gk
  br i1 %exitcond.not.i.i.i.i24.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i", label %scalar.ph, !llvm.loop !16010

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i27.i": ; preds = %.lr.ph91.i
  %.pr.i.i.i28.i = load i64, ptr %i.bp, align 8, !noalias !16244
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block118, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i27.i"
  %i.hm = phi i64 [ %.pr.i.i.i28.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exitthread-pre-split.i.i.i27.i" ], [ %i.gu, %middle.block118 ], [ %.lcssa197.unr, %scalar.ph.prol.loopexit ], [ %i.hl, %scalar.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16244
  %i.hn = icmp ult i64 %i.hm, 64
  br i1 %i.hn, label %bb.h, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit29.i", !prof !14

bb.h:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.hm, i64 noundef 64) #50, !noalias !16245
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit29.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h51e7d02d52076d2fE.exit.i.i.i25.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bt, ptr noundef nonnull align 8 dereferenceable(64) %i.n, i64 64, i1 false), !noalias !16267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16244
  %i.ho = load i8, ptr %i.ba, align 8, !alias.scope !16242, !noalias !16268, !noundef !6 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.ac, ptr noundef nonnull align 8 dereferenceable(80) %i.o, i64 80, i1 false), !noalias !16267
  store i8 %i.ho, ptr %.sroa.4.0..sroa_idx.i26.i, align 8, !alias.scope !16241, !noalias !16267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16243
  call void @llvm.experimental.noalias.scope.decl(metadata !16269)
  call void @llvm.experimental.noalias.scope.decl(metadata !16270)
  call void @llvm.experimental.noalias.scope.decl(metadata !16271)
  %i.hp = zext nneg i8 %i.ho to i64               ; 5 uses
  %i.hq = icmp ult i8 %i.ho, 64
  call void @llvm.assume(i1 %i.hq)
  %i.hr = icmp samesign ult i8 %i.ho, 32
  br i1 %i.hr, label %bb.i, label %.thread75.i

.thread75.i:                                      ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit29.i"
  %i.hs = sub nuw nsw i64 64, %i.hp               ; 2 uses
  %i.ht = add nsw i64 %i.hp, -32                  ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.hs
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hv, ptr nonnull readonly align 1 %i.ag, i64 %i.hs, i1 false), !alias.scope !16272, !noalias !16273
  %i.hw = load i64, ptr %i.bu, align 8, !alias.scope !16274, !noalias !16275, !noundef !6
  %i.hx = add i64 %i.hw, 1
  store i64 %i.hx, ptr %i.bu, align 8, !alias.scope !16274, !noalias !16275
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bt, i64 noundef range(i64 1, 0) 1), !noalias !16276
  %i.hy = and i64 %i.ht, -64
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.hy
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(65) %i.bt, ptr nonnull readonly align 1 %i.hz, i64 %i.ht, i1 false), !alias.scope !16277, !noalias !16278
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i"

bb.i:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he2d19d456669f3c0E.exit29.i"
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.hp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ia, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.ag, i64 32, i1 false), !alias.scope !16279, !noalias !16280
  %i.ib = or disjoint i64 %i.hp, 32
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i": ; preds = %bb.i, %.thread75.i
  %storemerge.in.i.i33.i = phi i64 [ %i.ht, %.thread75.i ], [ %i.ib, %bb.i ]
  %storemerge.i.i34.i = trunc nuw nsw i64 %storemerge.in.i.i33.i to i8
  store i8 %storemerge.i.i34.i, ptr %.sroa.4.0..sroa_idx.i26.i, align 8, !alias.scope !16281, !noalias !16282
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull align 8 dereferenceable(152) %i.ac, i64 152, i1 false), !noalias !16145
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, i8 0, i64 32, i1 false), !alias.scope !16284, !noalias !16283
  call void @llvm.experimental.noalias.scope.decl(metadata !16285)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, i8 0, i64 32, i1 false), !alias.scope !16286, !noalias !16287
  call void @llvm.experimental.noalias.scope.decl(metadata !16288)
  call void @llvm.experimental.noalias.scope.decl(metadata !16289)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16290
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, i8 0, i64 32, i1 false), !alias.scope !16291, !noalias !16290
  call void @llvm.experimental.noalias.scope.decl(metadata !16292), !noalias !16293
  call void @llvm.experimental.noalias.scope.decl(metadata !16294), !noalias !16293
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16290
  %i.ic = load i8, ptr %i.bw, align 8, !alias.scope !16295, !noalias !16296, !noundef !6 ; 3 uses
  %i.id = zext nneg i8 %i.ic to i64               ; 4 uses
  %i.ie = icmp ult i8 %i.ic, 64
  call void @llvm.assume(i1 %i.ie), !noalias !16293
  %i.if = load i64, ptr %i.bx, align 8, !alias.scope !16297, !noalias !16298, !noundef !6
  %i.ig = shl i64 %i.if, 9
  %i.ih = shl nuw nsw i64 %i.id, 3
  %i.ii = or disjoint i64 %i.ig, %i.ih
  %i.ij = call i64 @llvm.bswap.i64(i64 %i.ii)     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16299), !noalias !16293
  %i.ik = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.id ; 2 uses
  store i8 -128, ptr %i.ik, align 1, !alias.scope !16300, !noalias !16301
  %i.il = icmp eq i8 %i.ic, 63
  br i1 %i.il, label %._crit_edge.thread.i.i59.i, label %._crit_edge.i.i47.i

._crit_edge.i.i47.i:                              ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i"
  %i.im = getelementptr i8, ptr %i.ik, i64 1
  %i.in = xor i64 %i.id, 63
  call void @llvm.memset.p0.i64(ptr align 1 %i.im, i8 0, i64 %i.in, i1 false), !alias.scope !16300, !noalias !16301
  %i.io = xor i64 %i.id, 56
  %i.ip = icmp samesign ult i64 %i.io, 8
  br i1 %i.ip, label %._crit_edge.thread.i.i59.i, label %bb.j

._crit_edge.thread.i.i59.i:                       ; preds = %._crit_edge.i.i47.i, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17heae851a463898119E.exit35.i"
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bv, i64 noundef 1), !noalias !16302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16303
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 56, i1 false), !alias.scope !16304, !noalias !16305
  store i64 %i.ij, ptr %i.bz, align 1, !alias.scope !16306, !noalias !16307
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(64) %i.b, i64 noundef 1), !noalias !16302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16303
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i48.i"

bb.j:                                             ; preds = %._crit_edge.i.i47.i
  store i64 %i.ij, ptr %i.by, align 8, !alias.scope !16308, !noalias !16309
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bv, i64 noundef 1), !noalias !16302
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i48.i"

"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i48.i": ; preds = %bb.j, %._crit_edge.thread.i.i59.i
  store i8 0, ptr %i.bw, align 8, !alias.scope !16300, !noalias !16301
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16310
  store ptr %i.ca, ptr %i.a, align 8, !noalias !16311
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i49.i, align 8, !noalias !16311
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i50.i, align 8, !noalias !16311
  store i64 32, ptr %.sroa.6.0..sroa_idx.i.i51.i, align 8, !noalias !16311
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i52.i, align 8, !noalias !16311
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h18877e97783a925dE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull %i.bx), !noalias !16312
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16310
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16313
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !16313
  %i.iq = load i64, ptr %i.cb, align 8, !alias.scope !16314, !noalias !16315, !noundef !6 ; 2 uses
  %i.ir = load i64, ptr %i.cc, align 8, !alias.scope !16314, !noalias !16315, !noundef !6
  %i.is = icmp ult i64 %i.iq, %i.ir
  br i1 %i.is, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i54.i", label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i54.i": ; preds = %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i48.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i"
  %i.it = phi i64 [ %i.jb, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i" ], [ %i.iq, %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i48.i" ] ; 3 uses
  %i.iu = add nuw i64 %i.it, 1
  store i64 %i.iu, ptr %i.cb, align 8, !alias.scope !16314, !noalias !16315
  %i.iv = call { ptr, i64 } @"_ZN101_$LT$core..slice..iter..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17hc722127bb720d610E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef %i.it), !noalias !16316 ; 2 uses
  %i.iw = extractvalue { ptr, i64 } %i.iv, 0      ; 2 uses
  %.not.i.i55.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i55.i, label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i54.i"
  %i.ix = extractvalue { ptr, i64 } %i.iv, 1      ; 2 uses
  %.val.i.i.i56.i = load ptr, ptr %i.cd, align 8, !alias.scope !16314, !noalias !16315, !nonnull !6, !noundef !6
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i56.i, i64 %i.it
  %i.iz = load i32, ptr %i.iy, align 4, !noalias !16317, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !16318), !noalias !16293
  call void @llvm.experimental.noalias.scope.decl(metadata !16319), !noalias !16293
  %.not.i.i.i57.i = icmp eq i64 %i.ix, 4
  br i1 %.not.i.i.i57.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i", label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.ix, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #50, !noalias !16320
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i": ; preds = %bb.k
  %i.ja = call i32 @llvm.bswap.i32(i32 %i.iz)
  store i32 %i.ja, ptr %i.iw, align 1, !alias.scope !16321, !noalias !16322
  %i.jb = load i64, ptr %i.cb, align 8, !alias.scope !16314, !noalias !16315, !noundef !6 ; 2 uses
  %i.jc = load i64, ptr %i.cc, align 8, !alias.scope !16314, !noalias !16315, !noundef !6
  %i.jd = icmp ult i64 %i.jb, %i.jc
  br i1 %i.jd, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i54.i", label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i"

"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i54.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i48.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.e, i64 32, i1 false), !alias.scope !16323, !noalias !16324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16290
  call void @llvm.experimental.noalias.scope.decl(metadata !16325)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bv, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.j, i64 32, i1 false), !alias.scope !16326, !noalias !16327
  store i8 32, ptr %i.bw, align 8, !alias.scope !16328, !noalias !16329
  call void @llvm.experimental.noalias.scope.decl(metadata !16330)
  call void @llvm.experimental.noalias.scope.decl(metadata !16331)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16332
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, i8 0, i64 32, i1 false), !alias.scope !16333, !noalias !16332
  call void @llvm.experimental.noalias.scope.decl(metadata !16334), !noalias !16335
  call void @llvm.experimental.noalias.scope.decl(metadata !16336), !noalias !16335
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16332
  %i.je = load i64, ptr %i.cf, align 8, !alias.scope !16337, !noalias !16338, !noundef !6
  %i.jf = shl i64 %i.je, 9
  %i.jg = or disjoint i64 %i.jf, 256
  %i.jh = call i64 @llvm.bswap.i64(i64 %i.jg)
  store i8 -128, ptr %i.co, align 8, !alias.scope !16339, !noalias !16340
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %i.cp, i8 0, i64 23, i1 false), !alias.scope !16339, !noalias !16340
  store i64 %i.jh, ptr %i.by, align 8, !alias.scope !16341, !noalias !16342
  call void @_ZN4sha26sha25611compress25617h0f9b7f3b30da6ce0E(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(65) %i.bv, i64 noundef 1), !noalias !16343
  store i8 0, ptr %i.bw, align 8, !alias.scope !16339, !noalias !16340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16344
  store ptr %i.cg, ptr %i.f, align 8, !noalias !16345
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16345
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !16345
  store i64 32, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !16345
  store i64 4, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !16345
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h18877e97783a925dE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull %i.cf), !noalias !16346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16344
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16347
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !16347
  %i.ji = load i64, ptr %i.ch, align 8, !alias.scope !16348, !noalias !16349, !noundef !6 ; 2 uses
  %i.jj = load i64, ptr %i.ci, align 8, !alias.scope !16348, !noalias !16349, !noundef !6
  %i.jk = icmp ult i64 %i.ji, %i.jj
  br i1 %i.jk, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i", label %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E.exit.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i": ; preds = %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i"
  %i.jl = phi i64 [ %i.jt, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i" ], [ %i.ji, %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i" ] ; 3 uses
  %i.jm = add nuw i64 %i.jl, 1
  store i64 %i.jm, ptr %i.ch, align 8, !alias.scope !16348, !noalias !16349
  %i.jn = call { ptr, i64 } @"_ZN101_$LT$core..slice..iter..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17hc722127bb720d610E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %i.jl), !noalias !16350 ; 2 uses
  %i.jo = extractvalue { ptr, i64 } %i.jn, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i, label %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E.exit.i", label %bb.m

bb.m:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i"
  %i.jp = extractvalue { ptr, i64 } %i.jn, 1      ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !16348, !noalias !16349, !nonnull !6, !noundef !6
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %.val.i.i.i.i, i64 %i.jl
  %i.jr = load i32, ptr %i.jq, align 4, !noalias !16351, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !16352), !noalias !16335
  call void @llvm.experimental.noalias.scope.decl(metadata !16353), !noalias !16335
  %.not.i.i.i.i = icmp eq i64 %i.jp, 4
  br i1 %.not.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i", label %bb.n, !prof !19

bb.n:                                             ; preds = %bb.m
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.jp, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @634) #50, !noalias !16354
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i": ; preds = %bb.m
  %i.js = call i32 @llvm.bswap.i32(i32 %i.jr)
  store i32 %i.js, ptr %i.jo, align 1, !alias.scope !16355, !noalias !16356
  %i.jt = load i64, ptr %i.ch, align 8, !alias.scope !16348, !noalias !16349, !noundef !6 ; 2 uses
  %i.ju = load i64, ptr %i.ci, align 8, !alias.scope !16348, !noalias !16349, !noundef !6
  %i.jv = icmp ult i64 %i.jt, %i.ju
  br i1 %i.jv, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i", label %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E.exit.i"

"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17hd7970ae4e3632c16E.exit.i.i.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h32f878d07b5c89dbE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16332
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.i, i64 32, i1 false), !alias.scope !16357, !noalias !16358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16332
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16283
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.ag, ptr noundef nonnull align 1 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !16145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !16159
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h92fc9665f0656228E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aa, ptr noundef nonnull align 1 %.sroa.061.094.i, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ck)
  call void @llvm.experimental.noalias.scope.decl(metadata !16359)
  %.val.i36.i = load i64, ptr %i.cl, align 8, !alias.scope !16359, !noalias !16145, !noundef !6 ; 11 uses
  %.val8.i37.i = load i64, ptr %i.cm, align 8, !alias.scope !16359, !noalias !16145, !noundef !6 ; 6 uses
  %i.jw = sub i64 %.val8.i37.i, %.val.i36.i       ; 8 uses
  %.not.i38.i = icmp eq i64 %.val8.i37.i, %.val.i36.i
  br i1 %.not.i38.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %iter.check

iter.check:                                       ; preds = %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E.exit.i"
  %.val1.i.i40.i = load ptr, ptr %i.aa, align 8, !alias.scope !16360, !noalias !16145, !nonnull !6, !noundef !6 ; 7 uses
  %.val.i.i41.i = load ptr, ptr %i.cn, align 8, !alias.scope !16360, !noalias !16145, !nonnull !6, !noundef !6 ; 7 uses
  %min.iters.check = icmp ult i64 %i.jw, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val1.i.i40.i, i64 %.val.i36.i
  %scevgep74 = getelementptr i8, ptr %.val1.i.i40.i, i64 %.val8.i37.i
  %scevgep75 = getelementptr nuw i8, ptr %.val.i.i41.i, i64 %.val.i36.i
  %scevgep76 = getelementptr i8, ptr %.val.i.i41.i, i64 %.val8.i37.i
  %bound0 = icmp ult ptr %scevgep, %scevgep76
  %bound1 = icmp ult ptr %scevgep75, %scevgep74
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %i.jw, 32
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph78

vector.ph78:                                      ; preds = %vector.main.loop.iter.check
  %i.jx = and i64 %i.jw, 28
  %n.vec = and i64 %i.jw, -32                     ; 4 uses
  br label %vector.body79

vector.body79:                                    ; preds = %vector.ph78, %vector.body79
  %index80 = phi i64 [ 0, %vector.ph78 ], [ %index.next85, %vector.body79 ] ; 2 uses
  %i.jy = add i64 %index80, %.val.i36.i           ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %i.jy ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %i.jy ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %wide.load81 = load <16 x i8>, ptr %i.ka, align 1, !alias.scope !16361, !noalias !16359
  %wide.load82 = load <16 x i8>, ptr %i.kb, align 1, !alias.scope !16361, !noalias !16359
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load83 = load <16 x i8>, ptr %i.jz, align 1, !alias.scope !16362, !noalias !16363
  %wide.load84 = load <16 x i8>, ptr %i.kc, align 1, !alias.scope !16362, !noalias !16363
  %i.kd = xor <16 x i8> %wide.load83, %wide.load81
  %i.ke = xor <16 x i8> %wide.load84, %wide.load82
  store <16 x i8> %i.kd, ptr %i.jz, align 1, !alias.scope !16362, !noalias !16363
  store <16 x i8> %i.ke, ptr %i.kc, align 1, !alias.scope !16362, !noalias !16363
  %index.next85 = add nuw i64 %index80, 32        ; 2 uses
  %i.kf = icmp eq i64 %index.next85, %n.vec
  br i1 %i.kf, label %middle.block86, label %vector.body79, !llvm.loop !16141

middle.block86:                                   ; preds = %vector.body79
  %cmp.n = icmp eq i64 %i.jw, %n.vec
  br i1 %cmp.n, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block86
  %min.epilog.iters.check = icmp eq i64 %i.jx, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec87 = and i64 %i.jw, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index88 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %i.kg = add i64 %index88, %.val.i36.i           ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %i.kg
  %wide.load89 = load <4 x i8>, ptr %i.ki, align 1, !alias.scope !16361, !noalias !16359
  %wide.load90 = load <4 x i8>, ptr %i.kh, align 1, !alias.scope !16362, !noalias !16363
  %i.kj = xor <4 x i8> %wide.load90, %wide.load89
  store <4 x i8> %i.kj, ptr %i.kh, align 1, !alias.scope !16362, !noalias !16363
  %index.next91 = add nuw i64 %index88, 4         ; 2 uses
  %i.kk = icmp eq i64 %index.next91, %n.vec87
  br i1 %i.kk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16142

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n92 = icmp eq i64 %i.jw, %n.vec87
  br i1 %cmp.n92, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i42.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec87, %vec.epilog.middle.block ] ; 4 uses
  %10 = sub i64 %.val8.i37.i, %.val.i36.i
  %i.kl = xor i64 %.sroa.0.010.i42.i.ph, -1
  %i.km = add i64 %.val8.i37.i, %i.kl
  %xtraiter214 = and i64 %10, 1
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.kn = or disjoint i64 %.sroa.0.010.i42.i.ph, 1
  %i.ko = add i64 %.sroa.0.010.i42.i.ph, %.val.i36.i ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %i.ko ; 2 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %i.ko
  %.val9.i43.i.prol = load i8, ptr %i.kq, align 1, !noalias !16359, !noundef !6
  %i.kr = load i8, ptr %i.kp, align 1, !alias.scope !16364, !noalias !16359, !noundef !6
  %i.ks = xor i8 %i.kr, %.val9.i43.i.prol
  store i8 %i.ks, ptr %i.kp, align 1, !alias.scope !16364, !noalias !16359
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.010.i42.i.unr = phi i64 [ %.sroa.0.010.i42.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.kn, %vec.epilog.scalar.ph.prol ]
  %i.kt = icmp eq i64 %i.km, %.val.i36.i
  br i1 %i.kt, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op236 = add i64 1, %.val.i36.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.010.i42.i = phi i64 [ %.sroa.0.010.i42.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.kz, %vec.epilog.scalar.ph ] ; 3 uses
  %i.ku = add i64 %.sroa.0.010.i42.i, %.val.i36.i ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %i.ku ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %i.ku
  %.val9.i43.i = load i8, ptr %i.kw, align 1, !noalias !16359, !noundef !6
  %i.kx = load i8, ptr %i.kv, align 1, !alias.scope !16364, !noalias !16359, !noundef !6
  %i.ky = xor i8 %i.kx, %.val9.i43.i
  store i8 %i.ky, ptr %i.kv, align 1, !alias.scope !16364, !noalias !16359
  %i.kz = add nuw i64 %.sroa.0.010.i42.i, 2       ; 2 uses
  %.reass237 = add i64 %.sroa.0.010.i42.i, %invariant.op236 ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %.reass237 ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %.reass237
  %.val9.i43.i.1 = load i8, ptr %i.lb, align 1, !noalias !16359, !noundef !6
  %i.lc = load i8, ptr %i.la, align 1, !alias.scope !16364, !noalias !16359, !noundef !6
  %i.ld = xor i8 %i.lc, %.val9.i43.i.1
  store i8 %i.ld, ptr %i.la, align 1, !alias.scope !16364, !noalias !16359
  %exitcond.not.i44.i.1 = icmp eq i64 %i.kz, %i.jw
  br i1 %exitcond.not.i44.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %vec.epilog.scalar.ph, !llvm.loop !16143

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i": ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block86, %vec.epilog.middle.block, %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h131909260419f593E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !16159
  %i.le = icmp ult i32 %.sroa.05.1.i90.i, %4      ; 2 uses
  %i.lf = zext i1 %i.le to i32
  %.sroa.05.1.i.i = add nuw i32 %.sroa.05.1.i90.i, %i.lf
  br i1 %i.le, label %.lr.ph91.i, label %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i

_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i: ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !16159
  %i.lg = icmp eq i64 %i.cr, 0
  br i1 %i.lg, label %_ZN6pbkdf26pbkdf217hf8e9f4dc14492918E.exit, label %._crit_edge.i

_ZN6pbkdf26pbkdf217hf8e9f4dc14492918E.exit:       ; preds = %_ZN6pbkdf211pbkdf2_body17he95e672ac5f66c8eE.exit.i, %vector.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !16145
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i32 noundef %4, ptr noalias noundef nonnull align 1 %5, i64 noundef %6) unnamed_addr #0 personality ptr @rust_eh_personality {
vector.ph:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [128 x i8], align 1               ; 5 uses
  %i.c = alloca [72 x i8], align 8                ; 7 uses
  %i.d = alloca [72 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 1                ; 6 uses
  %i.f = alloca [40 x i8], align 8                ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 4 uses
  %i.i = alloca [64 x i8], align 1                ; 6 uses
  %i.j = alloca [64 x i8], align 1                ; 5 uses
  %i.k = alloca [304 x i8], align 16              ; 15 uses
  %i.l = alloca [64 x i8], align 1                ; 5 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [136 x i8], align 8               ; 6 uses
  %i.o = alloca [160 x i8], align 16              ; 4 uses
  %i.p = alloca [64 x i8], align 1                ; 5 uses
  %i.q = alloca [304 x i8], align 16              ; 7 uses
  %i.r = alloca [64 x i8], align 1                ; 5 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [136 x i8], align 8               ; 6 uses
  %i.u = alloca [160 x i8], align 16              ; 4 uses
  %i.v = alloca [160 x i8], align 16              ; 5 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16678)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !16679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !16680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !16681
  call void @_ZN4hmac11get_der_key17ha7356d8bfc044bd4E(ptr noalias noundef nonnull sret([128 x i8]) align 1 captures(address) dereferenceable(128) %i.y, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1), !noalias !16682
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.y, align 16, !noalias !16681
  %wide.load64 = load <16 x i8>, ptr %i.ai, align 16, !noalias !16681
  %i.aj = xor <16 x i8> %wide.load, splat (i8 54)
  %i.ak = xor <16 x i8> %wide.load64, splat (i8 54)
  store <16 x i8> %i.aj, ptr %i.y, align 16, !noalias !16681
  store <16 x i8> %i.ak, ptr %i.ai, align 16, !noalias !16681
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %wide.load.1 = load <16 x i8>, ptr %i.al, align 16, !noalias !16681
  %wide.load64.1 = load <16 x i8>, ptr %i.am, align 16, !noalias !16681
  %i.an = xor <16 x i8> %wide.load.1, splat (i8 54)
  %i.ao = xor <16 x i8> %wide.load64.1, splat (i8 54)
  store <16 x i8> %i.an, ptr %i.al, align 16, !noalias !16681
  store <16 x i8> %i.ao, ptr %i.am, align 16, !noalias !16681
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %wide.load.2 = load <16 x i8>, ptr %i.ap, align 16, !noalias !16681
  %wide.load64.2 = load <16 x i8>, ptr %i.aq, align 16, !noalias !16681
  %i.ar = xor <16 x i8> %wide.load.2, splat (i8 54)
  %i.as = xor <16 x i8> %wide.load64.2, splat (i8 54)
  store <16 x i8> %i.ar, ptr %i.ap, align 16, !noalias !16681
  store <16 x i8> %i.as, ptr %i.aq, align 16, !noalias !16681
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %wide.load.3 = load <16 x i8>, ptr %i.at, align 16, !noalias !16681
  %wide.load64.3 = load <16 x i8>, ptr %i.au, align 16, !noalias !16681
  %i.av = xor <16 x i8> %wide.load.3, splat (i8 54)
  %i.aw = xor <16 x i8> %wide.load64.3, splat (i8 54)
  store <16 x i8> %i.av, ptr %i.at, align 16, !noalias !16681
  store <16 x i8> %i.aw, ptr %i.au, align 16, !noalias !16681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !16681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.x, ptr noundef nonnull align 16 dereferenceable(64) @637, i64 64, i1 false), !noalias !16683
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  store i128 1, ptr %.sroa.42.0..sroa_idx.i.i.i, align 16, !alias.scope !16684, !noalias !16685
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.x, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 0) 1), !noalias !16686
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %wide.load68 = load <16 x i8>, ptr %i.y, align 16, !noalias !16681
  %wide.load69 = load <16 x i8>, ptr %i.ax, align 16, !noalias !16681
  %i.ay = xor <16 x i8> %wide.load68, splat (i8 106)
  %i.az = xor <16 x i8> %wide.load69, splat (i8 106)
  store <16 x i8> %i.ay, ptr %i.y, align 16, !noalias !16681
  store <16 x i8> %i.az, ptr %i.ax, align 16, !noalias !16681
  %i.ba = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %wide.load68.1 = load <16 x i8>, ptr %i.ba, align 16, !noalias !16681
  %wide.load69.1 = load <16 x i8>, ptr %i.bb, align 16, !noalias !16681
  %i.bc = xor <16 x i8> %wide.load68.1, splat (i8 106)
  %i.bd = xor <16 x i8> %wide.load69.1, splat (i8 106)
  store <16 x i8> %i.bc, ptr %i.ba, align 16, !noalias !16681
  store <16 x i8> %i.bd, ptr %i.bb, align 16, !noalias !16681
  %i.be = getelementptr inbounds nuw i8, ptr %i.y, i64 64 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 2 uses
  %wide.load68.2 = load <16 x i8>, ptr %i.be, align 16, !noalias !16681
  %wide.load69.2 = load <16 x i8>, ptr %i.bf, align 16, !noalias !16681
  %i.bg = xor <16 x i8> %wide.load68.2, splat (i8 106)
  %i.bh = xor <16 x i8> %wide.load69.2, splat (i8 106)
  store <16 x i8> %i.bg, ptr %i.be, align 16, !noalias !16681
  store <16 x i8> %i.bh, ptr %i.bf, align 16, !noalias !16681
  %i.bi = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %wide.load68.3 = load <16 x i8>, ptr %i.bi, align 16, !noalias !16681
  %wide.load69.3 = load <16 x i8>, ptr %i.bj, align 16, !noalias !16681
  %i.bk = xor <16 x i8> %wide.load68.3, splat (i8 106)
  %i.bl = xor <16 x i8> %wide.load69.3, splat (i8 106)
  store <16 x i8> %i.bk, ptr %i.bi, align 16, !noalias !16681
  store <16 x i8> %i.bl, ptr %i.bj, align 16, !noalias !16681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !16681
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.w, ptr noundef nonnull align 16 dereferenceable(64) @637, i64 64, i1 false), !noalias !16683
  %.sroa.42.0..sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i128 1, ptr %.sroa.42.0..sroa_idx.i3.i.i, align 16, !alias.scope !16687, !noalias !16688
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.y, i64 noundef range(i64 1, 0) 1), !noalias !16686
  %i.bm = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bm, ptr noundef nonnull align 16 dereferenceable(80) %i.w, i64 80, i1 false), !noalias !16680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.v, ptr noundef nonnull align 16 dereferenceable(80) %i.x, i64 80, i1 false), !noalias !16680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !16681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !16681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !16681
  %i.bn = getelementptr inbounds nuw i8, ptr %i.z, i64 160
  call void @"_ZN92_$LT$block_buffer..BlockBuffer$LT$BlockSize$C$Kind$GT$$u20$as$u20$core..default..Default$GT$7default17h04879785cfff0c90E"(ptr noalias noundef nonnull sret([129 x i8]) align 1 captures(address) dereferenceable(129) %i.bn), !noalias !16689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %i.z, ptr noundef nonnull align 16 dereferenceable(160) %i.v, i64 160, i1 false), !noalias !16680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ah, ptr noundef nonnull align 16 dereferenceable(304) %i.z, i64 304, i1 false), !noalias !16679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !16680
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
  %scevgep94 = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 2 uses
  %scevgep160 = getelementptr inbounds nuw i8, ptr %i.t, i64 136 ; 2 uses
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i"
  %.sroa.061.094.i = phi ptr [ %5, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.dg, %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i ] ; 4 uses
  %.sroa.562.093.i = phi i64 [ %6, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.dh, %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i ] ; 2 uses
  %.sroa.10.092.i = phi i32 [ 0, %"_ZN96_$LT$core..slice..iter..ChunksMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h56318cb6c43af34aE.exit.i.lr.ph.i" ], [ %i.di, %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i ]
  %.sroa.0.0.i.i.i.i = call noundef i64 @llvm.umin.i64(i64 %.sroa.562.093.i, i64 64) ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.061.094.i, i64 %.sroa.0.0.i.i.i.i ; 3 uses
  %i.dh = sub nuw i64 %.sroa.562.093.i, %.sroa.0.0.i.i.i.i ; 2 uses
  %i.di = add i32 %.sroa.10.092.i, 1              ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16690)
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.sroa.061.094.i, i8 0, i64 %.sroa.0.0.i.i.i.i, i1 false), !alias.scope !16691, !noalias !16692
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !16693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !16693
  call void @llvm.experimental.noalias.scope.decl(metadata !16694)
  call void @llvm.experimental.noalias.scope.decl(metadata !16695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16696
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf154ea14edc61c23E"(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.u, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.ah), !noalias !16697
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16698
  store i64 0, ptr %i.br, align 8, !noalias !16698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16698
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.s, ptr noundef nonnull readonly align 1 dereferenceable(128) %i.bp, ptr noundef nonnull readonly %i.bq, ptr noundef nonnull %i.t, ptr noundef nonnull %i.br), !noalias !16699
  call void @llvm.experimental.noalias.scope.decl(metadata !16700), !noalias !16701
  %.val.i.i.i.i.i = load i64, ptr %i.bs, align 8, !alias.scope !16700, !noalias !16702, !noundef !6 ; 10 uses
  %.val8.i.i.i.i.i = load i64, ptr %i.bt, align 8, !alias.scope !16700, !noalias !16702, !noundef !6 ; 6 uses
  %i.dj = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  br i1 %.not.i.i.i.i.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !16703, !noalias !16702, !nonnull !6, !noundef !6 ; 6 uses
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.bu, align 8, !alias.scope !16703, !noalias !16702, !nonnull !6, !noundef !6 ; 6 uses
  %.promoted.i.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !16704 ; 3 uses
  %min.iters.check175 = icmp ult i64 %i.dj, 8
  br i1 %min.iters.check175, label %scalar.ph174.preheader, label %vector.memcheck157

vector.memcheck157:                               ; preds = %.lr.ph.i.i.i.i.i
  %scevgep158 = getelementptr nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %scevgep159 = getelementptr i8, ptr %.val1.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %scevgep161 = getelementptr nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.val.i.i.i.i.i ; 2 uses
  %scevgep162 = getelementptr i8, ptr %.val.i.i.i.i.i.i, i64 %.val8.i.i.i.i.i ; 2 uses
  %bound0163 = icmp ult ptr %scevgep158, %scevgep160
  %bound1164 = icmp ult ptr %i.br, %scevgep159
  %found.conflict165 = and i1 %bound0163, %bound1164
  %bound0166 = icmp ult ptr %scevgep158, %scevgep162
  %bound1167 = icmp ult ptr %scevgep161, %scevgep159
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %found.conflict165, %found.conflict168
  %bound0170 = icmp ult ptr %i.br, %scevgep162
  %bound1171 = icmp ult ptr %scevgep161, %scevgep160
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  br i1 %conflict.rdx173, label %scalar.ph174.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %vector.memcheck157
  %n.vec177 = and i64 %i.dj, -4                   ; 3 uses
  %i.dk = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i.i, i64 0
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %vec.phi180 = phi <2 x i64> [ %i.dk, %vector.ph176 ], [ %i.dq, %vector.body178 ]
  %vec.phi181 = phi <2 x i64> [ zeroinitializer, %vector.ph176 ], [ %i.dr, %vector.body178 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16705), !noalias !16701
  %i.dl = add i64 %index179, %.val.i.i.i.i.i      ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dl ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 2
  %wide.load182 = load <2 x i8>, ptr %i.dm, align 1, !alias.scope !16706, !noalias !16707
  %wide.load183 = load <2 x i8>, ptr %i.dn, align 1, !alias.scope !16706, !noalias !16707
  %i.do = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16708), !noalias !16701
  call void @llvm.experimental.noalias.scope.decl(metadata !16709), !noalias !16701
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 2
  store <2 x i8> %wide.load182, ptr %i.do, align 1, !alias.scope !16710, !noalias !16711
  store <2 x i8> %wide.load183, ptr %i.dp, align 1, !alias.scope !16710, !noalias !16711
  %i.dq = add <2 x i64> %vec.phi180, splat (i64 1) ; 2 uses
  %i.dr = add <2 x i64> %vec.phi181, splat (i64 1) ; 2 uses
  %index.next184 = add nuw i64 %index179, 4       ; 2 uses
  %i.ds = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.ds, label %middle.block185, label %vector.body178, !llvm.loop !16414

middle.block185:                                  ; preds = %vector.body178
  %bin.rdx186 = add <2 x i64> %i.dr, %i.dq
  %i.dt = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx186) ; 3 uses
  store i64 %i.dt, ptr %i.br, align 8, !alias.scope !16712, !noalias !16713
  %cmp.n187 = icmp eq i64 %i.dj, %n.vec177
  br i1 %cmp.n187, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph174.preheader

scalar.ph174.preheader:                           ; preds = %vector.memcheck157, %.lr.ph.i.i.i.i.i, %middle.block185
  %.ph190 = phi i64 [ %.promoted.i.i.i.i.i, %vector.memcheck157 ], [ %.promoted.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %i.dt, %middle.block185 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck157 ], [ 0, %.lr.ph.i.i.i.i.i ], [ %n.vec177, %middle.block185 ] ; 4 uses
  %7 = sub i64 %.val8.i.i.i.i.i, %.val.i.i.i.i.i
  %i.du = xor i64 %.sroa.0.011.i.i.i.i.i.ph, -1
  %i.dv = add i64 %.val8.i.i.i.i.i, %i.du
  %xtraiter = and i64 %7, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph174.prol.loopexit, label %scalar.ph174.prol

scalar.ph174.prol:                                ; preds = %scalar.ph174.preheader
  %i.dw = or disjoint i64 %.sroa.0.011.i.i.i.i.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16705), !noalias !16701
  %i.dx = add i64 %.sroa.0.011.i.i.i.i.i.ph, %.val.i.i.i.i.i ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.dx
  %.val1.i.i.i.i.i.i.i.prol = load i8, ptr %i.dy, align 1, !alias.scope !16714, !noalias !16707, !noundef !6
  %i.dz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !16708), !noalias !16701
  call void @llvm.experimental.noalias.scope.decl(metadata !16709), !noalias !16701
  store i8 %.val1.i.i.i.i.i.i.i.prol, ptr %i.dz, align 1, !alias.scope !16715, !noalias !16716
  %i.ea = add i64 %.ph190, 1                      ; 3 uses
  store i64 %i.ea, ptr %i.br, align 8, !noalias !16704
  br label %scalar.ph174.prol.loopexit

scalar.ph174.prol.loopexit:                       ; preds = %scalar.ph174.prol, %scalar.ph174.preheader
  %.lcssa192.unr = phi i64 [ poison, %scalar.ph174.preheader ], [ %i.ea, %scalar.ph174.prol ]
  %.unr = phi i64 [ %.ph190, %scalar.ph174.preheader ], [ %i.ea, %scalar.ph174.prol ]
  %.sroa.0.011.i.i.i.i.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i.i.ph, %scalar.ph174.preheader ], [ %i.dw, %scalar.ph174.prol ]
  %i.eb = icmp eq i64 %i.dv, %.val.i.i.i.i.i
  br i1 %i.eb, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph174.preheader.new

scalar.ph174.preheader.new:                       ; preds = %scalar.ph174.prol.loopexit
  %invariant.op = add i64 1, %.val.i.i.i.i.i
  br label %scalar.ph174

scalar.ph174:                                     ; preds = %scalar.ph174, %scalar.ph174.preheader.new
  %i.ec = phi i64 [ %.unr, %scalar.ph174.preheader.new ], [ %i.ek, %scalar.ph174 ] ; 2 uses
  %.sroa.0.011.i.i.i.i.i = phi i64 [ %.sroa.0.011.i.i.i.i.i.unr, %scalar.ph174.preheader.new ], [ %i.eh, %scalar.ph174 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16705), !noalias !16701
  %i.ed = add i64 %.sroa.0.011.i.i.i.i.i, %.val.i.i.i.i.i ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %i.ed
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.ee, align 1, !alias.scope !16714, !noalias !16707, !noundef !6
  %i.ef = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %i.ed
  call void @llvm.experimental.noalias.scope.decl(metadata !16708), !noalias !16701
  call void @llvm.experimental.noalias.scope.decl(metadata !16709), !noalias !16701
  store i8 %.val1.i.i.i.i.i.i.i, ptr %i.ef, align 1, !alias.scope !16715, !noalias !16716
  %i.eg = add i64 %i.ec, 1
  store i64 %i.eg, ptr %i.br, align 8, !noalias !16704
  %i.eh = add nuw i64 %.sroa.0.011.i.i.i.i.i, 2   ; 2 uses
  %.reass = add i64 %.sroa.0.011.i.i.i.i.i, %invariant.op ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.reass
  %.val1.i.i.i.i.i.i.i.1 = load i8, ptr %i.ei, align 1, !alias.scope !16714, !noalias !16717, !noundef !6
  %i.ej = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i, i64 %.reass
  call void @llvm.experimental.noalias.scope.decl(metadata !16718), !noalias !16701
  call void @llvm.experimental.noalias.scope.decl(metadata !16719), !noalias !16701
  store i8 %.val1.i.i.i.i.i.i.i.1, ptr %i.ej, align 1, !alias.scope !16720, !noalias !16716
  %i.ek = add i64 %i.ec, 2                        ; 3 uses
  store i64 %i.ek, ptr %i.br, align 8, !noalias !16721
  %exitcond.not.i.i.i.i.i.1 = icmp eq i64 %i.eh, %i.dj
  br i1 %exitcond.not.i.i.i.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i", label %scalar.ph174, !llvm.loop !16418

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i": ; preds = %._crit_edge.i
  %.pr.i.i.i.i = load i64, ptr %i.br, align 8, !noalias !16698
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i": ; preds = %scalar.ph174.prol.loopexit, %scalar.ph174, %middle.block185, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i"
  %i.el = phi i64 [ %.pr.i.i.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i.i" ], [ %i.dt, %middle.block185 ], [ %.lcssa192.unr, %scalar.ph174.prol.loopexit ], [ %i.ek, %scalar.ph174 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !16698
  %i.em = icmp ult i64 %i.el, 128
  br i1 %i.em, label %bb.a, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i", !prof !14

bb.a:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.el, i64 noundef 128) #50, !noalias !16699
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.bv, ptr noundef nonnull align 8 dereferenceable(128) %i.t, i64 128, i1 false), !noalias !16722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16698
  %i.en = load i8, ptr %i.bq, align 16, !alias.scope !16695, !noalias !16723, !noundef !6 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.af, ptr noundef nonnull align 16 dereferenceable(160) %i.u, i64 160, i1 false), !noalias !16722
  store i8 %i.en, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !16694, !noalias !16722
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16696
  call void @llvm.experimental.noalias.scope.decl(metadata !16724)
  call void @llvm.experimental.noalias.scope.decl(metadata !16725), !noalias !16690
  call void @llvm.experimental.noalias.scope.decl(metadata !16726), !noalias !16690
  %i.eo = zext nneg i8 %i.en to i64               ; 4 uses
  %i.ep = icmp sgt i8 %i.en, -1
  call void @llvm.assume(i1 %i.ep), !noalias !16690
  %i.eq = sub nuw nsw i64 128, %i.eo              ; 4 uses
  %i.er = icmp ult i64 %3, %i.eq
  br i1 %i.er, label %bb.f, label %bb.b

bb.b:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i"
  %i.es = icmp eq i8 %i.en, 0
  br i1 %i.es, label %bb.c, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i"

bb.c:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i", %bb.b
  %.sroa.7.0.i.i.i = phi i64 [ %3, %bb.b ], [ %i.ey, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 3 uses
  %.sroa.0.0.i.i.i = phi ptr [ %2, %bb.b ], [ %i.ez, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i" ] ; 2 uses
  %i.et = lshr i64 %.sroa.7.0.i.i.i, 7            ; 3 uses
  %i.eu = and i64 %.sroa.7.0.i.i.i, -128
  %i.ev = and i64 %.sroa.7.0.i.i.i, 127           ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i, i64 %i.eu
  %i.ex = icmp eq i64 %i.et, 0
  br i1 %i.ex, label %bb.e, label %bb.d

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i.i": ; preds = %bb.b
  %i.ey = sub nuw i64 %3, %i.eq
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 %i.eq
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fa, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %i.eq, i1 false), !alias.scope !16727, !noalias !16728
  %i.fb = load i128, ptr %i.bw, align 16, !alias.scope !16729, !noalias !16730, !noundef !6
  %i.fc = add i128 %i.fb, 1
  store i128 %i.fc, ptr %i.bw, align 16, !alias.scope !16729, !noalias !16730
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.bv, i64 noundef range(i64 1, 0) 1), !noalias !16731
  br label %bb.c

bb.d:                                             ; preds = %bb.c
  %i.fd = zext nneg i64 %i.et to i128
  %i.fe = load i128, ptr %i.bw, align 16, !alias.scope !16732, !noalias !16733, !noundef !6
  %i.ff = add i128 %i.fe, %i.fd
  store i128 %i.ff, ptr %i.bw, align 16, !alias.scope !16732, !noalias !16733
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.i, i64 noundef range(i64 1, 0) %i.et), !noalias !16734
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.bv, ptr nonnull readonly align 1 %i.ew, i64 %i.ev, i1 false), !alias.scope !16735, !noalias !16736
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"

bb.f:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit.i"
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.eo
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fg, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !alias.scope !16737, !noalias !16738
  %i.fh = add nuw nsw i64 %3, %i.eo
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i": ; preds = %bb.f, %bb.e
  %storemerge.in.i.i.i = phi i64 [ %i.ev, %bb.e ], [ %i.fh, %bb.f ] ; 7 uses
  %storemerge.i.i.i = trunc nuw i64 %storemerge.in.i.i.i to i8 ; 2 uses
  store i8 %storemerge.i.i.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !16739, !noalias !16740
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !16693
  %i.fi = call i32 @llvm.bswap.i32(i32 %i.di)     ; 2 uses
  store i32 %i.fi, ptr %i.ae, align 4, !noalias !16693
  call void @llvm.experimental.noalias.scope.decl(metadata !16741)
  call void @llvm.experimental.noalias.scope.decl(metadata !16742), !noalias !16690
  call void @llvm.experimental.noalias.scope.decl(metadata !16743), !noalias !16690
  %i.fj = icmp sgt i8 %storemerge.i.i.i, -1
  call void @llvm.assume(i1 %i.fj), !noalias !16690
  %i.fk = icmp samesign ult i64 %storemerge.in.i.i.i, 124
  br i1 %i.fk, label %bb.g, label %.thread.i

.thread.i:                                        ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"
  %i.fl = sub nuw nsw i64 128, %storemerge.in.i.i.i ; 2 uses
  %i.fm = add nsw i64 %storemerge.in.i.i.i, -124  ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.fl
  %i.fo = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge.in.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.fo, ptr noundef nonnull readonly align 4 dereferenceable(1) %i.ae, i64 %i.fl, i1 false), !alias.scope !16744, !noalias !16745
  %i.fp = load i128, ptr %i.bw, align 16, !alias.scope !16746, !noalias !16747, !noundef !6
  %i.fq = add i128 %i.fp, 1
  store i128 %i.fq, ptr %i.bw, align 16, !alias.scope !16746, !noalias !16747
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.af, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.bv, i64 noundef range(i64 1, 0) 1), !noalias !16748
  %i.fr = and i64 %i.fm, -128
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.bv, ptr nonnull readonly align 1 %i.fs, i64 %i.fm, i1 false), !alias.scope !16749, !noalias !16750
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"

bb.g:                                             ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit.i"
  %i.ft = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge.in.i.i.i
  store i32 %i.fi, ptr %i.ft, align 1, !alias.scope !16751, !noalias !16752
  %i.fu = add nuw nsw i64 %storemerge.in.i.i.i, 4
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i": ; preds = %bb.g, %.thread.i
  %storemerge.in.i.i11.i = phi i64 [ %i.fm, %.thread.i ], [ %i.fu, %bb.g ]
  %storemerge.i.i12.i = trunc nuw i64 %storemerge.in.i.i11.i to i8
  store i8 %storemerge.i.i12.i, ptr %.sroa.4.0..sroa_idx.i7.i, align 16, !alias.scope !16753, !noalias !16754
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !16693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !16693
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.q, ptr noundef nonnull align 16 dereferenceable(304) %i.af, i64 304, i1 false), !noalias !16756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16755
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.r, i8 0, i64 64, i1 false), !alias.scope !16757, !noalias !16755
  call void @llvm.experimental.noalias.scope.decl(metadata !16758), !noalias !16690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16759
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.p, i8 0, i64 64, i1 false), !alias.scope !16760, !noalias !16759
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE"(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.q, ptr noalias noundef nonnull align 1 dereferenceable(129) %i.bx, ptr noalias noundef align 1 dereferenceable(64) %i.p), !noalias !16761
  call void @llvm.experimental.noalias.scope.decl(metadata !16762), !noalias !16690
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.bx, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.p, i64 64, i1 false), !alias.scope !16763, !noalias !16764
  store i8 64, ptr %i.by, align 16, !alias.scope !16765, !noalias !16766
  call fastcc void @"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE"(ptr noalias noundef align 16 dereferenceable(80) %i.bz, ptr noalias noundef nonnull align 1 dereferenceable(129) %i.bx, ptr noalias noundef nonnull align 1 dereferenceable(64) %i.r), !noalias !16767
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !16759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !16755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ad, ptr noundef nonnull align 1 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !16768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !16755
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !16693
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h92fc9665f0656228E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.ab, ptr noundef nonnull align 1 %.sroa.061.094.i, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ca)
  call void @llvm.experimental.noalias.scope.decl(metadata !16769)
  %.val.i.i = load i64, ptr %i.cb, align 8, !alias.scope !16769, !noalias !16679, !noundef !6 ; 11 uses
  %.val8.i.i = load i64, ptr %i.cc, align 8, !alias.scope !16769, !noalias !16679, !noundef !6 ; 6 uses
  %i.fv = sub i64 %.val8.i.i, %.val.i.i           ; 8 uses
  %.not.i14.i = icmp eq i64 %.val8.i.i, %.val.i.i
  br i1 %.not.i14.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %iter.check143

iter.check143:                                    ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !16770, !noalias !16679, !nonnull !6, !noundef !6 ; 7 uses
  %.val.i.i.i = load ptr, ptr %i.cd, align 8, !alias.scope !16770, !noalias !16679, !nonnull !6, !noundef !6 ; 7 uses
  %min.iters.check128 = icmp ult i64 %i.fv, 4
  br i1 %min.iters.check128, label %vec.epilog.scalar.ph144.preheader, label %vector.memcheck119

vector.memcheck119:                               ; preds = %iter.check143
  %scevgep120 = getelementptr nuw i8, ptr %.val1.i.i.i, i64 %.val.i.i
  %scevgep121 = getelementptr i8, ptr %.val1.i.i.i, i64 %.val8.i.i
  %scevgep122 = getelementptr nuw i8, ptr %.val.i.i.i, i64 %.val.i.i
  %scevgep123 = getelementptr i8, ptr %.val.i.i.i, i64 %.val8.i.i
  %bound0124 = icmp ult ptr %scevgep120, %scevgep123
  %bound1125 = icmp ult ptr %scevgep122, %scevgep121
  %found.conflict126 = and i1 %bound0124, %bound1125
  br i1 %found.conflict126, label %vec.epilog.scalar.ph144.preheader, label %vector.main.loop.iter.check129

vector.main.loop.iter.check129:                   ; preds = %vector.memcheck119
  %min.iters.check130 = icmp ult i64 %i.fv, 32
  br i1 %min.iters.check130, label %vec.epilog.ph147, label %vector.ph131

vector.ph131:                                     ; preds = %vector.main.loop.iter.check129
  %i.fw = and i64 %i.fv, 28
  %n.vec132 = and i64 %i.fv, -32                  ; 4 uses
  br label %vector.body133

vector.body133:                                   ; preds = %vector.ph131, %vector.body133
  %index134 = phi i64 [ 0, %vector.ph131 ], [ %index.next139, %vector.body133 ] ; 2 uses
  %i.fx = add i64 %index134, %.val.i.i            ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.fx ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fx ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %wide.load135 = load <16 x i8>, ptr %i.fz, align 1, !alias.scope !16771, !noalias !16769
  %wide.load136 = load <16 x i8>, ptr %i.ga, align 1, !alias.scope !16771, !noalias !16769
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %wide.load137 = load <16 x i8>, ptr %i.fy, align 1, !alias.scope !16772, !noalias !16773
  %wide.load138 = load <16 x i8>, ptr %i.gb, align 1, !alias.scope !16772, !noalias !16773
  %i.gc = xor <16 x i8> %wide.load137, %wide.load135
  %i.gd = xor <16 x i8> %wide.load138, %wide.load136
  store <16 x i8> %i.gc, ptr %i.fy, align 1, !alias.scope !16772, !noalias !16773
  store <16 x i8> %i.gd, ptr %i.gb, align 1, !alias.scope !16772, !noalias !16773
  %index.next139 = add nuw i64 %index134, 32      ; 2 uses
  %i.ge = icmp eq i64 %index.next139, %n.vec132
  br i1 %i.ge, label %middle.block140, label %vector.body133, !llvm.loop !16514

middle.block140:                                  ; preds = %vector.body133
  %cmp.n141 = icmp eq i64 %i.fv, %n.vec132
  br i1 %cmp.n141, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.iter.check145

vec.epilog.iter.check145:                         ; preds = %middle.block140
  %min.epilog.iters.check146 = icmp eq i64 %i.fw, 0
  br i1 %min.epilog.iters.check146, label %vec.epilog.scalar.ph144.preheader, label %vec.epilog.ph147, !prof !56

vec.epilog.ph147:                                 ; preds = %vector.main.loop.iter.check129, %vec.epilog.iter.check145
  %vec.epilog.resume.val142 = phi i64 [ %n.vec132, %vec.epilog.iter.check145 ], [ 0, %vector.main.loop.iter.check129 ]
  %n.vec148 = and i64 %i.fv, -4                   ; 3 uses
  br label %vec.epilog.vector.body149

vec.epilog.vector.body149:                        ; preds = %vec.epilog.vector.body149, %vec.epilog.ph147
  %index150 = phi i64 [ %vec.epilog.resume.val142, %vec.epilog.ph147 ], [ %index.next153, %vec.epilog.vector.body149 ] ; 2 uses
  %i.gf = add i64 %index150, %.val.i.i            ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gf
  %wide.load151 = load <4 x i8>, ptr %i.gh, align 1, !alias.scope !16771, !noalias !16769
  %wide.load152 = load <4 x i8>, ptr %i.gg, align 1, !alias.scope !16772, !noalias !16773
  %i.gi = xor <4 x i8> %wide.load152, %wide.load151
  store <4 x i8> %i.gi, ptr %i.gg, align 1, !alias.scope !16772, !noalias !16773
  %index.next153 = add nuw i64 %index150, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next153, %n.vec148
  br i1 %i.gj, label %vec.epilog.middle.block154, label %vec.epilog.vector.body149, !llvm.loop !16515

vec.epilog.middle.block154:                       ; preds = %vec.epilog.vector.body149
  %cmp.n155 = icmp eq i64 %i.fv, %n.vec148
  br i1 %cmp.n155, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph144.preheader

vec.epilog.scalar.ph144.preheader:                ; preds = %iter.check143, %vector.memcheck119, %vec.epilog.iter.check145, %vec.epilog.middle.block154
  %.sroa.0.010.i.i.ph = phi i64 [ 0, %iter.check143 ], [ 0, %vector.memcheck119 ], [ %n.vec132, %vec.epilog.iter.check145 ], [ %n.vec148, %vec.epilog.middle.block154 ] ; 4 uses
  %8 = sub i64 %.val8.i.i, %.val.i.i
  %i.gk = xor i64 %.sroa.0.010.i.i.ph, -1
  %i.gl = add i64 %.val8.i.i, %i.gk
  %xtraiter207 = and i64 %8, 1
  %lcmp.mod208.not = icmp eq i64 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %vec.epilog.scalar.ph144.prol.loopexit, label %vec.epilog.scalar.ph144.prol

vec.epilog.scalar.ph144.prol:                     ; preds = %vec.epilog.scalar.ph144.preheader
  %i.gm = or disjoint i64 %.sroa.0.010.i.i.ph, 1
  %i.gn = add i64 %.sroa.0.010.i.i.ph, %.val.i.i  ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gn ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gn
  %.val9.i.i.prol = load i8, ptr %i.gp, align 1, !noalias !16769, !noundef !6
  %i.gq = load i8, ptr %i.go, align 1, !alias.scope !16774, !noalias !16769, !noundef !6
  %i.gr = xor i8 %i.gq, %.val9.i.i.prol
  store i8 %i.gr, ptr %i.go, align 1, !alias.scope !16774, !noalias !16769
  br label %vec.epilog.scalar.ph144.prol.loopexit

vec.epilog.scalar.ph144.prol.loopexit:            ; preds = %vec.epilog.scalar.ph144.prol, %vec.epilog.scalar.ph144.preheader
  %.sroa.0.010.i.i.unr = phi i64 [ %.sroa.0.010.i.i.ph, %vec.epilog.scalar.ph144.preheader ], [ %i.gm, %vec.epilog.scalar.ph144.prol ]
  %i.gs = icmp eq i64 %i.gl, %.val.i.i
  br i1 %i.gs, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph144.preheader.new

vec.epilog.scalar.ph144.preheader.new:            ; preds = %vec.epilog.scalar.ph144.prol.loopexit
  %invariant.op230 = add i64 1, %.val.i.i
  br label %vec.epilog.scalar.ph144

vec.epilog.scalar.ph144:                          ; preds = %vec.epilog.scalar.ph144, %vec.epilog.scalar.ph144.preheader.new
  %.sroa.0.010.i.i = phi i64 [ %.sroa.0.010.i.i.unr, %vec.epilog.scalar.ph144.preheader.new ], [ %i.gy, %vec.epilog.scalar.ph144 ] ; 3 uses
  %i.gt = add i64 %.sroa.0.010.i.i, %.val.i.i     ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %i.gt ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.gt
  %.val9.i.i = load i8, ptr %i.gv, align 1, !noalias !16769, !noundef !6
  %i.gw = load i8, ptr %i.gu, align 1, !alias.scope !16774, !noalias !16769, !noundef !6
  %i.gx = xor i8 %i.gw, %.val9.i.i
  store i8 %i.gx, ptr %i.gu, align 1, !alias.scope !16774, !noalias !16769
  %i.gy = add nuw i64 %.sroa.0.010.i.i, 2         ; 2 uses
  %.reass231 = add i64 %.sroa.0.010.i.i, %invariant.op230 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 %.reass231 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.reass231
  %.val9.i.i.1 = load i8, ptr %i.ha, align 1, !noalias !16769, !noundef !6
  %i.hb = load i8, ptr %i.gz, align 1, !alias.scope !16774, !noalias !16769, !noundef !6
  %i.hc = xor i8 %i.hb, %.val9.i.i.1
  store i8 %i.hc, ptr %i.gz, align 1, !alias.scope !16774, !noalias !16769
  %exitcond.not.i.i.1 = icmp eq i64 %i.gy, %i.fv
  br i1 %exitcond.not.i.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", label %vec.epilog.scalar.ph144, !llvm.loop !16516

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i": ; preds = %vec.epilog.scalar.ph144.prol.loopexit, %vec.epilog.scalar.ph144, %middle.block140, %vec.epilog.middle.block154, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit13.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !16693
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ag, ptr noundef nonnull align 1 dereferenceable(64) %i.ad, i64 64, i1 false), !noalias !16693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !16693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !16693
  br i1 %i.ce, label %.lr.ph91.i, label %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i

.lr.ph91.i:                                       ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i"
  %.sroa.05.1.i90.i = phi i32 [ %.sroa.05.1.i.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i" ], [ 2, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !16693
  call void @llvm.experimental.noalias.scope.decl(metadata !16775)
  call void @llvm.experimental.noalias.scope.decl(metadata !16776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16777
  call void @"_ZN69_$LT$hmac..optim..HmacCore$LT$D$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf154ea14edc61c23E"(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %i.o, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.ah), !noalias !16775
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16778
  store i64 0, ptr %i.cf, align 8, !noalias !16778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16778
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h171d05e6e204092bE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.m, ptr noundef nonnull readonly align 1 dereferenceable(128) %i.bp, ptr noundef nonnull readonly %i.bq, ptr noundef nonnull %i.n, ptr noundef nonnull %i.cf), !noalias !16779
  call void @llvm.experimental.noalias.scope.decl(metadata !16780)
  %.val.i.i.i.i15.i = load i64, ptr %i.cg, align 8, !alias.scope !16780, !noalias !16781, !noundef !6 ; 10 uses
  %.val8.i.i.i.i16.i = load i64, ptr %i.ch, align 8, !alias.scope !16780, !noalias !16781, !noundef !6 ; 6 uses
  %i.hd = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i ; 4 uses
  %.not.i.i.i.i17.i = icmp eq i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i
  br i1 %.not.i.i.i.i17.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i27.i", label %.lr.ph.i.i.i.i18.i

.lr.ph.i.i.i.i18.i:                               ; preds = %.lr.ph91.i
  %.val.i.i.i.i.i19.i = load ptr, ptr %i.m, align 8, !alias.scope !16782, !noalias !16781, !nonnull !6, !noundef !6 ; 6 uses
  %.val1.i.i.i.i.i20.i = load ptr, ptr %i.ci, align 8, !alias.scope !16782, !noalias !16781, !nonnull !6, !noundef !6 ; 6 uses
  %.promoted.i.i.i.i21.i = load i64, ptr %i.cf, align 8, !noalias !16783 ; 3 uses
  %min.iters.check107 = icmp ult i64 %i.hd, 8
  br i1 %min.iters.check107, label %scalar.ph.preheader, label %vector.memcheck91

vector.memcheck91:                                ; preds = %.lr.ph.i.i.i.i18.i
  %scevgep92 = getelementptr nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %.val.i.i.i.i15.i ; 2 uses
  %scevgep93 = getelementptr i8, ptr %.val1.i.i.i.i.i20.i, i64 %.val8.i.i.i.i16.i ; 2 uses
  %scevgep95 = getelementptr nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %.val.i.i.i.i15.i ; 2 uses
  %scevgep96 = getelementptr i8, ptr %.val.i.i.i.i.i19.i, i64 %.val8.i.i.i.i16.i ; 2 uses
  %bound097 = icmp ult ptr %scevgep92, %scevgep94
  %bound198 = icmp ult ptr %i.cf, %scevgep93
  %found.conflict99 = and i1 %bound097, %bound198
  %bound0100 = icmp ult ptr %scevgep92, %scevgep96
  %bound1101 = icmp ult ptr %scevgep95, %scevgep93
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx = or i1 %found.conflict99, %found.conflict102
  %bound0103 = icmp ult ptr %i.cf, %scevgep96
  %bound1104 = icmp ult ptr %scevgep95, %scevgep94
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx, %found.conflict105
  br i1 %conflict.rdx106, label %scalar.ph.preheader, label %vector.ph108

vector.ph108:                                     ; preds = %vector.memcheck91
  %n.vec109 = and i64 %i.hd, -4                   ; 3 uses
  %i.he = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.promoted.i.i.i.i21.i, i64 0
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph108
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next115, %vector.body110 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.he, %vector.ph108 ], [ %i.hk, %vector.body110 ]
  %vec.phi112 = phi <2 x i64> [ zeroinitializer, %vector.ph108 ], [ %i.hl, %vector.body110 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16784)
  %i.hf = add i64 %index111, %.val.i.i.i.i15.i    ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 2
  %wide.load113 = load <2 x i8>, ptr %i.hg, align 1, !alias.scope !16785, !noalias !16786
  %wide.load114 = load <2 x i8>, ptr %i.hh, align 1, !alias.scope !16785, !noalias !16786
  %i.hi = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.hf ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16787)
  call void @llvm.experimental.noalias.scope.decl(metadata !16788)
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 2
  store <2 x i8> %wide.load113, ptr %i.hi, align 1, !alias.scope !16789, !noalias !16790
  store <2 x i8> %wide.load114, ptr %i.hj, align 1, !alias.scope !16789, !noalias !16790
  %i.hk = add <2 x i64> %vec.phi, splat (i64 1)   ; 2 uses
  %i.hl = add <2 x i64> %vec.phi112, splat (i64 1) ; 2 uses
  %index.next115 = add nuw i64 %index111, 4       ; 2 uses
  %i.hm = icmp eq i64 %index.next115, %n.vec109
  br i1 %i.hm, label %middle.block116, label %vector.body110, !llvm.loop !16540

middle.block116:                                  ; preds = %vector.body110
  %bin.rdx = add <2 x i64> %i.hl, %i.hk
  %i.hn = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 3 uses
  store i64 %i.hn, ptr %i.cf, align 8, !alias.scope !16791, !noalias !16792
  %cmp.n117 = icmp eq i64 %i.hd, %n.vec109
  br i1 %cmp.n117, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i", label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck91, %.lr.ph.i.i.i.i18.i, %middle.block116
  %.ph = phi i64 [ %.promoted.i.i.i.i21.i, %vector.memcheck91 ], [ %.promoted.i.i.i.i21.i, %.lr.ph.i.i.i.i18.i ], [ %i.hn, %middle.block116 ] ; 2 uses
  %.sroa.0.011.i.i.i.i22.i.ph = phi i64 [ 0, %vector.memcheck91 ], [ 0, %.lr.ph.i.i.i.i18.i ], [ %n.vec109, %middle.block116 ] ; 4 uses
  %9 = sub i64 %.val8.i.i.i.i16.i, %.val.i.i.i.i15.i
  %i.ho = xor i64 %.sroa.0.011.i.i.i.i22.i.ph, -1
  %i.hp = add i64 %.val8.i.i.i.i16.i, %i.ho
  %xtraiter209 = and i64 %9, 1
  %lcmp.mod210.not = icmp eq i64 %xtraiter209, 0
  br i1 %lcmp.mod210.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.hq = or disjoint i64 %.sroa.0.011.i.i.i.i22.i.ph, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !16784)
  %i.hr = add i64 %.sroa.0.011.i.i.i.i22.i.ph, %.val.i.i.i.i15.i ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.hr
  %.val1.i.i.i.i.i.i23.i.prol = load i8, ptr %i.hs, align 1, !alias.scope !16793, !noalias !16786, !noundef !6
  %i.ht = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.hr
  call void @llvm.experimental.noalias.scope.decl(metadata !16787)
  call void @llvm.experimental.noalias.scope.decl(metadata !16788)
  store i8 %.val1.i.i.i.i.i.i23.i.prol, ptr %i.ht, align 1, !alias.scope !16794, !noalias !16795
  %i.hu = add i64 %.ph, 1                         ; 3 uses
  store i64 %i.hu, ptr %i.cf, align 8, !noalias !16783
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa195.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.hu, %scalar.ph.prol ]
  %.unr211 = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.hu, %scalar.ph.prol ]
  %.sroa.0.011.i.i.i.i22.i.unr = phi i64 [ %.sroa.0.011.i.i.i.i22.i.ph, %scalar.ph.preheader ], [ %i.hq, %scalar.ph.prol ]
  %i.hv = icmp eq i64 %i.hp, %.val.i.i.i.i15.i
  br i1 %i.hv, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i", label %scalar.ph.preheader.new

scalar.ph.preheader.new:                          ; preds = %scalar.ph.prol.loopexit
  %invariant.op232 = add i64 1, %.val.i.i.i.i15.i
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph, %scalar.ph.preheader.new
  %i.hw = phi i64 [ %.unr211, %scalar.ph.preheader.new ], [ %i.ie, %scalar.ph ] ; 2 uses
  %.sroa.0.011.i.i.i.i22.i = phi i64 [ %.sroa.0.011.i.i.i.i22.i.unr, %scalar.ph.preheader.new ], [ %i.ib, %scalar.ph ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16784)
  %i.hx = add i64 %.sroa.0.011.i.i.i.i22.i, %.val.i.i.i.i15.i ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %i.hx
  %.val1.i.i.i.i.i.i23.i = load i8, ptr %i.hy, align 1, !alias.scope !16793, !noalias !16786, !noundef !6
  %i.hz = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %i.hx
  call void @llvm.experimental.noalias.scope.decl(metadata !16787)
  call void @llvm.experimental.noalias.scope.decl(metadata !16788)
  store i8 %.val1.i.i.i.i.i.i23.i, ptr %i.hz, align 1, !alias.scope !16794, !noalias !16795
  %i.ia = add i64 %i.hw, 1
  store i64 %i.ia, ptr %i.cf, align 8, !noalias !16783
  %i.ib = add nuw i64 %.sroa.0.011.i.i.i.i22.i, 2 ; 2 uses
  %.reass233 = add i64 %.sroa.0.011.i.i.i.i22.i, %invariant.op232 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i19.i, i64 %.reass233
  %.val1.i.i.i.i.i.i23.i.1 = load i8, ptr %i.ic, align 1, !alias.scope !16793, !noalias !16796, !noundef !6
  %i.id = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i20.i, i64 %.reass233
  call void @llvm.experimental.noalias.scope.decl(metadata !16797)
  call void @llvm.experimental.noalias.scope.decl(metadata !16798)
  store i8 %.val1.i.i.i.i.i.i23.i.1, ptr %i.id, align 1, !alias.scope !16799, !noalias !16795
  %i.ie = add i64 %i.hw, 2                        ; 3 uses
  store i64 %i.ie, ptr %i.cf, align 8, !noalias !16800
  %exitcond.not.i.i.i.i24.i.1 = icmp eq i64 %i.ib, %i.hd
  br i1 %exitcond.not.i.i.i.i24.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i", label %scalar.ph, !llvm.loop !16544

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i27.i": ; preds = %.lr.ph91.i
  %.pr.i.i.i28.i = load i64, ptr %i.cf, align 8, !noalias !16778
  br label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i": ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block116, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i27.i"
  %i.if = phi i64 [ %.pr.i.i.i28.i, %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exitthread-pre-split.i.i.i27.i" ], [ %i.hn, %middle.block116 ], [ %.lcssa195.unr, %scalar.ph.prol.loopexit ], [ %i.ie, %scalar.ph ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16778
  %i.ig = icmp ult i64 %i.if, 128
  br i1 %i.ig, label %bb.h, label %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit29.i", !prof !14

bb.h:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i"
  call void @_ZN13generic_array21from_iter_length_fail17h73ec14a442e40ad9E(i64 noundef %i.if, i64 noundef 128) #50, !noalias !16779
  unreachable

"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit29.i": ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h9f3bfc8df32b674cE.exit.i.i.i25.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.cj, ptr noundef nonnull align 8 dereferenceable(128) %i.n, i64 128, i1 false), !noalias !16801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16778
  %i.ih = load i8, ptr %i.bq, align 16, !alias.scope !16776, !noalias !16802, !noundef !6 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.ac, ptr noundef nonnull align 16 dereferenceable(160) %i.o, i64 160, i1 false), !noalias !16801
  store i8 %i.ih, ptr %.sroa.4.0..sroa_idx.i26.i, align 16, !alias.scope !16775, !noalias !16801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16777
  call void @llvm.experimental.noalias.scope.decl(metadata !16803)
  call void @llvm.experimental.noalias.scope.decl(metadata !16804)
  call void @llvm.experimental.noalias.scope.decl(metadata !16805)
  %i.ii = zext nneg i8 %i.ih to i64               ; 5 uses
  %i.ij = icmp sgt i8 %i.ih, -1
  call void @llvm.assume(i1 %i.ij)
  %i.ik = icmp samesign ult i8 %i.ih, 64
  br i1 %i.ik, label %bb.i, label %.thread75.i

.thread75.i:                                      ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit29.i"
  %i.il = sub nuw nsw i64 128, %i.ii              ; 2 uses
  %i.im = add nsw i64 %i.ii, -64                  ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.il
  %i.io = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.io, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.ag, i64 %i.il, i1 false), !alias.scope !16806, !noalias !16807
  %i.ip = load i128, ptr %i.ck, align 16, !alias.scope !16808, !noalias !16809, !noundef !6
  %i.iq = add i128 %i.ip, 1
  store i128 %i.iq, ptr %i.ck, align 16, !alias.scope !16808, !noalias !16809
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.cj, i64 noundef range(i64 1, 0) 1), !noalias !16810
  %i.ir = and i64 %i.im, -128
  %i.is = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ir
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(129) %i.cj, ptr nonnull readonly align 1 %i.is, i64 %i.im, i1 false), !alias.scope !16811, !noalias !16812
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i"

bb.i:                                             ; preds = %"_ZN86_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h12e9a013d3caaf17E.exit29.i"
  %i.it = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ii
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.it, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.ag, i64 64, i1 false), !alias.scope !16813, !noalias !16814
  %i.iu = or disjoint i64 %i.ii, 64
  br label %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i"

"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i": ; preds = %bb.i, %.thread75.i
  %storemerge.in.i.i33.i = phi i64 [ %i.im, %.thread75.i ], [ %i.iu, %bb.i ]
  %storemerge.i.i34.i = trunc nuw nsw i64 %storemerge.in.i.i33.i to i8
  store i8 %storemerge.i.i34.i, ptr %.sroa.4.0..sroa_idx.i26.i, align 16, !alias.scope !16815, !noalias !16816
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !16817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.k, ptr noundef nonnull align 16 dereferenceable(304) %i.ac, i64 304, i1 false), !noalias !16679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.l, i8 0, i64 64, i1 false), !alias.scope !16818, !noalias !16817
  call void @llvm.experimental.noalias.scope.decl(metadata !16819)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.j, i8 0, i64 64, i1 false), !alias.scope !16820, !noalias !16821
  call void @llvm.experimental.noalias.scope.decl(metadata !16822)
  call void @llvm.experimental.noalias.scope.decl(metadata !16823)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16824
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.e, i8 0, i64 64, i1 false), !alias.scope !16825, !noalias !16824
  call void @llvm.experimental.noalias.scope.decl(metadata !16826), !noalias !16827
  call void @llvm.experimental.noalias.scope.decl(metadata !16828), !noalias !16827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16824
  %i.iv = load i8, ptr %i.cm, align 16, !alias.scope !16829, !noalias !16830, !noundef !6 ; 4 uses
  %i.iw = icmp sgt i8 %i.iv, -1
  call void @llvm.assume(i1 %i.iw), !noalias !16827
  %i.ix = zext nneg i8 %i.iv to i128
  %i.iy = load i128, ptr %i.cn, align 16, !alias.scope !16831, !noalias !16832, !noundef !6
  %i.iz = shl i128 %i.iy, 10
  %i.ja = shl nuw nsw i128 %i.ix, 3
  %i.jb = or disjoint i128 %i.iz, %i.ja
  %i.jc = call i128 @llvm.bswap.i128(i128 %i.jb)  ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16833), !noalias !16827
  %i.jd = zext nneg i8 %i.iv to i64               ; 3 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.jd ; 2 uses
  store i8 -128, ptr %i.je, align 1, !alias.scope !16834, !noalias !16835
  %i.jf = icmp eq i8 %i.iv, 127
  br i1 %i.jf, label %._crit_edge.thread.i.i59.i, label %._crit_edge.i.i47.i

._crit_edge.i.i47.i:                              ; preds = %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i"
  %i.jg = getelementptr i8, ptr %i.je, i64 1
  %i.jh = xor i64 %i.jd, 127
  call void @llvm.memset.p0.i64(ptr align 1 %i.jg, i8 0, i64 %i.jh, i1 false), !alias.scope !16834, !noalias !16835
  %i.ji = xor i64 %i.jd, 112
  %i.jj = icmp samesign ult i64 %i.ji, 16
  br i1 %i.jj, label %._crit_edge.thread.i.i59.i, label %bb.j

._crit_edge.thread.i.i59.i:                       ; preds = %._crit_edge.i.i47.i, %"_ZN82_$LT$digest..core_api..wrapper..CoreWrapper$LT$T$GT$$u20$as$u20$digest..Update$GT$6update17he9f17a2f1caac8ddE.exit35.i"
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.cl, i64 noundef 1), !noalias !16836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16837
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.b, i8 0, i64 112, i1 false), !alias.scope !16838, !noalias !16839
  store i128 %i.jc, ptr %i.cp, align 1, !alias.scope !16840, !noalias !16841
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(128) %i.b, i64 noundef 1), !noalias !16836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16837
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i48.i"

bb.j:                                             ; preds = %._crit_edge.i.i47.i
  store i128 %i.jc, ptr %i.co, align 16, !alias.scope !16842, !noalias !16843
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(304) %i.k, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.cl, i64 noundef 1), !noalias !16836
  br label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i48.i"

"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i48.i": ; preds = %bb.j, %._crit_edge.thread.i.i59.i
  store i8 0, ptr %i.cm, align 16, !alias.scope !16834, !noalias !16835
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16844
  store ptr %i.cq, ptr %i.a, align 8, !noalias !16845
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i49.i, align 8, !noalias !16845
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx.i.i50.i, align 8, !noalias !16845
  store i64 64, ptr %.sroa.6.0..sroa_idx.i.i51.i, align 8, !noalias !16845
  store i64 8, ptr %.sroa.7.0..sroa_idx.i.i52.i, align 8, !noalias !16845
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h58850fa5ebba578bE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.a, ptr noundef nonnull align 16 dereferenceable(304) %i.k, ptr noundef nonnull %i.cn), !noalias !16846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false), !noalias !16847
  %i.jk = load i64, ptr %i.cr, align 8, !alias.scope !16848, !noalias !16849, !noundef !6 ; 2 uses
  %i.jl = load i64, ptr %i.cs, align 8, !alias.scope !16848, !noalias !16849, !noundef !6
  %i.jm = icmp ult i64 %i.jk, %i.jl
  br i1 %i.jm, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i54.i", label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i54.i": ; preds = %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i48.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i"
  %i.jn = phi i64 [ %i.jv, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i" ], [ %i.jk, %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i48.i" ] ; 3 uses
  %i.jo = add nuw i64 %i.jn, 1
  store i64 %i.jo, ptr %i.cr, align 8, !alias.scope !16848, !noalias !16849
  %i.jp = call { ptr, i64 } @"_ZN101_$LT$core..slice..iter..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17hc722127bb720d610E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, i64 noundef %i.jn), !noalias !16850 ; 2 uses
  %i.jq = extractvalue { ptr, i64 } %i.jp, 0      ; 2 uses
  %.not.i.i55.i = icmp eq ptr %i.jq, null
  br i1 %.not.i.i55.i, label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i", label %bb.k

bb.k:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i54.i"
  %i.jr = extractvalue { ptr, i64 } %i.jp, 1      ; 2 uses
  %.val.i.i.i56.i = load ptr, ptr %i.ct, align 8, !alias.scope !16848, !noalias !16849, !nonnull !6, !noundef !6
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i56.i, i64 %i.jn
  %i.jt = load i64, ptr %i.js, align 8, !noalias !16851, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !16852), !noalias !16827
  call void @llvm.experimental.noalias.scope.decl(metadata !16853), !noalias !16827
  %.not.i.i.i57.i = icmp eq i64 %i.jr, 8
  br i1 %.not.i.i.i57.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i", label %bb.l, !prof !19

bb.l:                                             ; preds = %bb.k
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.jr, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @636) #50, !noalias !16854
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i": ; preds = %bb.k
  %i.ju = call i64 @llvm.bswap.i64(i64 %i.jt)
  store i64 %i.ju, ptr %i.jq, align 1, !alias.scope !16855, !noalias !16856
  %i.jv = load i64, ptr %i.cr, align 8, !alias.scope !16848, !noalias !16849, !noundef !6 ; 2 uses
  %i.jw = load i64, ptr %i.cs, align 8, !alias.scope !16848, !noalias !16849, !noundef !6
  %i.jx = icmp ult i64 %i.jv, %i.jw
  br i1 %i.jx, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i54.i", label %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i"

"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i58.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i54.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i48.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.j, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.e, i64 64, i1 false), !alias.scope !16857, !noalias !16858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16824
  call void @llvm.experimental.noalias.scope.decl(metadata !16859)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.cl, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.j, i64 64, i1 false), !alias.scope !16860, !noalias !16861
  store i8 64, ptr %i.cm, align 16, !alias.scope !16862, !noalias !16863
  call void @llvm.experimental.noalias.scope.decl(metadata !16864)
  call void @llvm.experimental.noalias.scope.decl(metadata !16865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16866
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.i, i8 0, i64 64, i1 false), !alias.scope !16867, !noalias !16866
  call void @llvm.experimental.noalias.scope.decl(metadata !16868), !noalias !16869
  call void @llvm.experimental.noalias.scope.decl(metadata !16870), !noalias !16869
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16866
  %i.jy = load i128, ptr %i.cv, align 16, !alias.scope !16871, !noalias !16872, !noundef !6
  %i.jz = shl i128 %i.jy, 10
  %i.ka = or disjoint i128 %i.jz, 512
  %i.kb = call i128 @llvm.bswap.i128(i128 %i.ka)
  store i8 -128, ptr %i.de, align 16, !alias.scope !16873, !noalias !16874
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.df, i8 0, i64 47, i1 false), !alias.scope !16873, !noalias !16874
  store i128 %i.kb, ptr %i.co, align 16, !alias.scope !16875, !noalias !16876
  call void @_ZN4sha26sha51211compress51217h97998c3175954028E(ptr noalias noundef nonnull align 16 dereferenceable(80) %i.cu, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(129) %i.cl, i64 noundef 1), !noalias !16877
  store i8 0, ptr %i.cm, align 16, !alias.scope !16873, !noalias !16874
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16878
  store ptr %i.cw, ptr %i.f, align 8, !noalias !16879
  store i64 0, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16879
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !16879
  store i64 64, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !16879
  store i64 8, ptr %.sroa.7.0..sroa_idx.i.i.i, align 8, !noalias !16879
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h58850fa5ebba578bE"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(40) %i.f, ptr noundef nonnull align 16 dereferenceable(80) %i.cu, ptr noundef nonnull %i.cv), !noalias !16880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16881
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.h, i64 72, i1 false), !noalias !16881
  %i.kc = load i64, ptr %i.cx, align 8, !alias.scope !16882, !noalias !16883, !noundef !6 ; 2 uses
  %i.kd = load i64, ptr %i.cy, align 8, !alias.scope !16882, !noalias !16883, !noundef !6
  %i.ke = icmp ult i64 %i.kc, %i.kd
  br i1 %i.ke, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i", label %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE.exit.i"

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i": ; preds = %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i"
  %i.kf = phi i64 [ %i.kn, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i" ], [ %i.kc, %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i" ] ; 3 uses
  %i.kg = add nuw i64 %i.kf, 1
  store i64 %i.kg, ptr %i.cx, align 8, !alias.scope !16882, !noalias !16883
  %i.kh = call { ptr, i64 } @"_ZN101_$LT$core..slice..iter..ChunksExactMut$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$24__iterator_get_unchecked17hc722127bb720d610E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g, i64 noundef %i.kf), !noalias !16884 ; 2 uses
  %i.ki = extractvalue { ptr, i64 } %i.kh, 0      ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ki, null
  br i1 %.not.i.i.i, label %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE.exit.i", label %bb.m

bb.m:                                             ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i"
  %i.kj = extractvalue { ptr, i64 } %i.kh, 1      ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.cz, align 8, !alias.scope !16882, !noalias !16883, !nonnull !6, !noundef !6
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i.i, i64 %i.kf
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !16885, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !16886), !noalias !16869
  call void @llvm.experimental.noalias.scope.decl(metadata !16887), !noalias !16869
  %.not.i.i.i.i = icmp eq i64 %i.kj, 8
  br i1 %.not.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i", label %bb.n, !prof !19

bb.n:                                             ; preds = %bb.m
  call void @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17len_mismatch_fail17hb23ab9e23fc1a789E"(i64 noundef %i.kj, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @636) #50, !noalias !16888
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i": ; preds = %bb.m
  %i.km = call i64 @llvm.bswap.i64(i64 %i.kl)
  store i64 %i.km, ptr %i.ki, align 1, !alias.scope !16889, !noalias !16890
  %i.kn = load i64, ptr %i.cx, align 8, !alias.scope !16882, !noalias !16883, !noundef !6 ; 2 uses
  %i.ko = load i64, ptr %i.cy, align 8, !alias.scope !16882, !noalias !16883, !noundef !6
  %i.kp = icmp ult i64 %i.kn, %i.ko
  br i1 %i.kp, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i", label %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE.exit.i"

"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE.exit.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hb3b8d38790346b65E.exit.i.i46.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4next17h57503f6144f4e63dE.exit.i.i.i", %"_ZN12block_buffer50BlockBuffer$LT$BlockSize$C$block_buffer..Eager$GT$10digest_pad17h2167a50a2f52460aE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.l, ptr noundef nonnull readonly align 1 dereferenceable(64) %i.i, i64 64, i1 false), !alias.scope !16891, !noalias !16892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !16817
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.ag, ptr noundef nonnull align 1 dereferenceable(64) %i.l, i64 64, i1 false), !noalias !16679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !16693
  call void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h92fc9665f0656228E"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aa, ptr noundef nonnull align 1 %.sroa.061.094.i, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.da)
  call void @llvm.experimental.noalias.scope.decl(metadata !16893)
  %.val.i36.i = load i64, ptr %i.db, align 8, !alias.scope !16893, !noalias !16679, !noundef !6 ; 11 uses
  %.val8.i37.i = load i64, ptr %i.dc, align 8, !alias.scope !16893, !noalias !16679, !noundef !6 ; 6 uses
  %i.kq = sub i64 %.val8.i37.i, %.val.i36.i       ; 8 uses
  %.not.i38.i = icmp eq i64 %.val8.i37.i, %.val.i36.i
  br i1 %.not.i38.i, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %iter.check

iter.check:                                       ; preds = %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE.exit.i"
  %.val1.i.i40.i = load ptr, ptr %i.aa, align 8, !alias.scope !16894, !noalias !16679, !nonnull !6, !noundef !6 ; 7 uses
  %.val.i.i41.i = load ptr, ptr %i.dd, align 8, !alias.scope !16894, !noalias !16679, !nonnull !6, !noundef !6 ; 7 uses
  %min.iters.check = icmp ult i64 %i.kq, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr nuw i8, ptr %.val1.i.i40.i, i64 %.val.i36.i
  %scevgep72 = getelementptr i8, ptr %.val1.i.i40.i, i64 %.val8.i37.i
  %scevgep73 = getelementptr nuw i8, ptr %.val.i.i41.i, i64 %.val.i36.i
  %scevgep74 = getelementptr i8, ptr %.val.i.i41.i, i64 %.val8.i37.i
  %bound0 = icmp ult ptr %scevgep, %scevgep74
  %bound1 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check75 = icmp ult i64 %i.kq, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph76

vector.ph76:                                      ; preds = %vector.main.loop.iter.check
  %i.kr = and i64 %i.kq, 28
  %n.vec = and i64 %i.kq, -32                     ; 4 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.ph76, %vector.body77
  %index78 = phi i64 [ 0, %vector.ph76 ], [ %index.next83, %vector.body77 ] ; 2 uses
  %i.ks = add i64 %index78, %.val.i36.i           ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %i.ks ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %i.ks ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %wide.load79 = load <16 x i8>, ptr %i.ku, align 1, !alias.scope !16895, !noalias !16893
  %wide.load80 = load <16 x i8>, ptr %i.kv, align 1, !alias.scope !16895, !noalias !16893
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %wide.load81 = load <16 x i8>, ptr %i.kt, align 1, !alias.scope !16896, !noalias !16897
  %wide.load82 = load <16 x i8>, ptr %i.kw, align 1, !alias.scope !16896, !noalias !16897
  %i.kx = xor <16 x i8> %wide.load81, %wide.load79
  %i.ky = xor <16 x i8> %wide.load82, %wide.load80
  store <16 x i8> %i.kx, ptr %i.kt, align 1, !alias.scope !16896, !noalias !16897
  store <16 x i8> %i.ky, ptr %i.kw, align 1, !alias.scope !16896, !noalias !16897
  %index.next83 = add nuw i64 %index78, 32        ; 2 uses
  %i.kz = icmp eq i64 %index.next83, %n.vec
  br i1 %i.kz, label %middle.block84, label %vector.body77, !llvm.loop !16675

middle.block84:                                   ; preds = %vector.body77
  %cmp.n = icmp eq i64 %i.kq, %n.vec
  br i1 %cmp.n, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block84
  %min.epilog.iters.check = icmp eq i64 %i.kr, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !56

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec85 = and i64 %i.kq, -4                    ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index86 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next89, %vec.epilog.vector.body ] ; 2 uses
  %i.la = add i64 %index86, %.val.i36.i           ; 2 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %i.la ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %i.la
  %wide.load87 = load <4 x i8>, ptr %i.lc, align 1, !alias.scope !16895, !noalias !16893
  %wide.load88 = load <4 x i8>, ptr %i.lb, align 1, !alias.scope !16896, !noalias !16897
  %i.ld = xor <4 x i8> %wide.load88, %wide.load87
  store <4 x i8> %i.ld, ptr %i.lb, align 1, !alias.scope !16896, !noalias !16897
  %index.next89 = add nuw i64 %index86, 4         ; 2 uses
  %i.le = icmp eq i64 %index.next89, %n.vec85
  br i1 %i.le, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16676

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n90 = icmp eq i64 %i.kq, %n.vec85
  br i1 %cmp.n90, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.010.i42.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec85, %vec.epilog.middle.block ] ; 4 uses
  %10 = sub i64 %.val8.i37.i, %.val.i36.i
  %i.lf = xor i64 %.sroa.0.010.i42.i.ph, -1
  %i.lg = add i64 %.val8.i37.i, %i.lf
  %xtraiter212 = and i64 %10, 1
  %lcmp.mod213.not = icmp eq i64 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.lh = or disjoint i64 %.sroa.0.010.i42.i.ph, 1
  %i.li = add i64 %.sroa.0.010.i42.i.ph, %.val.i36.i ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %i.li ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %i.li
  %.val9.i43.i.prol = load i8, ptr %i.lk, align 1, !noalias !16893, !noundef !6
  %i.ll = load i8, ptr %i.lj, align 1, !alias.scope !16898, !noalias !16893, !noundef !6
  %i.lm = xor i8 %i.ll, %.val9.i43.i.prol
  store i8 %i.lm, ptr %i.lj, align 1, !alias.scope !16898, !noalias !16893
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.sroa.0.010.i42.i.unr = phi i64 [ %.sroa.0.010.i42.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.lh, %vec.epilog.scalar.ph.prol ]
  %i.ln = icmp eq i64 %i.lg, %.val.i36.i
  br i1 %i.ln, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %vec.epilog.scalar.ph.preheader.new

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.scalar.ph.prol.loopexit
  %invariant.op234 = add i64 1, %.val.i36.i
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.sroa.0.010.i42.i = phi i64 [ %.sroa.0.010.i42.i.unr, %vec.epilog.scalar.ph.preheader.new ], [ %i.lt, %vec.epilog.scalar.ph ] ; 3 uses
  %i.lo = add i64 %.sroa.0.010.i42.i, %.val.i36.i ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %i.lo ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %i.lo
  %.val9.i43.i = load i8, ptr %i.lq, align 1, !noalias !16893, !noundef !6
  %i.lr = load i8, ptr %i.lp, align 1, !alias.scope !16898, !noalias !16893, !noundef !6
  %i.ls = xor i8 %i.lr, %.val9.i43.i
  store i8 %i.ls, ptr %i.lp, align 1, !alias.scope !16898, !noalias !16893
  %i.lt = add nuw i64 %.sroa.0.010.i42.i, 2       ; 2 uses
  %.reass235 = add i64 %.sroa.0.010.i42.i, %invariant.op234 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %.val1.i.i40.i, i64 %.reass235 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %.val.i.i41.i, i64 %.reass235
  %.val9.i43.i.1 = load i8, ptr %i.lv, align 1, !noalias !16893, !noundef !6
  %i.lw = load i8, ptr %i.lu, align 1, !alias.scope !16898, !noalias !16893, !noundef !6
  %i.lx = xor i8 %i.lw, %.val9.i43.i.1
  store i8 %i.lx, ptr %i.lu, align 1, !alias.scope !16898, !noalias !16893
  %exitcond.not.i44.i.1 = icmp eq i64 %i.lt, %i.kq
  br i1 %exitcond.not.i44.i.1, label %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", label %vec.epilog.scalar.ph, !llvm.loop !16677

"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i": ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block84, %vec.epilog.middle.block, %"_ZN129_$LT$digest..core_api..ct_variable..CtVariableCoreWrapper$LT$T$C$OutSize$C$O$GT$$u20$as$u20$digest..core_api..FixedOutputCore$GT$19finalize_fixed_core17h7ebc6752ef81714dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !16693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !16693
  %i.ly = icmp ult i32 %.sroa.05.1.i90.i, %4      ; 2 uses
  %i.lz = zext i1 %i.ly to i32
  %.sroa.05.1.i.i = add nuw i32 %.sroa.05.1.i90.i, %i.lz
  br i1 %i.ly, label %.lr.ph91.i, label %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i

_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i: ; preds = %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit45.i", %"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$4fold17h3b62df96dca232a5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !16693
  %i.ma = icmp eq i64 %i.dh, 0
  br i1 %i.ma, label %_ZN6pbkdf26pbkdf217h2e7d54c9741cdbc3E.exit, label %._crit_edge.i

_ZN6pbkdf26pbkdf217h2e7d54c9741cdbc3E.exit:       ; preds = %_ZN6pbkdf211pbkdf2_body17h6cd19832fa7e6e40E.exit.i, %vector.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !16679
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$alloc..borrow..Cow$LT$str$GT$$u20$as$u20$anki..text..Trimming$GT$4trim17hffcffedb039672baE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = load i64, ptr %1, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.b, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6 ; 3 uses
  %i.g = invoke { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h24b74c5c35210385E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f)
          to label %bb.f unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !6, !align !15, !noundef !6
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %i.l = tail call { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17h24b74c5c35210385E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef %i.k) ; 2 uses
  %i.m = extractvalue { ptr, i64 } %i.l, 0
  %i.n = extractvalue { ptr, i64 } %i.l, 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.p, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", %bb.c
  ret void

bb.e:                                             ; preds = %bb.i, %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a) #51
          to label %common.resume unwind label %bb.p

bb.f:                                             ; preds = %bb.b
  %i.r = extractvalue { ptr, i64 } %i.g, 1        ; 8 uses
  %i.s = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.s)
  %i.t = icmp eq i64 %i.r, %i.f
  br i1 %i.t, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = extractvalue { ptr, i64 } %i.g, 0
  %i.v = icmp slt i64 %i.r, 0
  br i1 %i.v, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i, !prof !22

_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i: ; preds = %bb.g
  %i.w = icmp eq i64 %i.r, 0
  br i1 %i.w, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !16914
  %i.x = tail call noundef ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !16914 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.h ], [ 0, %bb.g ]
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.r) #50
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

bb.k:                                             ; preds = %bb.h, %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h70634feba4742ac7E.exit.i.i.i ], [ %i.x, %bb.h ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.u, i64 %i.r, i1 false), !noalias !16915
  store i64 %i.r, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %.sroa.53.0..sroa_idx, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.n unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !16916 ; 2 uses
  %i.aa = icmp eq i64 %.val2.i.i, 0
  br i1 %i.aa, label %common.resume, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val3.i.i = load ptr, ptr %i.c, align 8, !alias.scope !16917, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !16918
  br label %common.resume

bb.n:                                             ; preds = %bb.k
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !16916 ; 2 uses
  %i.ab = icmp eq i64 %.val.i.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", label %bb.o

bb.o:                                             ; preds = %bb.n
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !16917, !nonnull !6, !noundef !6
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #52, !noalias !16919
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"

common.resume:                                    ; preds = %bb.e, %bb.l, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.z, %bb.l ], [ %i.z, %bb.m ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.o, %bb.n, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.p:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$anki..typeanswer..Diff$u20$as$u20$anki..typeanswer..DiffTrait$GT$21get_expected_original17he4ff500fd998a75fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !6
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.g ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16926
  store i64 0, ptr %i.c, align 8, !noalias !16926
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16926
end_hunk_0
