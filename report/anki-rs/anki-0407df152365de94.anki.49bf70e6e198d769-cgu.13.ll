Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.13?download=true
inline.NumInlined: 5550
inline.NumDeleted: 2375
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4anki4tags7matcher10TagMatcher7replace17h8af5bebd9f2fb139E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.f:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_ZN4anki4tags7matcher10TagMatcher8is_match17h68fe1bee3e2d95b6E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 {
_ZN14regex_automata4util6search5Input8set_span17h7cd254e077faf750E.exit:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx3, align 8
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.7.0..sroa_idx4, align 8
  %.sroa.9.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %2, ptr %.sroa.9.0..sroa_idx5, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.c, align 8
  call fastcc void @_ZN14regex_automata4meta5regex5Regex11search_half17h57ab8228b29dcbf1E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr nonnull %.val, ptr %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.b)
  %i.d = load i64, ptr %i.a, align 8, !range !14, !noundef !12
  %i.e = icmp ne i64 %i.d, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki4tags8register18normalize_tag_name17h2e83ae9091e2b7f8E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [88 x i8], align 8                ; 4 uses
  %.sroa.010 = alloca [104 x i8], align 8         ; 4 uses
  %i.j = alloca [128 x i8], align 8               ; 6 uses
  %i.k = alloca [24 x i8], align 8                ; 9 uses
  %i.l = alloca [128 x i8], align 8               ; 10 uses
  %i.m = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @539, i64 noundef 2)
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 104 ; 5 uses
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 3 uses
  store i64 %2, ptr %.sroa.53.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 120 ; 2 uses
  store i8 1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 121 ; 4 uses
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !3544)
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.i.sroa.gep40 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.i.sroa.gep42 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.i.sroa.gep43 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.i.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.i.sroa.gep48 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.i.sroa.gep49 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.a

bb.a:                                             ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h07cfc171ecab6a37E.exit.i", %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3545)
  call void @llvm.experimental.noalias.scope.decl(metadata !3546)
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3547, !nonnull !12, !align !21, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3547
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(128) %i.l)
  %i.q = load i64, ptr %i.g, align 8, !range !14, !noalias !3547, !noundef !12
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = load i64, ptr %i.o, align 8, !noalias !3547, !noundef !12
  %i.t = load i64, ptr %i.p, align 8, !noalias !3547, !noundef !12
  %i.u = load i64, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !3547, !noundef !12 ; 2 uses
  %i.v = sub nuw i64 %i.s, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.u
  store i64 %i.t, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !3547
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.x = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !range !26, !alias.scope !3548, !noundef !12
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3aba9c14d53023c2E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %.sroa.7.0..sroa_idx, align 1, !alias.scope !3548
  %i.z = load i8, ptr %.sroa.6.0..sroa_idx, align 8, !range !26, !alias.scope !3548, !noundef !12
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %._crit_edge.i.i.i.i, label %bb.e

._crit_edge.i.i.i.i:                              ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !3548
  %.pre3.i.i.i.i = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !3548
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load i64, ptr %.sroa.53.0..sroa_idx, align 8, !alias.scope !3548, !noundef !12 ; 2 uses
  %i.ac = load i64, ptr %.sroa.42.0..sroa_idx, align 8, !alias.scope !3548, !noundef !12 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ab, %i.ac
  br i1 %.not.i.i.i.i, label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3aba9c14d53023c2E.exit.i", label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i
  %i.ad = phi i64 [ %.pre3.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ab, %bb.e ]
  %i.ae = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.ac, %bb.e ] ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !3548, !nonnull !12, !align !21, !noundef !12
  %i.af = sub nuw i64 %i.ad, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.ae
  br label %bb.g

"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3aba9c14d53023c2E.exit.i": ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3547
  br label %.loopexit51

bb.g:                                             ; preds = %bb.f, %bb.b
  %.sroa.4.0.i.i.ph.i = phi i64 [ %i.af, %bb.f ], [ %i.v, %bb.b ]
  %.sroa.0.0.i.i.ph.i = phi ptr [ %i.ag, %bb.f ], [ %i.w, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3547
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3549
  call void @_ZN4anki4tags8register29normalized_tag_name_component17h26e15e49b48d7b9dE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0.i.i.ph.i, i64 noundef %.sroa.4.0.i.i.ph.i), !noalias !3544
  %i.ah = load i64, ptr %i.f, align 8, !range !31, !noalias !3549, !noundef !12
  %.not.i = icmp eq i64 %i.ah, -9223372036854775808
  br i1 %.not.i, label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h07cfc171ecab6a37E.exit.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.k unwind label %bb.i, !noalias !3544

bb.i:                                             ; preds = %bb.h
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.j, !noalias !3544

bb.j:                                             ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !3544
  unreachable

common.resume:                                    ; preds = %.body, %bb.ae, %bb.ai, %bb.z, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.cz, %bb.ai ], [ %i.ai, %bb.i ], [ %i.cl, %bb.z ], [ %i.cu, %bb.ae ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h07cfc171ecab6a37E.exit.i": ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3549
  %i.ak = load i8, ptr %.sroa.7.0..sroa_idx, align 1, !range !26, !alias.scope !3550, !noundef !12
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %.loopexit51, label %bb.a

.loopexit51:                                      ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h07cfc171ecab6a37E.exit.i", %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3aba9c14d53023c2E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %1, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %2, ptr %i.an, align 8
  store i64 -9223372036854775808, ptr %i.m, align 8
  br label %bb.y

bb.k:                                             ; preds = %bb.h
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f), !noalias !3544
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010)
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %.sroa.010, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @539, i64 noundef 2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.010, i64 104, i1 false)
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  store i64 0, ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 112
  store i64 %2, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 120
  store i8 1, ptr %.sroa.613.0..sroa_idx, align 8
  %.sroa.714.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 121
  store i8 0, ptr %.sroa.714.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010)
  call void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hfa7acf028cc4022cE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.j)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !12, !noundef !12 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !12 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ar, 24             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.idx.i ; 2 uses
  %i.at = icmp eq i64 %i.ar, 0                    ; 2 uses
  %.sroa.0.0.idx.i = select i1 %i.at, i64 0, i64 24
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 %.sroa.0.0.idx.i
  br i1 %i.at, label %_ZN5alloc3str17join_generic_copy17hb626ae5f2b0ec09cE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %gepdiff.i = add nsw i64 %.idx.i, -24
  %i.au = udiv exact i64 %gepdiff.i, 24
  %i.av = shl nuw nsw i64 %i.au, 1
  br label %bb.m

bb.l:                                             ; preds = %.noexc
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ay, i64 24 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.as
  br i1 %i.ax, label %._crit_edge, label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.sroa.01.0.i.i68 = phi i64 [ %i.av, %.lr.ph ], [ %i.bb, %bb.l ] ; 2 uses
  %i.ay = phi ptr [ %i.ap, %.lr.ph ], [ %i.aw, %bb.l ] ; 2 uses
  %i.az = invoke { ptr, i64 } @"_ZN77_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..borrow..Borrow$LT$B$GT$$GT$6borrow17h0ce3dc8410ee0b9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ay)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.m
  %i.ba = extractvalue { ptr, i64 } %i.az, 1
  %i.bb = add i64 %i.ba, %.sroa.01.0.i.i68        ; 6 uses
  %i.bc = icmp ult i64 %i.bb, %.sroa.01.0.i.i68
  br i1 %i.bc, label %bb.o, label %bb.l

._crit_edge:                                      ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3551
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.bb, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc22 unwind label %.loopexit.split-lp

.noexc22:                                         ; preds = %._crit_edge
  %i.bd = load i64, ptr %i.b, align 8, !range !14, !noalias !3551, !noundef !12
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !31, !noalias !3551, !noundef !12 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.be, label %bb.n, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i", !prof !17

bb.n:                                             ; preds = %.noexc22
  %i.bi = load i64, ptr %i.bh, align 8, !noalias !3551
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.bg, i64 %i.bi) #39
          to label %.noexc23 unwind label %.loopexit.split-lp

.noexc23:                                         ; preds = %bb.n
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i": ; preds = %.noexc22
  %i.bj = load ptr, ptr %i.bh, align 8, !noalias !3551, !nonnull !12, !noundef !12
  %i.bk = icmp ule i64 %i.bb, %i.bg
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3551
  store i64 %i.bg, ptr %i.e, align 8, !noalias !3551
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  store ptr %i.bj, ptr %i.bl, align 8, !noalias !3551
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  store i64 0, ptr %i.bm, align 8, !noalias !3551
  %i.bn = invoke { ptr, i64 } @"_ZN77_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..borrow..Borrow$LT$B$GT$$GT$6borrow17h0ce3dc8410ee0b9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %bb.q unwind label %.loopexit.split-lp.i, !noalias !3552 ; 2 uses

bb.o:                                             ; preds = %.noexc
  invoke void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @794, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #39
          to label %.noexc24 unwind label %.loopexit.split-lp

.noexc24:                                         ; preds = %bb.o
  unreachable

.loopexit.i:                                      ; preds = %.lr.ph.i21
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp.i:                             ; preds = %.invoke.i, %bb.q, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #40
          to label %.body unwind label %bb.x, !noalias !3552

bb.q:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h10a3b5fe38ba3de6E.exit.i"
  %i.bo = extractvalue { ptr, i64 } %i.bn, 0      ; 2 uses
  %i.bp = extractvalue { ptr, i64 } %i.bn, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bp
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bq)
          to label %bb.r unwind label %.loopexit.split-lp.i, !noalias !3552

bb.r:                                             ; preds = %bb.q
  %i.br = load i64, ptr %i.bm, align 8, !noalias !3551, !noundef !12 ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  call void @llvm.assume(i1 %i.bs)
  %i.bt = sub i64 %i.bb, %i.br                    ; 2 uses
  %i.bu = icmp eq i64 %i.ar, 1
  br i1 %i.bu, label %.thread14.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.bv = load ptr, ptr %i.bl, align 8, !noalias !3551, !nonnull !12, !noundef !12
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.br
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit122.i", %.lr.ph.preheader.i
  %.sroa.014.325.i = phi ptr [ %i.cf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit122.i" ], [ %i.bw, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.38.324.i = phi i64 [ %i.cg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit122.i" ], [ %i.bt, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.0.0823.i = phi ptr [ %i.bx, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit122.i" ], [ %.sroa.0.0.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.0.0823.i, i64 24 ; 2 uses
  %i.by = invoke { ptr, i64 } @"_ZN77_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..borrow..Borrow$LT$B$GT$$GT$6borrow17h0ce3dc8410ee0b9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0823.i)
          to label %bb.s unwind label %.loopexit.i, !noalias !3552 ; 2 uses

bb.s:                                             ; preds = %.lr.ph.i21
  %i.bz = extractvalue { ptr, i64 } %i.by, 0      ; 2 uses
  %i.ca = extractvalue { ptr, i64 } %i.by, 1      ; 4 uses
  %.not118.i = icmp eq ptr %i.bz, null
  br i1 %.not118.i, label %.thread14.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = icmp ugt i64 %.sroa.38.324.i, 1
  br i1 %i.cb, label %bb.v, label %bb.u, !prof !37

.thread14.i:                                      ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit122.i", %bb.s, %bb.r
  %.sroa.38.3.lcssa.i = phi i64 [ %i.bt, %bb.r ], [ %.sroa.38.324.i, %bb.s ], [ %i.cg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit122.i" ]
  %i.cc = sub i64 %i.bb, %.sroa.38.3.lcssa.i
  %.sroa.029.0.copyload30 = load i64, ptr %i.e, align 8, !noalias !3553
  %.sroa.531.0.copyload33 = load ptr, ptr %i.bl, align 8, !noalias !3553
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3551
  br label %_ZN5alloc3str17join_generic_copy17hb626ae5f2b0ec09cE.exit

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3551
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.w, %bb.u
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.w ], [ %.sink.i.sroa.gep40, %bb.u ]
  %.sink.i.sroa.phi41 = phi ptr [ %.sink.i.sroa.gep42, %bb.w ], [ %.sink.i.sroa.gep43, %bb.u ]
  %.sink.i.sroa.phi44 = phi ptr [ %.sink.i.sroa.gep45, %bb.w ], [ %.sink.i.sroa.gep46, %bb.u ]
  %.sink.i.sroa.phi47 = phi ptr [ %.sink.i.sroa.gep48, %bb.w ], [ %.sink.i.sroa.gep49, %bb.u ]
  %.sink.i = phi ptr [ %i.c, %bb.w ], [ %i.d, %bb.u ] ; 2 uses
  store ptr @33, ptr %.sink.i, align 8, !noalias !3551
  store i64 1, ptr %.sink.i.sroa.phi, align 8, !noalias !3551
  store ptr null, ptr %.sink.i.sroa.phi41, align 8, !noalias !3551
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.i.sroa.phi44, align 8, !noalias !3551
  store i64 0, ptr %.sink.i.sroa.phi47, align 8, !noalias !3551
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @797) #39
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !3552

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.cd = add i64 %.sroa.38.324.i, -2             ; 2 uses
  store i16 14906, ptr %.sroa.014.325.i, align 1, !alias.scope !3554, !noalias !3552
  %.not119.i = icmp ugt i64 %i.ca, %i.cd
  br i1 %.not119.i, label %bb.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit122.i", !prof !17

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3551
  br label %.invoke.i

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit122.i": ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.014.325.i, i64 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ca
  %i.cg = sub nuw i64 %i.cd, %i.ca                ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %i.bz, i64 %i.ca, i1 false), !alias.scope !3555, !noalias !3552
  %i.ch = icmp eq ptr %i.bx, %i.as
  br i1 %i.ch, label %.thread14.i, label %.lr.ph.i21

bb.x:                                             ; preds = %bb.p
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41, !noalias !3552
  unreachable

bb.y:                                             ; preds = %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hbf1bd0f1289ebc5aE.exit", %.loopexit51
  %i.cj = phi i64 [ %.sroa.634.0, %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hbf1bd0f1289ebc5aE.exit" ], [ %2, %.loopexit51 ]
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %bb.ab, label %bb.ad

.loopexit:                                        ; preds = %bb.m
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.n, %bb.o
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %lpad.phi.i, %bb.p ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hbf1bd0f1289ebc5aE"(ptr noalias noundef align 8 dereferenceable(24) %i.k) #40
          to label %common.resume unwind label %bb.ak

_ZN5alloc3str17join_generic_copy17hb626ae5f2b0ec09cE.exit: ; preds = %.thread14.i, %bb.k
  %.sroa.634.0 = phi i64 [ %i.cc, %.thread14.i ], [ 0, %bb.k ] ; 2 uses
  %.sroa.531.0 = phi ptr [ %.sroa.531.0.copyload33, %.thread14.i ], [ inttoptr (i64 1 to ptr), %bb.k ]
  %.sroa.029.0 = phi i64 [ %.sroa.029.0.copyload30, %.thread14.i ], [ 0, %bb.k ]
  store i64 %.sroa.029.0, ptr %i.m, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.531.0, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %.sroa.634.0, ptr %.sroa.539.0..sroa_idx, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha710e238b1b7985fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hbf1bd0f1289ebc5aE.exit" unwind label %bb.z

bb.z:                                             ; preds = %_ZN5alloc3str17join_generic_copy17hb626ae5f2b0ec09cE.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681df738f5864ce5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$alloc..borrow..Cow$LT$str$GT$$GT$$GT$17hbf1bd0f1289ebc5aE.exit": ; preds = %_ZN5alloc3str17join_generic_copy17hb626ae5f2b0ec09cE.exit
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h681df738f5864ce5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.y

bb.ab:                                            ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !3556)
  call void @llvm.experimental.noalias.scope.decl(metadata !3557)
  call void @llvm.experimental.noalias.scope.decl(metadata !3558)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3559
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef 9, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc25 unwind label %bb.ae

.noexc25:                                         ; preds = %bb.ab
  %i.cn = load i64, ptr %i.a, align 8, !range !14, !noalias !3559, !noundef !12
  %i.co = trunc nuw i64 %i.cn to i1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !31, !noalias !3559, !noundef !12 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.co, label %bb.ac, label %bb.af, !prof !17

bb.ac:                                            ; preds = %.noexc25
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !3559
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.cq, i64 %i.cs) #39
          to label %.noexc26 unwind label %bb.ae

.noexc26:                                         ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.y
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit"

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.af
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #40
          to label %common.resume unwind label %bb.ak

bb.af:                                            ; preds = %.noexc25
  %i.cv = load ptr, ptr %i.cr, align 8, !noalias !3559, !nonnull !12, !noundef !12 ; 2 uses
  %i.cw = icmp ugt i64 %i.cq, 8
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3559
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cv, ptr noundef nonnull readonly align 1 dereferenceable(9) @545, i64 9, i1 false), !noalias !3560
  store i64 %i.cq, ptr %i.h, align 8, !alias.scope !3561, !noalias !3562
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.cv, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !3561, !noalias !3562
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 9, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !3561, !noalias !3562
  invoke void @"_ZN83_$LT$anki..error..invalid_input..InvalidInputError$u20$as$u20$snafu..FromString$GT$14without_source17h287db1a5a5529dbcE"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @547)
          to label %bb.ag unwind label %bb.ae

bb.ag:                                            ; preds = %bb.af
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.i, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 -9223372036854775808, ptr %0, align 8
  %i.cx = load i64, ptr %i.m, align 8, !range !31, !alias.scope !3563, !noundef !12
  %i.cy = icmp eq i64 %i.cx, -9223372036854775808
  br i1 %i.cy, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit", label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cz = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.da = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_0
begin_hunk_1_@"_ZN55_$LT$envy..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7f37134d5e390fb4E":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @787, i64 noundef 12, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @786)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZN55_$LT$u16$u20$as$u20$core..slice..cmp..SliceContains$GT$14slice_contains17hdb662266932d6a23E"(i16 %.0.val, ptr noalias noundef nonnull readonly align 2 captures(address) %0, i64 noundef %1) unnamed_addr #20 personality ptr @rust_eh_personality {
bb.a:
  %i.a = and i64 %1, -32                          ; 3 uses
  %i.b = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit.preheader"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit.preheader": ; preds = %bb.a
  %i.d = insertelement <32 x i16> poison, i16 %.0.val, i64 0
  %i.e = shufflevector <32 x i16> %i.d, <32 x i16> poison, <32 x i32> zeroinitializer
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit"

bb.b:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit"
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0313, i64 64
  %i.g = add i64 %.sroa.5.012, -32                ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit.preheader", %bb.b
  %.sroa.0.0313 = phi ptr [ %i.f, %bb.b ], [ %0, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit.preheader" ] ; 2 uses
  %.sroa.5.012 = phi i64 [ %i.g, %bb.b ], [ %i.a, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit.preheader" ]
  %i.i = load <32 x i16>, ptr %.sroa.0.0313, align 2, !noalias !9351
  %i.j = icmp eq <32 x i16> %i.i, %i.e
  %i.k = bitcast <32 x i1> %i.j to i32
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hc44418e77298d8edE.exit"

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.l = shl i64 %1, 1
  %.idx = and i64 %i.l, 62                        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %.not.not.not.i.not.not14 = icmp samesign eq i64 %.idx, 0
  br i1 %.not.not.not.i.not.not14, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hc44418e77298d8edE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %._crit_edge
  %i.n = phi ptr [ %i.p, %.lr.ph ], [ %i.b, %._crit_edge ] ; 2 uses
  %.val3.i = load i16, ptr %i.n, align 2, !noalias !9352, !noundef !12
  %i.o = icmp eq i16 %.val3.i, %.0.val            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 2 ; 2 uses
  %.not.not.not.i.not.not = icmp eq ptr %i.p, %i.m
  %or.cond = select i1 %i.o, i1 true, i1 %.not.not.not.i.not.not
  br i1 %or.cond, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hc44418e77298d8edE.exit", label %.lr.ph

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3any17hc44418e77298d8edE.exit": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit", %.lr.ph, %._crit_edge
  %.sroa.0.0 = phi i1 [ %i.o, %.lr.ph ], [ false, %._crit_edge ], [ true, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hbab4caef6c246a76E.exit" ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define hidden void @"_ZN56_$LT$T$u20$as$u20$futures_util..fns..FnMut1$LT$A$GT$$GT$8call_mut17hb63e9c0c45c7187bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 40)) %0, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2) unnamed_addr #5 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9356)
  store i64 3, ptr %0, align 8, !alias.scope !9357, !noalias !9356
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(32) %2, i64 32, i1 false), !alias.scope !9358
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN56_$LT$core..cmp..Ordering$u20$as$u20$core..fmt..Debug$GT$3fmt17hd73fb5e1498245b0E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !9359, !noundef !12
  %switch.tableidx = add nsw i8 %i.a, 1           ; 2 uses
  %i.b = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN56_$LT$core..cmp..Ordering$u20$as$u20$core..fmt..Debug$GT$3fmt17hd73fb5e1498245b0E", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %switch.tableidx to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN56_$LT$core..cmp..Ordering$u20$as$u20$core..fmt..Debug$GT$3fmt17hd73fb5e1498245b0E.900", i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$10write_char17h5a9d960cd3ba5c32E"(ptr noalias noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !9362, !noundef !12 ; 2 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128            ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i32 %1, 65536
  %..i = select i1 %i.f, i64 3, i64 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0.i = phi i64 [ 2, %bb.b ], [ %..i, %bb.c ], [ 1, %bb.a ] ; 2 uses
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha04814356e46461eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !9362, !nonnull !12, !noundef !12
  %i.i = load i64, ptr %i.a, align 8, !alias.scope !9362, !noundef !12 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1
  tail call void @llvm.assume(i1 %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i ; 10 uses
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = icmp samesign ult i32 %1, 2048
  %i.m = trunc i32 %1 to i8
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128                ; 3 uses
  %i.p = lshr i32 %1, 6
  %i.q = trunc i32 %i.p to i8                     ; 2 uses
  %i.r = and i8 %i.q, 63
  %i.s = or disjoint i8 %i.r, -128                ; 2 uses
  %i.t = lshr i32 %1, 12
  %i.u = trunc i32 %i.t to i8                     ; 2 uses
  %i.v = and i8 %i.u, 63
  %i.w = or disjoint i8 %i.v, -128
  %i.x = lshr i32 %1, 18
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -16
  br i1 %i.l, label %bb.g, label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.k, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.g:                                             ; preds = %bb.e
  %i.ab = or disjoint i8 %i.q, -64
  store i8 %i.ab, ptr %i.k, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.o, ptr %i.ac, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.h:                                             ; preds = %bb.e
  %i.ad = icmp samesign ult i32 %1, 65536
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = or disjoint i8 %i.u, -32
  store i8 %i.ae, ptr %i.k, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.s, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.o, ptr %i.ag, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

bb.j:                                             ; preds = %bb.h
  store i8 %i.z, ptr %i.k, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.w, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.s, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 3
  store i8 %i.o, ptr %i.aj, align 1
  br label %_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit

_ZN5alloc6string6String4push17h8a8122a4affdfdffE.exit: ; preds = %bb.f, %bb.g, %bb.i, %bb.j
  %i.ak = add nuw i64 %.sroa.0.0.i, %i.b
  store i64 %i.ak, ptr %i.a, align 8, !alias.scope !9362
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E"(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull readonly align 1 %1, ptr noundef nonnull readonly %i.a)
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3str17join_generic_copy17hbee8c4e6e1b59520E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %.idx = mul nuw nsw i64 %2, 24                  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.o = icmp eq i64 %2, 0                        ; 2 uses
  %.sroa.0.0.idx = select i1 %i.o, i64 0, i64 24
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 6 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink.sroa.gep419 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink.sroa.gep420 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink.sroa.gep421 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink.sroa.gep422 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep423 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep426 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep427 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.sroa.gep428 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep430 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink.sroa.gep431 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sink.sroa.gep432 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sink.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sink.sroa.gep434 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sink.sroa.gep435 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink.sroa.gep436 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.sroa.gep437 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep438 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.sroa.gep439 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep442 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink.sroa.gep443 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sink.sroa.gep444 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink.sroa.gep445 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sink.sroa.gep447 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink.sroa.gep448 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.sroa.gep449 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep450 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.sroa.gep451 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.sroa.gep452 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep454 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sink.sroa.gep455 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sink.sroa.gep456 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sink.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sink.sroa.gep458 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink.sroa.gep459 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.sroa.gep461 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink.sroa.gep462 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.sroa.gep464 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %gepdiff = add nsw i64 %.idx, -24
  %i.p = udiv exact i64 %gepdiff, 24
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.p) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.thread, label %.lr.ph406, !prof !63

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %.thread239, %bb.c
  ret void

.lr.ph406:                                        ; preds = %bb.b
  %i.u = extractvalue { i64, i1 } %i.q, 0
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph406, %bb.e
  %.sroa.01.0.i405 = phi i64 [ %i.u, %.lr.ph406 ], [ %i.z, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %1, %.lr.ph406 ], [ %i.v, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %.val9.i = load i64, ptr %i.y, align 8, !noalias !9398, !noundef !12
  %i.z = add i64 %.val9.i, %.sroa.01.0.i405       ; 6 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.01.0.i405
  br i1 %i.aa, label %.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ab = load i64, ptr %i.a, align 8, !range !14, !noundef !12
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !31, !noundef !12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.i, !prof !17

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i64, ptr %i.af, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ae, i64 %i.ag) #39
  unreachable

.thread:                                          ; preds = %bb.f, %bb.b
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @794, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #39
  unreachable

bb.h:                                             ; preds = %.invoke, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #40
          to label %bb.ab unwind label %bb.aa

bb.i:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.af, align 8, !nonnull !12, !noundef !12
  %i.aj = icmp ule i64 %i.z, %i.ae
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ae, ptr %i.m, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %i.am = getelementptr i8, ptr %1, i64 8
  %.sroa.05.0.val = load ptr, ptr %i.am, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.an = getelementptr i8, ptr %1, i64 16
  %.sroa.05.0.val137 = load i64, ptr %i.an, align 8, !noundef !12
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.05.0.val, i64 %.sroa.05.0.val137
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %.sroa.05.0.val, ptr noundef nonnull %i.ao)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ap = load i64, ptr %i.al, align 8, !noundef !12 ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, -1
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ap ; 6 uses
  %i.at = sub i64 %i.z, %i.ap                     ; 12 uses
  %i.au = icmp eq i64 %2, 1                       ; 6 uses
  switch i64 %4, label %.preheader [
    i64 0, label %.preheader304
    i64 1, label %.preheader306
    i64 2, label %.preheader308
    i64 3, label %.preheader310
    i64 4, label %.preheader312
  ]

.preheader312:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph

.preheader310:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph332

.preheader308:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph337

.preheader306:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph342

.preheader304:                                    ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph347

.preheader:                                       ; preds = %bb.j
  br i1 %i.au, label %.thread239, label %.lr.ph352

.lr.ph347:                                        ; preds = %.preheader304, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146"
  %.sroa.014.0346 = phi ptr [ %i.az, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146" ], [ %i.as, %.preheader304 ] ; 2 uses
  %.sroa.38.0345 = phi i64 [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146" ], [ %i.at, %.preheader304 ] ; 2 uses
  %.sroa.0.0234344 = phi ptr [ %i.ay, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146" ], [ %.sroa.0.0, %.preheader304 ] ; 3 uses
  %i.av = getelementptr i8, ptr %.sroa.0.0234344, i64 16
  %.sroa.090.0.val143 = load i64, ptr %i.av, align 8, !noundef !12 ; 4 uses
  %.not132 = icmp ugt i64 %.sroa.090.0.val143, %.sroa.38.0345
  br i1 %.not132, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146", !prof !17

.thread239:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176", %.preheader312, %.preheader310, %.preheader308, %.preheader306, %.preheader304, %.preheader
  %.sroa.38.1 = phi i64 [ %i.cc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164" ], [ %i.bt, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158" ], [ %i.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176" ], [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146" ], [ %i.bj, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152" ], [ %i.at, %.preheader ], [ %i.at, %.preheader304 ], [ %i.at, %.preheader306 ], [ %i.at, %.preheader308 ], [ %i.at, %.preheader310 ], [ %i.at, %.preheader312 ], [ %i.cm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170" ]
  %i.aw = sub i64 %i.z, %.sroa.38.1
  store i64 %i.aw, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.k:                                             ; preds = %.lr.ph347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146": ; preds = %.lr.ph347
  %i.ax = getelementptr i8, ptr %.sroa.0.0234344, i64 8
  %.sroa.090.0.val = load ptr, ptr %i.ax, align 8, !nonnull !12, !noundef !12
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.0234344, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.014.0346, i64 %.sroa.090.0.val143
  %i.ba = sub nuw i64 %.sroa.38.0345, %.sroa.090.0.val143 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.014.0346, ptr nonnull readonly align 1 %.sroa.090.0.val, i64 %.sroa.090.0.val143, i1 false), !alias.scope !9399
  %i.bb = icmp eq ptr %i.ay, %i.n
  br i1 %i.bb, label %.thread239, label %.lr.ph347

.lr.ph342:                                        ; preds = %.preheader306, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152"
  %.sroa.014.2341 = phi ptr [ %i.bi, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152" ], [ %i.as, %.preheader306 ] ; 2 uses
  %.sroa.38.2340 = phi i64 [ %i.bj, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152" ], [ %i.at, %.preheader306 ] ; 2 uses
  %.sroa.0177.0339 = phi ptr [ %i.bc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152" ], [ %.sroa.0.0, %.preheader306 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0177.0339, i64 24 ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.0177.0339, i64 8
  %.sroa.092.0.val = load ptr, ptr %i.bd, align 8, !nonnull !12, !noundef !12
  %i.be = getelementptr i8, ptr %.sroa.0177.0339, i64 16
  %.sroa.092.0.val142 = load i64, ptr %i.be, align 8, !noundef !12 ; 4 uses
  %.not128 = icmp eq i64 %.sroa.38.2340, 0
  br i1 %.not128, label %bb.l, label %bb.m, !prof !17

bb.l:                                             ; preds = %.lr.ph342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %.invoke

bb.m:                                             ; preds = %.lr.ph342
  %i.bf = add i64 %.sroa.38.2340, -1              ; 2 uses
  %i.bg = load i8, ptr %3, align 1, !alias.scope !9400
  store i8 %i.bg, ptr %.sroa.014.2341, align 1, !alias.scope !9400
  %.not129 = icmp ugt i64 %.sroa.092.0.val142, %i.bf
  br i1 %.not129, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152", !prof !17

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152": ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.014.2341, i64 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.092.0.val142
  %i.bj = sub nuw i64 %i.bf, %.sroa.092.0.val142  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bh, ptr nonnull readonly align 1 %.sroa.092.0.val, i64 %.sroa.092.0.val142, i1 false), !alias.scope !9401
  %i.bk = icmp eq ptr %i.bc, %i.n
  br i1 %i.bk, label %.thread239, label %.lr.ph342

.lr.ph337:                                        ; preds = %.preheader308, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158"
  %.sroa.014.3336 = phi ptr [ %i.bs, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158" ], [ %i.as, %.preheader308 ] ; 2 uses
  %.sroa.38.3335 = phi i64 [ %i.bt, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158" ], [ %i.at, %.preheader308 ] ; 2 uses
  %.sroa.0179.0334 = phi ptr [ %i.bl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158" ], [ %.sroa.0.0, %.preheader308 ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0179.0334, i64 24 ; 2 uses
  %i.bm = getelementptr i8, ptr %.sroa.0179.0334, i64 8
  %.sroa.094.0.val = load ptr, ptr %i.bm, align 8, !nonnull !12, !noundef !12
  %i.bn = getelementptr i8, ptr %.sroa.0179.0334, i64 16
  %.sroa.094.0.val141 = load i64, ptr %i.bn, align 8, !noundef !12 ; 4 uses
  %i.bo = icmp ugt i64 %.sroa.38.3335, 1
  br i1 %i.bo, label %bb.p, label %bb.o, !prof !37

bb.o:                                             ; preds = %.lr.ph337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br label %.invoke

bb.p:                                             ; preds = %.lr.ph337
  %i.bp = add i64 %.sroa.38.3335, -2              ; 2 uses
  %i.bq = load i16, ptr %3, align 1, !alias.scope !9402
  store i16 %i.bq, ptr %.sroa.014.3336, align 1, !alias.scope !9402
  %.not125 = icmp ugt i64 %.sroa.094.0.val141, %i.bp
  br i1 %.not125, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158", !prof !17

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158": ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.014.3336, i64 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %.sroa.094.0.val141
  %i.bt = sub nuw i64 %i.bp, %.sroa.094.0.val141  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.br, ptr nonnull readonly align 1 %.sroa.094.0.val, i64 %.sroa.094.0.val141, i1 false), !alias.scope !9403
  %i.bu = icmp eq ptr %i.bl, %i.n
  br i1 %i.bu, label %.thread239, label %.lr.ph337

.lr.ph332:                                        ; preds = %.preheader310, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164"
  %.sroa.014.4331 = phi ptr [ %i.cb, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164" ], [ %i.as, %.preheader310 ] ; 2 uses
  %.sroa.38.4330 = phi i64 [ %i.cc, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164" ], [ %i.at, %.preheader310 ] ; 2 uses
  %.sroa.0181.0329 = phi ptr [ %i.bv, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164" ], [ %.sroa.0.0, %.preheader310 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 24 ; 2 uses
  %i.bw = getelementptr i8, ptr %.sroa.0181.0329, i64 8
  %.sroa.096.0.val = load ptr, ptr %i.bw, align 8, !nonnull !12, !noundef !12
  %i.bx = getelementptr i8, ptr %.sroa.0181.0329, i64 16
  %.sroa.096.0.val140 = load i64, ptr %i.bx, align 8, !noundef !12 ; 4 uses
  %i.by = icmp ugt i64 %.sroa.38.4330, 2
  br i1 %i.by, label %bb.s, label %bb.r, !prof !37

bb.r:                                             ; preds = %.lr.ph332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %.invoke

bb.s:                                             ; preds = %.lr.ph332
  %i.bz = add i64 %.sroa.38.4330, -3              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.014.4331, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !alias.scope !9404
  %.not122 = icmp ugt i64 %.sroa.096.0.val140, %i.bz
  br i1 %.not122, label %bb.t, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164", !prof !17

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164": ; preds = %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.014.4331, i64 3 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.sroa.096.0.val140
  %i.cc = sub nuw i64 %i.bz, %.sroa.096.0.val140  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ca, ptr nonnull readonly align 1 %.sroa.096.0.val, i64 %.sroa.096.0.val140, i1 false), !alias.scope !9405
  %i.cd = icmp eq ptr %i.bv, %i.n
  br i1 %i.cd, label %.thread239, label %.lr.ph332

.lr.ph:                                           ; preds = %.preheader312, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170"
  %.sroa.014.5328 = phi ptr [ %i.cl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170" ], [ %i.as, %.preheader312 ] ; 2 uses
  %.sroa.38.5327 = phi i64 [ %i.cm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170" ], [ %i.at, %.preheader312 ] ; 2 uses
  %.sroa.0183.0326 = phi ptr [ %i.ce, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170" ], [ %.sroa.0.0, %.preheader312 ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0183.0326, i64 24 ; 2 uses
  %i.cf = getelementptr i8, ptr %.sroa.0183.0326, i64 8
  %.sroa.098.0.val = load ptr, ptr %i.cf, align 8, !nonnull !12, !noundef !12
  %i.cg = getelementptr i8, ptr %.sroa.0183.0326, i64 16
  %.sroa.098.0.val139 = load i64, ptr %i.cg, align 8, !noundef !12 ; 4 uses
  %i.ch = icmp ugt i64 %.sroa.38.5327, 3
  br i1 %i.ch, label %bb.v, label %bb.u, !prof !37

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %.invoke

bb.v:                                             ; preds = %.lr.ph
  %i.ci = add i64 %.sroa.38.5327, -4              ; 2 uses
  %i.cj = load i32, ptr %3, align 1, !alias.scope !9406
  store i32 %i.cj, ptr %.sroa.014.5328, align 1, !alias.scope !9406
  %.not119 = icmp ugt i64 %.sroa.098.0.val139, %i.ci
  br i1 %.not119, label %bb.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170", !prof !17

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170": ; preds = %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.014.5328, i64 4 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.sroa.098.0.val139
  %i.cm = sub nuw i64 %i.ci, %.sroa.098.0.val139  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ck, ptr nonnull readonly align 1 %.sroa.098.0.val, i64 %.sroa.098.0.val139, i1 false), !alias.scope !9407
  %i.cn = icmp eq ptr %i.ce, %i.n
  br i1 %i.cn, label %.thread239, label %.lr.ph

.lr.ph352:                                        ; preds = %.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176"
  %.sroa.014.6351 = phi ptr [ %i.ct, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176" ], [ %i.as, %.preheader ] ; 3 uses
  %.sroa.38.6350 = phi i64 [ %i.cu, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176" ], [ %i.at, %.preheader ] ; 2 uses
  %.sroa.0185.0349 = phi ptr [ %i.co, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176" ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.0185.0349, i64 24 ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.0185.0349, i64 8
  %.sroa.0100.0.val = load ptr, ptr %i.cp, align 8, !nonnull !12, !noundef !12
  %i.cq = getelementptr i8, ptr %.sroa.0185.0349, i64 16
  %.sroa.0100.0.val138 = load i64, ptr %i.cq, align 8, !noundef !12 ; 4 uses
  %.not135 = icmp ugt i64 %4, %.sroa.38.6350
  br i1 %.not135, label %bb.x, label %bb.y, !prof !17

bb.x:                                             ; preds = %.lr.ph352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %.invoke

bb.y:                                             ; preds = %.lr.ph352
  %i.cr = sub nuw i64 %.sroa.38.6350, %4          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.014.6351) ]
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.014.6351, ptr nonnull readonly align 1 %3, i64 %4, i1 false), !alias.scope !9408
  %.not136 = icmp ugt i64 %.sroa.0100.0.val138, %i.cr
  br i1 %.not136, label %bb.z, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176", !prof !17

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.invoke

.invoke:                                          ; preds = %bb.k, %bb.l, %bb.n, %bb.o, %bb.q, %bb.r, %bb.t, %bb.u, %bb.w, %bb.x, %bb.z
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.k ], [ %.sink.sroa.gep419, %bb.l ], [ %.sink.sroa.gep420, %bb.n ], [ %.sink.sroa.gep421, %bb.o ], [ %.sink.sroa.gep422, %bb.q ], [ %.sink.sroa.gep423, %bb.r ], [ %.sink.sroa.gep424, %bb.t ], [ %.sink.sroa.gep425, %bb.u ], [ %.sink.sroa.gep426, %bb.w ], [ %.sink.sroa.gep427, %bb.x ], [ %.sink.sroa.gep428, %bb.z ]
  %.sink.sroa.phi429 = phi ptr [ %.sink.sroa.gep430, %bb.k ], [ %.sink.sroa.gep431, %bb.l ], [ %.sink.sroa.gep432, %bb.n ], [ %.sink.sroa.gep433, %bb.o ], [ %.sink.sroa.gep434, %bb.q ], [ %.sink.sroa.gep435, %bb.r ], [ %.sink.sroa.gep436, %bb.t ], [ %.sink.sroa.gep437, %bb.u ], [ %.sink.sroa.gep438, %bb.w ], [ %.sink.sroa.gep439, %bb.x ], [ %.sink.sroa.gep440, %bb.z ]
  %.sink.sroa.phi441 = phi ptr [ %.sink.sroa.gep442, %bb.k ], [ %.sink.sroa.gep443, %bb.l ], [ %.sink.sroa.gep444, %bb.n ], [ %.sink.sroa.gep445, %bb.o ], [ %.sink.sroa.gep446, %bb.q ], [ %.sink.sroa.gep447, %bb.r ], [ %.sink.sroa.gep448, %bb.t ], [ %.sink.sroa.gep449, %bb.u ], [ %.sink.sroa.gep450, %bb.w ], [ %.sink.sroa.gep451, %bb.x ], [ %.sink.sroa.gep452, %bb.z ]
  %.sink.sroa.phi453 = phi ptr [ %.sink.sroa.gep454, %bb.k ], [ %.sink.sroa.gep455, %bb.l ], [ %.sink.sroa.gep456, %bb.n ], [ %.sink.sroa.gep457, %bb.o ], [ %.sink.sroa.gep458, %bb.q ], [ %.sink.sroa.gep459, %bb.r ], [ %.sink.sroa.gep460, %bb.t ], [ %.sink.sroa.gep461, %bb.u ], [ %.sink.sroa.gep462, %bb.w ], [ %.sink.sroa.gep463, %bb.x ], [ %.sink.sroa.gep464, %bb.z ]
  %.sink = phi ptr [ %i.l, %bb.k ], [ %i.k, %bb.l ], [ %i.j, %bb.n ], [ %i.i, %bb.o ], [ %i.h, %bb.q ], [ %i.g, %bb.r ], [ %i.f, %bb.t ], [ %i.e, %bb.u ], [ %i.d, %bb.w ], [ %i.c, %bb.x ], [ %i.b, %bb.z ] ; 2 uses
  store ptr @33, ptr %.sink, align 8
  store i64 1, ptr %.sink.sroa.phi, align 8
  store ptr null, ptr %.sink.sroa.phi429, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.sroa.phi441, align 8
  store i64 0, ptr %.sink.sroa.phi453, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @797) #39
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176": ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.014.6351, i64 %4 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.0100.0.val138
  %i.cu = sub nuw i64 %i.cr, %.sroa.0100.0.val138 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr nonnull readonly align 1 %.sroa.0100.0.val, i64 %.sroa.0100.0.val138, i1 false), !alias.scope !9409
  %i.cv = icmp eq ptr %i.co, %i.n
  br i1 %i.cv, label %.thread239, label %.lr.ph352

bb.aa:                                            ; preds = %bb.h
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #41
  unreachable

bb.ab:                                            ; preds = %bb.h
  resume { ptr, i32 } %i.ah
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN5alloc3str17join_generic_copy17hfa2aeb34a889be14E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(none) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 6 uses
  %i.g = alloca [48 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 6 uses
  %i.j = alloca [48 x i8], align 8                ; 6 uses
  %i.k = alloca [48 x i8], align 8                ; 6 uses
  %i.l = alloca [48 x i8], align 8                ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 8 uses
  %.idx = shl nuw nsw i64 %2, 4                   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 7 uses
  %i.o = icmp eq i64 %2, 0                        ; 2 uses
  %.sroa.0.0.idx = select i1 %i.o, i64 0, i64 16
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.0.idx ; 6 uses
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sink.sroa.gep419 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sink.sroa.gep420 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sink.sroa.gep421 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sink.sroa.gep422 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sink.sroa.gep423 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sink.sroa.gep424 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sink.sroa.gep425 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sink.sroa.gep426 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.sroa.gep427 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.sroa.gep428 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.sroa.gep430 = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sink.sroa.gep431 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sink.sroa.gep432 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sink.sroa.gep433 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sink.sroa.gep434 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sink.sroa.gep435 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sink.sroa.gep436 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sink.sroa.gep437 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sink.sroa.gep438 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.sroa.gep439 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.sroa.gep440 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.sroa.gep442 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sink.sroa.gep443 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sink.sroa.gep444 = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sink.sroa.gep445 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sink.sroa.gep446 = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sink.sroa.gep447 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sink.sroa.gep448 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sink.sroa.gep449 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sink.sroa.gep450 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.sroa.gep451 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.sroa.gep452 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.sroa.gep454 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sink.sroa.gep455 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sink.sroa.gep456 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sink.sroa.gep457 = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sink.sroa.gep458 = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sink.sroa.gep459 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sink.sroa.gep460 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sink.sroa.gep461 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sink.sroa.gep462 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sink.sroa.gep463 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sink.sroa.gep464 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br i1 %i.o, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %gepdiff = add nsw i64 %.idx, -16
  %i.p = lshr exact i64 %gepdiff, 4
  %i.q = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %4, i64 %i.p) ; 2 uses
  %i.r = extractvalue { i64, i1 } %i.q, 1
  br i1 %i.r, label %.thread, label %.lr.ph406, !prof !63

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.t, align 8
  br label %bb.d

bb.d:                                             ; preds = %.thread239, %bb.c
  ret void

.lr.ph406:                                        ; preds = %bb.b
  %i.u = extractvalue { i64, i1 } %i.q, 0
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.n
  br i1 %i.w, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph406, %bb.e
  %.sroa.01.0.i405 = phi i64 [ %i.u, %.lr.ph406 ], [ %i.z, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %1, %.lr.ph406 ], [ %i.v, %bb.e ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val9.i = load i64, ptr %i.y, align 8, !noalias !9445, !noundef !12
  %i.z = add i64 %.val9.i, %.sroa.01.0.i405       ; 6 uses
  %i.aa = icmp ult i64 %i.z, %.sroa.01.0.i405
  br i1 %i.aa, label %.thread, label %bb.e

._crit_edge:                                      ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.z, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.ab = load i64, ptr %i.a, align 8, !range !14, !noundef !12
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !31, !noundef !12 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.g, label %bb.i, !prof !17

bb.g:                                             ; preds = %._crit_edge
  %i.ag = load i64, ptr %i.af, align 8
  call void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.ae, i64 %i.ag) #39
  unreachable

.thread:                                          ; preds = %bb.f, %bb.b
  tail call void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @794, i64 noundef 53, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @796) #39
  unreachable

bb.h:                                             ; preds = %.invoke, %bb.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfb695bcf77aafcdbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #40
          to label %bb.ab unwind label %bb.aa

bb.i:                                             ; preds = %._crit_edge
  %i.ai = load ptr, ptr %i.af, align 8, !nonnull !12, !noundef !12
  %i.aj = icmp ule i64 %i.z, %i.ae
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.ae, ptr %i.m, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ai, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  store i64 0, ptr %i.al, align 8
  %.sroa.05.0.val = load ptr, ptr %1, align 8, !nonnull !12, !align !21, !noundef !12 ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 8
  %.sroa.05.0.val137 = load i64, ptr %i.am, align 8, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.05.0.val, i64 %.sroa.05.0.val137
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %.sroa.05.0.val, ptr noundef nonnull %i.an)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.ao = load i64, ptr %i.al, align 8, !noundef !12 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !12, !noundef !12
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao ; 6 uses
  %i.as = sub i64 %i.z, %i.ao                     ; 12 uses
  %i.at = icmp eq i64 %2, 1                       ; 6 uses
  switch i64 %4, label %.preheader [
    i64 0, label %.preheader304
    i64 1, label %.preheader306
    i64 2, label %.preheader308
    i64 3, label %.preheader310
    i64 4, label %.preheader312
  ]

.preheader312:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph

.preheader310:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph332

.preheader308:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph337

.preheader306:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph342

.preheader304:                                    ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph347

.preheader:                                       ; preds = %bb.j
  br i1 %i.at, label %.thread239, label %.lr.ph352

.lr.ph347:                                        ; preds = %.preheader304, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146"
  %.sroa.014.0346 = phi ptr [ %i.ax, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146" ], [ %i.ar, %.preheader304 ] ; 2 uses
  %.sroa.38.0345 = phi i64 [ %i.ay, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146" ], [ %i.as, %.preheader304 ] ; 2 uses
  %.sroa.0.0234344 = phi ptr [ %i.aw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146" ], [ %.sroa.0.0, %.preheader304 ] ; 3 uses
  %i.au = getelementptr i8, ptr %.sroa.0.0234344, i64 8
  %.sroa.090.0.val143 = load i64, ptr %i.au, align 8, !noundef !12 ; 4 uses
  %.not132 = icmp ugt i64 %.sroa.090.0.val143, %.sroa.38.0345
  br i1 %.not132, label %bb.k, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146", !prof !17

.thread239:                                       ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176", %.preheader312, %.preheader310, %.preheader308, %.preheader306, %.preheader304, %.preheader
  %.sroa.38.1 = phi i64 [ %i.bx, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164" ], [ %i.bp, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158" ], [ %i.cn, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176" ], [ %i.ay, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146" ], [ %i.bg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152" ], [ %i.as, %.preheader ], [ %i.as, %.preheader304 ], [ %i.as, %.preheader306 ], [ %i.as, %.preheader308 ], [ %i.as, %.preheader310 ], [ %i.as, %.preheader312 ], [ %i.cg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170" ]
  %i.av = sub i64 %i.z, %.sroa.38.1
  store i64 %i.av, ptr %i.al, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.d

bb.k:                                             ; preds = %.lr.ph347
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit146": ; preds = %.lr.ph347
  %.sroa.090.0.val = load ptr, ptr %.sroa.0.0234344, align 8, !nonnull !12, !align !21, !noundef !12
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.0.0234344, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.014.0346, i64 %.sroa.090.0.val143
  %i.ay = sub nuw i64 %.sroa.38.0345, %.sroa.090.0.val143 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.014.0346, ptr nonnull readonly align 1 %.sroa.090.0.val, i64 %.sroa.090.0.val143, i1 false), !alias.scope !9446
  %i.az = icmp eq ptr %i.aw, %i.n
  br i1 %i.az, label %.thread239, label %.lr.ph347

.lr.ph342:                                        ; preds = %.preheader306, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152"
  %.sroa.014.2341 = phi ptr [ %i.bf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152" ], [ %i.ar, %.preheader306 ] ; 2 uses
  %.sroa.38.2340 = phi i64 [ %i.bg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152" ], [ %i.as, %.preheader306 ] ; 2 uses
  %.sroa.0177.0339 = phi ptr [ %i.ba, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152" ], [ %.sroa.0.0, %.preheader306 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0177.0339, i64 16 ; 2 uses
  %.sroa.092.0.val = load ptr, ptr %.sroa.0177.0339, align 8, !nonnull !12, !align !21, !noundef !12
  %i.bb = getelementptr i8, ptr %.sroa.0177.0339, i64 8
  %.sroa.092.0.val142 = load i64, ptr %i.bb, align 8, !noundef !12 ; 4 uses
  %.not128 = icmp eq i64 %.sroa.38.2340, 0
  br i1 %.not128, label %bb.l, label %bb.m, !prof !17

bb.l:                                             ; preds = %.lr.ph342
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br label %.invoke

bb.m:                                             ; preds = %.lr.ph342
  %i.bc = add i64 %.sroa.38.2340, -1              ; 2 uses
  %i.bd = load i8, ptr %3, align 1, !alias.scope !9447
  store i8 %i.bd, ptr %.sroa.014.2341, align 1, !alias.scope !9447
  %.not129 = icmp ugt i64 %.sroa.092.0.val142, %i.bc
  br i1 %.not129, label %bb.n, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152", !prof !17

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit152": ; preds = %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.014.2341, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.092.0.val142
  %i.bg = sub nuw i64 %i.bc, %.sroa.092.0.val142  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr nonnull readonly align 1 %.sroa.092.0.val, i64 %.sroa.092.0.val142, i1 false), !alias.scope !9448
  %i.bh = icmp eq ptr %i.ba, %i.n
  br i1 %i.bh, label %.thread239, label %.lr.ph342

.lr.ph337:                                        ; preds = %.preheader308, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158"
  %.sroa.014.3336 = phi ptr [ %i.bo, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158" ], [ %i.ar, %.preheader308 ] ; 2 uses
  %.sroa.38.3335 = phi i64 [ %i.bp, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158" ], [ %i.as, %.preheader308 ] ; 2 uses
  %.sroa.0179.0334 = phi ptr [ %i.bi, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158" ], [ %.sroa.0.0, %.preheader308 ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0179.0334, i64 16 ; 2 uses
  %.sroa.094.0.val = load ptr, ptr %.sroa.0179.0334, align 8, !nonnull !12, !align !21, !noundef !12
  %i.bj = getelementptr i8, ptr %.sroa.0179.0334, i64 8
  %.sroa.094.0.val141 = load i64, ptr %i.bj, align 8, !noundef !12 ; 4 uses
  %i.bk = icmp ugt i64 %.sroa.38.3335, 1
  br i1 %i.bk, label %bb.p, label %bb.o, !prof !37

bb.o:                                             ; preds = %.lr.ph337
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br label %.invoke

bb.p:                                             ; preds = %.lr.ph337
  %i.bl = add i64 %.sroa.38.3335, -2              ; 2 uses
  %i.bm = load i16, ptr %3, align 1, !alias.scope !9449
  store i16 %i.bm, ptr %.sroa.014.3336, align 1, !alias.scope !9449
  %.not125 = icmp ugt i64 %.sroa.094.0.val141, %i.bl
  br i1 %.not125, label %bb.q, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158", !prof !17

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit158": ; preds = %bb.p
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.014.3336, i64 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.sroa.094.0.val141
  %i.bp = sub nuw i64 %i.bl, %.sroa.094.0.val141  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bn, ptr nonnull readonly align 1 %.sroa.094.0.val, i64 %.sroa.094.0.val141, i1 false), !alias.scope !9450
  %i.bq = icmp eq ptr %i.bi, %i.n
  br i1 %i.bq, label %.thread239, label %.lr.ph337

.lr.ph332:                                        ; preds = %.preheader310, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164"
  %.sroa.014.4331 = phi ptr [ %i.bw, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164" ], [ %i.ar, %.preheader310 ] ; 2 uses
  %.sroa.38.4330 = phi i64 [ %i.bx, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164" ], [ %i.as, %.preheader310 ] ; 2 uses
  %.sroa.0181.0329 = phi ptr [ %i.br, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164" ], [ %.sroa.0.0, %.preheader310 ] ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0181.0329, i64 16 ; 2 uses
  %.sroa.096.0.val = load ptr, ptr %.sroa.0181.0329, align 8, !nonnull !12, !align !21, !noundef !12
  %i.bs = getelementptr i8, ptr %.sroa.0181.0329, i64 8
  %.sroa.096.0.val140 = load i64, ptr %i.bs, align 8, !noundef !12 ; 4 uses
  %i.bt = icmp ugt i64 %.sroa.38.4330, 2
  br i1 %i.bt, label %bb.s, label %bb.r, !prof !37

bb.r:                                             ; preds = %.lr.ph332
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  br label %.invoke

bb.s:                                             ; preds = %.lr.ph332
  %i.bu = add i64 %.sroa.38.4330, -3              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.014.4331, ptr noundef nonnull readonly align 1 dereferenceable(3) %3, i64 3, i1 false), !alias.scope !9451
  %.not122 = icmp ugt i64 %.sroa.096.0.val140, %i.bu
  br i1 %.not122, label %bb.t, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164", !prof !17

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit164": ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.014.4331, i64 3 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.sroa.096.0.val140
  %i.bx = sub nuw i64 %i.bu, %.sroa.096.0.val140  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bv, ptr nonnull readonly align 1 %.sroa.096.0.val, i64 %.sroa.096.0.val140, i1 false), !alias.scope !9452
  %i.by = icmp eq ptr %i.br, %i.n
  br i1 %i.by, label %.thread239, label %.lr.ph332

.lr.ph:                                           ; preds = %.preheader312, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170"
  %.sroa.014.5328 = phi ptr [ %i.cf, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170" ], [ %i.ar, %.preheader312 ] ; 2 uses
  %.sroa.38.5327 = phi i64 [ %i.cg, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170" ], [ %i.as, %.preheader312 ] ; 2 uses
  %.sroa.0183.0326 = phi ptr [ %i.bz, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170" ], [ %.sroa.0.0, %.preheader312 ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0183.0326, i64 16 ; 2 uses
  %.sroa.098.0.val = load ptr, ptr %.sroa.0183.0326, align 8, !nonnull !12, !align !21, !noundef !12
  %i.ca = getelementptr i8, ptr %.sroa.0183.0326, i64 8
  %.sroa.098.0.val139 = load i64, ptr %i.ca, align 8, !noundef !12 ; 4 uses
  %i.cb = icmp ugt i64 %.sroa.38.5327, 3
  br i1 %i.cb, label %bb.v, label %bb.u, !prof !37

bb.u:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %.invoke

bb.v:                                             ; preds = %.lr.ph
  %i.cc = add i64 %.sroa.38.5327, -4              ; 2 uses
  %i.cd = load i32, ptr %3, align 1, !alias.scope !9453
  store i32 %i.cd, ptr %.sroa.014.5328, align 1, !alias.scope !9453
  %.not119 = icmp ugt i64 %.sroa.098.0.val139, %i.cc
  br i1 %.not119, label %bb.w, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170", !prof !17

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  br label %.invoke

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit170": ; preds = %bb.v
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.014.5328, i64 4 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.sroa.098.0.val139
  %i.cg = sub nuw i64 %i.cc, %.sroa.098.0.val139  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull readonly align 1 %.sroa.098.0.val, i64 %.sroa.098.0.val139, i1 false), !alias.scope !9454
  %i.ch = icmp eq ptr %i.bz, %i.n
  br i1 %i.ch, label %.thread239, label %.lr.ph

.lr.ph352:                                        ; preds = %.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176"
  %.sroa.014.6351 = phi ptr [ %i.cm, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176" ], [ %i.ar, %.preheader ] ; 3 uses
  %.sroa.38.6350 = phi i64 [ %i.cn, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176" ], [ %i.as, %.preheader ] ; 2 uses
  %.sroa.0185.0349 = phi ptr [ %i.ci, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17hf402dddb1773edd5E.exit176" ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0185.0349, i64 16 ; 2 uses
  %.sroa.0100.0.val = load ptr, ptr %.sroa.0185.0349, align 8, !nonnull !12, !align !21, !noundef !12
  %i.cj = getelementptr i8, ptr %.sroa.0185.0349, i64 8
  %.sroa.0100.0.val138 = load i64, ptr %i.cj, align 8, !noundef !12 ; 4 uses
  %.not135 = icmp ugt i64 %4, %.sroa.38.6350
end_hunk_1
