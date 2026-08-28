Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/mdbook-5c818a28b1b0cc85.mdbook.afaaf51857b3248e-cgu.02?download=true
inline.NumInlined: 903
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@"_ZN65_$LT$mdbook..config..HtmlConfig$u20$as$u20$core..clone..Clone$GT$5clone17h698799fc006ba57dE":bb.a
bb.bx:                                            ; preds = %bb.bt
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.by:                                            ; preds = %bb.bt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bv

bb.bz:                                            ; preds = %bb.bv
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17hd58d38a5cfb299daE"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #21
          to label %bb.bw unwind label %bb.cb

bb.ca:                                            ; preds = %bb.bv
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cr, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 486
  %i.ct = load i8, ptr %i.cs, align 2, !range !126, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cu, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cw, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 476
  store <4 x i8> %i.al, ptr %i.cx, align 4
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cz, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 472
  store i8 %i.au, ptr %i.da, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 473
  store i8 %i.aw, ptr %i.db, align 1
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.dc, ptr noundef nonnull align 1 dereferenceable(5) %i.w, i64 5, i1 false)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 376
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.dd, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 48, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 474
  store i8 %i.bb, ptr %i.de, align 2
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 475
  store i8 %i.bd, ptr %i.df, align 1
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 485
  store i8 %i.bf, ptr %i.dg, align 1
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.dh, ptr noundef nonnull align 8 dereferenceable(64) %i.u, i64 64, i1 false)
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.di, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dl, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.do, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 486
  store i8 %i.ct, ptr %i.dp, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  ret void

bb.cb:                                            ; preds = %bb.am, %"_ZN4core3ptr71drop_in_place$LT$core..option..Option$LT$mdbook..config..Search$GT$$GT$17hadfc2fe3e305b5f8E.exit", %bb.bz, %bb.bw, %bb.bq, %bb.bk, %bb.be, %bb.ay, %bb.as, %"_ZN4core3ptr41drop_in_place$LT$mdbook..config..Code$GT$17h35453b26c4991907E.exit", %bb.z, %bb.w, %bb.t, %bb.n, %bb.h
  %i.dq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

bb.cc:                                            ; preds = %bb.h
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$core..num..error..ParseIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h2e5060f77c964e5cE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h7eb95a1815ed7168E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @114, i64 noundef 13, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @115, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @113)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: cold inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17heb0fd9a68eeb5e8bE(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 2 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !align !16, !noundef !4 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 2 uses
  switch i64 %i.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hf6dc413ad8280934E.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hf6dc413ad8280934E.exit"

bb.c:                                             ; preds = %bb.b, %bb.e
  %.sroa.5.0 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.b ]
  %.sroa.01.0 = phi ptr [ %i.k, %bb.e ], [ inttoptr (i64 1 to ptr), %bb.b ]
  %i.i = tail call noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h19ae8463bafad840E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.5.0)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.j = icmp eq i64 %i.g, 0
  br i1 %i.j, label %bb.e, label %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hf6dc413ad8280934E.exit"

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.c, align 8, !nonnull !4, !align !98, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load i64, ptr %i.l, align 8, !noundef !4
  br label %bb.c

bb.f:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hf6dc413ad8280934E.exit", %bb.c
  %.sroa.0.0 = phi ptr [ %i.n, %"_ZN4core6option15Option$LT$T$GT$11map_or_else17hf6dc413ad8280934E.exit" ], [ %i.i, %bb.c ]
  ret ptr %.sroa.0.0

"_ZN4core6option15Option$LT$T$GT$11map_or_else17hf6dc413ad8280934E.exit": ; preds = %bb.d, %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  call void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
  %i.n = call noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h62f1883b8325f545E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_ZN6mdbook8renderer15html_handlebars12hbs_renderer14HtmlHandlebars10render_40417ha4f28879f97ed6faE(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(368) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(488) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [72 x i8], align 8                ; 6 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [176 x i8], align 8               ; 6 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [24 x i8], align 8                ; 2 uses
  %i.q = alloca [24 x i8], align 8                ; 13 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.722 = alloca [24 x i8], align 8          ; 6 uses
  %i.t = alloca [32 x i8], align 8                ; 6 uses
  %i.u = alloca [32 x i8], align 8                ; 4 uses
  %i.v = alloca [24 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 16 uses
  %i.y = alloca [32 x i8], align 8                ; 6 uses
  %i.z = alloca [32 x i8], align 8                ; 4 uses
  %i.aa = alloca [24 x i8], align 8               ; 7 uses
  %i.ab = alloca [32 x i8], align 8               ; 5 uses
  %i.ac = alloca [32 x i8], align 8               ; 6 uses
  %i.ad = alloca [32 x i8], align 8               ; 4 uses
  %i.ae = alloca [24 x i8], align 8               ; 7 uses
  %i.af = alloca [32 x i8], align 8               ; 5 uses
  %i.ag = alloca [32 x i8], align 8               ; 6 uses
  %i.ah = alloca [32 x i8], align 8               ; 4 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [32 x i8], align 8               ; 5 uses
  %i.ak = alloca [40 x i8], align 8               ; 8 uses
  %i.al = alloca [48 x i8], align 8               ; 8 uses
  %i.am = alloca [16 x i8], align 8               ; 6 uses
  %i.an = alloca [24 x i8], align 8               ; 12 uses
  %i.ao = alloca [24 x i8], align 8               ; 12 uses
  %i.ap = alloca [24 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [24 x i8], align 8               ; 15 uses
  %i.as = alloca [24 x i8], align 8               ; 4 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 13 uses
  %i.av = alloca [24 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !range !5, !noundef !4
  %.not = icmp eq i64 %i.ax, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @_ZN3std4path4Path4join17hc2fd7953480f9f6bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.au, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  invoke void @_ZN3std2fs14read_to_string17hf2c9809ac61a0449E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @_ZN3std4path4Path4join17hff71bd3868ad4133E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ar, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @132, i64 noundef 6)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_ZN3std2fs8metadata17ha638efe79dabc058E(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.az, i64 noundef %i.bb)
          to label %bb.p unwind label %bb.o

bb.d:                                             ; preds = %bb.e, %bb.b
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE"(ptr noalias noundef align 8 dereferenceable(24) %i.au) #21
          to label %common.resume unwind label %bb.n

bb.e:                                             ; preds = %bb.b
  invoke void @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h27feaeaf767d466bE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.as, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  %i.bd = load i64, ptr %i.at, align 8, !range !5, !noundef !4 ; 2 uses
  %i.be = icmp eq i64 %i.bd, -9223372036854775808
  %i.bf = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.sroa.537.0.copyload = load i64, ptr %.sroa.537.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at)
  br i1 %i.be, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2c6ce00ed65d182E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit" unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

common.resume:                                    ; preds = %bb.dk, %bb.db, %bb.ab, %bb.w, %bb.d, %bb.o, %.body127, %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.ih, %bb.db ], [ %i.bh, %bb.h ], [ %i.bj, %bb.k ], [ %i.bw, %bb.o ], [ %i.ch, %bb.w ], [ %i.cn, %bb.ab ], [ %.pn62, %.body127 ], [ %i.bc, %bb.d ], [ %i.in, %bb.dk ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit": ; preds = %bb.g
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.dd

bb.j:                                             ; preds = %bb.f
  store i64 %i.bd, ptr %i.av, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.537.0.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2c6ce00ed65d182E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit78" unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit78": ; preds = %bb.j
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  br label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit82.a", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit78"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !nonnull !4, !noundef !4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !noundef !4
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 476
  %i.bq = load i8, ptr %i.bp, align 4, !range !126, !noundef !4
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 477
  %i.bt = load i8, ptr %i.bs, align 1, !range !126
  %i.bu = trunc nuw i8 %i.bt to i1
  %.sroa.019.0 = select i1 %i.br, i1 true, i1 %i.bu
  invoke void @_ZN6mdbook5utils15render_markdown17hf11d8837a2e51484E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bo, i1 noundef zeroext %.sroa.019.0)
          to label %bb.ae unwind label %bb.ad

bb.n:                                             ; preds = %.body119, %.body71.thread, %.body68.thread, %.body65.thread, %.body.thread, %bb.cl, %.body108, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hc607968807f699b9E.exit", %.body127, %bb.o, %bb.d
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

bb.o:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.y, %bb.t, %bb.c
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE"(ptr noalias noundef align 8 dereferenceable(24) %i.ar) #21
          to label %common.resume unwind label %bb.n

bb.p:                                             ; preds = %bb.c
  %i.bx = load i64, ptr %i.m, align 8, !range !80, !noundef !4
  %.not.i = icmp eq i64 %i.bx, 2
  br i1 %.not.i, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.val74.a = load ptr, ptr %i.by, align 8, !nonnull !4, !noundef !4
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h04a3fc855b2bdfe8E"(ptr nonnull %.val74.a)
          to label %bb.r unwind label %bb.o

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !584
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4f9553f239598cdeE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, i64 noundef 108, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc79 unwind label %bb.o

.noexc79:                                         ; preds = %bb.r
  %i.bz = load i64, ptr %i.f, align 8, !range !3, !noalias !584, !noundef !4
  %i.ca = trunc nuw i64 %i.bz to i1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !range !5, !noalias !584, !noundef !4 ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  br i1 %i.ca, label %bb.s, label %bb.u, !prof !6

bb.s:                                             ; preds = %.noexc79
  %i.ce = load i64, ptr %i.cd, align 8, !noalias !584
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.cc, i64 %i.ce) #20
          to label %.noexc80 unwind label %bb.o

.noexc80:                                         ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  invoke void @_ZN3std2fs14read_to_string17hf2c9809ac61a0449E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.y unwind label %bb.o

bb.u:                                             ; preds = %.noexc79
  %i.cf = load ptr, ptr %i.cd, align 8, !noalias !584, !nonnull !4, !noundef !4 ; 2 uses
  %i.cg = icmp ugt i64 %i.cc, 107
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !584
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(108) %i.cf, ptr noundef nonnull align 1 dereferenceable(108) @133, i64 108, i1 false), !noalias !588
  br label %bb.v

bb.v:                                             ; preds = %bb.z, %bb.u
  %.sink43 = phi i64 [ %i.cc, %bb.u ], [ %i.cj, %bb.z ]
  %.sink.a = phi ptr [ %i.cf, %bb.u ], [ %i.cm, %bb.z ]
  %.sroa.540.0.copyload.sink = phi i64 [ 108, %bb.u ], [ %.sroa.540.0.copyload, %bb.z ]
  store i64 %.sink43, ptr %i.av, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store ptr %.sink.a, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i64 %.sroa.540.0.copyload.sink, ptr %.sroa.518.0..sroa_idx, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2c6ce00ed65d182E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit82.a" unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit82.a": ; preds = %bb.v
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.m

bb.y:                                             ; preds = %bb.t
  invoke void @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h296afc6fd0178b4fE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ar)
          to label %bb.z unwind label %bb.o

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.cj = load i64, ptr %i.aq, align 8, !range !5, !noundef !4 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, -9223372036854775808
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.sroa.540.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %.sroa.540.0.copyload = load i64, ptr %.sroa.540.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  br i1 %i.ck, label %bb.aa, label %bb.v

bb.aa:                                            ; preds = %bb.z
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2c6ce00ed65d182E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit84" unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22
  unreachable

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hd9925dbe57a1a26cE.exit84": ; preds = %bb.aa
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  br label %bb.dd

.body127:                                         ; preds = %bb.di, %bb.cz, %bb.ad, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hc607968807f699b9E.exit"
  %.pn62 = phi { ptr, i32 } [ %.pn60, %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hc607968807f699b9E.exit" ], [ %i.if, %bb.cz ], [ %i.cp, %bb.ad ], [ %i.il, %bb.di ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av) #21
          to label %common.resume unwind label %bb.n

bb.ad:                                            ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1fcee27b8994712dE.exit.i143", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1fcee27b8994712dE.exit.i126", %bb.m
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.body127

bb.ae:                                            ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he1a242be3fde4c15E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %5)
          to label %bb.ag unwind label %bb.af

"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hc607968807f699b9E.exit": ; preds = %.body119, %bb.af
  %.pn60 = phi { ptr, i32 } [ %i.cq, %bb.af ], [ %.pn58, %.body119 ]
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao) #21
          to label %.body127 unwind label %bb.n

bb.af:                                            ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E.exit139", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E.exit122", %bb.ae
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hc607968807f699b9E.exit"

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.cs = load i64, ptr %i.cr, align 8, !range !5, !noundef !4
  %.not51.a = icmp eq i64 %i.cs, -9223372036854775808
  br i1 %.not51.a, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !4, !noundef !4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.cw = load i64, ptr %i.cv, align 8, !noundef !4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.an, %bb.ah
  %.sink46 = phi ptr [ %i.cu, %bb.ah ], [ @137, %bb.an ], [ @137, %bb.al ]
  %.sink44 = phi i64 [ %i.cw, %bb.ah ], [ 1, %bb.an ], [ 1, %bb.al ]
  store ptr %.sink46, ptr %i.am, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 %.sink44, ptr %i.cx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !589
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4f9553f239598cdeE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, i64 noundef 8, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc85 unwind label %bb.ak

.noexc85:                                         ; preds = %bb.ai
  %i.cy = load i64, ptr %i.e, align 8, !range !3, !noalias !589, !noundef !4
  %i.cz = trunc nuw i64 %i.cy to i1
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.db = load i64, ptr %i.da, align 8, !range !5, !noalias !589, !noundef !4 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.cz, label %bb.aj, label %bb.ao, !prof !6

bb.aj:                                            ; preds = %.noexc85
  %i.dd = load i64, ptr %i.dc, align 8, !noalias !589
  br label %.invoke

.body119:                                         ; preds = %bb.df, %bb.cx, %.body65, %.body68, %.body71, %bb.ak, %.body71.thread, %.body68.thread, %.body65.thread, %.body108
  %.pn58 = phi { ptr, i32 } [ %i.dt, %.body71 ], [ %.pn, %.body108 ], [ %eh.lpad-body6630, %.body65.thread ], [ %i.fd, %.body65 ], [ %eh.lpad-body6925, %.body68.thread ], [ %i.el, %.body68 ], [ %eh.lpad-body7220, %.body71.thread ], [ %i.id, %bb.cx ], [ %i.de, %bb.ak ], [ %i.ij, %bb.df ]
  invoke void @"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ec80ef1cfd082fcE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %"_ZN4core3ptr97drop_in_place$LT$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17hc607968807f699b9E.exit" unwind label %bb.n

bb.ak:                                            ; preds = %.invoke, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1fcee27b8994712dE.exit.i135", %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1fcee27b8994712dE.exit.i118", %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hfb484ef054d23288E.exit99", %bb.bq, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hfb484ef054d23288E.exit94", %bb.bg, %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hfb484ef054d23288E.exit", %bb.aw, %bb.ai, %bb.am
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.al:                                            ; preds = %bb.ag
  %i.df = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17hb57afb2b1cb16849E monotonic, align 8 ; 2 uses
  %i.dg = icmp ult i64 %i.df, 6
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp samesign ugt i64 %i.df, 3
  br i1 %i.dh, label %bb.am, label %bb.ai

bb.am:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr @135, ptr %i.al, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 1, ptr %i.di, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr null, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dk, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  store i64 0, ptr %i.dl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr @4, ptr %i.ak, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i64 47, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr @4, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store i64 47, ptr %i.do, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  store ptr @136, ptr %i.dp, align 8
  invoke void @_ZN3log13__private_api3log17heec515f1ba0d1361E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.al, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ak)
          to label %bb.an unwind label %bb.ak

bb.an:                                            ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  br label %bb.ai

bb.ao:                                            ; preds = %.noexc85
  %i.dq = load ptr, ptr %i.dc, align 8, !noalias !589, !nonnull !4, !noundef !4 ; 2 uses
  %i.dr = icmp ugt i64 %i.db, 7
  call void @llvm.assume(i1 %i.dr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !589
  store i64 7814437356025635170, ptr %i.dq, align 1, !noalias !593
  store i64 %i.db, ptr %i.ai, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %i.dq, ptr %.sroa.44.0..sroa_idx, align 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i64 8, ptr %.sroa.55.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  invoke void @_ZN10serde_json5value8to_value17h02bf24b83a0f6ec1E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.ap unwind label %.body71.thread21

.body71.thread21:                                 ; preds = %bb.ao
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %.body71.thread

.body71:                                          ; preds = %bb.au
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.body119

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !594)
  call void @llvm.experimental.noalias.scope.decl(metadata !597)
  %i.du = load i8, ptr %i.ag, align 8, !range !131, !alias.scope !597, !noalias !599, !noundef !4
  %i.dv = icmp eq i8 %i.du, 6
  br i1 %i.dv, label %bb.aq, label %bb.au, !prof !6

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !601
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !alias.scope !597, !noalias !599, !nonnull !4, !align !16, !noundef !4
  store ptr %i.dx, ptr %i.g, align 8, !noalias !601
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @106, i64 noundef 43, ptr noundef nonnull align 1 %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @138) #20
          to label %bb.as unwind label %bb.ar, !noalias !602

bb.ar:                                            ; preds = %bb.aq
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h84837496573fb693E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #21
          to label %.body71.thread unwind label %bb.at, !noalias !602

bb.as:                                            ; preds = %bb.aq
  unreachable

bb.at:                                            ; preds = %bb.ar
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #22, !noalias !602
  unreachable

bb.au:                                            ; preds = %bb.ap
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.ag, i64 32, i1 false), !alias.scope !602, !noalias !603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  invoke void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb6265bef86c0608eE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ah)
          to label %bb.av unwind label %.body71

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  %i.ea = load i8, ptr %i.aj, align 8, !range !131, !alias.scope !604, !noundef !4
  %i.eb = icmp eq i8 %i.ea, 6
  br i1 %i.eb, label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hfb484ef054d23288E.exit", label %bb.aw

bb.aw:                                            ; preds = %bb.av
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h25f1917831db092fE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aj)
          to label %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hfb484ef054d23288E.exit" unwind label %bb.ak

"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hfb484ef054d23288E.exit": ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !607
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h4f9553f239598cdeE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc90 unwind label %bb.ak

.noexc90:                                         ; preds = %"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$serde_json..value..Value$GT$$GT$17hfb484ef054d23288E.exit"
  %i.ec = load i64, ptr %i.d, align 8, !range !3, !noalias !607, !noundef !4
  %i.ed = trunc nuw i64 %i.ec to i1
  %i.ee = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !range !5, !noalias !607, !noundef !4 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.ed, label %bb.ax, label %bb.ay, !prof !6
end_hunk_0
