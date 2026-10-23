Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 148
loop-unroll.NumUnrolled: 257
begin_hunk_0_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt17h2907d6ea8753547bE":bb.a
          to label %.body699 unwind label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  %i.ams = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.qq:                                            ; preds = %bb.qm
  %i.amt = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.amt, ptr noundef nonnull align 8 dereferenceable(24) %i.gf, i64 24, i1 false)
  %i.amu = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  store i64 %.sink10.i, ptr %i.amu, align 8
  store i64 23, ptr %i.gg, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gf)
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gh, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.gg, i16 noundef %i.xr, i16 noundef %i.xt)
          to label %bb.qr unwind label %.thread1221

bb.qr:                                            ; preds = %bb.qq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gg)
  %i.amv = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amv, ptr noundef nonnull align 8 dereferenceable(16) %i.gh, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gh)
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$rhai..ast..script_fn..ScriptFuncDef$GT$17h0143014b1c2840f2E"(ptr noalias noundef align 8 dereferenceable(216) %i.gi)
          to label %bb.qs unwind label %bb.qi

bb.qs:                                            ; preds = %bb.qr, %bb.qe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$rhai..parser..ParseState$GT$17h9b407ea241413be0E"(ptr noalias noundef align 8 dereferenceable(96) %i.gj)
          to label %bb.qy unwind label %bb.hg

bb.qt:                                            ; preds = %bb.qn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.amq, ptr noundef nonnull align 8 dereferenceable(232) %i.eu, i64 232, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eu)
  %i.amw = invoke fastcc noundef ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17ha65bcda06f32f92eE"(ptr noalias noundef align 8 dereferenceable(32) %i.amm, i64 noundef %i.aml, ptr noundef nonnull %i.amq)
          to label %bb.qu unwind label %bb.qi     ; 3 uses

bb.qu:                                            ; preds = %bb.qt
  store ptr %i.amw, ptr %i.ge, align 8
  %i.amx = icmp eq ptr %i.amw, null
  br i1 %i.amx, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit", label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.amy = atomicrmw add ptr %i.amw, i64 -1 release, align 8, !noalias !36610
  %i.amz = icmp eq i64 %i.amy, 1
  br i1 %i.amz, label %bb.qw, label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit"

bb.qw:                                            ; preds = %bb.qv
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h534c90ae505f04c7E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ge)
          to label %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit" unwind label %bb.qi

"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit": ; preds = %bb.qv, %bb.qu, %bb.qw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ge)
  %i.ana = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ana, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.xr, ptr %.sroa.427.0..sroa_idx, align 2
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.xt, ptr %.sroa.528.0..sroa_idx, align 4
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gi)
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$rhai..parser..ParseState$GT$17h9b407ea241413be0E"(ptr noalias noundef align 8 dereferenceable(96) %i.gj)
          to label %bb.qx unwind label %bb.hg

bb.qx:                                            ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$rhai..ast..script_fn..ScriptFuncDef$GT$$GT$$GT$17h587f3a5b679f6603E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj)
  br label %bb.hi

bb.qy:                                            ; preds = %bb.qs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gj)
  call void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.gp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gp)
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_try_catch17h59c746056825ecb9E.exit"

bb.qz:                                            ; preds = %bb.hl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gk)
  %i.anb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anb, ptr noundef nonnull align 8 dereferenceable(16) %i.gl, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gl)
  br label %bb.hi

"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit": ; preds = %bb.hc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ga)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fy)
  store ptr @1243, ptr %i.fy, align 8
  %.sroa.4254.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr @"_ZN61_$LT$rhai..tokenizer..Token$u20$as$u20$core..fmt..Display$GT$3fmt17hea7d9051570f50daE", ptr %.sroa.4254.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !36611
  store ptr @1246, ptr %i.aj, align 8, !noalias !36612
  %.sroa.4841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 2, ptr %.sroa.4841.0..sroa_idx, align 8, !noalias !36612
  %.sroa.5.0..sroa_idx842 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.fy, ptr %.sroa.5.0..sroa_idx842, align 8, !noalias !36612
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !36612
  %.sroa.7843.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr null, ptr %.sroa.7843.0..sroa_idx, align 8, !noalias !36612
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.fz, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.aj)
          to label %bb.rc unwind label %bb.ra

bb.ra:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit"
  %i.anc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36613)
  call void @llvm.experimental.noalias.scope.decl(metadata !36614)
  %.val.i.i709 = load i64, ptr %i.gb, align 8, !range !63, !alias.scope !36615, !noundef !53 ; 2 uses
  %i.and = icmp eq i64 %.val.i.i709, 0
  br i1 %i.and, label %.body, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.ane = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %.val1.i.i710 = load ptr, ptr %i.ane, align 8, !alias.scope !36615, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i710, i64 noundef %.val.i.i709, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !36615
  br label %.body

bb.rc:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !36611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fy)
  %i.anf = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.anf, ptr noundef nonnull align 8 dereferenceable(24) %i.gb, i64 24, i1 false)
  %i.ang = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ang, ptr noundef nonnull align 8 dereferenceable(24) %i.fz, i64 24, i1 false)
  store i64 3, ptr %i.gc, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gb)
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.gd, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.gc, i16 noundef %i.xf, i16 noundef %i.xh)
          to label %bb.rd unwind label %bb.hg

bb.rd:                                            ; preds = %bb.rc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gc)
  %i.anh = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.anh, ptr noundef nonnull align 8 dereferenceable(16) %i.gd, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.gd)
  br label %bb.hi

bb.re:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fh)
  store i64 34, ptr %i.fh, align 8
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.fi, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.fh, i16 noundef %i.ha, i16 noundef %i.hc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fh)
  %i.ani = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.anj = load <2 x i64>, ptr %i.fi, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fi)
  store <2 x i64> %i.anj, ptr %i.ani, align 8
  store i64 1, ptr %0, align 8
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_try_catch17h59c746056825ecb9E.exit"

bb.rf:                                            ; preds = %.thread
  %i.ank = add i64 %i.hi, 1
  %i.anl = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.anm = load i8, ptr %i.anl, align 2, !noundef !53
  %i.ann = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ano = load i16, ptr %i.ann, align 4, !noundef !53
  store i64 %i.ank, ptr %i.fj, align 8
  %.sroa.6113.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  store i64 %i.hg, ptr %.sroa.6113.sroa.7.0..sroa_idx, align 8
  %.sroa.6113.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  store i16 %i.ha, ptr %.sroa.6113.sroa.8.0..sroa_idx, align 8
  %.sroa.6113.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 18
  store i16 %i.hc, ptr %.sroa.6113.sroa.9.0..sroa_idx, align 2
  %.sroa.6113.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  store i16 %i.ano, ptr %.sroa.6113.sroa.10.0..sroa_idx, align 4
  %.sroa.6113.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fj, i64 22
  store i8 %i.anm, ptr %.sroa.6113.sroa.11.0..sroa_idx, align 2
  call fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_expr_stmt17h3cd4becd62a747f8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.fj)
  br label %"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_try_catch17h59c746056825ecb9E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_block17h3edac4abab9a228aE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 16              ; 6 uses
  %i.b = alloca [136 x i8], align 8               ; 6 uses
  %i.c = alloca [152 x i8], align 8               ; 9 uses
  %i.d = alloca [136 x i8], align 8               ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [16 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [16 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [144 x i8], align 8               ; 6 uses
  %i.s = alloca [16 x i8], align 8                ; 6 uses
  %i.t = alloca [24 x i8], align 8                ; 6 uses
  %i.u = alloca [56 x i8], align 8                ; 6 uses
  %i.v = alloca [16 x i8], align 8                ; 4 uses
  %i.w = alloca [48 x i8], align 8                ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 4 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 10 uses
  %i.aa = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.643 = alloca [16 x i8], align 8          ; 6 uses
  %i.ab = alloca [16 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [56 x i8], align 8               ; 8 uses
  %i.ae = alloca [16 x i8], align 8               ; 4 uses
  %i.af = alloca [16 x i8], align 8               ; 6 uses
  %i.ag = alloca [24 x i8], align 8               ; 6 uses
  %i.ah = alloca [56 x i8], align 8               ; 8 uses
  %i.ai = alloca [16 x i8], align 8               ; 4 uses
  %i.aj = alloca [48 x i8], align 8               ; 4 uses
  %i.ak = alloca [16 x i8], align 8               ; 4 uses
  %i.al = alloca [144 x i8], align 8              ; 6 uses
  %i.am = alloca [24 x i8], align 8               ; 7 uses
  %i.an = alloca [24 x i8], align 8               ; 13 uses
  %i.ao = alloca [24 x i8], align 8               ; 10 uses
  %i.ap = alloca [24 x i8], align 8               ; 5 uses
  %.sroa.634 = alloca [16 x i8], align 8          ; 6 uses
  %i.aq = alloca [144 x i8], align 16             ; 16 uses
  %i.ar = alloca [16 x i8], align 8               ; 6 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [56 x i8], align 8               ; 8 uses
  %i.au = alloca [16 x i8], align 8               ; 4 uses
  %i.av = alloca [48 x i8], align 8               ; 4 uses
  %i.aw = alloca [16 x i8], align 8               ; 4 uses
  %i.ax = alloca [24 x i8], align 8               ; 7 uses
  %i.ay = alloca [24 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  %i.az = load ptr, ptr %2, align 8, !nonnull !53, !align !54, !noundef !53 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 224 ; 2 uses
  %.sroa.052.0.copyload = load i32, ptr %i.ba, align 8 ; 3 uses
  store i32 87, ptr %i.ba, align 8
  %.not = icmp eq i32 %.sroa.052.0.copyload, 87
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 228
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.457.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.554.0..sroa_idx, i64 20, i1 false)
  store i32 %.sroa.052.0.copyload, ptr %i.ax, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.az)
  %.pr = load i32, ptr %i.ax, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bb = phi i32 [ %.pr, %bb.c ], [ %.sroa.052.0.copyload, %bb.b ]
  %.not104 = icmp eq i32 %i.bb, 86
  br i1 %.not104, label %bb.f, label %bb.e, !prof !64

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.bc = load i32, ptr %i.ay, align 8, !range !94, !noundef !53 ; 3 uses
  switch i32 %i.bc, label %bb.g [
    i32 6, label %bb.k
    i32 82, label %bb.l
  ], !prof !150

bb.f:                                             ; preds = %bb.d
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1250) #70
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.be = load i16, ptr %i.bd, align 8, !noundef !53
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 18
  %i.bg = load i16, ptr %i.bf, align 2, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i32 6, ptr %i.ar, align 8
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hed1e3aadb7a44a63E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ar)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar) #72
          to label %.body167 unwind label %bb.j, !noalias !36711

bb.i:                                             ; preds = %bb.g
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ar)
          to label %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit169" unwind label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !36711
  unreachable

bb.k:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %4 = load i32, ptr %i.bj, align 8               ; 5 uses
  %5 = zext i32 %4 to i64
  %6 = trunc i32 %4 to i16                        ; 2 uses
  %7 = lshr i32 %4, 16
  %8 = trunc nuw i32 %7 to i16                    ; 2 uses
  call void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36712)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !36712, !noundef !53 ; 3 uses
  %i.bm = load i64, ptr %3, align 8, !alias.scope !36712
  %i.bn = freeze i64 %i.bm                        ; 2 uses
  %i.bo = add i64 %i.bl, -1
  %or.cond.i = icmp ult i64 %i.bo, %i.bn
  br i1 %or.cond.i, label %bb.w, label %bb.x, !prof !66

bb.l:                                             ; preds = %bb.e
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !53, !align !54, !noundef !53 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bs = load i16, ptr %i.br, align 8, !noundef !53
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 18
  %i.bu = load i16, ptr %i.bt, align 2, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.av, ptr noundef nonnull align 8 dereferenceable(48) %i.bq, i64 48, i1 false)
  invoke void @_ZN4rhai5types11parse_error8LexError8into_err17h6c322d3e62329f3aE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.aw, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.av, i16 noundef %i.bs, i16 noundef %i.bu)
          to label %.thread unwind label %.thread315

.thread315:                                       ; preds = %bb.l
  %i.bv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef 48, i64 noundef 8) #71
  br label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit258"

.thread:                                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bw, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bq, i64 noundef 48, i64 noundef 8) #71
  br label %bb.t

bb.m:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bx, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.by = icmp eq i32 %i.bc, 82
  br i1 %i.by, label %bb.t, label %bb.u

bb.n:                                             ; preds = %.thread325, %.body.thread, %bb.v
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

.body167:                                         ; preds = %bb.r, %bb.q, %bb.o, %bb.h
  %.pn117 = phi { ptr, i32 } [ %i.bh, %bb.h ], [ %i.cb, %bb.o ], [ %i.ce, %bb.q ], [ %i.ce, %bb.r ] ; 2 uses
  %i.ca = icmp eq i32 %i.bc, 82
  br i1 %i.ca, label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit258", label %bb.v

bb.o:                                             ; preds = %bb.i, %bb.s
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body167

"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit169": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !36713
  %i.cc = call noundef dereferenceable_or_null(26) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 26, i64 noundef range(i64 1, 9) 1) #71, !noalias !36713 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.p, label %bb.s

bb.p:                                             ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit169"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 26, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70
          to label %.noexc184 unwind label %bb.q

.noexc184:                                        ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36714)
  call void @llvm.experimental.noalias.scope.decl(metadata !36715)
  %.val.i.i = load i64, ptr %i.as, align 8, !range !63, !alias.scope !36716, !noundef !53 ; 2 uses
  %i.cf = icmp eq i64 %.val.i.i, 0
  br i1 %i.cf, label %.body167, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.val1.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !36716, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !36716
  br label %.body167

bb.s:                                             ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit169"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.cc, ptr noundef nonnull align 1 dereferenceable(26) @1251, i64 26, i1 false), !noalias !36717
  %i.ch = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ch, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store i64 26, ptr %i.ci, align 8
  %.sroa.4278.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.cc, ptr %.sroa.4278.0..sroa_idx, align 8
  %.sroa.5279.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store i64 26, ptr %.sroa.5279.0..sroa_idx, align 8
  store i64 3, ptr %i.at, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.au, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.at, i16 noundef %i.be, i16 noundef %i.bg)
          to label %bb.m unwind label %bb.o

bb.t:                                             ; preds = %.thread, %bb.u, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.bv

bb.u:                                             ; preds = %bb.m
  call void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay)
  br label %bb.t

"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit258": ; preds = %bb.bo, %bb.bs, %.thread325, %.thread315, %.body158, %bb.v, %.body167
  %.pn115.pn = phi { ptr, i32 } [ %i.bv, %.thread315 ], [ %.pn115, %.body158 ], [ %.pn117, %.body167 ], [ %.pn117, %bb.v ], [ %.pn115328, %.thread325 ], [ %i.gq, %bb.bo ], [ %i.gv, %bb.bs ]
  resume { ptr, i32 } %.pn115.pn

bb.v:                                             ; preds = %.body167
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ay) #72
          to label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit258" unwind label %bb.n

bb.w:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !36718
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !36718
  store i64 34, ptr %i.g, align 8, !noalias !36718
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ck = load i16, ptr %i.cj, align 8, !alias.scope !36712, !noundef !53
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 18
  %i.cm = load i16, ptr %i.cl, align 2, !alias.scope !36712, !noundef !53
  call void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.g, i16 noundef %i.ck, i16 noundef %i.cm), !noalias !36718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !36718
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = load <2 x i64>, ptr %i.h, align 16, !noalias !36718
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !36718
  store <2 x i64> %i.co, ptr %i.cn, align 8
  store i64 1, ptr %0, align 8
  br label %bb.bv

bb.x:                                             ; preds = %bb.k
  %i.cp = add i64 %i.bn, 1                        ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 22
  %i.cr = load i8, ptr %i.cq, align 2, !alias.scope !36712, !noundef !53 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ct = load i16, ptr %i.cs, align 4, !alias.scope !36712, !noundef !53 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 128 ; 5 uses
  store i64 0, ptr %.sroa.467.0..sroa_idx, align 16
  %i.cu = getelementptr inbounds nuw i8, ptr %i.aq, i64 136
  %9 = bitcast i32 %4 to <2 x i16>
  %i.cv = shufflevector <2 x i16> %9, <2 x i16> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  store <4 x i16> %i.cv, ptr %i.cu, align 8
  %i.cw = and i8 %i.cr, 16
  %.not105 = icmp eq i8 %i.cw, 0
  br i1 %.not105, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 4 uses
  %i.cy = load i64, ptr %i.cx, align 8, !noundef !53
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !nonnull !53, !noundef !53
  %i.db = load i64, ptr %i.da, align 8, !noundef !53
  store i64 %i.db, ptr %i.cx, align 8
  %i.dc = and i8 %i.cr, -18
  %.sroa.01.sroa.6.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %.sroa.62.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.9.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.z, i64 18
  %.sroa.12.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  %.sroa.1219.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.z, i64 22
  %.sroa.15.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %i.z, i64 23
  %i.dd = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %.sroa.4.0..sroa_idx.i128 = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  br label %.backedge

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store i64 %i.cp, ptr %i.ao, align 8
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 %i.bl, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8
  %.sroa.62.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i16 %6, ptr %.sroa.62.0..sroa_idx3, align 8
  %.sroa.9.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.ao, i64 18
  store i16 %8, ptr %.sroa.9.0..sroa_idx9, align 2
  %.sroa.12.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i16 %i.ct, ptr %.sroa.12.0..sroa_idx15, align 4
  %.sroa.1219.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ao, i64 22
  store i8 %i.cr, ptr %.sroa.1219.0..sroa_idx20, align 2
  %.sroa.15.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.ao, i64 23
  store i8 0, ptr %.sroa.15.0..sroa_idx25, align 1
  invoke fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$15parse_expr_stmt17h3cd4becd62a747f8E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ap, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(96) %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.ao)
          to label %bb.cr unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.backedge:                                        ; preds = %.backedge.backedge, %bb.y
  %i.df = load ptr, ptr %2, align 8, !nonnull !53, !align !54, !noundef !53 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 224 ; 3 uses
  %i.dh = load i32, ptr %i.dg, align 8, !range !121, !noundef !53 ; 2 uses
  %.not.i185 = icmp eq i32 %i.dh, 87
  br i1 %.not.i185, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !36719
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.df)
          to label %.noexc186 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc186:                                        ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !36720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !36719
  %.pre.i = load i32, ptr %i.dg, align 8, !range !121
  br label %bb.ab

.body158:                                         ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread, %.body
  %.sroa.050.0 = phi i8 [ %.sroa.050.3431, %.body.thread ], [ %.sroa.050.3, %.body ], [ %.sroa.050.1.ph.ph.ph.ph, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %.pn115 = phi { ptr, i32 } [ %.pn113432, %.body.thread ], [ %.pn113, %.body ], [ %lpad.loopexit.split-lp362, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.di = trunc nuw i8 %.sroa.050.0 to i1
  br i1 %i.di, label %.thread325, label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit258"

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i203, %bb.bn, %bb.an, %bb.ac, %bb.aw, %bb.cc, %bb.cd, %bb.by, %bb.bz, %bb.aa, %bb.be
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread325

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke, %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h9a29e096cd8da646E.exit", %bb.cf, %bb.aj, %bb.ci, %bb.ag, %bb.af, %bb.bk, %bb.bj, %bb.dr, %bb.cv, %bb.cp, %bb.ar, %bb.z
  %.sroa.050.1.ph.ph.ph.ph = phi i8 [ 1, %bb.ag ], [ 0, %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h9a29e096cd8da646E.exit" ], [ 1, %bb.bj ], [ %.sroa.050.5341, %bb.dr ], [ 1, %bb.cv ], [ 1, %bb.ci ], [ 1, %bb.cf ], [ 1, %bb.cp ], [ 1, %bb.aj ], [ 1, %bb.bk ], [ 1, %bb.af ], [ 1, %bb.z ], [ 1, %.invoke ], [ 1, %bb.ar ]
  %lpad.loopexit.split-lp362 = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.ab:                                            ; preds = %.noexc186, %.backedge
  %i.dj = phi i32 [ %.pre.i, %.noexc186 ], [ %i.dh, %.backedge ]
  switch i32 %i.dj, label %bb.ac [
    i32 86, label %.invoke
    i32 7, label %bb.ad
    i32 85, label %bb.ah
  ], !prof !140

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.643)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  store i64 %i.cp, ptr %i.z, align 8
  store i64 %i.bl, ptr %.sroa.01.sroa.6.0..sroa_idx286, align 8
  store i16 %6, ptr %.sroa.62.0..sroa_idx5, align 8
  store i16 %8, ptr %.sroa.9.0..sroa_idx11, align 2
  store i16 %i.ct, ptr %.sroa.12.0..sroa_idx17, align 4
  store i8 %i.dc, ptr %.sroa.1219.0..sroa_idx22, align 2
  store i8 0, ptr %.sroa.15.0..sroa_idx27, align 1
  invoke void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$10parse_stmt17h2907d6ea8753547bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aa, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.z)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ab
  %i.dk = load ptr, ptr %2, align 8, !nonnull !53, !align !54, !noundef !53 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36721)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !36721
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 224 ; 2 uses
  %.sroa.0.0.copyload.i147 = load i32, ptr %i.dl, align 8, !alias.scope !36721 ; 3 uses
  store i32 87, ptr %i.dl, align 8, !alias.scope !36721
  %.not.i149 = icmp eq i32 %.sroa.0.0.copyload.i147, 87
  br i1 %.not.i149, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.5.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %i.dk, i64 228
  %.sroa.4.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i150, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i148, i64 20, i1 false)
  store i32 %.sroa.0.0.copyload.i147, ptr %i.i, align 8, !noalias !36721
  br label %.noexc152

bb.af:                                            ; preds = %bb.ad
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.dk)
          to label %.noexc152thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc152thread-pre-split:                        ; preds = %bb.af
  %.pr329 = load i32, ptr %i.i, align 8, !noalias !36721
  br label %.noexc152

.noexc152:                                        ; preds = %.noexc152thread-pre-split, %bb.ae
  %i.dm = phi i32 [ %.pr329, %.noexc152thread-pre-split ], [ %.sroa.0.0.copyload.i147, %bb.ae ]
  %.not6.i151 = icmp eq i32 %i.dm, 86
  br i1 %.not6.i151, label %.invoke, label %bb.ag, !prof !64

bb.ag:                                            ; preds = %.noexc152
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !36721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !noalias !36721
  %i.dn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.do = load i16, ptr %i.dn, align 8, !noalias !36721, !noundef !53
  %i.dp = getelementptr inbounds nuw i8, ptr %i.i, i64 18
  %i.dq = load i16, ptr %i.dp, align 2, !noalias !36721, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !36721
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.j)
          to label %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit155 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke:                                          ; preds = %.noexc, %.noexc130, %bb.bf, %bb.ab, %bb.cw, %.noexc141, %.noexc152
  %i.dr = phi ptr [ @1256, %bb.cw ], [ @1453, %.noexc141 ], [ @1453, %.noexc152 ], [ @1252, %bb.ab ], [ @1254, %bb.bf ], [ @1453, %.noexc ], [ @1453, %.noexc130 ]
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr) #70
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit155: ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !36721
  br label %bb.al

bb.ah:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store i32 7, ptr %i.ab, align 8
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hed1e3aadb7a44a63E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab)
          to label %bb.aj unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab) #72
          to label %.thread325 unwind label %bb.ak, !noalias !36722

bb.aj:                                            ; preds = %bb.ah
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ab)
          to label %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit165" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ak:                                            ; preds = %bb.ai
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !36722
  unreachable

bb.al:                                            ; preds = %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit155, %bb.bm
  %.pn355 = phi i16 [ %i.fs, %bb.bm ], [ %i.do, %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit155 ]
  %.pn353 = phi i16 [ %i.fu, %bb.bm ], [ %i.dq, %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit155 ]
  %i.du = load i64, ptr %i.cx, align 8, !noundef !53 ; 6 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.val180 = load ptr, ptr %i.dv, align 8, !nonnull !53, !noundef !53 ; 4 uses
  %i.dw = load i64, ptr %.val180, align 8, !noundef !53 ; 2 uses
  %i.dx = icmp ult i64 %i.du, %i.dw
  br i1 %i.dx, label %.lr.ph.i, label %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h93bb97404fef1ea2E.exit"

.lr.ph.i:                                         ; preds = %bb.al
  %i.dy = getelementptr inbounds nuw i8, ptr %.val180, i64 16
  br label %bb.am

bb.am:                                            ; preds = %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.i", %.lr.ph.i
  %i.dz = phi i64 [ %i.dw, %.lr.ph.i ], [ %i.ef, %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.i" ]
  %i.ea = add i64 %i.dz, -1                       ; 2 uses
  store i64 %i.ea, ptr %.val180, align 8
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36723)
  call void @llvm.experimental.noalias.scope.decl(metadata !36724)
  call void @llvm.experimental.noalias.scope.decl(metadata !36725)
  %i.ec = load ptr, ptr %i.eb, align 8, !alias.scope !36726, !nonnull !53, !noundef !53
  %i.ed = atomicrmw add ptr %i.ec, i64 -1 release, align 8, !noalias !36726
  %i.ee = icmp eq i64 %i.ed, 1
  br i1 %i.ee, label %bb.an, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.i"

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.eb)
          to label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.i" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.i": ; preds = %bb.an, %bb.am
  %i.ef = load i64, ptr %.val180, align 8, !noundef !53 ; 2 uses
  %i.eg = icmp ult i64 %i.du, %i.ef
  br i1 %i.eg, label %bb.am, label %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h93bb97404fef1ea2E.exit"

"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit165": ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !36727
  %i.eh = call noundef dereferenceable_or_null(23) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 23, i64 noundef range(i64 1, 9) 1) #71, !noalias !36727 ; 3 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit165"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 23, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70
          to label %.noexc190 unwind label %bb.ap

.noexc190:                                        ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.ao
  %i.ej = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36728)
  call void @llvm.experimental.noalias.scope.decl(metadata !36729)
  %.val.i.i192 = load i64, ptr %i.ac, align 8, !range !63, !alias.scope !36730, !noundef !53 ; 2 uses
  %i.ek = icmp eq i64 %.val.i.i192, 0
  br i1 %i.ek, label %.thread325, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.el = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val1.i.i193 = load ptr, ptr %i.el, align 8, !alias.scope !36730, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i193, i64 noundef %.val.i.i192, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !36730
  br label %.thread325

bb.ar:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit165"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.eh, ptr noundef nonnull align 1 dereferenceable(23) @1253, i64 23, i1 false), !noalias !36731
  %i.em = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.em, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.en = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  store i64 23, ptr %i.en, align 8
  %.sroa.4305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.eh, ptr %.sroa.4305.0..sroa_idx, align 8
  %.sroa.5306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i64 23, ptr %.sroa.5306.0..sroa_idx, align 8
  store i64 3, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  %i.eo = getelementptr inbounds nuw i8, ptr %i.df, i64 240
  %i.ep = load i16, ptr %i.eo, align 8, !noundef !53
  %i.eq = getelementptr inbounds nuw i8, ptr %i.df, i64 242
  %i.er = load i16, ptr %i.eq, align 2, !noundef !53
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ae, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ad, i16 noundef %i.ep, i16 noundef %i.er)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.es, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %.critedge

bb.at:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  %i.et = load i64, ptr %i.aa, align 8, !range !61, !noundef !53
  %i.eu = trunc nuw i64 %i.et to i1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643, ptr noundef nonnull align 8 dereferenceable(16) %i.dd, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br i1 %i.eu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ev, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643)
  br label %.critedge

bb.av:                                            ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.643, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.643)
  %i.ew = load i8, ptr %i.y, align 8, !range !95, !noundef !53
  switch i8 %i.ew, label %default.unreachable426 [
    i8 0, label %bb.aw
    i8 14, label %bb.ax
    i8 1, label %bb.ay
end_hunk_0
begin_hunk_1_@"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_block17h3edac4abab9a228aE":bb.a
    i8 7, label %bb.ax
    i8 8, label %bb.ax
    i8 9, label %bb.ay
    i8 10, label %bb.ay
    i8 11, label %bb.ax
    i8 12, label %bb.ax
    i8 13, label %bb.ax
  ]

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef align 8 dereferenceable(16) %i.y)
          to label %.backedge.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

default.unreachable426:                           ; preds = %bb.av
  unreachable

bb.ax:                                            ; preds = %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.av, %bb.ax
  %i.ex = phi i1 [ true, %bb.ax ], [ false, %bb.av ], [ false, %bb.av ], [ false, %bb.av ], [ false, %bb.av ], [ false, %bb.av ], [ false, %bb.av ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36732)
  %i.ey = load i64, ptr %.sroa.467.0..sroa_idx, align 16, !alias.scope !36733, !noundef !53 ; 2 uses
  %i.ez = icmp ugt i64 %i.ey, 8                   ; 2 uses
  %i.fa = load ptr, ptr %i.aq, align 16, !alias.scope !36733, !nonnull !53
  %.sink10.i.i = select i1 %i.ez, ptr %i.fa, ptr %i.aq
  %.sink9.i.i = select i1 %i.ez, ptr %i.de, ptr %.sroa.467.0..sroa_idx ; 2 uses
  %.sink.i.i = call i64 @llvm.umax.i64(i64 %i.ey, i64 8)
  %i.fb = load i64, ptr %.sink9.i.i, align 8, !alias.scope !36732, !noundef !53 ; 2 uses
  %i.fc = icmp eq i64 %i.fb, %.sink.i.i
  br i1 %i.fc, label %bb.ba, label %bb.bd, !prof !64

bb.az:                                            ; preds = %bb.ba
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$rhai..ast..stmt..Stmt$GT$17h8c7cea9300790c9cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(16) %i.y) #72
          to label %.thread325 unwind label %bb.bc

bb.ba:                                            ; preds = %bb.ay
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17hf62baccad7dc5550E"(ptr noalias noundef nonnull align 8 dereferenceable(136) %i.aq)
          to label %bb.bb unwind label %bb.az, !noalias !36734

bb.bb:                                            ; preds = %bb.ba
  %i.fe = load ptr, ptr %i.aq, align 16, !alias.scope !36732, !nonnull !53, !noundef !53
  %.pre.i195 = load i64, ptr %i.de, align 8, !alias.scope !36732
  br label %bb.bd

bb.bc:                                            ; preds = %bb.az
  %i.ff = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !36735
  unreachable

bb.bd:                                            ; preds = %bb.bb, %bb.ay
  %i.fg = phi i64 [ %.pre.i195, %bb.bb ], [ %i.fb, %bb.ay ]
  %.sroa.01.0.i = phi ptr [ %i.de, %bb.bb ], [ %.sink9.i.i, %bb.ay ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.fe, %bb.bb ], [ %.sink10.i.i, %bb.ay ]
  %i.fh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.i, i64 %i.fg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fh, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.fi = load i64, ptr %.sroa.01.0.i, align 8, !alias.scope !36732, !noundef !53
  %i.fj = add i64 %i.fi, 1
  store i64 %i.fj, ptr %.sroa.01.0.i, align 8, !alias.scope !36732
  %i.fk = load ptr, ptr %2, align 8, !nonnull !53, !align !54, !noundef !53 ; 7 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 224 ; 3 uses
  %i.fm = load i32, ptr %i.fl, align 8, !range !121, !noundef !53 ; 2 uses
  %.not.i199 = icmp eq i32 %i.fm, 87
  br i1 %.not.i199, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !36736
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.fk)
          to label %.noexc201 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc201:                                        ; preds = %bb.be
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !36737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !36736
  %.pre.i200 = load i32, ptr %i.fl, align 8, !range !121
  br label %bb.bf

bb.bf:                                            ; preds = %.noexc201, %bb.bd
  %i.fn = phi i32 [ %.pre.i200, %.noexc201 ], [ %i.fm, %bb.bd ] ; 2 uses
  switch i32 %i.fn, label %bb.bg [
    i32 86, label %.invoke
    i32 7, label %bb.bh
    i32 23, label %bb.bl
  ], !prof !140

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.ex, label %bb.ce, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bg, %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit, %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit133, %bb.aw
  br label %.backedge

bb.bh:                                            ; preds = %bb.bf
  %i.fo = load ptr, ptr %2, align 8, !nonnull !53, !align !54, !noundef !53 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36738)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !36738
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 224 ; 2 uses
  %.sroa.0.0.copyload.i136 = load i32, ptr %i.fp, align 8, !alias.scope !36738 ; 3 uses
  store i32 87, ptr %i.fp, align 8, !alias.scope !36738
  %.not.i138 = icmp eq i32 %.sroa.0.0.copyload.i136, 87
  br i1 %.not.i138, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %.sroa.5.0..sroa_idx.i137 = getelementptr inbounds nuw i8, ptr %i.fo, i64 228
  %.sroa.4.0..sroa_idx.i139 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i139, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i137, i64 20, i1 false)
  store i32 %.sroa.0.0.copyload.i136, ptr %i.k, align 8, !noalias !36738
  br label %.noexc141

bb.bj:                                            ; preds = %bb.bh
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.fo)
          to label %.noexc141thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141thread-pre-split:                        ; preds = %bb.bj
  %.pr331 = load i32, ptr %i.k, align 8, !noalias !36738
  br label %.noexc141

.noexc141:                                        ; preds = %.noexc141thread-pre-split, %bb.bi
  %i.fq = phi i32 [ %.pr331, %.noexc141thread-pre-split ], [ %.sroa.0.0.copyload.i136, %bb.bi ]
  %.not6.i140 = icmp eq i32 %i.fq, 86
  br i1 %.not6.i140, label %.invoke, label %bb.bk, !prof !64

bb.bk:                                            ; preds = %.noexc141
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !36738
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !noalias !36738
  %i.fr = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.fs = load i16, ptr %i.fr, align 8, !noalias !36738, !noundef !53
  %i.ft = getelementptr inbounds nuw i8, ptr %i.k, i64 18
  %i.fu = load i16, ptr %i.ft, align 2, !noalias !36738, !noundef !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !36738
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.l)
          to label %bb.bm unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bf
  %i.fv = load ptr, ptr %2, align 8, !nonnull !53, !align !54, !noundef !53 ; 4 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 224 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fv, i64 228 ; 2 uses
  br i1 %i.ex, label %bb.ca, label %bb.bw

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !36738
  br label %bb.al

"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h93bb97404fef1ea2E.exit": ; preds = %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit.i", %bb.al
  %.val181 = load ptr, ptr %i.cz, align 8, !nonnull !53, !noundef !53 ; 4 uses
  %i.fx = load i64, ptr %.val181, align 8, !noundef !53 ; 2 uses
  %i.fy = icmp ult i64 %i.du, %i.fx
  br i1 %i.fy, label %.lr.ph.i203, label %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17hf7033fbd4c90baf0E.exit"

.lr.ph.i203:                                      ; preds = %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h93bb97404fef1ea2E.exit", %.noexc204
  %i.fz = phi i64 [ %i.gc, %.noexc204 ], [ %i.fx, %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h93bb97404fef1ea2E.exit" ] ; 2 uses
  %i.ga = add i64 %i.fz, -1
  store i64 %i.ga, ptr %.val181, align 8
  %i.gb = getelementptr [16 x i8], ptr %.val181, i64 %i.fz
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.gb)
          to label %.noexc204 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc204:                                        ; preds = %.lr.ph.i203
  %i.gc = load i64, ptr %.val181, align 8, !noundef !53 ; 2 uses
  %i.gd = icmp ult i64 %i.du, %i.gc
  br i1 %i.gd, label %.lr.ph.i203, label %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17hf7033fbd4c90baf0E.exit"

"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17hf7033fbd4c90baf0E.exit": ; preds = %.noexc204, %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h93bb97404fef1ea2E.exit"
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.val182 = load ptr, ptr %i.ge, align 8, !nonnull !53, !noundef !53 ; 4 uses
  %i.gf = load i64, ptr %.val182, align 8, !noundef !53 ; 2 uses
  %i.gg = icmp ult i64 %i.du, %i.gf
  br i1 %i.gg, label %.lr.ph.i205, label %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h9a29e096cd8da646E.exit"

.lr.ph.i205:                                      ; preds = %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17hf7033fbd4c90baf0E.exit"
  %i.gh = getelementptr inbounds nuw i8, ptr %.val182, i64 16
  br label %bb.bn

bb.bn:                                            ; preds = %.noexc206, %.lr.ph.i205
  %i.gi = phi i64 [ %i.gf, %.lr.ph.i205 ], [ %i.gl, %.noexc206 ]
  %i.gj = add i64 %i.gi, -1                       ; 2 uses
  store i64 %i.gj, ptr %.val182, align 8
  %i.gk = getelementptr inbounds nuw [32 x i8], ptr %i.gh, i64 %i.gj
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..types..immutable_string..ImmutableString$u3b$$u20$3$u5d$$GT$$GT$17he9a634324b0db34aE"(ptr noalias noundef align 8 dereferenceable(32) %i.gk)
          to label %.noexc206 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc206:                                        ; preds = %bb.bn
  %i.gl = load i64, ptr %.val182, align 8, !noundef !53 ; 2 uses
  %i.gm = icmp ult i64 %i.du, %i.gl
  br i1 %i.gm, label %bb.bn, label %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h9a29e096cd8da646E.exit"

"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h9a29e096cd8da646E.exit": ; preds = %.noexc206, %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17hf7033fbd4c90baf0E.exit"
  store i64 %i.cy, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %.sroa.0269.0.copyload = load i64, ptr %i.aq, align 16
  %.sroa.4270.0.copyload = load i64, ptr %i.de, align 8 ; 2 uses
  %.sroa.5271.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !36739
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.6.0..sroa_idx7.i, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.5271.0..sroa_idx, i64 112, i1 false)
  %.sroa.6272.0.copyload = load i64, ptr %.sroa.467.0..sroa_idx, align 16 ; 3 uses
  %.sroa.694.0.insert.ext = zext i16 %.pn353 to i64
  %.sroa.694.0.insert.shift = shl nuw i64 %.sroa.694.0.insert.ext, 48
  %.sroa.593.0.insert.ext = zext i16 %.pn355 to i64
  %.sroa.492.0.insert.shift = shl nuw nsw i64 %.sroa.593.0.insert.ext, 32
  %.sroa.492.0.insert.insert = or disjoint i64 %.sroa.694.0.insert.shift, %.sroa.492.0.insert.shift
  %.sroa.091.0.insert.insert = or disjoint i64 %.sroa.492.0.insert.insert, %5
  call void @llvm.experimental.noalias.scope.decl(metadata !36740)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !36739
  call void @llvm.experimental.noalias.scope.decl(metadata !36741)
  %i.gn = icmp ugt i64 %.sroa.6272.0.copyload, 8  ; 3 uses
  %.sink10.i.i.i = select i1 %i.gn, i64 %.sroa.4270.0.copyload, i64 %.sroa.6272.0.copyload
  %spec.select.i = select i1 %i.gn, i64 0, i64 %.sroa.4270.0.copyload
  %spec.select13.i = select i1 %i.gn, i64 %.sroa.6272.0.copyload, i64 0
  store i64 %.sroa.0269.0.copyload, ptr %i.c, align 8, !alias.scope !36742, !noalias !36743
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %spec.select.i, ptr %.sroa.4.0..sroa_idx5.i, align 8, !alias.scope !36742, !noalias !36743
  %.sroa.68.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i64 %spec.select13.i, ptr %.sroa.68.0..sroa_idx9.i, align 8, !alias.scope !36742, !noalias !36743
  %i.go = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store i64 0, ptr %i.go, align 8, !alias.scope !36744, !noalias !36743
  %i.gp = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store i64 %.sink10.i.i.i, ptr %i.gp, align 8, !alias.scope !36744, !noalias !36743
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17heb0cc8d937049d3fE(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.d, ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c)
          to label %.noexc210 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc210:                                        ; preds = %"_ZN8thin_vec16ThinVec$LT$T$GT$8truncate17h9a29e096cd8da646E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !36739
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$13shrink_to_fit17hf2a0b92c8f143adbE"(ptr noalias noundef align 8 dereferenceable(136) %i.d)
          to label %bb.bq unwind label %bb.bo, !noalias !36739

bb.bo:                                            ; preds = %.noexc210
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..stmt..Stmt$u3b$$u20$8$u5d$$GT$$GT$17h7bbf7398c10ffaa8E"(ptr noalias noundef align 8 dereferenceable(136) %i.d) #72
          to label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit258" unwind label %bb.bp, !noalias !36739

bb.bp:                                            ; preds = %bb.bo
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !36739
  unreachable

bb.bq:                                            ; preds = %.noexc210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.r, ptr noundef nonnull align 8 dereferenceable(136) %i.d, i64 136, i1 false), !noalias !36745
  %i.gs = getelementptr inbounds nuw i8, ptr %i.r, i64 136
  store i64 %.sroa.091.0.insert.insert, ptr %i.gs, align 8, !alias.scope !36740
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !36739
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !36746
  %i.gt = call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !36746 ; 3 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.br, label %bb.bu, !prof !56

bb.br:                                            ; preds = %bb.bq
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #70
          to label %.noexc214 unwind label %bb.bs

.noexc214:                                        ; preds = %bb.br
  unreachable

bb.bs:                                            ; preds = %bb.br
  %i.gv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.r)
          to label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit258" unwind label %bb.bt, !inline_history !115

bb.bt:                                            ; preds = %bb.bs
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.bu:                                            ; preds = %bb.bq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.gt, ptr noundef nonnull align 8 dereferenceable(144) %i.r, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.gx, align 8
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.gt, ptr %.sroa.449.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.w, %bb.ds, %bb.t, %bb.bu
  ret void

bb.bw:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !36747)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !36747
  %.sroa.0.0.copyload.i125 = load i32, ptr %i.fw, align 8, !alias.scope !36747 ; 3 uses
  store i32 87, ptr %i.fw, align 8, !alias.scope !36747
  %.not.i127 = icmp eq i32 %.sroa.0.0.copyload.i125, 87
  br i1 %.not.i127, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i128, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i, i64 20, i1 false)
  store i32 %.sroa.0.0.copyload.i125, ptr %i.m, align 8, !noalias !36747
  br label %.noexc130

bb.by:                                            ; preds = %bb.bw
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.fv)
          to label %.noexc130thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc130thread-pre-split:                        ; preds = %bb.by
  %.pr332 = load i32, ptr %i.m, align 8, !noalias !36747
  br label %.noexc130

.noexc130:                                        ; preds = %.noexc130thread-pre-split, %bb.bx
  %i.gy = phi i32 [ %.pr332, %.noexc130thread-pre-split ], [ %.sroa.0.0.copyload.i125, %bb.bx ]
  %.not6.i129 = icmp eq i32 %i.gy, 86
  br i1 %.not6.i129, label %.invoke, label %bb.bz, !prof !64

bb.bz:                                            ; preds = %.noexc130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !36747
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !noalias !36747
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !36747
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit133: ; preds = %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !36747
  br label %.backedge.backedge

bb.ca:                                            ; preds = %bb.bl
  call void @llvm.experimental.noalias.scope.decl(metadata !36748)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !36748
  %.sroa.0.0.copyload.i = load i32, ptr %i.fw, align 8, !alias.scope !36748 ; 3 uses
  store i32 87, ptr %i.fw, align 8, !alias.scope !36748
  %.not.i = icmp eq i32 %.sroa.0.0.copyload.i, 87
  br i1 %.not.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.5.0..sroa_idx.i, i64 20, i1 false)
  store i32 %.sroa.0.0.copyload.i, ptr %i.o, align 8, !noalias !36748
  br label %.noexc

bb.cc:                                            ; preds = %bb.ca
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(248) %i.fv)
          to label %.noexcthread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexcthread-pre-split:                           ; preds = %bb.cc
  %.pr333 = load i32, ptr %i.o, align 8, !noalias !36748
  br label %.noexc

.noexc:                                           ; preds = %.noexcthread-pre-split, %bb.cb
  %i.gz = phi i32 [ %.pr333, %.noexcthread-pre-split ], [ %.sroa.0.0.copyload.i, %bb.cb ]
  %.not6.i = icmp eq i32 %i.gz, 86
  br i1 %.not6.i, label %.invoke, label %bb.cd, !prof !64

bb.cd:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !36748
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %i.o, i64 16, i1 false), !noalias !36748
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !36748
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p)
          to label %_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4rhai6parser9eat_token17h748fc12e2bd8feeaE.exit: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !36748
  br label %.backedge.backedge

bb.ce:                                            ; preds = %bb.bg
  %i.ha = icmp eq i32 %i.fn, 82
  br i1 %i.ha, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fk, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  %.val179 = load ptr, ptr %i.hb, align 8
  %i.hc = invoke fastcc noundef nonnull align 8 ptr @"_ZN69_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5b4d19e675057d14E"(ptr %.val179)
          to label %bb.ck unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

bb.cg:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i32 23, ptr %i.s, align 8
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hed1e3aadb7a44a63E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %bb.ci unwind label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s) #72
          to label %.thread325 unwind label %bb.cj, !noalias !36749

bb.ci:                                            ; preds = %bb.cg
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit160" unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cj:                                            ; preds = %bb.ch
  %i.he = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !36749
  unreachable

bb.ck:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.w, ptr noundef nonnull align 8 dereferenceable(48) %i.hc, i64 48, i1 false)
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fk, i64 240
  %i.hg = load i16, ptr %i.hf, align 8, !noundef !53
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fk, i64 242
  %i.hi = load i16, ptr %i.hh, align 2, !noundef !53
  invoke void @_ZN4rhai5types11parse_error8LexError8into_err17h6c322d3e62329f3aE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.w, i16 noundef %i.hg, i16 noundef %i.hi)
          to label %bb.cm unwind label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.hj = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hc, i64 noundef 48, i64 noundef 8) #71
  br label %.thread325

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hk, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.hc, i64 noundef 48, i64 noundef 8) #71
  br label %.critedge

"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit160": ; preds = %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hcb21935191151b59E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1255, i64 noundef 27)
          to label %bb.cp unwind label %bb.cn

bb.cn:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit160"
  %i.hl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36750)
  call void @llvm.experimental.noalias.scope.decl(metadata !36751)
  %.val.i.i216 = load i64, ptr %i.t, align 8, !range !63, !alias.scope !36752, !noundef !53 ; 2 uses
  %i.hm = icmp eq i64 %.val.i.i216, 0
  br i1 %i.hm, label %.thread325, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hn = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val1.i.i217 = load ptr, ptr %i.hn, align 8, !alias.scope !36752, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i217, i64 noundef %.val.i.i216, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !36752
  br label %.thread325

bb.cp:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit160"
  %i.ho = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ho, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  store i64 3, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.hq = getelementptr inbounds nuw i8, ptr %i.fk, i64 240
  %i.hr = load i16, ptr %i.hq, align 8, !noundef !53
  %i.hs = getelementptr inbounds nuw i8, ptr %i.fk, i64 242
  %i.ht = load i16, ptr %i.hs, align 2, !noundef !53
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.u, i16 noundef %i.hr, i16 noundef %i.ht)
          to label %bb.cq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hu, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.critedge

bb.cr:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  %i.hv = load i64, ptr %i.ap, align 8, !range !61, !noundef !53
  %i.hw = trunc nuw i64 %i.hv to i1
  %i.hx = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.634, ptr noundef nonnull align 8 dereferenceable(16) %i.hx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br i1 %i.hw, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.634, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.634)
  br label %.critedge

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aq, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.634, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.634)
  store i64 1, ptr %.sroa.467.0..sroa_idx, align 16, !alias.scope !36753
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.hz = load ptr, ptr %2, align 8, !nonnull !53, !align !54, !noundef !53 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 224 ; 2 uses
  %.sroa.072.0.copyload = load i32, ptr %i.ia, align 8 ; 3 uses
  store i32 87, ptr %i.ia, align 8
  %.not111 = icmp eq i32 %.sroa.072.0.copyload, 87
  br i1 %.not111, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hz, i64 228
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.477.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.574.0..sroa_idx, i64 20, i1 false)
  store i32 %.sroa.072.0.copyload, ptr %i.am, align 8
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  invoke void @"_ZN89_$LT$rhai..tokenizer..TokenIterator$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc956a9b882b5a932E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.am, ptr noalias noundef nonnull align 8 dereferenceable(224) %i.hz)
          to label %thread-pre-split unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

thread-pre-split:                                 ; preds = %bb.cv
  %.pr335 = load i32, ptr %i.am, align 8
  br label %bb.cw

bb.cw:                                            ; preds = %thread-pre-split, %bb.cu
  %i.ib = phi i32 [ %.pr335, %thread-pre-split ], [ %.sroa.072.0.copyload, %bb.cu ]
  %.not112 = icmp eq i32 %i.ib, 86
  br i1 %.not112, label %.invoke, label %bb.cx, !prof !64

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  %i.ic = load i32, ptr %i.an, align 8, !range !94, !noundef !53 ; 3 uses
  switch i32 %i.ic, label %bb.cy [
    i32 7, label %bb.dc
    i32 82, label %bb.df
  ], !prof !150

bb.cy:                                            ; preds = %bb.cx
  %i.id = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ie = load i16, ptr %i.id, align 8, !noundef !53
  %i.if = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  %i.ig = load i16, ptr %i.if, align 2, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  store i32 6, ptr %i.af, align 8
  invoke fastcc void @"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17hed1e3aadb7a44a63E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.af)
          to label %bb.da unwind label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af) #72
          to label %.body unwind label %bb.db, !noalias !36754

bb.da:                                            ; preds = %bb.cy
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.af)
          to label %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit" unwind label %bb.dg

bb.db:                                            ; preds = %bb.cz
  %i.ii = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !36754
  unreachable

bb.dc:                                            ; preds = %bb.cx
  %i.ij = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ik = load i32, ptr %i.ij, align 8
  %i.il = zext i32 %i.ik to i64
  %i.im = shl nuw i64 %i.il, 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  %.sroa.498.0.insert.insert = zext i32 %4 to i64
  %.sroa.097.0.insert.insert = or disjoint i64 %i.im, %.sroa.498.0.insert.insert
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !36756
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36757)
  %i.in = load <2 x i64>, ptr %i.aq, align 16
  store <2 x i64> %i.in, ptr %i.a, align 16, !alias.scope !36758, !noalias !36759
  %.sroa.68.0..sroa_idx9.i240 = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.io = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.68.0..sroa_idx9.i240, i8 0, i64 16, i1 false)
  store i64 1, ptr %i.io, align 16, !alias.scope !36760, !noalias !36759
  invoke fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17heb0cc8d937049d3fE(ptr noalias noundef align 8 captures(address) dereferenceable(136) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a)
          to label %.noexc241 unwind label %bb.dg

.noexc241:                                        ; preds = %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !36756
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$13shrink_to_fit17hf2a0b92c8f143adbE"(ptr noalias noundef align 8 dereferenceable(136) %i.b)
          to label %bb.dh unwind label %bb.dd, !noalias !36756

bb.dd:                                            ; preds = %.noexc241
  %i.ip = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$smallvec..SmallVec$LT$$u5b$rhai..ast..stmt..Stmt$u3b$$u20$8$u5d$$GT$$GT$17h7bbf7398c10ffaa8E"(ptr noalias noundef align 8 dereferenceable(136) %i.b) #72
          to label %.body.thread unwind label %bb.de, !noalias !36756

bb.de:                                            ; preds = %bb.dd
  %i.iq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !36756
  unreachable

bb.df:                                            ; preds = %bb.cx
  %i.ir = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.is = load ptr, ptr %i.ir, align 8, !nonnull !53, !align !54, !noundef !53 ; 3 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.iu = load i16, ptr %i.it, align 8, !noundef !53
  %i.iv = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  %i.iw = load i16, ptr %i.iv, align 2, !noundef !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, ptr noundef nonnull align 8 dereferenceable(48) %i.is, i64 48, i1 false)
  invoke void @_ZN4rhai5types11parse_error8LexError8into_err17h6c322d3e62329f3aE(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ak, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.aj, i16 noundef %i.iu, i16 noundef %i.iw)
          to label %.thread336 unwind label %.body158.thread436

.body:                                            ; preds = %bb.do, %bb.dn, %bb.cz, %bb.dg
  %.sroa.050.3 = phi i8 [ %.sroa.050.4, %bb.dg ], [ 1, %bb.dn ], [ 1, %bb.cz ], [ 1, %bb.do ] ; 2 uses
  %.pn113 = phi { ptr, i32 } [ %i.iy, %bb.dg ], [ %i.jl, %bb.dn ], [ %i.ih, %bb.cz ], [ %i.jl, %bb.do ] ; 2 uses
  %i.ix = icmp eq i32 %i.ic, 82
  br i1 %i.ix, label %.body158, label %.body.thread

bb.dg:                                            ; preds = %bb.dc, %bb.da, %bb.dp
  %.sroa.050.4 = phi i8 [ 1, %bb.dp ], [ 1, %bb.da ], [ 0, %bb.dc ]
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dh:                                            ; preds = %.noexc241
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.al, ptr noundef nonnull align 8 dereferenceable(136) %i.b, i64 136, i1 false), !noalias !36761
  %i.iz = getelementptr inbounds nuw i8, ptr %i.al, i64 136
  store i64 %.sroa.097.0.insert.insert, ptr %i.iz, align 8, !alias.scope !36755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36756
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !36762
  %i.ja = tail call noundef align 8 dereferenceable_or_null(144) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #71, !noalias !36762 ; 3 uses
  %i.jb = icmp eq ptr %i.ja, null
  br i1 %i.jb, label %bb.di, label %.thread339, !prof !56

bb.di:                                            ; preds = %bb.dh
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 144) #70
          to label %.noexc246 unwind label %bb.dj

.noexc246:                                        ; preds = %bb.di
  unreachable

bb.dj:                                            ; preds = %bb.di
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.al)
          to label %.body.thread unwind label %bb.dk, !inline_history !115

bb.dk:                                            ; preds = %bb.dj
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

.thread339:                                       ; preds = %bb.dh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.ja, ptr noundef nonnull align 8 dereferenceable(144) %i.al, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 9, ptr %i.je, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ja, ptr %.sroa.437.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  br label %bb.dr

bb.dl:                                            ; preds = %bb.dp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jf, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.jg = icmp eq i32 %i.ic, 82
  br i1 %i.jg, label %.thread343, label %bb.dr

.body158.thread436:                               ; preds = %bb.df
  %i.jh = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.is, i64 noundef 48, i64 noundef 8) #71
  br label %.thread325

.thread336:                                       ; preds = %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ji, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  store i64 1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.is, i64 noundef 48, i64 noundef 8) #71
  br label %.thread343

"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit": ; preds = %bb.da
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #71, !noalias !36763
  %i.jj = call noundef dereferenceable_or_null(26) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 26, i64 noundef range(i64 1, 9) 1) #71, !noalias !36763 ; 3 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %bb.dm, label %bb.dp

bb.dm:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 26, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @3069) #70
          to label %.noexc252 unwind label %bb.dn

.noexc252:                                        ; preds = %bb.dm
  unreachable

bb.dn:                                            ; preds = %bb.dm
  %i.jl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !36764)
  call void @llvm.experimental.noalias.scope.decl(metadata !36765)
  %.val.i.i254 = load i64, ptr %i.ag, align 8, !range !63, !alias.scope !36766, !noundef !53 ; 2 uses
  %i.jm = icmp eq i64 %.val.i.i254, 0
  br i1 %i.jm, label %.body, label %bb.do

bb.do:                                            ; preds = %bb.dn
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val1.i.i255 = load ptr, ptr %i.jn, align 8, !alias.scope !36766, !nonnull !53, !noundef !53
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i255, i64 noundef %.val.i.i254, i64 noundef range(i64 1, -9223372036854775807) 1) #71, !noalias !36766
  br label %.body

bb.dp:                                            ; preds = %"_ZN4rhai9tokenizer101_$LT$impl$u20$core..convert..From$LT$rhai..tokenizer..Token$GT$$u20$for$u20$alloc..string..String$GT$4from17hce2618d7b645fb9fE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %i.jj, ptr noundef nonnull align 1 dereferenceable(26) @1251, i64 26, i1 false), !noalias !36767
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jo, ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i64 24, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  store i64 26, ptr %i.jp, align 8
  %.sroa.4299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store ptr %i.jj, ptr %.sroa.4299.0..sroa_idx, align 8
  %.sroa.5300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 48
  store i64 26, ptr %.sroa.5300.0..sroa_idx, align 8
  store i64 3, ptr %i.ah, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @"_ZN4rhai6parser58_$LT$impl$u20$rhai..types..parse_error..ParseErrorType$GT$8into_err17he5d999a47a55ea69E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.ah, i16 noundef %i.ie, i16 noundef %i.ig)
          to label %bb.dl unwind label %bb.dg

.thread343:                                       ; preds = %.thread336, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  br label %.critedge

bb.dq:                                            ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.jq = trunc nuw i8 %.sroa.050.5341 to i1
  br i1 %i.jq, label %.critedge, label %bb.ds

bb.dr:                                            ; preds = %.thread339, %bb.dl
  %.sroa.050.5341 = phi i8 [ 0, %.thread339 ], [ 1, %bb.dl ] ; 2 uses
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an)
          to label %bb.dq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body.thread:                                     ; preds = %bb.dd, %bb.dj, %.body
  %.pn113432 = phi { ptr, i32 } [ %.pn113, %.body ], [ %i.ip, %bb.dd ], [ %i.jc, %bb.dj ]
  %.sroa.050.3431 = phi i8 [ %.sroa.050.3, %.body ], [ 0, %bb.dd ], [ 0, %bb.dj ]
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rhai..tokenizer..Token$GT$17ha4e996b9761910c4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.an) #72
          to label %.body158 unwind label %bb.n

bb.ds:                                            ; preds = %.critedge, %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br label %bb.bv

.critedge:                                        ; preds = %bb.cm, %bb.cq, %.thread343, %bb.cs, %bb.au, %bb.as, %bb.dq
  call fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.aq), !inline_history !116
  br label %bb.ds

.thread325:                                       ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body158.thread436, %bb.az, %bb.ai, %bb.ch, %bb.co, %bb.cn, %bb.aq, %bb.ap, %bb.cl, %.body158
  %.pn115328 = phi { ptr, i32 } [ %.pn115, %.body158 ], [ %i.hj, %bb.cl ], [ %i.ej, %bb.aq ], [ %i.ej, %bb.ap ], [ %i.hl, %bb.cn ], [ %i.hl, %bb.co ], [ %i.hd, %bb.ch ], [ %i.fd, %bb.az ], [ %i.ds, %bb.ai ], [ %i.jh, %.body158.thread436 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4b307487833700cdE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(144) %i.aq)
          to label %"_ZN4core3ptr47drop_in_place$LT$rhai..ast..stmt..StmtBlock$GT$17h9df425a2257407e3E.exit258" unwind label %bb.n, !inline_history !115
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4rhai6parser38_$LT$impl$u20$rhai..engine..Engine$GT$11parse_unary17h8c60aa360561bd76E"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull align 8 dereferenceable(96) %2, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
end_hunk_1
