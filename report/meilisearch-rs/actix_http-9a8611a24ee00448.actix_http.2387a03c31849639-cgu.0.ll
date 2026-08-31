Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@_ZN10actix_http2h210dispatcher16prepare_response17hc78a6f550bb87a3cE:bb.a
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph, %bb.as
  %.pn.pn = phi { ptr, ptr } [ %.pn, %.lr.ph ], [ %i.ff, %bb.as ]
  %i.eb = phi ptr [ %i.ea, %.lr.ph ], [ %i.fg, %bb.as ] ; 20 uses
  %i.ec = extractvalue { ptr, ptr } %.pn.pn, 1    ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ec) ]
  %i.ed = load ptr, ptr %i.eb, align 8, !noundef !4
  %.not37 = icmp eq ptr %i.ed, null
  br i1 %.not37, label %bb.ar, label %bb.aq

.outer._crit_edge:                                ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit", %bb.as
  %.sroa.0.0.ph.lcssa200 = phi i1 [ %.sroa.0.0.ph206, %bb.as ], [ %.sroa.0.1, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br i1 %.sroa.0.0.ph.lcssa200, label %bb.af, label %bb.ad

.critedge:                                        ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge, %.outer._crit_edge
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !608
  %i.ee = call noundef dereferenceable_or_null(29) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 29, i64 noundef range(i64 1, 9) 1) #45, !noalias !608 ; 3 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 29, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #46
          to label %.noexc56 unwind label %.loopexit.split-lp

.noexc56:                                         ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit67", %.outer._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.ae, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.eg = load i64, ptr %1, align 8, !noalias !613, !noundef !4
  %i.eh = add i64 %i.eg, -1                       ; 2 uses
  store i64 %i.eh, ptr %1, align 8, !noalias !613
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.ag, label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h5208b3e1cf7ffd21E.exit57"

bb.ag:                                            ; preds = %bb.af
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc433dc35e7a14729E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.af)
  br label %"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h5208b3e1cf7ffd21E.exit57"

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h5208b3e1cf7ffd21E.exit57": ; preds = %bb.af, %bb.ag
  ret void

bb.ah:                                            ; preds = %bb.ap
  %lpad.thr_comm.split-lp117 = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.ai:                                            ; preds = %bb.ad
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val.i = load ptr, ptr %i.ej, align 8, !noalias !620, !nonnull !4, !noundef !4
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.ee, ptr noundef nonnull align 8 dereferenceable(29) %i.ek, i64 29, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) @137, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke void @_ZN5bytes9bytes_mut11rebuild_vec17h7930fac3c9cb4245E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noundef nonnull %i.ee, i64 noundef 29, i64 noundef 29, i64 noundef 0)
          to label %.noexc60 unwind label %.body.thread

.noexc60:                                         ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !623
  invoke void @"_ZN92_$LT$bytes..bytes..Bytes$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from17h105911369ca93d58E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.aj unwind label %.body.thread

.body:                                            ; preds = %bb.al, %bb.an
  %lpad.thr_comm.split-lp127 = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.aj:                                            ; preds = %.noexc60
  %i.el = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.em = load i64, ptr %i.el, align 16, !alias.scope !627, !noalias !623, !noundef !4
  %i.en = load <2 x ptr>, ptr %i.j, align 16, !noalias !630
  %.sroa.092.0.copyload = load ptr, ptr %i.j, align 16, !noalias !630
  %.sroa.895.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.895.0.copyload = load ptr, ptr %.sroa.895.0..sroa_idx, align 8, !noalias !630
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %.not.i62 = icmp eq ptr %.sroa.092.0.copyload, null
  br i1 %.not.i62, label %bb.ak, label %bb.al, !prof !634

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @668) #46
          to label %.noexc63 unwind label %.body.thread

.noexc63:                                         ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.aj
  %.sroa.794.8..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 %i.em, ptr %.sroa.794.8..sroa.2.0..sroa_idx.i.sroa_idx, align 16, !alias.scope !635
  %.sroa.895.8..sroa.2.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %.sroa.895.0.copyload, ptr %.sroa.895.8..sroa.2.0..sroa_idx.i.sroa_idx, align 8, !alias.scope !635
  store <2 x ptr> %i.en, ptr %i.r, align 16, !alias.scope !635
  %i.eo = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i8 0, ptr %i.eo, align 16, !alias.scope !637, !noalias !631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217he0936424fb9ea1b6E"(ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.n, ptr noalias noundef align 8 dereferenceable(96) %i.ae, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.r)
          to label %bb.am unwind label %.body

bb.am:                                            ; preds = %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !638)
  %i.ep = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.eq = load i8, ptr %i.ep, align 8, !range !560, !alias.scope !641, !noalias !638, !noundef !4
  %i.er = icmp eq i8 %i.eq, 3
  br i1 %i.er, label %bb.an, label %bb.ao, !prof !282

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @543, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #46
          to label %.noexc64 unwind label %.body

.noexc64:                                         ; preds = %bb.an
  unreachable

bb.ao:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.n, i64 40, i1 false), !alias.scope !643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.experimental.noalias.scope.decl(metadata !644)
  %i.es = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.et = load i8, ptr %i.es, align 8, !range !27, !alias.scope !644, !noundef !4
  %i.eu = icmp eq i8 %i.et, 2
  br i1 %i.eu, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit67", label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  %i.ev = load ptr, ptr %i.t, align 8, !alias.scope !656, !nonnull !4, !align !349, !noundef !4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !noalias !656, !nonnull !4, !noundef !4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ez = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !alias.scope !656, !noundef !4
  %i.fb = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !656, !noundef !4
  invoke void %i.ex(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ey, ptr noundef %i.fa, i64 noundef %i.fc)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit67" unwind label %bb.ah, !inline_history !577

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit67": ; preds = %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.af

.body.thread:                                     ; preds = %bb.ai, %.noexc60, %bb.ak
  %lpad.thr_comm126 = landingpad { ptr, i32 }
          cleanup
  br label %.body87

bb.aq:                                            ; preds = %bb.at, %bb.ar, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_ZN4http6header4name10HeaderName11from_static17ha2e639b7af81489eE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @92, i64 noundef 10)
          to label %bb.au unwind label %.loopexit.loopexit

bb.ar:                                            ; preds = %bb.ac
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.fe = load i8, ptr %i.fd, align 8, !range !465, !noundef !4
  switch i8 %i.fe, label %bb.aq [
    i8 20, label %bb.as
    i8 24, label %bb.at
    i8 32, label %.loopexit162
    i8 69, label %bb.as
    i8 71, label %bb.as
  ]

bb.as:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit74.a", %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit78", %bb.at, %bb.ar, %bb.ar, %bb.ar
  %i.ff = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x) ; 2 uses
  %i.fg = extractvalue { ptr, ptr } %i.ff, 0      ; 2 uses
  %.not = icmp eq ptr %i.fg, null
  br i1 %.not, label %.outer._crit_edge, label %bb.ac

bb.at:                                            ; preds = %bb.ar
  br i1 %.sroa.01.0.shrunk104, label %bb.as, label %bb.aq

.loopexit162:                                     ; preds = %bb.ar, %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit76"
  %.sroa.0.1 = phi i1 [ %.sroa.0.0.ph206, %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit76" ], [ true, %bb.ar ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.fh = load ptr, ptr %i.ec, align 8, !nonnull !4, !align !349, !noundef !4
  %i.fi = load ptr, ptr %i.fh, align 8, !nonnull !4, !noundef !4
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8, !noundef !4
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !noundef !4
  invoke void %i.fi(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.o, ptr noundef nonnull align 8 %i.fj, ptr noundef %i.fl, i64 noundef %i.fn)
          to label %bb.bg unwind label %.loopexit.loopexit.split-lp

bb.au:                                            ; preds = %bb.aq
  %i.fo = load ptr, ptr %i.w, align 8, !noundef !4 ; 4 uses
  %i.fp = icmp ne ptr %i.fo, null                 ; 2 uses
  %i.fq = load ptr, ptr %i.eb, align 8, !noundef !4 ; 2 uses
  %i.fr = icmp eq ptr %i.fq, null                 ; 2 uses
  %i.fs = xor i1 %i.fp, %i.fr
  br i1 %i.fs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  br i1 %i.fp, label %bb.ax, label %bb.ay

bb.aw:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !657)
  call void @llvm.experimental.noalias.scope.decl(metadata !660)
  %i.ft = icmp eq ptr %i.fo, null
  br i1 %i.ft, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit72", label %..thread141_crit_edge.a

..thread141_crit_edge.a:                          ; preds = %bb.aw
  %.pre = load ptr, ptr %i.dm, align 8, !alias.scope !663
  %.pre259 = load i64, ptr %i.dn, align 8, !alias.scope !663
  br label %.thread141.a

.thread141.a:                                     ; preds = %..thread141_crit_edge.a, %.split, %bb.ax
  %i.fu = phi i64 [ %.pre259, %..thread141_crit_edge.a ], [ %i.fy, %.split ], [ %i.fy, %bb.ax ]
  %i.fv = phi ptr [ %.pre, %..thread141_crit_edge.a ], [ %.pre258.a, %.split ], [ %.pre258.a, %bb.ax ]
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @llvm.experimental.noalias.scope.decl(metadata !673)
  call void @llvm.experimental.noalias.scope.decl(metadata !674)
  call void @llvm.experimental.noalias.scope.decl(metadata !675)
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !663, !nonnull !4, !noundef !4
  invoke void %i.fx(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %i.fv, i64 noundef %i.fu)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit72" unwind label %.loopexit.loopexit, !inline_history !676

bb.ax:                                            ; preds = %bb.av
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %i.fy = load i64, ptr %i.dn, align 8, !noundef !4 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !4
  %.not38 = icmp eq i64 %i.fy, %i.ga
  %.pre258.a = load ptr, ptr %i.dm, align 8       ; 4 uses
  br i1 %.not38, label %.split, label %.thread141.a

bb.ay:                                            ; preds = %bb.av
  call void @llvm.assume(i1 %i.fr)
  %i.gb = load i8, ptr %i.dm, align 8, !range !465, !noundef !4
  %i.gc = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.gd = load i8, ptr %i.gc, align 8, !range !465, !noundef !4
  %i.ge = icmp eq i8 %i.gb, %i.gd
  br i1 %i.ge, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit74.a", label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit72"

.split:                                           ; preds = %bb.ax
  %i.gf = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8, !noundef !4
  %bcmp = call i32 @bcmp(ptr %.pre258.a, ptr %i.gg, i64 %i.fy)
  %i.gh = icmp eq i32 %bcmp, 0
  br i1 %i.gh, label %bb.az, label %.thread141.a

bb.az:                                            ; preds = %.split
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.gj = load ptr, ptr %i.gi, align 8, !noalias !677, !nonnull !4, !noundef !4
  invoke void %i.gj(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.do, ptr noundef %.pre258.a, i64 noundef %i.fy)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit74.a" unwind label %.loopexit.loopexit, !inline_history !676

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit74.a": ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.as

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit72": ; preds = %bb.ay, %bb.aw, %.thread141.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  invoke void @_ZN4http6header4name10HeaderName11from_static17ha2e639b7af81489eE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @138, i64 noundef 16)
          to label %bb.ba unwind label %.loopexit.loopexit

bb.ba:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit72"
  %i.gk = load ptr, ptr %i.v, align 8, !noundef !4 ; 4 uses
  %i.gl = icmp ne ptr %i.gk, null                 ; 2 uses
  %i.gm = load ptr, ptr %i.eb, align 8, !noundef !4 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null                 ; 2 uses
  %i.go = xor i1 %i.gl, %i.gn
  br i1 %i.go, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.gl, label %bb.bd, label %bb.be

bb.bc:                                            ; preds = %bb.ba
  call void @llvm.experimental.noalias.scope.decl(metadata !690)
  call void @llvm.experimental.noalias.scope.decl(metadata !693)
  %i.gp = icmp eq ptr %i.gk, null
  br i1 %i.gp, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit76", label %..thread143_crit_edge

..thread143_crit_edge:                            ; preds = %bb.bc
  %.pre260 = load i64, ptr %i.dq, align 8, !alias.scope !696
  br label %.thread143

.thread143:                                       ; preds = %.split144, %bb.bd, %..thread143_crit_edge
  %i.gq = phi i64 [ %.pre260, %..thread143_crit_edge ], [ %i.gu, %bb.bd ], [ %i.gu, %.split144 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !705)
  call void @llvm.experimental.noalias.scope.decl(metadata !706)
  call void @llvm.experimental.noalias.scope.decl(metadata !707)
  call void @llvm.experimental.noalias.scope.decl(metadata !708)
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !696, !nonnull !4, !noundef !4
  %i.gt = load ptr, ptr %i.dp, align 8, !alias.scope !696, !noundef !4
  invoke void %i.gs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.gt, i64 noundef %i.gq)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit76" unwind label %.loopexit.loopexit.split-lp, !inline_history !676

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gm) ]
  %i.gu = load i64, ptr %i.dq, align 8, !noundef !4 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !4
  %.not41 = icmp eq i64 %i.gu, %i.gw
  br i1 %.not41, label %.split144, label %.thread143

bb.be:                                            ; preds = %bb.bb
  call void @llvm.assume(i1 %i.gn)
  %i.gx = load i8, ptr %i.dp, align 8, !range !465, !noundef !4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.gz = load i8, ptr %i.gy, align 8, !range !465, !noundef !4
  %i.ha = icmp eq i8 %i.gx, %i.gz
  br i1 %i.ha, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit78", label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit76"

.split144:                                        ; preds = %bb.bd
  %i.hb = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8, !noundef !4
  %i.hd = load ptr, ptr %i.dp, align 8, !noundef !4 ; 2 uses
  %bcmp42 = call i32 @bcmp(ptr %i.hd, ptr %i.hc, i64 %i.gu)
  %i.he = icmp eq i32 %bcmp42, 0
  br i1 %i.he, label %bb.bf, label %.thread143

bb.bf:                                            ; preds = %.split144
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gk, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8, !noalias !709, !nonnull !4, !noundef !4
  invoke void %i.hg(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef %i.hd, i64 noundef %i.gu)
          to label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit78" unwind label %.loopexit.loopexit, !inline_history !676

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit78": ; preds = %bb.be, %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.as

"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit76": ; preds = %bb.be, %bb.bc, %.thread143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.loopexit162

bb.bg:                                            ; preds = %.loopexit162
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.hi = load i8, ptr %i.hh, align 8, !range !466, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false)
  store i8 %i.hi, ptr %i.ds, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !722)
  call void @llvm.experimental.noalias.scope.decl(metadata !725)
  %i.hj = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hfc460cfa010b52f2E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae)
          to label %bb.bh unwind label %.loopexit157, !noalias !725

bb.bh:                                            ; preds = %bb.bg
  br i1 %i.hj, label %bb.bp, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !727)
  %i.hk = load i64, ptr %i.ae, align 8, !range !371, !alias.scope !730, !noalias !725, !noundef !4 ; 2 uses
  %i.hl = icmp eq i64 %i.hk, 2
  br i1 %i.hl, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !731
  %i.hm = load <2 x i64>, ptr %i.dt, align 8, !alias.scope !730, !noalias !725 ; 3 uses
  %i.hn = shufflevector <2 x i64> %i.hm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.ho = xor <2 x i64> %i.hn, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.ho, ptr %i.d, align 16, !noalias !731
  %i.hp = shufflevector <2 x i64> %i.hm, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.hq = xor <2 x i64> %i.hp, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.hq, ptr %.sroa.519.0..sroa_idx.i.i, align 16, !noalias !731
  store <2 x i64> %i.hm, ptr %.sroa.721.0..sroa_idx.i.i, align 16, !noalias !731
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.923.0..sroa_idx.i.i, i8 0, i64 24, i1 false), !noalias !731
  %i.hr = load ptr, ptr %i.eb, align 8, !noalias !732, !noundef !4 ; 3 uses
  %i.hs = icmp ne ptr %i.hr, null
  %i.ht = zext i1 %i.hs to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !739
  store i64 %i.ht, ptr %i.c, align 8, !noalias !739
  call fastcc void @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17h7eab469a7facf9a0E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef 8), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !739
  %.not.i.i.i.i.i81 = icmp eq ptr %i.hr, null
  %i.hu = getelementptr i8, ptr %i.eb, i64 8      ; 2 uses
  br i1 %.not.i.i.i.i.i81, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %.val.i.i.i.i.i = load ptr, ptr %i.hu, align 8, !noalias !732, !noundef !4 ; 2 uses
  %i.hv = getelementptr i8, ptr %i.eb, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.hv, align 8, !noalias !732, !noundef !4
  call fastcc void @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17h7eab469a7facf9a0E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i), !noalias !744
  %i.hw = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.hx = trunc i64 %i.hw to i8
  br label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he69d7481888d29d2E.exit.i.i"

bb.bl:                                            ; preds = %bb.bj
  %i.hy = load i8, ptr %i.hu, align 8, !range !465, !noalias !732, !noundef !4 ; 2 uses
  %i.hz = zext nneg i8 %i.hy to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !745
  store i64 %i.hz, ptr %i.b, align 8, !noalias !745
  call fastcc void @"_ZN71_$LT$std..hash..random..DefaultHasher$u20$as$u20$core..hash..Hasher$GT$5write17h7eab469a7facf9a0E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 8), !noalias !744
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !745
  br label %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he69d7481888d29d2E.exit.i.i"

"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he69d7481888d29d2E.exit.i.i": ; preds = %bb.bl, %bb.bk
  %i.ia = phi i8 [ %i.hy, %bb.bl ], [ %i.hx, %bb.bk ]
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.d, align 16, !alias.scope !750, !noalias !731
  %.sroa.10.0.copyload.i.i.i = load i64, ptr %.sroa.418.0..sroa_idx.i.i, align 8, !alias.scope !750, !noalias !731
  %.sroa.17.0.copyload.i.i.i = load i64, ptr %.sroa.519.0..sroa_idx.i.i, align 16, !alias.scope !750, !noalias !731 ; 3 uses
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.620.0..sroa_idx.i.i, align 8, !alias.scope !750, !noalias !731
  %i.ib = load i64, ptr %.sroa.923.0..sroa_idx.i.i, align 16, !alias.scope !750, !noalias !731, !noundef !4
  %i.ic = shl i64 %i.ib, 56
  %i.id = load i64, ptr %.sroa.1024.0..sroa_idx.i.i, align 8, !alias.scope !750, !noalias !731, !noundef !4
  %i.ie = or i64 %i.ic, %i.id                     ; 2 uses
  %i.if = xor i64 %i.ie, %.sroa.22.0.copyload.i.i.i ; 3 uses
  %i.ig = add i64 %.sroa.17.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i.i ; 3 uses
  %i.ih = add i64 %i.if, %.sroa.10.0.copyload.i.i.i ; 2 uses
  %i.ii = call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i, i64 %.sroa.17.0.copyload.i.i.i, i64 13)
  %i.ij = xor i64 %i.ii, %i.ig                    ; 3 uses
  %i.ik = call i64 @llvm.fshl.i64(i64 %i.if, i64 %i.if, i64 16)
  %i.il = xor i64 %i.ik, %i.ih                    ; 3 uses
  %i.im = call i64 @llvm.fshl.i64(i64 %i.ig, i64 %i.ig, i64 32)
  %i.in = add i64 %i.ih, %i.ij                    ; 3 uses
  %i.io = add i64 %i.il, %i.im                    ; 2 uses
  %i.ip = call i64 @llvm.fshl.i64(i64 %i.ij, i64 %i.ij, i64 17)
  %i.iq = xor i64 %i.in, %i.ip                    ; 3 uses
  %i.ir = call i64 @llvm.fshl.i64(i64 %i.il, i64 %i.il, i64 21)
  %i.is = xor i64 %i.ir, %i.io                    ; 3 uses
  %i.it = call i64 @llvm.fshl.i64(i64 %i.in, i64 %i.in, i64 32)
  %i.iu = xor i64 %i.io, %i.ie
  %i.iv = xor i64 %i.it, 255
  %i.iw = add i64 %i.iu, %i.iq                    ; 3 uses
  %i.ix = add i64 %i.is, %i.iv                    ; 2 uses
  %i.iy = call i64 @llvm.fshl.i64(i64 %i.iq, i64 %i.iq, i64 13)
  %i.iz = xor i64 %i.iw, %i.iy                    ; 3 uses
  %i.ja = call i64 @llvm.fshl.i64(i64 %i.is, i64 %i.is, i64 16)
  %i.jb = xor i64 %i.ja, %i.ix                    ; 3 uses
  %i.jc = call i64 @llvm.fshl.i64(i64 %i.iw, i64 %i.iw, i64 32)
  %i.jd = add i64 %i.iz, %i.ix                    ; 3 uses
  %i.je = add i64 %i.jb, %i.jc                    ; 2 uses
  %i.jf = call i64 @llvm.fshl.i64(i64 %i.iz, i64 %i.iz, i64 17)
  %i.jg = xor i64 %i.jd, %i.jf                    ; 3 uses
  %i.jh = call i64 @llvm.fshl.i64(i64 %i.jb, i64 %i.jb, i64 21)
  %i.ji = xor i64 %i.jh, %i.je                    ; 3 uses
  %i.jj = call i64 @llvm.fshl.i64(i64 %i.jd, i64 %i.jd, i64 32)
  %i.jk = add i64 %i.jg, %i.je                    ; 3 uses
  %i.jl = add i64 %i.ji, %i.jj                    ; 2 uses
  %i.jm = call i64 @llvm.fshl.i64(i64 %i.jg, i64 %i.jg, i64 13)
  %i.jn = xor i64 %i.jm, %i.jk                    ; 3 uses
  %i.jo = call i64 @llvm.fshl.i64(i64 %i.ji, i64 %i.ji, i64 16)
  %i.jp = xor i64 %i.jo, %i.jl                    ; 3 uses
  %i.jq = call i64 @llvm.fshl.i64(i64 %i.jk, i64 %i.jk, i64 32)
  %i.jr = add i64 %i.jn, %i.jl                    ; 3 uses
  %i.js = add i64 %i.jp, %i.jq                    ; 2 uses
  %i.jt = call i64 @llvm.fshl.i64(i64 %i.jn, i64 %i.jn, i64 17)
  %i.ju = xor i64 %i.jt, %i.jr                    ; 3 uses
  %i.jv = call i64 @llvm.fshl.i64(i64 %i.jp, i64 %i.jp, i64 21)
  %i.jw = xor i64 %i.jv, %i.js                    ; 2 uses
  %i.jx = call i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 32)
  %i.jy = add i64 %i.ju, %i.js
  %i.jz = add i64 %i.jw, %i.jx                    ; 2 uses
  %i.ka = call i64 @llvm.fshl.i64(i64 %i.ju, i64 %i.ju, i64 13)
  %i.kb = xor i64 %i.ka, %i.jy                    ; 2 uses
  %i.kc = shl i64 %i.jw, 16
  %i.kd = xor i64 %i.kc, %i.jz
  %i.ke = add i64 %i.kb, %i.jz                    ; 2 uses
  %i.kf = lshr i64 %i.kb, 47
  %i.kg = lshr i64 %i.kd, 43
  %i.kh = lshr i64 %i.ke, 32
  %i.ki = xor i64 %i.kg, %i.kf
  %i.kj = xor i64 %i.ki, %i.kh
  %i.kk = xor i64 %i.kj, %i.ke
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !731
  br label %.loopexit.i

bb.bm:                                            ; preds = %bb.bi
  %i.kl = load ptr, ptr %i.eb, align 8, !noalias !753, !noundef !4 ; 5 uses
  %i.km = icmp ne ptr %i.kl, null
  %i.kn = zext i1 %i.km to i64
  %i.ko = xor i64 %i.kn, -3750763034362895579
  %i.kp = mul i64 %i.ko, 2232315406967589409      ; 4 uses
  %.not.i.i.i31.i.i = icmp eq ptr %i.kl, null
  %i.kq = getelementptr i8, ptr %i.eb, i64 8      ; 2 uses
  br i1 %.not.i.i.i31.i.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %.val.i.i.i32.i.i = load ptr, ptr %i.kq, align 8, !noalias !753, !noundef !4 ; 4 uses
  %i.kr = getelementptr i8, ptr %i.eb, i64 16
  %.val1.i.i.i33.i.i = load i64, ptr %i.kr, align 8, !noalias !753, !noundef !4 ; 4 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.val.i.i.i32.i.i, i64 %.val1.i.i.i33.i.i
  %i.kt = icmp samesign eq i64 %.val1.i.i.i33.i.i, 0
  %i.ku = ptrtoint ptr %.val.i.i.i32.i.i to i64
  %i.kv = trunc i64 %i.ku to i8                   ; 3 uses
  br i1 %i.kt, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.bn
  %xtraiter = and i64 %.val1.i.i.i33.i.i, 7       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.prol = phi i64 [ %i.la, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %i.kp, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %.sroa.04.05.i.i.i.i.i.i.i.prol = phi ptr [ %i.kw, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.val.i.i.i32.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ]
  %i.kw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.kx = load i8, ptr %.sroa.04.05.i.i.i.i.i.i.i.prol, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.ky = zext i8 %i.kx to i64
  %i.kz = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.prol, %i.ky
  %i.la = mul i64 %i.kz, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !767

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.lcssa408.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.la, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.unr = phi i64 [ %i.kp, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.la, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %.sroa.04.05.i.i.i.i.i.i.i.unr = phi ptr [ %.val.i.i.i32.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kw, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.lb = icmp ult i64 %.val1.i.i.i33.i.i, 8
  br i1 %i.lb, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i = phi i64 [ %i.mp, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.i.i.i.i.i.i = phi ptr [ %i.ml, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.04.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, i64 1
  %i.ld = load i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.le = zext i8 %i.ld to i64
  %i.lf = xor i64 %.sroa.0.06.i.i.i.i.i.i.i, %i.le
  %i.lg = mul i64 %i.lf, 1099511628211
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, i64 2
  %i.li = load i8, ptr %i.lc, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.lj = zext i8 %i.li to i64
  %i.lk = xor i64 %i.lg, %i.lj
  %i.ll = mul i64 %i.lk, 1099511628211
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, i64 3
  %i.ln = load i8, ptr %i.lh, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.lo = zext i8 %i.ln to i64
  %i.lp = xor i64 %i.ll, %i.lo
  %i.lq = mul i64 %i.lp, 1099511628211
  %i.lr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, i64 4
  %i.ls = load i8, ptr %i.lm, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.lt = zext i8 %i.ls to i64
  %i.lu = xor i64 %i.lq, %i.lt
  %i.lv = mul i64 %i.lu, 1099511628211
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, i64 5
  %i.lx = load i8, ptr %i.lr, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.ly = zext i8 %i.lx to i64
  %i.lz = xor i64 %i.lv, %i.ly
  %i.ma = mul i64 %i.lz, 1099511628211
  %i.mb = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, i64 6
  %i.mc = load i8, ptr %i.lw, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.md = zext i8 %i.mc to i64
  %i.me = xor i64 %i.ma, %i.md
  %i.mf = mul i64 %i.me, 1099511628211
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, i64 7
  %i.mh = load i8, ptr %i.mb, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.mi = zext i8 %i.mh to i64
  %i.mj = xor i64 %i.mf, %i.mi
  %i.mk = mul i64 %i.mj, 1099511628211
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.mm = load i8, ptr %i.mg, align 1, !alias.scope !760, !noalias !763, !noundef !4
  %i.mn = zext i8 %i.mm to i64
  %i.mo = xor i64 %i.mk, %i.mn
  %i.mp = mul i64 %i.mo, 1099511628211            ; 2 uses
  %i.mq = icmp eq ptr %i.ml, %i.ks
  br i1 %i.mq, label %.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i

bb.bo:                                            ; preds = %bb.bm
  %i.mr = load i8, ptr %i.kq, align 8, !range !465, !noalias !753, !noundef !4 ; 2 uses
  %i.ms = zext nneg i8 %i.mr to i64
  %i.mt = xor i64 %i.kp, %i.ms
  %i.mu = mul i64 %i.mt, 2232315406967589409
  br label %.loopexit.i

bb.bp:                                            ; preds = %bb.bh
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  call void @llvm.experimental.noalias.scope.decl(metadata !772)
  call void @llvm.experimental.noalias.scope.decl(metadata !775)
  %i.mv = load ptr, ptr %i.u, align 8, !alias.scope !778, !noalias !722, !nonnull !4, !align !349, !noundef !4
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mx = load ptr, ptr %i.mw, align 8, !noalias !778, !nonnull !4, !noundef !4
  %i.my = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.mz = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !alias.scope !778, !noalias !722, !noundef !4
  %i.nb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.nc = load i64, ptr %i.nb, align 8, !alias.scope !778, !noalias !722, !noundef !4
  invoke void %i.mx(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.my, ptr noundef %i.na, i64 noundef %i.nc)
          to label %.invoke unwind label %.loopexit.split-lp, !inline_history !779

.loopexit.i:                                      ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %bb.bo, %bb.bn, %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he69d7481888d29d2E.exit.i.i"
  %i.nd = phi i8 [ %i.ia, %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he69d7481888d29d2E.exit.i.i" ], [ %i.mr, %bb.bo ], [ %i.kv, %bb.bn ], [ %i.kv, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kv, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ]
  %4 = phi ptr [ %i.hr, %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he69d7481888d29d2E.exit.i.i" ], [ null, %bb.bo ], [ %i.kl, %bb.bn ], [ %i.kl, %.lr.ph.i.i.i.i.i.i.i ], [ %i.kl, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 2 uses
  %.sroa.0.0.i.i79 = phi i64 [ %i.kk, %"_ZN4core4hash5impls52_$LT$impl$u20$core..hash..Hash$u20$for$u20$$RF$T$GT$4hash17he69d7481888d29d2E.exit.i.i" ], [ %i.mu, %bb.bo ], [ %i.kp, %bb.bn ], [ %.lcssa408.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ], [ %i.mp, %.lr.ph.i.i.i.i.i.i.i ]
  %i.ne = trunc i64 %.sroa.0.0.i.i79 to i16
  %i.nf = and i16 %i.ne, 32767                    ; 6 uses
  %i.ng = load i16, ptr %i.du, align 8, !alias.scope !722, !noalias !725, !noundef !4 ; 3 uses
  %i.nh = and i16 %i.nf, %i.ng
  %i.ni = zext nneg i16 %i.nh to i64
  %i.nj = load i64, ptr %i.dw, align 8, !alias.scope !722, !noalias !725, !noundef !4 ; 2 uses
  %i.nk = zext i16 %i.ng to i64
  %i.nl = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.nm = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %5 = icmp eq ptr %4, null                       ; 2 uses
  %i.nn = load ptr, ptr %i.dv, align 8, !nonnull !4, !align !130
  %i.no = load i64, ptr %i.dx, align 8            ; 4 uses
  %i.np = load ptr, ptr %i.dy, align 8, !nonnull !4
  %.not450.a = icmp eq i64 %i.nj, 0
  br label %.outer391

.outer391:                                        ; preds = %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i", %.loopexit.i
  %.ph = phi i8 [ %i.om, %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i" ], [ %i.nd, %.loopexit.i ] ; 5 uses
  %.sroa.011.0.i.ph = phi i64 [ %i.on, %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i" ], [ 0, %.loopexit.i ] ; 3 uses
  %.sroa.05.0.i.ph = phi i64 [ %i.oo, %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i" ], [ %i.ni, %.loopexit.i ] ; 2 uses
  %i.nq = icmp ult i64 %.sroa.05.0.i.ph, %i.nj    ; 2 uses
  %.not450.not.a = xor i1 %.not450.a, true
  %brmerge = or i1 %i.nq, %.not450.not.a
  %.sroa.05.0.i.ph.mux = select i1 %i.nq, i64 %.sroa.05.0.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer391
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nn, i64 %.sroa.05.0.i.ph.mux ; 2 uses
  %i.ns = load i16, ptr %i.nr, align 2, !noalias !725, !noundef !4 ; 2 uses
  %.not.i80 = icmp eq i16 %i.ns, -1
  br i1 %.not.i80, label %bb.bs, label %bb.br

bb.bq:                                            ; preds = %bb.cc
  unreachable

bb.br:                                            ; preds = %.loopexit
  %i.nt = zext i16 %i.ns to i64                   ; 4 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nr, i64 2
  %i.nv = load i16, ptr %i.nu, align 2, !noalias !725, !noundef !4 ; 2 uses
  %i.nw = and i16 %i.nv, %i.ng
  %i.nx = zext i16 %i.nw to i64
  %i.ny = sub i64 %.sroa.05.0.i.ph.mux, %i.nx
  %i.nz = and i64 %i.ny, %i.nk
  %i.oa = icmp samesign ult i64 %i.nz, %.sroa.011.0.i.ph
  br i1 %i.oa, label %bb.bx, label %bb.bw

bb.bs:                                            ; preds = %.loopexit
  %i.ob = icmp ult i64 %i.no, 88686269585142076
  call void @llvm.assume(i1 %i.ob)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !780
  invoke void @"_ZN112_$LT$http..header..name..HeaderName$u20$as$u20$core..convert..From$LT$$RF$http..header..name..HeaderName$GT$$GT$4from17h6939060738163dfcE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noundef nonnull align 8 %i.eb)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ed3c42c08e91ba7E.exit.i" unwind label %.loopexit157, !noalias !725

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ed3c42c08e91ba7E.exit.i": ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !722
  %i.oc = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, i16 noundef %i.nf, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.e)
          to label %.noexc83.a unwind label %.loopexit.loopexit.split-lp

.noexc83.a:                                       ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ed3c42c08e91ba7E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !780
  br i1 %i.oc, label %.invoke, label %bb.bt

bb.bt:                                            ; preds = %.noexc83.a
  %i.od = load i64, ptr %i.dw, align 8, !alias.scope !722, !noalias !725, !noundef !4 ; 2 uses
  %i.oe = icmp ult i64 %.sroa.05.0.i.ph.mux, %i.od
  br i1 %i.oe, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.of = load ptr, ptr %i.dv, align 8, !alias.scope !722, !noalias !725, !nonnull !4, !align !130, !noundef !4
  %i.og = trunc i64 %i.no to i16
  %i.oh = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %.sroa.05.0.i.ph.mux ; 2 uses
  store i16 %i.og, ptr %i.oh, align 2, !noalias !725
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 2
  store i16 %i.nf, ptr %i.oi, align 2, !noalias !725
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit"

bb.bv:                                            ; preds = %bb.bt
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.0.i.ph.mux, i64 noundef %i.od, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #46
          to label %.noexc84.a unwind label %.loopexit.split-lp

.noexc84.a:                                       ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %bb.br
  %i.oj = icmp eq i16 %i.nv, %i.nf
  br i1 %i.oj, label %bb.by, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i"

bb.bx:                                            ; preds = %bb.br
  %i.ok = icmp samesign ugt i64 %.sroa.011.0.i.ph, 511
  %i.ol = icmp ne i64 %i.hk, 2
  %spec.select45.i = and i1 %i.ol, %i.ok
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !780
  invoke void @"_ZN112_$LT$http..header..name..HeaderName$u20$as$u20$core..convert..From$LT$$RF$http..header..name..HeaderName$GT$$GT$4from17h6939060738163dfcE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.i, ptr noundef nonnull align 8 %i.eb)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ed3c42c08e91ba7E.exit37.i" unwind label %.loopexit157, !noalias !725

"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i": ; preds = %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.i", %.split.i, %bb.cb, %bb.bz, %bb.bw
  %i.om = phi i8 [ %.ph, %bb.cb ], [ %.ph, %bb.bz ], [ %i.pd, %.split.i ], [ %.ph, %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.i" ], [ %.ph, %bb.bw ]
  %i.on = add nuw nsw i64 %.sroa.011.0.i.ph, 1
  %i.oo = add i64 %.sroa.05.0.i.ph.mux, 1
  br label %.outer391

bb.by:                                            ; preds = %bb.bw
  %i.op = icmp ugt i64 %i.no, %i.nt
  br i1 %i.op, label %bb.bz, label %bb.cc

bb.bz:                                            ; preds = %bb.by
  %i.oq = getelementptr inbounds nuw [104 x i8], ptr %i.np, i64 %i.nt ; 5 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 64
  %i.os = load ptr, ptr %i.or, align 8, !noalias !725, !noundef !4
  %i.ot = icmp ne ptr %i.os, null                 ; 2 uses
  %i.ou = xor i1 %5, %i.ot
  br i1 %i.ou, label %bb.ca, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i"

bb.ca:                                            ; preds = %bb.bz
  br i1 %i.ot, label %bb.cb, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.i"

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oq, i64 80
  %i.ow = load i64, ptr %i.ov, align 8, !noalias !725, !noundef !4 ; 2 uses
  %i.ox = load i64, ptr %i.nm, align 8, !noalias !780, !noundef !4
  %.not.i.i.i.i36.i = icmp eq i64 %i.ow, %i.ox
  br i1 %.not.i.i.i.i36.i, label %.split.i, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i"

.split.i:                                         ; preds = %bb.cb
  %i.oy = load ptr, ptr %i.nl, align 8, !noalias !780, !noundef !4 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oq, i64 72
  %i.pa = load ptr, ptr %i.oz, align 8, !noalias !725, !noundef !4
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr %i.pa, ptr %i.oy, i64 %i.ow), !noalias !725
  %i.pb = icmp eq i32 %bcmp.i.i.i.i.i, 0
  %i.pc = ptrtoint ptr %i.oy to i64
  %i.pd = trunc i64 %i.pc to i8
  br i1 %i.pb, label %bb.cd, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i"

bb.cc:                                            ; preds = %bb.by
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.nt, i64 noundef %i.no, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @557) #46
          to label %bb.bq unwind label %.loopexit.split-lp158, !noalias !725

"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.i": ; preds = %bb.ca
  call void @llvm.assume(i1 %5)
  %i.pe = getelementptr inbounds nuw i8, ptr %i.oq, i64 72
  %i.pf = load i8, ptr %i.pe, align 8, !range !465, !noalias !725, !noundef !4
  %i.pg = icmp eq i8 %i.pf, %.ph
  br i1 %i.pg, label %bb.cd, label %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.thread.i"

bb.cd:                                            ; preds = %"_ZN113_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$LT$$RF$http..header..name..HeaderName$GT$$GT$2eq17hf0df365b43054887E.exit.i", %.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !722
  invoke fastcc void @_ZN4http6header3map12append_value17h92ee31ed54926b9eE(i64 noundef %i.nt, ptr noalias noundef align 8 dereferenceable(104) %i.oq, ptr noalias noundef align 8 dereferenceable(24) %i.dz, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.g)
          to label %.noexc85 unwind label %.loopexit.loopexit.split-lp

.noexc85:                                         ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !780
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit"

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ed3c42c08e91ba7E.exit37.i": ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !780
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !noalias !722
  %i.ph = load i64, ptr %i.dx, align 8, !alias.scope !781, !noalias !784, !noundef !4 ; 2 uses
  %i.pi = icmp ult i64 %i.ph, 88686269585142076
  call void @llvm.assume(i1 %i.pi)
  %i.pj = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.ae, i16 noundef range(i16 0, -32768) %i.nf, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.h)
          to label %.noexc86 unwind label %.loopexit.loopexit.split-lp

.noexc86:                                         ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7ed3c42c08e91ba7E.exit37.i"
  br i1 %i.pj, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217heeaaed5888b93b83E.exit", label %bb.ce

bb.ce:                                            ; preds = %.noexc86
  %i.pk = load ptr, ptr %i.dv, align 8, !alias.scope !781, !noalias !784, !nonnull !4, !align !130, !noundef !4
  %i.pl = load i64, ptr %i.dw, align 8, !alias.scope !781, !noalias !784, !noundef !4 ; 2 uses
  %i.pm = trunc i64 %i.ph to i16
  %.not451 = icmp eq i64 %i.pl, 0
  br label %.outer

.outer:                                           ; preds = %bb.cg, %bb.ce
  %.sroa.07.0.i.i.ph = phi i64 [ %i.pv, %bb.cg ], [ 0, %bb.ce ] ; 2 uses
  %.sroa.6.0.i.i.ph = phi i16 [ %i.pw, %bb.cg ], [ %i.nf, %bb.ce ] ; 2 uses
  %.sroa.04.0.i.i.ph = phi i16 [ %i.pp, %bb.cg ], [ %i.pm, %bb.ce ] ; 2 uses
  %.sroa.01.0.i.i.ph = phi i64 [ %i.px, %bb.cg ], [ %.sroa.05.0.i.ph.mux, %bb.ce ] ; 2 uses
  %i.pn = icmp ult i64 %.sroa.01.0.i.i.ph, %i.pl  ; 2 uses
  %.not451.not = xor i1 %.not451, true
  %brmerge507 = or i1 %i.pn, %.not451.not
  %.sroa.01.0.i.i.ph.mux = select i1 %i.pn, i64 %.sroa.01.0.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge507, label %.loopexit449, label %infloop506

.loopexit449:                                     ; preds = %.outer
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.pk, i64 %.sroa.01.0.i.i.ph.mux ; 4 uses
  %i.pp = load i16, ptr %i.po, align 2, !noalias !784, !noundef !4 ; 2 uses
  %i.pq = icmp eq i16 %i.pp, -1
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 2 ; 3 uses
  br i1 %i.pq, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %.loopexit449
  store i16 %.sroa.04.0.i.i.ph, ptr %i.po, align 2, !noalias !784
  store i16 %.sroa.6.0.i.i.ph, ptr %i.pr, align 2, !noalias !784
  %i.ps = icmp ugt i64 %.sroa.07.0.i.i.ph, 127
  %or.cond.i.i = or i1 %spec.select45.i, %i.ps
  %i.pt = load i64, ptr %i.ae, align 8, !range !371
  %i.pu = icmp eq i64 %i.pt, 0
  %or.cond = select i1 %or.cond.i.i, i1 %i.pu, i1 false
  br i1 %or.cond, label %bb.ch, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217heeaaed5888b93b83E.exit.thread151"

bb.cg:                                            ; preds = %.loopexit449
  %i.pv = add i64 %.sroa.07.0.i.i.ph, 1
  %i.pw = load i16, ptr %i.pr, align 2, !noalias !784, !noundef !4
  store i16 %.sroa.04.0.i.i.ph, ptr %i.po, align 2, !noalias !784
  store i16 %.sroa.6.0.i.i.ph, ptr %i.pr, align 2, !noalias !784
  %i.px = add nuw i64 %.sroa.01.0.i.i.ph.mux, 1
  br label %.outer

bb.ch:                                            ; preds = %bb.cf
  store i64 1, ptr %i.ae, align 8, !alias.scope !781, !noalias !784
  br label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217heeaaed5888b93b83E.exit.thread151"

.loopexit157:                                     ; preds = %bb.bg, %bb.bs, %bb.bx
  %lpad.loopexit159 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

.loopexit.split-lp158:                            ; preds = %bb.cc
  %lpad.loopexit.split-lp160 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ci

bb.ci:                                            ; preds = %.loopexit.split-lp158, %.loopexit157
  %lpad.phi161 = phi { ptr, i32 } [ %lpad.loopexit159, %.loopexit157 ], [ %lpad.loopexit.split-lp160, %.loopexit.split-lp158 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !793)
  %i.py = load ptr, ptr %i.u, align 8, !alias.scope !796, !noalias !722, !nonnull !4, !align !349, !noundef !4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 32
  %i.qa = load ptr, ptr %i.pz, align 8, !noalias !796, !nonnull !4, !noundef !4
  %i.qb = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.qc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.qd = load ptr, ptr %i.qc, align 8, !alias.scope !796, !noalias !722, !noundef !4
  %i.qe = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.qf = load i64, ptr %i.qe, align 8, !alias.scope !796, !noalias !722, !noundef !4
  invoke void %i.qa(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qb, ptr noundef %i.qd, i64 noundef %i.qf)
          to label %.body87 unwind label %bb.cj, !inline_history !797

bb.cj:                                            ; preds = %bb.ci
  %i.qg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217heeaaed5888b93b83E.exit.thread151": ; preds = %bb.ch, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !780
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit"

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217heeaaed5888b93b83E.exit": ; preds = %.noexc86
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !780
  br label %.invoke

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit": ; preds = %bb.bu, %.noexc85, %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_append217heeaaed5888b93b83E.exit.thread151"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.qh = call { ptr, ptr } @"_ZN88_$LT$actix_http..header..map..Iter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb967ecb763bdb78dE"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.x) ; 2 uses
  %i.qi = extractvalue { ptr, ptr } %i.qh, 0      ; 2 uses
  %.not203 = icmp eq ptr %i.qi, null
  br i1 %.not203, label %.outer._crit_edge, label %.lr.ph

"_ZN4core3ptr54drop_in_place$LT$actix_http..config..ServiceConfig$GT$17h5208b3e1cf7ffd21E.exit": ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %.pn43.pn

infloop:                                          ; preds = %.outer391, %infloop
  br label %infloop

infloop506:                                       ; preds = %.outer, %infloop506
  br label %infloop506
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, ptr } @_ZN10actix_http4date11DateService3new17h3c8edbd5929d35f2E() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 3 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.412.i.i.i.i.i.i.i.i.i.i = alloca [76 x i8], align 4 ; 4 uses
  %i.g = alloca [256 x i8], align 128             ; 14 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 5 uses
  %i.j = alloca [48 x i8], align 8                ; 7 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 7 uses
  %i.n = alloca [80 x i8], align 8                ; 4 uses
  %i.o = alloca [48 x i8], align 8                ; 8 uses
  %i.p = alloca [8 x i8], align 8                 ; 4 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.5 = alloca [40 x i8], align 8            ; 4 uses
  %i.s = alloca [72 x i8], align 8                ; 8 uses
  %i.t = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !798
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(37) %i.r, i8 0, i64 37, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !801
  %i.u = tail call { i64, i32 } @_ZN3std4time10SystemTime3now17h41032f879594e847E(), !noalias !801 ; 2 uses
  %i.v = extractvalue { i64, i32 } %i.u, 0
  %i.w = extractvalue { i64, i32 } %i.u, 1
  %i.x = tail call i64 @"_ZN93_$LT$httpdate..date..HttpDate$u20$as$u20$core..convert..From$LT$std..time..SystemTime$GT$$GT$4from17hc4b6d6f843266763E"(i64 noundef %i.v, i32 noundef %i.w), !noalias !801
  store i64 %i.x, ptr %i.p, align 8, !noalias !801
  store ptr %i.p, ptr %i.q, align 8, !noalias !801
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @"_ZN63_$LT$httpdate..date..HttpDate$u20$as$u20$core..fmt..Display$GT$3fmt17h5cf934b1ef303333E", ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !804
  store ptr @145, ptr %i.o, align 8, !noalias !808
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !808
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !808
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !808
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !808
  %i.y = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @1435, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o), !noalias !809, !inline_history !810
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !804
  br i1 %i.y, label %bb.b, label %_ZN10actix_http4date4Date3new17h0bb05bd53243337dE.exit, !prof !811

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @546, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @544, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @146) #46, !noalias !798
  unreachable

_ZN10actix_http4date4Date3new17h0bb05bd53243337dE.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !801
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !801
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(40) %i.r, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !798
  %i.z = call { i64, i32 } @_ZN3std4time7Instant3now17h6afc9418486166d9E() ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !812
  %i.aa = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !812 ; 11 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.c, label %bb.f, !prof !42
end_hunk_0
begin_hunk_1_@"_ZN10actix_http6header3map120_$LT$impl$u20$core..convert..From$LT$actix_http..header..map..HeaderMap$GT$$u20$for$u20$http..header..map..HeaderMap$GT$4from17h1ed91704e540821dE":bb.a
          cleanup
  br label %bb.an

bb.c:                                             ; preds = %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ %i.aq, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i.i = phi ptr [ %i.au, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ undef, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i.i ], [ 0, %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit.i.i.i ]
  %i.av = getelementptr i8, ptr %.sroa.0.0.copyload.i, i64 %.sroa.4.0.copyload.i
  %i.aw = getelementptr i8, ptr %i.av, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  store i64 %.sroa.0.0.i.i.i.i.i.i.i, ptr %i.ax, align 8, !alias.scope !1094, !noalias !1116
  %.sroa.47.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i.i, ptr %.sroa.47.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1116
  %.sroa.58.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i.i, ptr %.sroa.58.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1116
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 248
  store ptr %.sroa.0.0.copyload.i, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1116
  %.sroa.710.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  store ptr %i.n, ptr %.sroa.710.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1116
  %.sroa.811.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store ptr %i.aw, ptr %.sroa.811.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1116
  %.sroa.912.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 272
  store <16 x i1> %i.m, ptr %.sroa.912.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1116
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  store i64 %.sroa.55.0.copyload.i, ptr %.sroa.11.0..sroa_idx.i.i.i, align 8, !alias.scope !1094, !noalias !1116
  store i64 0, ptr %i.k, align 8, !alias.scope !1094, !noalias !1116
  %i.ay = getelementptr inbounds nuw i8, ptr %i.k, i64 288
  store i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, ptr %i.ay, align 8, !alias.scope !1094, !noalias !1116
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %.not.i = icmp eq i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, 0
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.az = icmp eq i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, 1
  %i.ba = add i64 %.sroa.02.0.ph.i.i.i.i.i.i.i, -1
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 true)
  %i.bc = lshr i64 -1, %i.bb
  %.sroa.018.0.i.i.i = select i1 %i.az, i64 0, i64 %i.bc ; 5 uses
  %i.bd = add i64 %.sroa.018.0.i.i.i, 1           ; 7 uses
  %or.cond.i.i.i = icmp ugt i64 %.sroa.018.0.i.i.i, 32767
  br i1 %or.cond.i.i.i, label %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !1120

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.be = trunc nuw i64 %i.bd to i16
  %i.bf = add i16 %i.be, -1
  store i16 %i.bf, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1122
  %i.bg = shl nuw nsw i64 %i.bd, 2                ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1123
  %i.bh = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bg, i64 noundef range(i64 1, 9) 2) #45, !noalias !1123 ; 7 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.invoke.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.bj = icmp samesign ugt i64 %i.bd, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i.preheader, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i"

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"
  %min.iters.check = icmp ult i64 %.sroa.018.0.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader109, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %.sroa.018.0.i.i.i, 32760      ; 3 uses
  %i.bk = shl nuw nsw i64 %n.vec, 2
  %i.bl = getelementptr i8, ptr %i.bh, i64 %i.bk
  %i.bm = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bn = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bh, i64 %i.bn
  %i.bo = getelementptr i8, ptr %i.bh, i64 %i.bn
  %next.gep89 = getelementptr i8, ptr %i.bo, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep, align 2, !noalias !1131
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %next.gep89, align 2, !noalias !1131
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %.lr.ph.i.i.i.i.i.preheader109, label %vector.body, !llvm.loop !1134

.lr.ph.i.i.i.i.i.preheader109:                    ; preds = %vector.body, %.lr.ph.i.i.i.i.i.preheader
  %.sroa.0.09.i.i.i.i.i.ph = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bl, %vector.body ]
  %.sroa.03.08.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bm, %vector.body ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader109, %.lr.ph.i.i.i.i.i
  %.sroa.0.09.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.09.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader109 ] ; 3 uses
  %.sroa.03.08.i.i.i.i.i = phi i64 [ %i.bq, %.lr.ph.i.i.i.i.i ], [ %.sroa.03.08.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader109 ] ; 2 uses
  %i.bq = add nuw nsw i64 %.sroa.03.08.i.i.i.i.i, 1
  store i16 -1, ptr %.sroa.0.09.i.i.i.i.i, align 2, !noalias !1131
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 2
  store i16 0, ptr %i.br, align 2, !noalias !1131
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.09.i.i.i.i.i, i64 4 ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %.sroa.03.08.i.i.i.i.i, %.sroa.018.0.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i", label %.lr.ph.i.i.i.i.i, !llvm.loop !1137

"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i"
  %.sroa.0.0.lcssa16.i.i.i.i.i = phi ptr [ %i.bh, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hbdfca0cd9d76e044E.exit.i.i.i.i.i" ], [ %i.bs, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store i16 -1, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, align 2, !noalias !1131
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa16.i.i.i.i.i, i64 2
  store i16 0, ptr %i.bt, align 2, !noalias !1131
  %i.bu = icmp samesign ult i64 %i.bd, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bu)
  store ptr %i.bh, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1122
  store i64 %i.bd, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1122
  %i.bv = lshr i64 %i.bd, 2
  %i.bw = sub nuw nsw i64 %i.bd, %i.bv            ; 3 uses
  %i.bx = mul nuw nsw i64 %i.bw, 104              ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !1138
  %i.by = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bx, i64 noundef range(i64 1, 9) 8) #45, !noalias !1138 ; 3 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.invoke.i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"

.invoke.i.i:                                      ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i", %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.ca = phi i64 [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 8, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  %i.cb = phi i64 [ %i.bg, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.bx, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  %i.cc = phi ptr [ @561, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ @562, %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.ca, i64 %i.cb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cc) #46
          to label %.cont.i.i unwind label %.thread27.i.i, !noalias !1122

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i": ; preds = %"_ZN4core3ptr78drop_in_place$LT$alloc..boxed..Box$LT$$u5b$http..header..map..Pos$u5d$$GT$$GT$17h44109f16da85065bE.exit.i.i.i"
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$alloc..vec..Vec$LT$http..header..map..Bucket$LT$http..header..value..HeaderValue$GT$$GT$$GT$17h1de2d72d91212fafE"(ptr noalias noundef align 8 dereferenceable(24) %.sroa.58.0..sroa_idx.i)
          to label %bb.e unwind label %.thread23.i.i, !noalias !1122

.thread23.i.i:                                    ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"
  %i.cd = landingpad { ptr, i32 }
          cleanup
  store i64 %i.bw, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1122
  store ptr %i.by, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1122
  br label %bb.an

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h235b1f0f1411e3bfE.exit.i.i.i"
  store i64 %i.bw, ptr %.sroa.58.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1122
  store ptr %i.by, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !1121, !noalias !1122
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i"

"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i": ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @543, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @375) #46
          to label %.noexc7.i.i unwind label %.thread27.i.i, !noalias !1122

.noexc7.i.i:                                      ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_reserve17hf69a570de10fd6d8E.exit.thread.i.i"
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i": ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.j, ptr noundef nonnull align 8 dereferenceable(296) %i.k, i64 296, i1 false), !noalias !1092
  %i.ce = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.cj = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i", %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hc1fd0f743d2fe2d3E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1092
  invoke void @"_ZN92_$LT$actix_http..header..map..IntoIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h845ed4ebfcb90ed9E"(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(296) %i.j)
          to label %bb.g unwind label %.loopexit.i.i, !noalias !1122

.loopexit.i.i:                                    ; preds = %bb.ae, %.noexc.i.i.i, %bb.n, %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit40.i.i, %bb.ah, %bb.q
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body14.i.i

.body14.i.i:                                      ; preds = %bb.ak, %.thread55.i.i.i, %.loopexit.split-lp.i.i, %.loopexit.i.i
  %eh.lpad-body15.i.i = phi { ptr, i32 } [ %.pn59.i.i.i, %.thread55.i.i.i ], [ %.pn59.i.i.i, %bb.ak ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..header..map..IntoIter$GT$17h467e39a2065df9b5E"(ptr noalias noundef align 8 dereferenceable(296) %i.j) #47
          to label %.body.i unwind label %bb.am, !noalias !1122

bb.g:                                             ; preds = %bb.f
  %i.ck = load i8, ptr %i.ce, align 8, !range !27, !noalias !1092, !noundef !4
  %.not.i.i = icmp eq i8 %i.ck, 2
  br i1 %.not.i.i, label %bb.al, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.cf, i64 40, i1 false), !noalias !1092
  call void @llvm.experimental.noalias.scope.decl(metadata !1143)
  call void @llvm.experimental.noalias.scope.decl(metadata !1146)
  call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  %i.cl = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hfc460cfa010b52f2E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l)
          to label %bb.i unwind label %.loopexit35.i.i, !noalias !1150

bb.i:                                             ; preds = %bb.h
  br i1 %i.cl, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cm = call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17h9537a80642263a08E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %i.h), !noalias !1151 ; 6 uses
  %i.cn = load i16, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !1152, !noalias !1150, !noundef !4 ; 3 uses
  %i.co = and i16 %i.cn, %i.cm
  %i.cp = zext nneg i16 %i.co to i64
  %i.cq = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1152, !noalias !1150, !noundef !4 ; 2 uses
  %i.cr = zext i16 %i.cn to i64
  %i.cs = load ptr, ptr %i.h, align 8, !noalias !1092 ; 3 uses
  %i.ct = icmp eq ptr %i.cs, null                 ; 3 uses
  %i.cu = load i8, ptr %i.cg, align 8, !range !465, !noalias !1092
  %i.cv = load i64, ptr %i.ch, align 8, !noalias !1092 ; 3 uses
  %i.cw = load ptr, ptr %i.cg, align 8, !noalias !1092 ; 2 uses
  %i.cx = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !noalias !1082, !nonnull !4, !align !130
  %i.cy = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !1082 ; 6 uses
  %i.cz = load ptr, ptr %.sroa.69.0..sroa_idx.i, align 8, !noalias !1082, !nonnull !4
  %.not = icmp eq i64 %i.cq, 0
  br label %.outer91

bb.k:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1153)
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  call void @llvm.experimental.noalias.scope.decl(metadata !1159)
  %i.da = load ptr, ptr %i.g, align 8, !alias.scope !1162, !noalias !1163, !nonnull !4, !align !349, !noundef !4
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !1164, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.de = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !alias.scope !1162, !noalias !1163, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dh = load i64, ptr %i.dg, align 8, !alias.scope !1162, !noalias !1163, !noundef !4
  invoke void %i.dc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef %i.df, i64 noundef %i.dh)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread.i.i.i" unwind label %bb.ag, !noalias !1165, !inline_history !797

.loopexit:                                        ; preds = %.outer91
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %.sroa.05.0.i.i.i.ph.mux ; 2 uses
  %i.dj = load i16, ptr %i.di, align 2, !noalias !1150, !noundef !4 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.dj, -1
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.l:                                             ; preds = %bb.w
  unreachable

bb.m:                                             ; preds = %.loopexit
  %i.dk = zext i16 %i.dj to i64                   ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dm = load i16, ptr %i.dl, align 2, !noalias !1150, !noundef !4 ; 2 uses
  %i.dn = and i16 %i.dm, %i.cn
  %i.do = zext i16 %i.dn to i64
  %i.dp = sub i64 %.sroa.05.0.i.i.i.ph.mux, %i.do
  %i.dq = and i64 %i.dp, %i.cr
  %i.dr = icmp samesign ult i64 %i.dq, %.sroa.011.0.i.i.i.ph
  br i1 %i.dr, label %.noexc.i.i.i, label %bb.r

bb.n:                                             ; preds = %.loopexit
  %i.ds = icmp ult i64 %i.cy, 88686269585142076
  call void @llvm.assume(i1 %i.ds)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1163
  %i.dt = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l, i16 noundef %i.cm, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
          to label %.noexc9.i.i unwind label %.loopexit.i.i, !noalias !1122

.noexc9.i.i:                                      ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1166
  br i1 %i.dt, label %.loopexit40.i.i, label %bb.o

bb.o:                                             ; preds = %.noexc9.i.i
  %i.du = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1152, !noalias !1150, !noundef !4 ; 2 uses
  %i.dv = icmp ult i64 %.sroa.05.0.i.i.i.ph.mux, %i.du
  br i1 %i.dv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dw = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1152, !noalias !1150, !nonnull !4, !align !130, !noundef !4
  %i.dx = trunc i64 %i.cy to i16
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %.sroa.05.0.i.i.i.ph.mux ; 2 uses
  store i16 %i.dx, ptr %i.dy, align 2, !noalias !1150
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  store i16 %i.cm, ptr %i.dz, align 2, !noalias !1150
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i"

bb.q:                                             ; preds = %bb.o
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.05.0.i.i.i.ph.mux, i64 noundef %i.du, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @558) #46
          to label %.noexc10.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1122

.noexc10.i.i:                                     ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.m
  %i.ea = icmp eq i16 %i.dm, %i.cm
  br i1 %i.ea, label %bb.s, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i"

.noexc.i.i.i:                                     ; preds = %bb.m
  %i.eb = icmp samesign ugt i64 %.sroa.011.0.i.i.i.ph, 511
  %i.ec = load i64, ptr %i.l, align 8, !range !371, !noalias !1082
  %i.ed = icmp ne i64 %i.ec, 2
  %.sroa.017.0.i.i.i = select i1 %i.eb, i1 %i.ed, i1 false
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !noalias !1167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1163
  %i.ee = icmp ult i64 %i.cy, 88686269585142076
  call void @llvm.assume(i1 %i.ee)
  %i.ef = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %i.l, i16 noundef range(i16 0, -32768) %i.cm, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
          to label %.noexc11.i.i unwind label %.loopexit.i.i, !noalias !1122

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i": ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.i.i.i", %.split.i.i.i, %bb.v, %bb.t, %bb.r
  %i.eg = add nuw nsw i64 %.sroa.011.0.i.i.i.ph, 1
  %i.eh = add i64 %.sroa.05.0.i.i.i.ph.mux, 1
  br label %.outer91

.outer91:                                         ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i", %bb.j
  %.sroa.011.0.i.i.i.ph = phi i64 [ %i.eg, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i" ], [ 0, %bb.j ] ; 3 uses
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.eh, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i" ], [ %i.cp, %bb.j ] ; 2 uses
  %i.ei = icmp ult i64 %.sroa.05.0.i.i.i.ph, %i.cq ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.ei, %.not.not
  %.sroa.05.0.i.i.i.ph.mux = select i1 %i.ei, i64 %.sroa.05.0.i.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

bb.s:                                             ; preds = %bb.r
  %i.ej = icmp ugt i64 %i.cy, %i.dk
  br i1 %i.ej, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ek = getelementptr inbounds nuw [104 x i8], ptr %i.cz, i64 %i.dk ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 64
  %i.em = load ptr, ptr %i.el, align 8, !noalias !1150, !noundef !4
  %i.en = icmp ne ptr %i.em, null                 ; 2 uses
  %i.eo = xor i1 %i.ct, %i.en
  br i1 %i.eo, label %bb.u, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i"

bb.u:                                             ; preds = %bb.t
  br i1 %i.en, label %bb.v, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.i.i.i"

bb.v:                                             ; preds = %bb.u
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cs) ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ek, i64 80
  %i.eq = load i64, ptr %i.ep, align 8, !noalias !1150, !noundef !4
  %.not.i.i.i.i.i8.i.i = icmp eq i64 %i.eq, %i.cv
  br i1 %.not.i.i.i.i.i8.i.i, label %.split.i.i.i, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i"

.split.i.i.i:                                     ; preds = %bb.v
  %i.er = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.es = load ptr, ptr %i.er, align 8, !noalias !1150, !noundef !4
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr %i.es, ptr %i.cw, i64 %i.cv), !noalias !1150
  %i.et = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.et, label %bb.x, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i"

bb.w:                                             ; preds = %bb.s
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dk, i64 noundef %i.cy, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @557) #46
          to label %bb.l unwind label %.loopexit.split-lp36.i.i, !noalias !1150

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.i.i.i": ; preds = %bb.u
  call void @llvm.assume(i1 %i.ct)
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ek, i64 72
  %i.ev = load i8, ptr %i.eu, align 8, !range !465, !noalias !1150, !noundef !4
  %i.ew = icmp eq i8 %i.ev, %i.cu
  br i1 %i.ew, label %bb.x, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread.i.i.i"

bb.x:                                             ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.i.i.i", %.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !1163
  invoke fastcc void @_ZN4http6header3map12append_value17h92ee31ed54926b9eE(i64 noundef %i.dk, ptr noalias noundef align 8 dereferenceable(104) %i.ek, ptr noalias noundef align 8 dereferenceable(24) %i.ci, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.d)
          to label %bb.ad unwind label %bb.af, !noalias !1150

.noexc11.i.i:                                     ; preds = %.noexc.i.i.i
  br i1 %i.ef, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %.noexc11.i.i
  %i.ex = load ptr, ptr %.sroa.10.0..sroa_idx.i, align 8, !alias.scope !1168, !noalias !1171, !nonnull !4, !align !130, !noundef !4
  %i.ey = load i64, ptr %.sroa.11.0..sroa_idx.i, align 8, !alias.scope !1168, !noalias !1171, !noundef !4 ; 2 uses
  %i.ez = trunc i64 %i.cy to i16
  %.not118 = icmp eq i64 %i.ey, 0
  br label %.outer

.outer:                                           ; preds = %bb.aa, %bb.y
  %.sroa.07.0.i.i.i.i.ph = phi i64 [ %i.fi, %bb.aa ], [ 0, %bb.y ] ; 2 uses
  %.sroa.6.0.i.i.i.i.ph = phi i16 [ %i.fj, %bb.aa ], [ %i.cm, %bb.y ] ; 2 uses
  %.sroa.04.0.i.i.i.i.ph = phi i16 [ %i.fc, %bb.aa ], [ %i.ez, %bb.y ] ; 2 uses
  %.sroa.01.0.i.i.i.i.ph = phi i64 [ %i.fk, %bb.aa ], [ %.sroa.05.0.i.i.i.ph.mux, %bb.y ] ; 2 uses
  %i.fa = icmp ult i64 %.sroa.01.0.i.i.i.i.ph, %i.ey ; 2 uses
  %.not118.not = xor i1 %.not118, true
  %brmerge140 = or i1 %i.fa, %.not118.not
  %.sroa.01.0.i.i.i.i.ph.mux = select i1 %i.fa, i64 %.sroa.01.0.i.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge140, label %.loopexit117, label %infloop139

.loopexit117:                                     ; preds = %.outer
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.sroa.01.0.i.i.i.i.ph.mux ; 4 uses
  %i.fc = load i16, ptr %i.fb, align 2, !noalias !1171, !noundef !4 ; 2 uses
  %i.fd = icmp eq i16 %i.fc, -1
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fb, i64 2 ; 3 uses
  br i1 %i.fd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.loopexit117
  store i16 %.sroa.04.0.i.i.i.i.ph, ptr %i.fb, align 2, !noalias !1171
  store i16 %.sroa.6.0.i.i.i.i.ph, ptr %i.fe, align 2, !noalias !1171
  %i.ff = icmp ugt i64 %.sroa.07.0.i.i.i.i.ph, 127
  %or.cond.i.i.i.i = or i1 %.sroa.017.0.i.i.i, %i.ff
  %i.fg = load i64, ptr %i.l, align 8, !range !371, !noalias !1082
  %i.fh = icmp eq i64 %i.fg, 0
  %or.cond.i = select i1 %or.cond.i.i.i.i, i1 %i.fh, i1 false
  br i1 %or.cond.i, label %bb.ab, label %.thread52.i.i.i

bb.aa:                                            ; preds = %.loopexit117
  %i.fi = add i64 %.sroa.07.0.i.i.i.i.ph, 1
  %i.fj = load i16, ptr %i.fe, align 2, !noalias !1171, !noundef !4
  store i16 %.sroa.04.0.i.i.i.i.ph, ptr %i.fb, align 2, !noalias !1171
  store i16 %.sroa.6.0.i.i.i.i.ph, ptr %i.fe, align 2, !noalias !1171
  %i.fk = add nuw i64 %.sroa.01.0.i.i.i.i.ph.mux, 1
  br label %.outer

bb.ab:                                            ; preds = %bb.z
  store i64 1, ptr %i.l, align 8, !alias.scope !1168, !noalias !1171
  br label %.thread52.i.i.i

.thread52.i.i.i:                                  ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1166
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i"

bb.ac:                                            ; preds = %.noexc11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1166
  br label %.loopexit40.i.i

bb.ad:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1166
  br i1 %i.ct, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8, !noalias !1174, !nonnull !4, !noundef !4
  invoke void %i.fm(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.cw, i64 noundef %i.cv)
          to label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i" unwind label %.loopexit.i.i, !noalias !1122, !inline_history !1187

bb.af:                                            ; preds = %bb.x
  %lpad.thr_comm.split-lp63.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread55.i.i.i

bb.ag:                                            ; preds = %bb.k
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %.thread55.i.i.i

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread.i.i.i": ; preds = %bb.k
  call void @llvm.experimental.noalias.scope.decl(metadata !1188)
  call void @llvm.experimental.noalias.scope.decl(metadata !1191)
  %i.fo = load ptr, ptr %i.h, align 8, !alias.scope !1194, !noalias !1167, !noundef !4 ; 2 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %.loopexit40.i.i, label %bb.ah

bb.ah:                                            ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread.i.i.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !1195)
  call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  call void @llvm.experimental.noalias.scope.decl(metadata !1201)
  call void @llvm.experimental.noalias.scope.decl(metadata !1204)
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 32
  %i.fr = load ptr, ptr %i.fq, align 8, !noalias !1207, !nonnull !4, !noundef !4
  %i.fs = load ptr, ptr %i.cg, align 8, !alias.scope !1208, !noalias !1167, !noundef !4
  %i.ft = load i64, ptr %i.ch, align 8, !alias.scope !1208, !noalias !1167, !noundef !4
  invoke void %i.fr(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.fs, i64 noundef %i.ft)
          to label %.loopexit40.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1122, !inline_history !1187

.loopexit35.i.i:                                  ; preds = %bb.h
  %lpad.loopexit37.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp36.i.i:                         ; preds = %bb.w
  %lpad.loopexit.split-lp38.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.loopexit.split-lp36.i.i, %.loopexit35.i.i
  %lpad.phi39.i.i = phi { ptr, i32 } [ %lpad.loopexit37.i.i, %.loopexit35.i.i ], [ %lpad.loopexit.split-lp38.i.i, %.loopexit.split-lp36.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1209)
  call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  call void @llvm.experimental.noalias.scope.decl(metadata !1215)
  %i.fu = load ptr, ptr %i.g, align 8, !alias.scope !1218, !noalias !1163, !nonnull !4, !align !349, !noundef !4
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8, !noalias !1219, !nonnull !4, !noundef !4
  %i.fx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !alias.scope !1218, !noalias !1163, !noundef !4
  %i.ga = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.gb = load i64, ptr %i.ga, align 8, !alias.scope !1218, !noalias !1163, !noundef !4
  invoke void %i.fw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef %i.fz, i64 noundef %i.gb)
          to label %.thread55.i.i.i unwind label %bb.aj, !noalias !1165, !inline_history !797

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !1122
  unreachable

.thread55.i.i.i:                                  ; preds = %bb.ai, %bb.ag, %bb.af
  %.pn59.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp63.i.i.i, %bb.af ], [ %i.fn, %bb.ag ], [ %lpad.phi39.i.i, %bb.ai ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  call void @llvm.experimental.noalias.scope.decl(metadata !1223)
  %i.gd = load ptr, ptr %i.h, align 8, !alias.scope !1226, !noalias !1167, !noundef !4 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, null
  br i1 %i.ge, label %.body14.i.i, label %bb.ak

bb.ak:                                            ; preds = %.thread55.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1233)
  call void @llvm.experimental.noalias.scope.decl(metadata !1236)
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !1239, !nonnull !4, !noundef !4
  %i.gh = load ptr, ptr %i.cg, align 8, !alias.scope !1240, !noalias !1167, !noundef !4
  %i.gi = load i64, ptr %i.ch, align 8, !alias.scope !1240, !noalias !1167, !noundef !4
  invoke void %i.gg(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef %i.gh, i64 noundef %i.gi)
          to label %.body14.i.i unwind label %bb.aj, !noalias !1122, !inline_history !676

bb.al:                                            ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1092
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_http..header..map..IntoIter$GT$17h467e39a2065df9b5E"(ptr noalias noundef align 8 dereferenceable(296) %i.j)
          to label %"_ZN149_$LT$http..header..map..HeaderMap$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$$LP$http..header..name..HeaderName$C$T$RP$$GT$$GT$9from_iter17hc13335e2e684cab5E.exit" unwind label %bb.ao, !noalias !1082

.loopexit40.i.i:                                  ; preds = %.noexc9.i.i, %bb.ah, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread.i.i.i", %bb.ac
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 23, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @543, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @139) #46
          to label %.noexc16.i.i unwind label %.loopexit.split-lp.i.i, !noalias !1122

.noexc16.i.i:                                     ; preds = %.loopexit40.i.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hef4946ab596fe8bdE.exit.i.i": ; preds = %bb.ae, %bb.ad, %.thread52.i.i.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1092
  br label %bb.f

bb.am:                                            ; preds = %bb.an, %.body14.i.i
  %i.gj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !1122
end_hunk_1
begin_hunk_2_@_ZN10actix_http6header3map9HeaderMap5clear17h930e22e098f71a54E:bb.a

bb.h:                                             ; preds = %.body.i
  %i.am = add i64 %i.ak, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.am, i1 false), !noalias !1479
  %i.an = icmp ult i64 %i.ak, 8
  %i.ao = add i64 %i.ak, 1
  %i.ap = lshr i64 %i.ao, 3
  %i.aq = mul nuw i64 %i.ap, 7
  %spec.select.i.i.i.i = select i1 %i.an, i64 %i.ak, i64 %i.aq
  br label %bb.j

_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i: ; preds = %.noexc.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !1479, !noundef !4 ; 5 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZN4core3ptr319drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he2343d510d7ff8fbE.exit5.i", label %bb.i

bb.i:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i
  %i.au = add i64 %i.as, 17
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.d, i8 -1, i64 %i.au, i1 false), !noalias !1479
  %i.av = icmp ult i64 %i.as, 8
  %i.aw = add i64 %i.as, 1
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = mul nuw i64 %i.ax, 7
  %spec.select.i.i.i4.i = select i1 %i.av, i64 %i.as, i64 %i.ay
  br label %"_ZN4core3ptr319drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he2343d510d7ff8fbE.exit5.i"

"_ZN4core3ptr319drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he2343d510d7ff8fbE.exit5.i": ; preds = %bb.i, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i
  %i.az = phi i64 [ %spec.select.i.i.i4.i, %bb.i ], [ 0, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf53e62ef9197ab22E.exit.i ]
  store i64 0, ptr %i.a, align 8, !alias.scope !1479
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.az, ptr %i.ba, align 8, !alias.scope !1479
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h482ed4de88fcdcebE.exit"

bb.j:                                             ; preds = %bb.h, %.body.i
  %i.bb = phi i64 [ %spec.select.i.i.i.i, %bb.h ], [ 0, %.body.i ]
  store i64 0, ptr %i.a, align 8, !alias.scope !1479
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bb, ptr %i.bc, align 8, !alias.scope !1479
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear17h482ed4de88fcdcebE.exit": ; preds = %bb.a, %"_ZN4core3ptr319drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$C$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$..clear..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17he2343d510d7ff8fbE.exit5.i"
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @_ZN10actix_http6header3map9HeaderMap5drain17he3927bc3bbc111deE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([304 x i8]) align 8 captures(none) dereferenceable(304) %0, ptr noalias noundef align 8 dereferenceable(40) %1) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1516)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1519)
  %i.a = load ptr, ptr %1, align 8, !alias.scope !1522, !noalias !1523, !nonnull !4, !noundef !4 ; 5 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.a, align 16, !noalias !1525
  %i.b = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !1522, !noalias !1523, !noundef !4 ; 2 uses
  %i.f = bitcast <16 x i1> %i.b to i16
  br label %.outer.i.i.i.i

.outer.i.i.i.i:                                   ; preds = %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i", %bb.a
  %i.g = phi i16 [ %i.l, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.f, %bb.a ] ; 2 uses
  %.lcssa2631.i.i.i.i = phi ptr [ %.lcssa2630.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.c, %bb.a ] ; 2 uses
  %.lcssa2529.i.i.i.i = phi ptr [ %.lcssa2528.i.i.i.i, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.a, %bb.a ] ; 2 uses
  %.sroa.02.0.ph.i.i.i.i = phi i64 [ %i.t, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i = phi i64 [ %i.u, %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i" ], [ %i.e, %bb.a ] ; 2 uses
  %.not22.i.i.i.i = icmp eq i16 %i.g, 0
  br i1 %.not22.i.i.i.i, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.outer.i.i.i.i
  %i.h = icmp eq i64 %.sroa.0.0.ph.i.i.i.i, 0
  br i1 %i.h, label %_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit, label %.lr.ph.split.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.split.i.i.i.i, %.outer.i.i.i.i
  %.lcssa2630.i.i.i.i = phi ptr [ %.lcssa2631.i.i.i.i, %.outer.i.i.i.i ], [ %i.z, %.lr.ph.split.i.i.i.i ]
  %.lcssa2528.i.i.i.i = phi ptr [ %.lcssa2529.i.i.i.i, %.outer.i.i.i.i ], [ %i.y, %.lr.ph.split.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i = phi i16 [ %i.g, %.outer.i.i.i.i ], [ %.cast.i.i.i.i, %.lr.ph.split.i.i.i.i ] ; 3 uses
  %i.i = add i16 %.lcssa.i.i.i.i, -1
  %i.j = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i, i1 true)
  %i.k = zext nneg i16 %i.j to i64
  %i.l = and i16 %i.i, %.lcssa.i.i.i.i
  %i.m = sub nsw i64 0, %i.k
  %i.n = getelementptr inbounds [200 x i8], ptr %.lcssa2528.i.i.i.i, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.p = load i64, ptr %i.o, align 8, !noalias !1528, !noundef !4 ; 2 uses
  %i.q = icmp ugt i64 %i.p, 4
  br i1 %i.q, label %bb.b, label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i"

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = getelementptr inbounds i8, ptr %i.n, i64 -160
  %i.s = load i64, ptr %i.r, align 8, !noalias !1528, !noundef !4
  br label %"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i"

"_ZN92_$LT$hashbrown..map..Iter$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h0a54da1fcddbcc0eE.exit.i.i.i.i": ; preds = %bb.b, %._crit_edge.i.i.i.i
  %.sink10.i.i.i.i.i.i.i.i.i = phi i64 [ %i.s, %bb.b ], [ %i.p, %._crit_edge.i.i.i.i ]
  %i.t = add i64 %.sink10.i.i.i.i.i.i.i.i.i, %.sroa.02.0.ph.i.i.i.i
  %i.u = add i64 %.sroa.0.0.ph.i.i.i.i, -1
  br label %.outer.i.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %.lr.ph.split.i.i.i.i
  %i.v = phi ptr [ %i.z, %.lr.ph.split.i.i.i.i ], [ %.lcssa2631.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.w = phi ptr [ %i.y, %.lr.ph.split.i.i.i.i ], [ %.lcssa2529.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.val18.i.i.i.i = load <16 x i8>, ptr %i.v, align 16, !noalias !1537
  %i.x = icmp sgt <16 x i8> %.val18.i.i.i.i, splat (i8 -1)
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -3200 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %.cast.i.i.i.i = bitcast <16 x i1> %i.x to i16  ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %.cast.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.split.i.i.i.i, label %._crit_edge.i.i.i.i

_ZN10actix_http6header3map9HeaderMap3len17h48b3e145e4f4a5c5E.exit: ; preds = %.lr.ph.i.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !1538, !noalias !1541, !noundef !4
  %i.ac = getelementptr i8, ptr %i.a, i64 %i.ab
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.915.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) @163, i64 32, i1 false), !noalias !1541
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %i.a, ptr %i.ae, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.c, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.ad, ptr %.sroa.511.0..sroa_idx, align 8
  %.sroa.612.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <16 x i1> %i.b, ptr %.sroa.612.0..sroa_idx, align 8
  %.sroa.814.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.e, ptr %.sroa.814.0..sroa_idx, align 8
  %.sroa.1016.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %1, ptr %.sroa.1016.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i64 %.sroa.02.0.ph.i.i.i.i, ptr %i.ag, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10actix_http6header3map9HeaderMap6append17hefaa6be9ceaa6d9fE(ptr noalias noundef align 8 dereferenceable(40) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.032.sroa.4 = alloca [24 x i8], align 8   ; 4 uses
  %i.a = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1548)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !1550, !noalias !1553, !noundef !4
  %i.c = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17hdd49c14628a14d60E(i64 %.val.i, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.b, !noalias !1555 ; 3 uses

bb.b:                                             ; preds = %bb.k, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1559)
  %i.e = load ptr, ptr %1, align 8, !alias.scope !1562, !noalias !1555, !noundef !4 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread37, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1563)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1569)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1572)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !1575, !nonnull !4, !noundef !4
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !1576, !noalias !1555, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !1576, !noalias !1555, !noundef !4
  invoke void %i.h(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.k, i64 noundef %i.m)
          to label %.thread37 unwind label %bb.l, !noalias !1543, !inline_history !676

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1577)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1580)
  %i.n = lshr i64 %i.c, 57
  %i.o = trunc nuw nsw i64 %i.n to i8             ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !1583, !noalias !1584, !noundef !4 ; 3 uses
  %i.r = load ptr, ptr %0, align 8, !alias.scope !1583, !noalias !1584, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.o, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.i, %bb.d
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.az, %bb.i ]
  %.pn.i.i = phi i64 [ %i.c, %bb.d ], [ %i.ba, %bb.i ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.q      ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.u, align 1, !noalias !1586 ; 2 uses
  %i.v = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.w = bitcast <16 x i1> %i.v to i16            ; 2 uses
  %.not.i.not33.i.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not33.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.x = load ptr, ptr %1, align 8, !alias.scope !1548, !noalias !1589, !noundef !4 ; 3 uses
  %i.y = icmp eq ptr %i.x, null                   ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i", %.lr.ph.i.i
  %.sroa.06.0.i34.i.i = phi i16 [ %i.w, %.lr.ph.i.i ], [ %i.ay, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i" ] ; 3 uses
  %i.z = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i34.i.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i64 %.sroa.01.0.i.i.i, %i.aa
  %i.ac = and i64 %i.ab, %i.q
  %i.ad = sub nsw i64 0, %i.ac
  %i.ae = getelementptr inbounds [200 x i8], ptr %i.r, i64 %i.ad ; 7 uses
  %i.af = getelementptr inbounds i8, ptr %i.ae, i64 -200
  %i.ag = load ptr, ptr %i.af, align 8, !noalias !1592, !noundef !4
  %i.ah = icmp ne ptr %i.ag, null                 ; 2 uses
  %i.ai = xor i1 %i.y, %i.ah
  br i1 %i.ai, label %bb.g, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i", !prof !1593

bb.g:                                             ; preds = %bb.f
  br i1 %i.ah, label %bb.h, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.i.i"

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.x) ], !noalias !1594
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -184
  %i.ak = load i64, ptr %i.aj, align 8, !noalias !1592, !noundef !4 ; 3 uses
  %i.al = load i64, ptr %i.t, align 8, !alias.scope !1548, !noalias !1589, !noundef !4
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.al
  br i1 %.not.i.i.i.i.i.i.i.i, label %.split.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i", !prof !1593

.split.i.i:                                       ; preds = %bb.h
  %i.am = load ptr, ptr %i.s, align 8, !alias.scope !1548, !noalias !1589, !noundef !4 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.ae, i64 -192
  %i.ao = load ptr, ptr %i.an, align 8, !noalias !1592, !noundef !4
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.ao, ptr %i.am, i64 %i.ak), !noalias !1592
  %i.ap = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.ap, label %bb.j, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i", !prof !1595

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.i.i": ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.y), !noalias !1594
  %i.aq = getelementptr inbounds i8, ptr %i.ae, i64 -192
  %i.ar = load i8, ptr %i.aq, align 8, !range !465, !noalias !1592, !noundef !4
  %i.as = load i8, ptr %i.s, align 8, !range !465, !alias.scope !1548, !noalias !1589, !noundef !4
  %i.at = icmp eq i8 %i.ar, %i.as
  br i1 %i.at, label %.thread.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i", !prof !1595

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i", %bb.e
  %i.au = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hf3b3325934061854E.exit.i", !prof !282

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.i.i", %.split.i.i, %bb.h, %bb.f
  %i.ax = add i16 %.sroa.06.0.i34.i.i, -1
  %i.ay = and i16 %i.ax, %.sroa.06.0.i34.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.ay, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %bb.f

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.az = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ba = add i64 %.sroa.01.0.i.i.i, %i.az
  br label %bb.e

bb.j:                                             ; preds = %.split.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1596, !nonnull !4, !noundef !4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void %i.bc(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef %i.am, i64 noundef %i.ak)
          to label %.thread.i unwind label %.thread41, !inline_history !1609

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hf3b3325934061854E.exit.i": ; preds = %._crit_edge.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bf = load i64, ptr %i.be, align 8, !alias.scope !1610, !noalias !1613, !noundef !4
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %bb.k, label %bb.s, !prof !282

bb.k:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hf3b3325934061854E.exit.i"
  %i.bh = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h89c9f30401984c70E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i1 noundef zeroext true)
          to label %.noexc6.i unwind label %bb.b, !noalias !1615 ; 0 uses

.noexc6.i:                                        ; preds = %bb.k
  %.val.i26.pre = load ptr, ptr %0, align 8, !alias.scope !1616, !noalias !1619
  %.val4.i.pre = load i64, ptr %i.p, align 8, !alias.scope !1616, !noalias !1619
  br label %bb.s

bb.l:                                             ; preds = %bb.c
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !1543
  unreachable

.thread41:                                        ; preds = %bb.j
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread37

.thread.i:                                        ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find28_$u7b$$u7b$closure$u7d$$u7d$17h8dc296e83f0e0336E.exit.i.i", %bb.j
  %i.bk = getelementptr inbounds i8, ptr %i.ae, i64 -168 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1624)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1629)
  %i.bl = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !alias.scope !1631, !noalias !1634, !noundef !4 ; 2 uses
  %i.bn = icmp ugt i64 %i.bm, 4                   ; 2 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !alias.scope !1631, !noalias !1634, !nonnull !4
  %i.bp = getelementptr inbounds i8, ptr %i.ae, i64 -160 ; 3 uses
  %.sink10.i.i.i = select i1 %i.bn, ptr %i.bo, ptr %i.bk
  %.sink9.i.i.i = select i1 %i.bn, ptr %i.bp, ptr %i.bl ; 2 uses
  %.sink.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bm, i64 4)
  %i.bq = load i64, ptr %.sink9.i.i.i, align 8, !alias.scope !1636, !noalias !1637, !noundef !4 ; 2 uses
  %i.br = icmp eq i64 %i.bq, %.sink.i.i.i
  br i1 %i.br, label %bb.n, label %bb.q, !prof !282

bb.m:                                             ; preds = %bb.n
  %i.bs = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1638)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1641)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1644)
  %i.bt = load ptr, ptr %i.a, align 8, !alias.scope !1647, !noalias !1636, !nonnull !4, !align !349, !noundef !4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !noalias !1648, !nonnull !4, !noundef !4
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !alias.scope !1647, !noalias !1636, !noundef !4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !1647, !noalias !1636, !noundef !4
  invoke void %i.bv(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bw, ptr noundef %i.by, i64 noundef %i.ca)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit" unwind label %bb.p, !noalias !1636, !inline_history !797

bb.n:                                             ; preds = %.thread.i
  invoke fastcc void @"_ZN8smallvec17SmallVec$LT$A$GT$21reserve_one_unchecked17he098499a2bb93ec5E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %i.bk)
          to label %bb.o unwind label %bb.m, !noalias !1637

bb.o:                                             ; preds = %bb.n
  %i.cb = load ptr, ptr %i.bk, align 8, !alias.scope !1636, !noalias !1637, !nonnull !4, !noundef !4
  %.pre.i.i = load i64, ptr %i.bp, align 8, !alias.scope !1636, !noalias !1637
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !1636
  unreachable

bb.q:                                             ; preds = %bb.o, %.thread.i
  %i.cd = phi i64 [ %.pre.i.i, %bb.o ], [ %i.bq, %.thread.i ]
  %.sroa.01.0.i.i = phi ptr [ %i.bp, %bb.o ], [ %.sink9.i.i.i, %.thread.i ] ; 2 uses
  %.sroa.0.0.i.i = phi ptr [ %i.cb, %bb.o ], [ %.sink10.i.i.i, %.thread.i ]
  %i.ce = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.i.i, i64 %i.cd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ce, ptr noundef nonnull align 8 dereferenceable(40) %2, i64 40, i1 false)
  %i.cf = load i64, ptr %.sroa.01.0.i.i, align 8, !alias.scope !1636, !noalias !1637, !noundef !4
  %i.cg = add i64 %i.cf, 1
  store i64 %i.cg, ptr %.sroa.01.0.i.i, align 8, !alias.scope !1636, !noalias !1637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %bb.q
  ret void

bb.s:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hf3b3325934061854E.exit.i", %.noexc6.i
  %.val4.i = phi i64 [ %i.q, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hf3b3325934061854E.exit.i" ], [ %.val4.i.pre, %.noexc6.i ] ; 4 uses
  %.val.i26 = phi ptr [ %i.r, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$4find17hf3b3325934061854E.exit.i" ], [ %.val.i26.pre, %.noexc6.i ] ; 8 uses
  %.sroa.12.16.copyload = load ptr, ptr %1, align 8, !alias.scope !1615, !noalias !1546
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.032.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.032.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1616)
  %.sroa.0.04.i.i.i = and i64 %.val4.i, %i.c      ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i26, i64 %.sroa.0.04.i.i.i
  %.sroa.0.0.copyload.i35.i.i.i = load <16 x i8>, ptr %i.ch, align 1, !noalias !1649
  %i.ci = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i.i, zeroinitializer
  %i.cj = bitcast <16 x i1> %i.ci to i16          ; 2 uses
  %.not.not.i.not6.i.i.i = icmp eq i16 %i.cj, 0
  br i1 %.not.not.i.not6.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !1652

.lr.ph.i.i.i:                                     ; preds = %bb.s, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.04.i.i.i, %bb.s ]
  %i.ck = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ 0, %bb.s ]
  %i.cl = add i64 %i.ck, 16                       ; 2 uses
  %i.cm = add i64 %i.cl, %.sroa.0.07.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.cm, %.val4.i      ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.val.i26, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i3.i.i.i = load <16 x i8>, ptr %i.cn, align 1, !noalias !1649
  %i.co = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i.i, zeroinitializer
  %i.cp = bitcast <16 x i1> %i.co to i16          ; 2 uses
  %.not.not.i.not.i.i.i = icmp eq i16 %i.cp, 0
  br i1 %.not.not.i.not.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !1653

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.s
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.04.i.i.i, %bb.s ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.cj, %bb.s ], [ %i.cp, %.lr.ph.i.i.i ]
  %i.cq = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.cr = zext nneg i16 %i.cq to i64
  %i.cs = add i64 %.sroa.0.0.lcssa.i.i.i, %i.cr
  %i.ct = and i64 %i.cs, %.val4.i                 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i26, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !noalias !1654, !noundef !4 ; 2 uses
  %i.cw = icmp sgt i8 %i.cv, -1
  br i1 %i.cw, label %bb.t, label %bb.u, !prof !282

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i26, align 16, !noalias !1654
  %i.cx = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.cy = bitcast <16 x i1> %i.cx to i16          ; 2 uses
  %i.cz = icmp ne i16 %i.cy, 0
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cy, i1 true)
  %i.db = zext nneg i16 %i.da to i64              ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.val.i26, i64 %i.db
  %.pre.i.i27 = load i8, ptr %.phi.trans.insert.i.i, align 1, !noalias !1654
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i
  %i.dc = phi i8 [ %.pre.i.i27, %bb.t ], [ %i.cv, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.db, %bb.t ], [ %i.ct, %._crit_edge.i.i.i ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.val.i26, i64 %.sroa.0.0.i5.i.i.i
  %i.de = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.df = and i64 %i.de, %.val4.i
  store i8 %i.o, ptr %i.dd, align 1, !noalias !1654
  %i.dg = getelementptr i8, ptr %.val.i26, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
end_hunk_2
begin_hunk_3_@_ZN4http6header3map15hash_elem_using17h9537a80642263a08E:bb.a
  %.sroa.04.05.i.i.i.i.unr = phi ptr [ %.val.i.i31, %.lr.ph.i.i.i.i.preheader ], [ %i.cl, %.lr.ph.i.i.i.i.prol ]
  %i.cq = icmp ult i64 %.val1.i.i32, 8
  br i1 %i.cq, label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17hb6302b0e1ce7197fE.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.sroa.0.06.i.i.i.i = phi i64 [ %i.ee, %.lr.ph.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ]
  %.sroa.04.05.i.i.i.i = phi ptr [ %i.ea, %.lr.ph.i.i.i.i ], [ %.sroa.04.05.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 1
  %i.cs = load i8, ptr %.sroa.04.05.i.i.i.i, align 1, !alias.scope !7264, !noalias !7267, !noundef !4
  %i.ct = zext i8 %i.cs to i64
  %i.cu = xor i64 %.sroa.0.06.i.i.i.i, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 2
  %i.cx = load i8, ptr %i.cr, align 1, !alias.scope !7264, !noalias !7267, !noundef !4
  %i.cy = zext i8 %i.cx to i64
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, 1099511628211
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 3
  %i.dc = load i8, ptr %i.cw, align 1, !alias.scope !7264, !noalias !7267, !noundef !4
  %i.dd = zext i8 %i.dc to i64
  %i.de = xor i64 %i.da, %i.dd
  %i.df = mul i64 %i.de, 1099511628211
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 4
  %i.dh = load i8, ptr %i.db, align 1, !alias.scope !7264, !noalias !7267, !noundef !4
  %i.di = zext i8 %i.dh to i64
  %i.dj = xor i64 %i.df, %i.di
  %i.dk = mul i64 %i.dj, 1099511628211
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dg, align 1, !alias.scope !7264, !noalias !7267, !noundef !4
  %i.dn = zext i8 %i.dm to i64
  %i.do = xor i64 %i.dk, %i.dn
  %i.dp = mul i64 %i.do, 1099511628211
  %i.dq = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 6
  %i.dr = load i8, ptr %i.dl, align 1, !alias.scope !7264, !noalias !7267, !noundef !4
  %i.ds = zext i8 %i.dr to i64
  %i.dt = xor i64 %i.dp, %i.ds
  %i.du = mul i64 %i.dt, 1099511628211
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 7
  %i.dw = load i8, ptr %i.dq, align 1, !alias.scope !7264, !noalias !7267, !noundef !4
  %i.dx = zext i8 %i.dw to i64
  %i.dy = xor i64 %i.du, %i.dx
  %i.dz = mul i64 %i.dy, 1099511628211
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.04.05.i.i.i.i, i64 8 ; 2 uses
  %i.eb = load i8, ptr %i.dv, align 1, !alias.scope !7264, !noalias !7267, !noundef !4
  %i.ec = zext i8 %i.eb to i64
  %i.ed = xor i64 %i.dz, %i.ec
  %i.ee = mul i64 %i.ed, 1099511628211            ; 2 uses
  %i.ef = icmp eq ptr %i.ea, %i.cj
  br i1 %i.ef, label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17hb6302b0e1ce7197fE.exit", label %.lr.ph.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.eg = load i8, ptr %i.ch, align 8, !range !465, !noalias !7259, !noundef !4
  %i.eh = zext nneg i8 %i.eg to i64
  %i.ei = xor i64 %i.cg, %i.eh
  %i.ej = mul i64 %i.ei, 2232315406967589409
  br label %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17hb6302b0e1ce7197fE.exit"

"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17hb6302b0e1ce7197fE.exit": ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %bb.g, %bb.f, %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17hb80b456b3eeb48b7E.exit"
  %.sroa.0.0 = phi i64 [ %i.cb, %"_ZN67_$LT$http..header..name..HeaderName$u20$as$u20$core..hash..Hash$GT$4hash17hb80b456b3eeb48b7E.exit" ], [ %i.ej, %bb.g ], [ %i.cg, %bb.f ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.prol.loopexit ], [ %i.ee, %.lr.ph.i.i.i.i ]
  %i.ek = trunc i64 %.sroa.0.0 to i16
  %i.el = and i16 %i.ek, 32767
  ret i16 %i.el
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4http6header3map18HeaderMap$LT$T$GT$11try_insert217he0936424fb9ea1b6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull align 8 dereferenceable(96) %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %2, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(40) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 16 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.018 = alloca [32 x i8], align 8          ; 3 uses
  %.sroa.8 = alloca [7 x i8], align 1             ; 3 uses
  %i.g = invoke fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$15try_reserve_one17hfc460cfa010b52f2E"(ptr noalias noundef align 8 dereferenceable(96) %1)
          to label %bb.b unwind label %bb.ai

bb.b:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call fastcc noundef i16 @_ZN4http6header3map15hash_elem_using17h9537a80642263a08E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1, ptr noundef nonnull align 8 %2) ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.j = load i16, ptr %i.i, align 8, !noundef !4 ; 3 uses
  %i.k = and i16 %i.j, %i.h
  %i.l = zext nneg i16 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.p = zext i16 %i.j to i64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.not165 = icmp eq i64 %i.o, 0
  %i.u = load ptr, ptr %i.m, align 8, !nonnull !4, !align !130, !noundef !4
  br label %.outer146

bb.d:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 3, ptr %i.v, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7278)
  %i.w = load ptr, ptr %3, align 8, !alias.scope !7281, !nonnull !4, !align !349, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !noalias !7281, !nonnull !4, !noundef !4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !7281, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !alias.scope !7281, !noundef !4
  invoke void %i.y(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef %i.ab, i64 noundef %i.ad)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.thread" unwind label %bb.ag, !inline_history !797

.loopexit:                                        ; preds = %.outer146
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.sroa.04.0.ph.mux ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !noundef !4 ; 2 uses
  %.not = icmp eq i16 %i.af, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.q
  unreachable

bb.f:                                             ; preds = %.loopexit
  %i.ag = zext i16 %i.af to i64                   ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ai = load i16, ptr %i.ah, align 2, !noundef !4 ; 2 uses
  %i.aj = and i16 %i.ai, %i.j
  %i.ak = zext i16 %i.aj to i64
  %i.al = sub i64 %.sroa.04.0.ph.mux, %i.ak
  %i.am = and i64 %i.al, %i.p
  %i.an = icmp samesign ult i64 %i.am, %.sroa.010.0.ph
  br i1 %i.an, label %bb.l, label %bb.k

bb.g:                                             ; preds = %.loopexit
  %i.ao = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 88686269585142076
  tail call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.aq = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef align 8 dereferenceable(96) %1, i16 noundef %i.h, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %i.aq, label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %i.n, align 8, !noundef !4 ; 2 uses
  %i.as = icmp ult i64 %.sroa.04.0.ph.mux, %i.ar
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.at = load ptr, ptr %i.m, align 8, !nonnull !4, !align !130, !noundef !4
  %i.au = trunc i64 %i.ao to i16
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %.sroa.04.0.ph.mux ; 2 uses
  store i16 %i.au, ptr %i.av, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.h, ptr %i.aw, align 2
  br label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit.critedge"

bb.j:                                             ; preds = %bb.h
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.04.0.ph.mux, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @560) #46
  unreachable

bb.k:                                             ; preds = %bb.f
  %i.ax = icmp eq i16 %i.ai, %i.h
  br i1 %i.ax, label %bb.m, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread"

bb.l:                                             ; preds = %bb.f
  %i.ay = icmp samesign ugt i64 %.sroa.010.0.ph, 511
  br i1 %i.ay, label %bb.y, label %.noexc

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread": ; preds = %bb.p, %bb.n, %.split, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit", %bb.k
  %i.az = add nuw nsw i64 %.sroa.010.0.ph, 1
  %i.ba = add i64 %.sroa.04.0.ph.mux, 1
  br label %.outer146

.outer146:                                        ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread", %bb.c
  %.sroa.010.0.ph = phi i64 [ %i.az, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread" ], [ 0, %bb.c ] ; 3 uses
  %.sroa.04.0.ph = phi i64 [ %i.ba, %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread" ], [ %i.l, %bb.c ] ; 2 uses
  %i.bb = icmp ult i64 %.sroa.04.0.ph, %i.o       ; 2 uses
  %.not165.not = xor i1 %.not165, true
  %brmerge = or i1 %i.bb, %.not165.not
  %.sroa.04.0.ph.mux = select i1 %i.bb, i64 %.sroa.04.0.ph, i64 0 ; 7 uses
  br i1 %brmerge, label %.loopexit, label %infloop

bb.m:                                             ; preds = %bb.k
  %i.bc = load i64, ptr %i.q, align 8, !noundef !4 ; 4 uses
  %i.bd = icmp ugt i64 %i.bc, %i.ag
  br i1 %i.bd, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.be = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw [104 x i8], ptr %i.be, i64 %i.ag ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !noundef !4
  %i.bi = icmp ne ptr %i.bh, null                 ; 2 uses
  %i.bj = load ptr, ptr %2, align 8, !noundef !4  ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null                 ; 2 uses
  %i.bl = xor i1 %i.bi, %i.bk
  br i1 %i.bl, label %bb.o, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread"

bb.o:                                             ; preds = %bb.n
  br i1 %i.bi, label %bb.p, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit"

bb.p:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bj) ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 80
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !4 ; 2 uses
  %i.bo = load i64, ptr %i.t, align 8, !noundef !4
  %.not.i.i.i.i = icmp eq i64 %i.bn, %i.bo
  br i1 %.not.i.i.i.i, label %.split, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread"

.split:                                           ; preds = %bb.p
  %i.bp = load ptr, ptr %i.s, align 8, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !noundef !4
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr %i.br, ptr %i.bp, i64 %i.bn)
  %i.bs = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.bs, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread"

bb.q:                                             ; preds = %bb.m
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ag, i64 noundef %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @559) #46
          to label %bb.e unwind label %bb.ai

"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit": ; preds = %bb.o
  tail call void @llvm.assume(i1 %i.bk)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bu = load i8, ptr %i.bt, align 8, !range !465, !noundef !4
  %i.bv = load i8, ptr %i.s, align 8, !range !465, !noundef !4
  %i.bw = icmp eq i8 %i.bu, %i.bv
  br i1 %i.bw, label %bb.r, label %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit.thread"

bb.r:                                             ; preds = %"_ZN71_$LT$http..header..name..HeaderName$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7b37c7c12819351eE.exit", %.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7282)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7285)
  %i.bx = load i64, ptr %i.bf, align 8, !range !1391, !noalias !7287, !noundef !4
  %i.by = trunc nuw i64 %i.bx to i1
  br i1 %i.by, label %bb.t, label %bb.v

.invoke.i:                                        ; preds = %bb.v
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef range(i64 0, 65536) %i.ag, i64 noundef %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @563) #46
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !7287

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.loopexit.i:                                      ; preds = %.noexc3.i, %bb.u
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

.loopexit.split-lp.i:                             ; preds = %._crit_edge.i.i, %bb.t, %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !7289)
  call void @llvm.experimental.noalias.scope.decl(metadata !7292)
  call void @llvm.experimental.noalias.scope.decl(metadata !7295)
  %i.bz = load ptr, ptr %i.d, align 8, !alias.scope !7298, !noalias !7299, !nonnull !4, !align !349, !noundef !4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8, !noalias !7300, !nonnull !4, !noundef !4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !7298, !noalias !7299, !noundef !4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.cg = load i64, ptr %i.cf, align 8, !alias.scope !7298, !noalias !7299, !noundef !4
  invoke void %i.cb(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.ce, i64 noundef %i.cg)
          to label %bb.ak unwind label %bb.w, !noalias !7299, !inline_history !797

bb.t:                                             ; preds = %bb.r
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.ci = load i64, ptr %i.ch, align 8, !noalias !7287, !noundef !4
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7301)
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7304
  invoke fastcc void @_ZN4http6header3map18remove_extra_value17hc22c2acccccb2760E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull %i.be, i64 noundef %i.bc, ptr noalias noundef align 8 dereferenceable(24) %i.cj, i64 noundef %i.ci)
          to label %.noexc.i unwind label %.loopexit.split-lp.i, !noalias !7305

.noexc.i:                                         ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.cl = load i64, ptr %i.ck, align 8, !range !1391, !noalias !7304, !noundef !4
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.noexc.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.u

bb.u:                                             ; preds = %.noexc4.i, %.lr.ph.i.i
  %i.cs = load i64, ptr %i.cn, align 8, !noalias !7304, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !7306)
  call void @llvm.experimental.noalias.scope.decl(metadata !7309)
  call void @llvm.experimental.noalias.scope.decl(metadata !7312)
  call void @llvm.experimental.noalias.scope.decl(metadata !7315)
  %i.ct = load ptr, ptr %i.co, align 8, !alias.scope !7318, !noalias !7304, !nonnull !4, !align !349, !noundef !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  %i.cv = load ptr, ptr %i.cu, align 8, !noalias !7319, !nonnull !4, !noundef !4
  %i.cw = load ptr, ptr %i.cq, align 8, !alias.scope !7318, !noalias !7304, !noundef !4
  %i.cx = load i64, ptr %i.cr, align 8, !alias.scope !7318, !noalias !7304, !noundef !4
  invoke void %i.cv(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cp, ptr noundef %i.cw, i64 noundef %i.cx)
          to label %.noexc3.i unwind label %.loopexit.i, !noalias !7287, !inline_history !7320

.noexc3.i:                                        ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7304
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7304
  %i.cy = load ptr, ptr %i.r, align 8, !alias.scope !7321, !noalias !7305, !nonnull !4, !noundef !4
  %i.cz = load i64, ptr %i.q, align 8, !alias.scope !7321, !noalias !7305, !noundef !4
  invoke fastcc void @_ZN4http6header3map18remove_extra_value17hc22c2acccccb2760E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noundef nonnull %i.cy, i64 noundef %i.cz, ptr noalias noundef align 8 dereferenceable(24) %i.cj, i64 noundef %i.cs)
          to label %.noexc4.i unwind label %.loopexit.i, !noalias !7305

.noexc4.i:                                        ; preds = %.noexc3.i
  %i.da = load i64, ptr %i.ck, align 8, !range !1391, !noalias !7304, !noundef !4
  %i.db = trunc nuw i64 %i.da to i1
  br i1 %i.db, label %bb.u, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc4.i, %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7322)
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !7325)
  call void @llvm.experimental.noalias.scope.decl(metadata !7328)
  call void @llvm.experimental.noalias.scope.decl(metadata !7331)
  %i.dd = load ptr, ptr %i.dc, align 8, !alias.scope !7334, !noalias !7304, !nonnull !4, !align !349, !noundef !4
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8, !noalias !7335, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.di = load ptr, ptr %i.dh, align 8, !alias.scope !7334, !noalias !7304, !noundef !4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !7334, !noalias !7304, !noundef !4
  invoke void %i.df(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef %i.di, i64 noundef %i.dk)
          to label %"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h777183041a0e9851E.exit.i" unwind label %.loopexit.split-lp.i, !noalias !7287, !inline_history !7320

"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h777183041a0e9851E.exit.i": ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7304
  %.pre.i = load i64, ptr %i.q, align 8, !alias.scope !7282, !noalias !7305
  br label %bb.v

bb.v:                                             ; preds = %"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h777183041a0e9851E.exit.i", %bb.r
  %i.dl = phi i64 [ %.pre.i, %"_ZN4http6header3map18HeaderMap$LT$T$GT$23remove_all_extra_values17h777183041a0e9851E.exit.i" ], [ %i.bc, %bb.r ] ; 2 uses
  %i.dm = icmp ugt i64 %i.dl, %i.ag
  br i1 %i.dm, label %bb.x, label %.invoke.i

bb.w:                                             ; preds = %bb.s
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !7299
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.do = load ptr, ptr %i.r, align 8, !alias.scope !7282, !noalias !7305, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw [104 x i8], ptr %i.do, i64 %i.ag ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018, ptr noundef nonnull align 8 dereferenceable(32) %i.dq, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 56
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !7336
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dq, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !7299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.018, i64 32, i1 false)
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.4.0.copyload, ptr %.sroa.527.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8, i64 7, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !7337)
  call void @llvm.experimental.noalias.scope.decl(metadata !7340)
  %i.dr = load ptr, ptr %2, align 8, !alias.scope !7343, !noundef !4 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %"_ZN4core3ptr51drop_in_place$LT$http..header..name..HeaderName$GT$17h5803aa1398749496E.exit", label %bb.af

bb.y:                                             ; preds = %bb.l
  %i.dt = load i64, ptr %1, align 8, !range !371, !noundef !4
  %i.du = icmp ne i64 %i.dt, 2
  br label %.noexc

.noexc:                                           ; preds = %bb.y, %bb.l
  %.sroa.015.0 = phi i1 [ %i.du, %bb.y ], [ false, %bb.l ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false)
  %i.dv = load i64, ptr %i.q, align 8, !alias.scope !7344, !noalias !7347, !noundef !4 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 88686269585142076
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = call fastcc noundef zeroext i1 @"_ZN4http6header3map18HeaderMap$LT$T$GT$16try_insert_entry17hdd730520bc6ad14cE"(ptr noalias noundef nonnull align 8 dereferenceable(96) %1, i16 noundef range(i16 0, -32768) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e)
  br i1 %i.dx, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %.noexc
  %i.dy = load ptr, ptr %i.m, align 8, !alias.scope !7344, !noalias !7347, !nonnull !4, !align !130, !noundef !4
  %i.dz = load i64, ptr %i.n, align 8, !alias.scope !7344, !noalias !7347, !noundef !4 ; 2 uses
  %i.ea = trunc i64 %i.dv to i16
  %.not166 = icmp eq i64 %i.dz, 0
  br label %.outer

.outer:                                           ; preds = %bb.ab, %bb.z
  %.sroa.07.0.i.ph = phi i64 [ %i.eh, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  %.sroa.6.0.i.ph = phi i16 [ %i.ei, %bb.ab ], [ %i.h, %bb.z ] ; 2 uses
end_hunk_3
