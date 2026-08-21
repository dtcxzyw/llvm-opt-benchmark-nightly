Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.09?download=true
inline.NumInlined: 5375
inline.NumDeleted: 2913
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_ZN4anki8notetype8Notetype13get_field_ord17h86440e389c038d9eE:bb.a
_ZN4core4iter6traits8iterator8Iterator8try_fold17h3bdb4af1b51aa820E.exit: ; preds = %"_ZN119_$LT$unicase..unicode..Unicode$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..unicode..Unicode$LT$S2$GT$$GT$$GT$2eq17hffd30f8383c04944E.exit.i.i.i.i.i.i", %"_ZN119_$LT$unicase..unicode..Unicode$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..unicode..Unicode$LT$S2$GT$$GT$$GT$2eq17h0650a719c3fe295fE.exit.i.i.i.i.i.i", %"_ZN101_$LT$unicase..UniCase$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..UniCase$LT$S2$GT$$GT$$GT$2eq17h38e6110e8025b562E.exit.i.i.i.i.i", %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17hee7f272491d5807cE.exit.i", %.preheader.i.i.i.i.i.i.i.preheader, %.preheader.i.i.i.i.i.i.i, %bb.a
  %.sroa.0.0.i212 = phi i64 [ 0, %bb.a ], [ 1, %.preheader.i.i.i.i.i.i.i ], [ 1, %"_ZN119_$LT$unicase..unicode..Unicode$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..unicode..Unicode$LT$S2$GT$$GT$$GT$2eq17h0650a719c3fe295fE.exit.i.i.i.i.i.i" ], [ 1, %"_ZN101_$LT$unicase..UniCase$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..UniCase$LT$S2$GT$$GT$$GT$2eq17h38e6110e8025b562E.exit.i.i.i.i.i" ], [ 1, %"_ZN119_$LT$unicase..unicode..Unicode$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..unicode..Unicode$LT$S2$GT$$GT$$GT$2eq17hffd30f8383c04944E.exit.i.i.i.i.i.i" ], [ 0, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17hee7f272491d5807cE.exit.i" ], [ 1, %.preheader.i.i.i.i.i.i.i.preheader ]
  %i.jb = phi i64 [ undef, %bb.a ], [ %i.t, %.preheader.i.i.i.i.i.i.i ], [ %i.t, %"_ZN119_$LT$unicase..unicode..Unicode$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..unicode..Unicode$LT$S2$GT$$GT$$GT$2eq17h0650a719c3fe295fE.exit.i.i.i.i.i.i" ], [ %i.t, %"_ZN101_$LT$unicase..UniCase$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..UniCase$LT$S2$GT$$GT$$GT$2eq17h38e6110e8025b562E.exit.i.i.i.i.i" ], [ %i.t, %"_ZN119_$LT$unicase..unicode..Unicode$LT$S1$GT$$u20$as$u20$core..cmp..PartialEq$LT$unicase..unicode..Unicode$LT$S2$GT$$GT$$GT$2eq17hffd30f8383c04944E.exit.i.i.i.i.i.i" ], [ undef, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8try_fold9enumerate28_$u7b$$u7b$closure$u7d$$u7d$17hee7f272491d5807cE.exit.i" ], [ %i.t, %.preheader.i.i.i.i.i.i.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.jc = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i212, 0
  %i.jd = insertvalue { i64, i64 } %i.jc, i64 %i.jb, 1
  ret { i64, i64 } %i.jd
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki8notetype8Notetype15normalize_names17h6a80ac687a0d705eE(ptr noalias noundef align 8 dereferenceable(256) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN4anki4text20ensure_string_in_nfc17h476208f7f6e96799E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = load i64, ptr %i.d, align 8, !noundef !8 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 144
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.05 = phi ptr [ %i.h, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 144 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.05, i64 112
  tail call void @_ZN4anki4text20ensure_string_in_nfc17h476208f7f6e96799E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.j = icmp eq ptr %i.h, %i.f
  br i1 %i.j, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.n = load i64, ptr %i.m, align 8, !noundef !8 ; 2 uses
  %.idx10 = mul nuw nsw i64 %i.n, 224
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx10
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %._crit_edge9, label %.lr.ph8

.lr.ph8:                                          ; preds = %._crit_edge, %.lr.ph8
  %.sroa.02.06 = phi ptr [ %i.q, %.lr.ph8 ], [ %i.l, %._crit_edge ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 224 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.06, i64 176
  tail call void @_ZN4anki4text20ensure_string_in_nfc17h476208f7f6e96799E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  %i.s = icmp eq ptr %i.q, %i.o
  br i1 %i.s, label %._crit_edge9, label %.lr.ph8

._crit_edge9:                                     ; preds = %.lr.ph8, %._crit_edge
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki8notetype8Notetype16new_cloze_config17hc49fbd1fcecb557bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4anki8notetype8Notetype10new_config17he2cf8179ab23e9e9E(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull @205, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @205, i64 95))
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$anki_proto..notetypes..notetype..Config$GT$17h5ddb95b06de60d1dE"(ptr noalias noundef align 8 dereferenceable(160) %i.a) #41
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store i32 1, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.a, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki8notetype8Notetype18gather_media_names17h88b0e7f3aff72cecE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [32 x i8], align 8                ; 12 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load i64, ptr %i.k, align 8, !noundef !8
  call void @_ZN4anki4text31extract_underscored_css_imports17h70d0b7cbedcd2a9aE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.o = load i64, ptr %i.h, align 8, !range !695, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !8 ; 3 uses
  %i.r = icmp ult i64 %i.q, 576460752303423488
  call void @llvm.assume(i1 %i.r)
  %.idx = shl nuw nsw i64 %i.q, 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  store ptr %i.s, ptr %.sroa.6.0..sroa_idx, align 8
  %i.t = icmp eq i64 %i.q, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !align !9
  br label %bb.c

.loopexit75:                                      ; preds = %bb.c, %bb.i
  %lpad.loopexit77 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp76:                             ; preds = %bb.d
  %lpad.loopexit.split-lp78 = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp76, %.loopexit75
  %lpad.phi79 = phi { ptr, i32 } [ %lpad.loopexit77, %.loopexit75 ], [ %lpad.loopexit.split-lp78, %.loopexit.split-lp76 ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit" unwind label %bb.h

bb.c:                                             ; preds = %.lr.ph, %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit54"
  %i.w = phi ptr [ %i.n, %.lr.ph ], [ %i.cp, %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit54" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5584)
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5584
  %i.y = load ptr, ptr %i.w, align 8, !noalias !5584, !nonnull !8, !align !858, !noundef !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !5584, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5587
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.aa, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.loopexit75

.noexc:                                           ; preds = %bb.c
  %i.ab = load i64, ptr %i.b, align 8, !range !686, !noalias !5587, !noundef !8
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = load i64, ptr %i.u, align 8, !range !612, !noalias !5587, !noundef !8 ; 3 uses
  br i1 %i.ac, label %bb.d, label %bb.i, !prof !687

bb.d:                                             ; preds = %.noexc
  %i.ae = load i64, ptr %i.v, align 8, !noalias !5587
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ad, i64 %i.ae) #43
          to label %.noexc40 unwind label %.loopexit.split-lp76

.noexc40:                                         ; preds = %bb.d
  unreachable

._crit_edge:                                      ; preds = %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit54", %bb.a
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !8 ; 2 uses
  %.idx92 = mul nuw nsw i64 %i.ai, 224
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx92
  %i.ak = icmp eq i64 %i.ai, 0
  br i1 %i.ak, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %._crit_edge
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 6 uses
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.val39 = load ptr, ptr %1, align 8, !nonnull !8, !align !9 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph90, %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1"
  %.sroa.05.088 = phi ptr [ %i.ag, %.lr.ph90 ], [ %i.ap, %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1" ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.05.088, i64 224 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.05.088, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.05.088, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %3 = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !8
  call void @_ZN4anki4text30extract_underscored_references17h9a34ceca45e2fe98E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %i.ar)
  %i.as = load ptr, ptr %i.al, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.at = load i64, ptr %i.e, align 8, !range !695, !noundef !8
  %i.au = load i64, ptr %i.am, align 8, !noundef !8 ; 3 uses
  %i.av = icmp ult i64 %i.au, 576460752303423488
  call void @llvm.assume(i1 %i.av)
  %.idx93 = shl nuw nsw i64 %i.au, 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.as, ptr %i.d, align 8
  store ptr %i.as, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %i.at, ptr %.sroa.513.0..sroa_idx, align 8
  store ptr %i.aw, ptr %.sroa.614.0..sroa_idx, align 8
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51", label %.lr.ph84

._crit_edge91:                                    ; preds = %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1", %._crit_edge
  ret void

.loopexit.loopexit:                               ; preds = %bb.g, %.lr.ph84
  %lpad.loopexit101 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.loopexit.split-lp:                      ; preds = %.lr.ph84.1, %bb.f
  %lpad.loopexit.split-lp102 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.loopexit104
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit101, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp102, %.loopexit.loopexit.split-lp ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit" unwind label %bb.h

.lr.ph84:                                         ; preds = %bb.e, %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit"
  %i.ay = phi ptr [ %i.ci, %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit" ], [ %i.as, %bb.e ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5591)
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.az, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5591
  %i.ba = load ptr, ptr %i.ay, align 8, !noalias !5591, !nonnull !8, !align !858, !noundef !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !noalias !5591, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5594
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bc, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc47 unwind label %.loopexit.loopexit

.noexc47:                                         ; preds = %.lr.ph84
  %i.bd = load i64, ptr %i.a, align 8, !range !686, !noalias !5594, !noundef !8
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = load i64, ptr %i.an, align 8, !range !612, !noalias !5594, !noundef !8 ; 3 uses
  br i1 %i.be, label %.loopexit104, label %bb.g, !prof !687

.loopexit104:                                     ; preds = %.noexc47, %.noexc47.1
  %.lcssa = phi i64 [ %i.bw, %.noexc47.1 ], [ %i.bf, %.noexc47 ]
  %i.bg = load i64, ptr %i.ao, align 8, !noalias !5594
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.lcssa, i64 %i.bg) #43
          to label %.noexc48 unwind label %.loopexit.split-lp

.noexc48:                                         ; preds = %.loopexit104
  unreachable

"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51": ; preds = %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit", %bb.e
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bh = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
  %i.bi = load i64, ptr %i.aq, align 8, !noundef !8
  call void @_ZN4anki4text30extract_underscored_references17h9a34ceca45e2fe98E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bh, i64 noundef %i.bi)
  %i.bj = load ptr, ptr %i.al, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.bk = load i64, ptr %i.e, align 8, !range !695, !noundef !8
  %i.bl = load i64, ptr %i.am, align 8, !noundef !8 ; 3 uses
  %i.bm = icmp ult i64 %i.bl, 576460752303423488
  call void @llvm.assume(i1 %i.bm)
  %.idx93.1 = shl nuw nsw i64 %i.bl, 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.idx93.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.bj, ptr %i.d, align 8
  store ptr %i.bj, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %i.bk, ptr %.sroa.513.0..sroa_idx, align 8
  store ptr %i.bn, ptr %.sroa.614.0..sroa_idx, align 8
  %i.bo = icmp eq i64 %i.bl, 0
  br i1 %i.bo, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1", label %.lr.ph84.1

.lr.ph84.1:                                       ; preds = %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51", %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit.1"
  %i.bp = phi ptr [ %i.cb, %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit.1" ], [ %i.bj, %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5598)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  store ptr %i.bq, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5598
  %i.br = load ptr, ptr %i.bp, align 8, !noalias !5598, !nonnull !8, !align !858, !noundef !8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !5598, !noundef !8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5594
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.bt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc47.1 unwind label %.loopexit.loopexit.split-lp

.noexc47.1:                                       ; preds = %.lr.ph84.1
  %i.bu = load i64, ptr %i.a, align 8, !range !686, !noalias !5594, !noundef !8
  %i.bv = trunc nuw i64 %i.bu to i1
  %i.bw = load i64, ptr %i.an, align 8, !range !612, !noalias !5594, !noundef !8 ; 3 uses
  br i1 %i.bv, label %.loopexit104, label %bb.f, !prof !687

bb.f:                                             ; preds = %.noexc47.1
  %i.bx = load ptr, ptr %i.ao, align 8, !noalias !5594, !nonnull !8, !noundef !8 ; 2 uses
  %i.by = icmp ule i64 %i.bt, %i.bw
  call void @llvm.assume(i1 %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5594
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bx, ptr nonnull readonly align 1 %i.br, i64 %i.bt, i1 false), !noalias !5600
  store i64 %i.bw, ptr %i.c, align 8
  store ptr %i.bx, ptr %.sroa.464.0..sroa_idx, align 8
  store i64 %i.bt, ptr %.sroa.565.0..sroa_idx, align 8
  %i.bz = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5ad0b7ffd5f48a89E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val39, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit.1" unwind label %.loopexit.loopexit.split-lp ; 0 uses

"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit.1": ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ca = load ptr, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !5601, !nonnull !8, !noundef !8
  %i.cb = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5601, !nonnull !8, !noundef !8 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ca
  br i1 %i.cc, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1", label %.lr.ph84.1

"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1": ; preds = %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit.1", %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51"
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cd = icmp eq ptr %i.ap, %i.aj
  br i1 %i.cd, label %._crit_edge91, label %bb.e

bb.g:                                             ; preds = %.noexc47
  %i.ce = load ptr, ptr %i.ao, align 8, !noalias !5594, !nonnull !8, !noundef !8 ; 2 uses
  %i.cf = icmp ule i64 %i.bc, %i.bf
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5594
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %i.ba, i64 %i.bc, i1 false), !noalias !5600
  store i64 %i.bf, ptr %i.c, align 8
  store ptr %i.ce, ptr %.sroa.464.0..sroa_idx, align 8
  store i64 %i.bc, ptr %.sroa.565.0..sroa_idx, align 8
  %i.cg = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5ad0b7ffd5f48a89E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val39, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit" unwind label %.loopexit.loopexit ; 0 uses

"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ch = load ptr, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !5601, !nonnull !8, !noundef !8
  %i.ci = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5601, !nonnull !8, !noundef !8 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.ch
  br i1 %i.cj, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51", label %.lr.ph84

bb.h:                                             ; preds = %.loopexit, %bb.b
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit": ; preds = %.loopexit, %bb.b
  %.pn37 = phi { ptr, i32 } [ %lpad.phi79, %bb.b ], [ %lpad.phi, %.loopexit ]
  resume { ptr, i32 } %.pn37

bb.i:                                             ; preds = %.noexc
  %i.cl = load ptr, ptr %i.v, align 8, !noalias !5587, !nonnull !8, !noundef !8 ; 2 uses
  %i.cm = icmp ule i64 %i.aa, %i.ad
  call void @llvm.assume(i1 %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5587
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %i.y, i64 %i.aa, i1 false), !noalias !5603
  store i64 %i.ad, ptr %i.f, align 8
  store ptr %i.cl, ptr %.sroa.458.0..sroa_idx, align 8
  store i64 %i.aa, ptr %.sroa.559.0..sroa_idx, align 8
  %i.cn = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5ad0b7ffd5f48a89E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit54" unwind label %.loopexit75 ; 0 uses

"_ZN4anki5media7service87_$LT$impl$u20$anki..services..MediaService$u20$for$u20$anki..collection..Collection$GT$26extract_static_media_files28_$u7b$$u7b$closure$u7d$$u7d$17hfff3b2e7a652cb63E.exit54": ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.co = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !5604, !nonnull !8, !noundef !8
  %i.cp = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5604, !nonnull !8, !noundef !8 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.co
  br i1 %i.cq, label %._crit_edge, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki8notetype8Notetype18gather_media_names17hae7ceabb912049e2E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 18 uses
  %i.f = alloca [32 x i8], align 8                ; 12 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [32 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !8, !noundef !8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !noundef !8
  call void @_ZN4anki4text31extract_underscored_css_imports17h70d0b7cbedcd2a9aE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.q = load i64, ptr %i.j, align 8, !range !695, !noundef !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !8 ; 3 uses
  %i.t = icmp ult i64 %i.s, 576460752303423488
  call void @llvm.assume(i1 %i.t)
  %.idx = shl nuw nsw i64 %i.s, 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.p, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.p, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx, align 8
  %i.v = icmp eq i64 %i.s, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  br label %bb.b

.loopexit85:                                      ; preds = %bb.b, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i56", %bb.y
  %lpad.loopexit87 = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.loopexit.split-lp86:                             ; preds = %bb.c
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.body57

.body57:                                          ; preds = %.loopexit85, %.loopexit.split-lp86, %bb.w, %bb.z
  %eh.lpad-body58 = phi { ptr, i32 } [ %i.cz, %bb.z ], [ %i.cw, %bb.w ], [ %lpad.loopexit87, %.loopexit85 ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp86 ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
          to label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit" unwind label %bb.s

bb.b:                                             ; preds = %.lr.ph, %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit61"
  %i.y = phi ptr [ %i.p, %.lr.ph ], [ %i.dc, %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit61" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5606)
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr %i.z, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5606
  %i.aa = load ptr, ptr %i.y, align 8, !noalias !5606, !nonnull !8, !align !858, !noundef !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !5606, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5609
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, i64 noundef %i.ac, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %.loopexit85

.noexc:                                           ; preds = %bb.b
  %i.ad = load i64, ptr %i.d, align 8, !range !686, !noalias !5609, !noundef !8
  %i.ae = trunc nuw i64 %i.ad to i1
  %i.af = load i64, ptr %i.w, align 8, !range !612, !noalias !5609, !noundef !8 ; 3 uses
  br i1 %i.ae, label %bb.c, label %bb.t, !prof !687

bb.c:                                             ; preds = %.noexc
  %i.ag = load i64, ptr %i.x, align 8, !noalias !5609
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.af, i64 %i.ag) #43
          to label %.noexc40 unwind label %.loopexit.split-lp86

.noexc40:                                         ; preds = %bb.c
  unreachable

._crit_edge:                                      ; preds = %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit61", %bb.a
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !8 ; 2 uses
  %.idx112.a = mul nuw nsw i64 %i.ak, 224
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx112.a
  %i.am = icmp eq i64 %i.ak, 0
  br i1 %i.am, label %._crit_edge111, label %.lr.ph110

.lr.ph110:                                        ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 6 uses
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.val39 = load ptr, ptr %1, align 8             ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph110, %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1"
  %.sroa.05.0108 = phi ptr [ %i.ai, %.lr.ph110 ], [ %i.ar, %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1" ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.05.0108, i64 224 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.sroa.05.0108, i64 24 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.05.0108, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %3 = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
  %i.at = load i64, ptr %i.as, align 8, !noundef !8
  call void @_ZN4anki4text30extract_underscored_references17h9a34ceca45e2fe98E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %i.at)
  %i.au = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.av = load i64, ptr %i.g, align 8, !range !695, !noundef !8
  %i.aw = load i64, ptr %i.ao, align 8, !noundef !8 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 576460752303423488
  call void @llvm.assume(i1 %i.ax)
  %.idx113 = shl nuw nsw i64 %i.aw, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.au, ptr %i.f, align 8
  store ptr %i.au, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %i.av, ptr %.sroa.513.0..sroa_idx, align 8
  store ptr %i.ay, ptr %.sroa.614.0..sroa_idx, align 8
  %i.az = icmp eq i64 %i.aw, 0
  br i1 %i.az, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51", label %.lr.ph102

._crit_edge111:                                   ; preds = %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1", %._crit_edge
  ret void

.loopexit.loopexit:                               ; preds = %bb.n, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i", %.lr.ph102
  %lpad.loopexit127 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.loopexit.split-lp:                      ; preds = %.lr.ph102.1, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.1", %bb.h
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.loopexit129
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i", %bb.l
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi134, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" ], [ %lpad.phi140, %bb.l ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit127, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp128, %.loopexit.loopexit.split-lp ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
          to label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit" unwind label %bb.s

.lr.ph102:                                        ; preds = %bb.d, %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit"
  %i.ba = phi ptr [ %i.cq, %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit" ], [ %i.au, %bb.d ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5613)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  store ptr %i.bb, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5613
  %i.bc = load ptr, ptr %i.ba, align 8, !noalias !5613, !nonnull !8, !align !858, !noundef !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !noalias !5613, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5616
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.be, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc47 unwind label %.loopexit.loopexit

.noexc47:                                         ; preds = %.lr.ph102
  %i.bf = load i64, ptr %i.c, align 8, !range !686, !noalias !5616, !noundef !8
  %i.bg = trunc nuw i64 %i.bf to i1
  %i.bh = load i64, ptr %i.ap, align 8, !range !612, !noalias !5616, !noundef !8 ; 3 uses
  br i1 %i.bg, label %.loopexit129, label %bb.i, !prof !687

.loopexit129:                                     ; preds = %.noexc47, %.noexc47.1
  %.lcssa = phi i64 [ %i.by, %.noexc47.1 ], [ %i.bh, %.noexc47 ]
  %i.bi = load i64, ptr %i.aq, align 8, !noalias !5616
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %.lcssa, i64 %i.bi) #43
          to label %.noexc48 unwind label %.loopexit.split-lp

.noexc48:                                         ; preds = %.loopexit129
  unreachable

"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51": ; preds = %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit", %bb.d
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bj = load ptr, ptr %2, align 8, !nonnull !8, !noundef !8
  %i.bk = load i64, ptr %i.as, align 8, !noundef !8
  call void @_ZN4anki4text30extract_underscored_references17h9a34ceca45e2fe98E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bj, i64 noundef %i.bk)
  %i.bl = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8 ; 4 uses
  %i.bm = load i64, ptr %i.g, align 8, !range !695, !noundef !8
  %i.bn = load i64, ptr %i.ao, align 8, !noundef !8 ; 3 uses
  %i.bo = icmp ult i64 %i.bn, 576460752303423488
  call void @llvm.assume(i1 %i.bo)
  %.idx113.1 = shl nuw nsw i64 %i.bn, 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.idx113.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.bl, ptr %i.f, align 8
  store ptr %i.bl, ptr %.sroa.412.0..sroa_idx, align 8
  store i64 %i.bm, ptr %.sroa.513.0..sroa_idx, align 8
  store ptr %i.bp, ptr %.sroa.614.0..sroa_idx, align 8
  %i.bq = icmp eq i64 %i.bn, 0
  br i1 %i.bq, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1", label %.lr.ph102.1

.lr.ph102.1:                                      ; preds = %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51", %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit.1"
  %i.br = phi ptr [ %i.ce, %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit.1" ], [ %i.bl, %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5620)
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr %i.bs, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5620
  %i.bt = load ptr, ptr %i.br, align 8, !noalias !5620, !nonnull !8, !align !858, !noundef !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !5620, !noundef !8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5616
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, i64 noundef %i.bv, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc47.1 unwind label %.loopexit.loopexit.split-lp

.noexc47.1:                                       ; preds = %.lr.ph102.1
  %i.bw = load i64, ptr %i.c, align 8, !range !686, !noalias !5616, !noundef !8
  %i.bx = trunc nuw i64 %i.bw to i1
  %i.by = load i64, ptr %i.ap, align 8, !range !612, !noalias !5616, !noundef !8 ; 3 uses
  br i1 %i.bx, label %.loopexit129, label %bb.e, !prof !687

bb.e:                                             ; preds = %.noexc47.1
  %i.bz = load ptr, ptr %i.aq, align 8, !noalias !5616, !nonnull !8, !noundef !8 ; 3 uses
  %i.ca = icmp ule i64 %i.bv, %i.by
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5616
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bz, ptr nonnull readonly align 1 %i.bt, i64 %i.bv, i1 false), !noalias !5622
  store i64 %i.by, ptr %i.e, align 8
  store ptr %i.bz, ptr %.sroa.474.0..sroa_idx, align 8
  store i64 %i.bv, ptr %.sroa.575.0..sroa_idx, align 8
  %i.cb = invoke noundef zeroext i1 @_ZN7anki_io16filename_is_safe17he5098435619d08a9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bz, i64 noundef %i.bv)
          to label %bb.f unwind label %.loopexit.split-lp131, !noalias !5623

bb.f:                                             ; preds = %bb.e
  br i1 %i.cb, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.1" unwind label %.loopexit.split-lp136

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.1": ; preds = %bb.g
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit.1" unwind label %.loopexit.loopexit.split-lp

bb.h:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val39) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cc = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5ad0b7ffd5f48a89E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val39, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc53.1 unwind label %.loopexit.loopexit.split-lp ; 0 uses

.noexc53.1:                                       ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5623
  br label %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit.1"

"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit.1": ; preds = %.noexc53.1, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i.1"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cd = load ptr, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !5626, !nonnull !8, !noundef !8
  %i.ce = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5626, !nonnull !8, !noundef !8 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, %i.cd
  br i1 %i.cf, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1", label %.lr.ph102.1

"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51.1": ; preds = %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit.1", %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51"
  call void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he7705a07ae340aa1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cg = icmp eq ptr %i.ar, %i.al
  br i1 %i.cg, label %._crit_edge111, label %bb.d

bb.i:                                             ; preds = %.noexc47
  %i.ch = load ptr, ptr %i.aq, align 8, !noalias !5616, !nonnull !8, !noundef !8 ; 3 uses
  %i.ci = icmp ule i64 %i.be, %i.bh
  call void @llvm.assume(i1 %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5616
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ch, ptr nonnull readonly align 1 %i.bc, i64 %i.be, i1 false), !noalias !5622
  store i64 %i.bh, ptr %i.e, align 8
  store ptr %i.ch, ptr %.sroa.474.0..sroa_idx, align 8
  store i64 %i.be, ptr %.sroa.575.0..sroa_idx, align 8
  %i.cj = invoke noundef zeroext i1 @_ZN7anki_io16filename_is_safe17he5098435619d08a9E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ch, i64 noundef %i.be)
          to label %bb.j unwind label %.loopexit130, !noalias !5623

bb.j:                                             ; preds = %bb.i
  br i1 %i.cj, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %.loopexit135

.loopexit135:                                     ; preds = %bb.k
  %lpad.loopexit138 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

.loopexit.split-lp136:                            ; preds = %bb.g
  %lpad.loopexit.split-lp139 = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.split-lp136, %.loopexit135
  %lpad.phi140 = phi { ptr, i32 } [ %lpad.loopexit138, %.loopexit135 ], [ %lpad.loopexit.split-lp139, %.loopexit.split-lp136 ]
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.k
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit" unwind label %.loopexit.loopexit

bb.n:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val39) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5623
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cl = invoke noundef zeroext i1 @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h5ad0b7ffd5f48a89E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %.val39, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %.noexc53 unwind label %.loopexit.loopexit ; 0 uses

.noexc53:                                         ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !5623
  br label %"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit"

.loopexit130:                                     ; preds = %bb.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp131:                            ; preds = %bb.e
  %lpad.loopexit.split-lp133 = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp131, %.loopexit130
  %lpad.phi134 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit130 ], [ %lpad.loopexit.split-lp133, %.loopexit.split-lp131 ]
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i" unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body62 unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i": ; preds = %bb.o
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE.exit.i"
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body62

.body62:                                          ; preds = %bb.p, %bb.r
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4anki13import_export6gather12ExchangeData18gather_media_names28_$u7b$$u7b$closure$u7d$$u7d$17h79db9b5a58392120E.exit": ; preds = %.noexc53, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cp = load ptr, ptr %.sroa.614.0..sroa_idx, align 8, !alias.scope !5626, !nonnull !8, !noundef !8
  %i.cq = load ptr, ptr %.sroa.412.0..sroa_idx, align 8, !alias.scope !5626, !nonnull !8, !noundef !8 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.cp
  br i1 %i.cr, label %"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit51", label %.lr.ph102

bb.s:                                             ; preds = %.body, %.body57
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #42
  unreachable

"_ZN4core3ptr67drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$RF$str$GT$$GT$17h97f6c46a3e744920E.exit": ; preds = %.body, %.body57
  %.pn37 = phi { ptr, i32 } [ %eh.lpad-body58, %.body57 ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn37

bb.t:                                             ; preds = %.noexc
  %i.ct = load ptr, ptr %i.x, align 8, !noalias !5609, !nonnull !8, !noundef !8 ; 3 uses
  %i.cu = icmp ule i64 %i.ac, %i.af
  call void @llvm.assume(i1 %i.cu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5609
end_hunk_0
