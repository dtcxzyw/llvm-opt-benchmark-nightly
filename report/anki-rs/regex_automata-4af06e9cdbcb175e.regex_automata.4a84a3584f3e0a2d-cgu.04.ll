Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.04?download=true
inline.NumInlined: 554
inline.NumDeleted: 232
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN14regex_automata3dfa5regex5Regex3new17hd96e7fd36e54d8e4E:bb.a
bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.d, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.i:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN14regex_automata3dfa5regex69Regex$LT$regex_automata..dfa..dense..DFA$LT$$RF$$u5b$u32$u5d$$GT$$GT$7builder17h39f94801a5a86c9fE"(ptr dead_on_unwind noalias noundef writable sret([576 x i8]) align 16 captures(address) dereferenceable(576) %0) unnamed_addr #1 {
bb.a:
  tail call void @_ZN14regex_automata3dfa5dense7Builder3new17h5392d71aeda98cc3E(ptr noalias noundef nonnull sret([576 x i8]) align 16 captures(address) dereferenceable(576) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN14regex_automata3dfa5regex78Regex$LT$regex_automata..dfa..sparse..DFA$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$10new_sparse17hdfe8309049cbb637E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1472 x i8]) align 16 captures(none) dereferenceable(1472) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [576 x i8], align 16              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN14regex_automata3dfa5dense7Builder3new17h5392d71aeda98cc3E(ptr noalias noundef nonnull sret([576 x i8]) align 16 captures(address) dereferenceable(576) %i.a)
  invoke void @_ZN14regex_automata3dfa5regex7Builder12build_sparse17h42ec7752e0a92f62E(ptr noalias noundef nonnull sret([1472 x i8]) align 16 captures(address) dereferenceable(1472) %0, ptr noundef nonnull align 16 %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE"(ptr noalias noundef align 16 dereferenceable(576) %i.a) #29
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !173)
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  call void @llvm.experimental.noalias.scope.decl(metadata !175)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !176)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.e = load i8, ptr %i.d, align 8, !range !11, !alias.scope !177, !noundef !5 ; 2 uses
  %i.f = icmp eq i8 %i.e, 3
  br i1 %i.f, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.g = icmp eq i8 %i.e, 2
  br i1 %i.g, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  call void @llvm.experimental.noalias.scope.decl(metadata !180)
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %i.h = load ptr, ptr %i.c, align 16, !alias.scope !182, !nonnull !5, !noundef !5
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !182
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.f, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE.exit"

bb.f:                                             ; preds = %bb.e
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE.exit" unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.l) #29
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.b, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..regex..Builder$GT$17h146bd6e8fe4abc4aE.exit": ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN14regex_automata3dfa5regex7Builder10build_many17hb0bd1c5c57578c67E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 16 captures(none) dereferenceable(1600) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i = alloca [32 x i8], align 16       ; 4 uses
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [128 x i8], align 16              ; 19 uses
  %i.c = alloca [1600 x i8], align 16             ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [128 x i8], align 16              ; 8 uses
  %i.g = alloca [128 x i8], align 16              ; 5 uses
  %i.h = alloca [576 x i8], align 16              ; 11 uses
  %i.i = alloca [800 x i8], align 16              ; 8 uses
  %.sroa.05 = alloca [464 x i8], align 16         ; 7 uses
  %i.j = alloca [800 x i8], align 16              ; 8 uses
  %i.k = alloca [800 x i8], align 16              ; 8 uses
  %.sroa.0 = alloca [464 x i8], align 16          ; 7 uses
  %i.l = alloca [800 x i8], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_ZN14regex_automata3dfa5dense7Builder10build_many17h61aecdd9dc18f2cdE(ptr noalias noundef nonnull sret([800 x i8]) align 16 captures(address) dereferenceable(800) %i.k, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef 1)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 464
  %i.n = load i64, ptr %i.m, align 16, !range !15, !noundef !5 ; 2 uses
  %i.o = icmp eq i64 %i.n, 2
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(128) %i.k, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.0, i64 128, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 2, ptr %i.p, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.ad

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(464) %i.k, i64 464, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 472
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.6.0..sroa_idx, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %i.l, ptr noundef nonnull align 16 dereferenceable(464) %.sroa.0, i64 464, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 464
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !222
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.r = load i8, ptr %i.q, align 16, !range !16, !alias.scope !224, !noalias !225, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.t = load i8, ptr %i.s, align 8, !range !11, !alias.scope !224, !noalias !225, !noundef !5 ; 3 uses
  %.not16.i.i = icmp eq i8 %i.t, 3
  br i1 %.not16.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %.not.i.i.i = icmp eq i8 %i.t, 2
  br i1 %.not.i.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.v = load ptr, ptr %i.u, align 16, !alias.scope !228, !noalias !229, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !230
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i"

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i": ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !228, !noalias !229, !nonnull !5, !align !17, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ab = load i64, ptr %i.aa, align 16, !alias.scope !228, !noalias !229, !noundef !5
  br label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"

"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i", %bb.d, %bb.c
  %.sroa.534.0.i.i = phi i64 [ %i.ab, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.4.037.i.i = phi ptr [ %i.z, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.0.036.i.i = phi ptr [ %i.v, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i" ], [ undef, %bb.d ], [ undef, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 113
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 119
  %i.ae = load i8, ptr %i.ad, align 1, !range !11, !alias.scope !224, !noalias !225, !noundef !5
  %i.af = load <4 x i8>, ptr %i.ac, align 1, !alias.scope !224, !noalias !225
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 117
  %i.ah = load i8, ptr %i.ag, align 1, !range !16, !alias.scope !224, !noalias !225, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %i.ai = load i128, ptr %1, align 16, !range !18, !alias.scope !224, !noalias !225, !noundef !5
  %i.aj = trunc nuw i128 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %"_ZN73_$LT$regex_automata..dfa..dense..Config$u20$as$u20$core..clone..Clone$GT$5clone17h9738da9b89c4a1fbE.exit.i"

bb.g:                                             ; preds = %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i, i64 32, i1 false), !noalias !225
  br label %"_ZN73_$LT$regex_automata..dfa..dense..Config$u20$as$u20$core..clone..Clone$GT$5clone17h9738da9b89c4a1fbE.exit.i"

"_ZN73_$LT$regex_automata..dfa..dense..Config$u20$as$u20$core..clone..Clone$GT$5clone17h9738da9b89c4a1fbE.exit.i": ; preds = %bb.g, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i"
  %.sroa.07.0.i.i = phi i128 [ 1, %bb.g ], [ 0, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i" ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 118
  %i.al = load i8, ptr %i.ak, align 2, !range !16, !alias.scope !224, !noalias !225, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i64, ptr %i.am, align 16, !range !15, !alias.scope !224, !noalias !225, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val30.i.i = load i64, ptr %i.ao, align 8, !alias.scope !224, !noalias !225
  %i.ap = and i64 %i.an, 1
  %i.aq = icmp eq i64 %i.ap, 0
  %.sroa.512.0.i.i = select i1 %i.aq, i64 undef, i64 %.val30.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.as = load i64, ptr %i.ar, align 16, !range !15, !alias.scope !224, !noalias !225, !noundef !5 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val28.i.i = load i64, ptr %i.at, align 8, !alias.scope !224, !noalias !225
  %i.au = and i64 %i.as, 1
  %i.av = icmp eq i64 %i.au, 0
  %.sroa.514.0.i.i = select i1 %i.av, i64 undef, i64 %.val28.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i8 %i.r, ptr %i.aw, align 16, !alias.scope !223, !noalias !231
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.0.036.i.i, ptr %i.ax, align 16, !alias.scope !223, !noalias !231
  %.sroa.4.0..sroa_idx33.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr %.sroa.4.037.i.i, ptr %.sroa.4.0..sroa_idx33.i.i, align 8, !alias.scope !223, !noalias !231
  %.sroa.534.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i64 %.sroa.534.0.i.i, ptr %.sroa.534.0..sroa_idx.i.i, align 16, !alias.scope !223, !noalias !231
  %.sroa.6.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i8 %i.t, ptr %.sroa.6.0..sroa_idx35.i.i, align 8, !alias.scope !223, !noalias !231
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 113
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 119
  store i8 %i.ae, ptr %i.az, align 1, !alias.scope !223, !noalias !231
  store <4 x i8> %i.af, ptr %i.ay, align 1, !alias.scope !223, !noalias !231
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 117
  store i8 %i.ah, ptr %i.ba, align 1, !alias.scope !223, !noalias !231
  store i128 %.sroa.07.0.i.i, ptr %i.b, align 16, !alias.scope !223, !noalias !231
  %.sroa.5.0..sroa_idx9.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx9.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i, i64 32, i1 false), !noalias !231
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 118
  store i8 %i.al, ptr %i.bb, align 2, !alias.scope !223, !noalias !231
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.an, ptr %i.bc, align 16, !alias.scope !223, !noalias !231
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.512.0.i.i, ptr %i.bd, align 8, !alias.scope !223, !noalias !231
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.as, ptr %i.be, align 16, !alias.scope !223, !noalias !231
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %.sroa.514.0.i.i, ptr %i.bf, align 8, !alias.scope !223, !noalias !231
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke fastcc void @"_ZN88_$LT$regex_automata..nfa..thompson..compiler..Compiler$u20$as$u20$core..clone..Clone$GT$5clone17h0e3660579c9c1c77E"(ptr noalias noundef align 8 captures(address) dereferenceable(448) %i.a, ptr noundef nonnull align 8 %i.bg)
          to label %bb.k unwind label %bb.h, !noalias !222

bb.h:                                             ; preds = %"_ZN73_$LT$regex_automata..dfa..dense..Config$u20$as$u20$core..clone..Clone$GT$5clone17h9738da9b89c4a1fbE.exit.i"
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E"(ptr noalias noundef align 16 dereferenceable(128) %i.b) #29
          to label %.body unwind label %bb.i, !noalias !222

bb.i:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !222
  unreachable

.body:                                            ; preds = %bb.u, %bb.h, %bb.j, %.body29, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bp, %bb.l ], [ %eh.lpad-body30, %.body29 ], [ %i.bh, %bb.h ], [ %i.bj, %bb.j ], [ %i.cj, %bb.u ]
  invoke void @"_ZN4core3ptr86drop_in_place$LT$regex_automata..dfa..dense..DFA$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h10e157bde6aa6200E"(ptr noalias noundef nonnull align 16 dereferenceable(800) %i.l) #29
          to label %bb.af unwind label %bb.ae

bb.j:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i"
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %"_ZN73_$LT$regex_automata..dfa..dense..Config$u20$as$u20$core..clone..Clone$GT$5clone17h9738da9b89c4a1fbE.exit.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) %i.h, ptr noundef nonnull align 16 dereferenceable(128) %i.b, i64 128, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.h, i64 128 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.bk, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !222
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i8 3, ptr %.sroa.3.0..sroa_idx, align 8
  store i128 0, ptr %i.f, align 16
  store <8 x i8> <i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 3>, ptr %i.bl, align 16
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 2, ptr %i.bm, align 16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 2, ptr %i.bn, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 2, ptr %i.bo, align 8
  invoke void @_ZN14regex_automata3dfa5dense6Config9prefilter17h51f349276c3872fcE(ptr noalias noundef nonnull sret([128 x i8]) align 16 captures(address) dereferenceable(128) %i.g, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE"(ptr noalias noundef align 16 dereferenceable(576) %i.h) #29
          to label %.body unwind label %bb.ae

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 118
  store i8 0, ptr %i.bq, align 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 119
  store i8 2, ptr %i.br, align 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 114
  store i8 0, ptr %i.bs, align 2
  %i.bt = invoke noundef align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5dense7Builder9configure17h117425fae8042646E(ptr noalias noundef nonnull align 16 dereferenceable(576) %i.h, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(128) %i.g)
          to label %bb.n unwind label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i64 2, ptr %i.d, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.bv, align 8
  store <4 x i8> <i8 2, i8 1, i8 2, i8 3>, ptr %i.bu, align 2
  %i.bw = invoke noundef align 16 dereferenceable(576) ptr @_ZN14regex_automata3dfa5dense7Builder8thompson17hbac640fd8e60c4bdE(ptr noalias noundef nonnull align 16 dereferenceable(576) %i.bt, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.o unwind label %bb.l

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN14regex_automata3dfa5dense7Builder10build_many17h61aecdd9dc18f2cdE(ptr noalias noundef nonnull sret([800 x i8]) align 16 captures(address) dereferenceable(800) %i.i, ptr noundef nonnull align 16 %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef 1)
          to label %bb.p unwind label %bb.l

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 464
  %i.by = load i64, ptr %i.bx, align 16, !range !15, !noundef !5 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 2
  br i1 %i.bz, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.05, ptr noundef nonnull align 16 dereferenceable(128) %i.i, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %0, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.05, i64 128, i1 false)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 2, ptr %i.ca, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  call void @llvm.experimental.noalias.scope.decl(metadata !233)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.cd = load i8, ptr %i.cc, align 8, !range !11, !alias.scope !235, !noundef !5 ; 2 uses
  %i.ce = icmp eq i8 %i.cd, 3
  br i1 %i.ce, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i", label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %i.cf = icmp eq i8 %i.cd, 2
  br i1 %i.cf, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !237)
  call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.experimental.noalias.scope.decl(metadata !239)
  %i.cg = load ptr, ptr %i.cb, align 16, !alias.scope !240, !nonnull !5, !noundef !5
  %i.ch = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !240
  %i.ci = icmp eq i64 %i.ch, 1
  br i1 %i.ci, label %bb.t, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i"

bb.t:                                             ; preds = %bb.s
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cb)
          to label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i" unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.bk) #29
          to label %.body unwind label %bb.v

"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i": ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.bk)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit" unwind label %bb.j

bb.v:                                             ; preds = %bb.u
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.w:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %.sroa.05, ptr noundef nonnull align 16 dereferenceable(464) %i.i, i64 464, i1 false)
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 472
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %.sroa.513.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(328) %.sroa.622.0..sroa_idx, i64 328, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(464) %i.j, ptr noundef nonnull align 16 dereferenceable(464) %.sroa.05, i64 464, i1 false)
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 464
  store i64 %i.by, ptr %.sroa.412.0..sroa_idx, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.cl = getelementptr inbounds nuw i8, ptr %i.h, i64 80 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.h, i64 104
  %i.cn = load i8, ptr %i.cm, align 8, !range !11, !alias.scope !244, !noundef !5 ; 2 uses
  %i.co = icmp eq i8 %i.cn, 3
  br i1 %i.co, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i28", label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  %i.cp = icmp eq i8 %i.cn, 2
  br i1 %i.cp, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i28", label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !246)
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.cq = load ptr, ptr %i.cl, align 16, !alias.scope !249, !nonnull !5, !noundef !5
  %i.cr = atomicrmw sub ptr %i.cq, i64 1 release, align 8, !noalias !249
  %i.cs = icmp eq i64 %i.cr, 1
  br i1 %i.cs, label %bb.z, label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i28"

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.cl)
          to label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i28" unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.bk) #29
          to label %.body29 unwind label %bb.ab

"_ZN4core3ptr55drop_in_place$LT$regex_automata..dfa..dense..Config$GT$17h4ed21ee66aab7119E.exit.i28": ; preds = %bb.z, %bb.y, %bb.x, %bb.w
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.bk)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..dfa..dense..Builder$GT$17h10e92472824f533bE.exit31" unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
end_hunk_0
begin_hunk_1_@_ZN14regex_automata6hybrid3dfa7Builder14build_from_nfa17h2ade6d8da2a3fecaE:bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1290)
  call void @llvm.experimental.noalias.scope.decl(metadata !1291)
  call void @llvm.experimental.noalias.scope.decl(metadata !1292)
  %i.av = load ptr, ptr %i.f, align 8, !alias.scope !1293, !nonnull !5, !noundef !5
  %i.aw = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !1293
  %i.ax = icmp eq i64 %i.aw, 1
  br i1 %i.ax, label %bb.g, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17hfaf8ff2b45fdc2feE.exit"

bb.g:                                             ; preds = %bb.f
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4d593ceb2c0bc2d6E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17hfaf8ff2b45fdc2feE.exit" unwind label %bb.z

.loopexit80:                                      ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i.preheader.1, %_ZN14regex_automata4util8alphabet7ByteSet14contains_range17hdee24ce7497e20fdE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1284
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775798, ptr %i.ay, align 16
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 ptrtoint (ptr @65 to i64), ptr %.sroa.217.0..sroa_idx, align 8
  %.sroa.217.sroa.2.0..sroa.217.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 177, ptr %.sroa.217.sroa.2.0..sroa.217.0..sroa_idx.sroa_idx, align 16
  store i128 2, ptr %0, align 16
  br label %bb.q

.loopexit:                                        ; preds = %.preheader.i, %_ZN14regex_automata4util8alphabet7ByteSet14contains_range17hdee24ce7497e20fdE.exit.i, %bb.d
  %.sroa.855.16.copyload56 = load i64, ptr %i.b, align 16, !noalias !1283 ; 2 uses
  %.sroa.11.16..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.16..sroa_idx57, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1284
  store i64 %.sroa.855.16.copyload56, ptr %i.e, align 16
  %.sroa.374.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.374.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0, i64 24, i1 false)
  %i.az = getelementptr i8, ptr %1, i64 130       ; 2 uses
  %.val45 = load i8, ptr %i.az, align 2, !range !16, !noundef !5
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa6Config21byte_classes_from_nfa17he9a3a44425ade353E(ptr noalias noundef align 1 captures(address) dereferenceable(256) %i.d, i8 %.val45, ptr nonnull %2, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.e)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %.loopexit
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 129 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !range !16, !noundef !5
  %i.bc = and i8 %i.bb, 1
  %.sroa.06.0.not = icmp eq i8 %i.bc, 0
  %.val48 = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 255
  %.val49 = load i8, ptr %i.bd, align 1, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %.val48, i64 336
  %i.bf = load i64, ptr %i.be, align 16, !noundef !5 ; 2 uses
  br i1 %.sroa.06.0.not, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.k, %bb.h
  %.sroa.0.0.i = phi i64 [ %i.bq, %bb.k ], [ 24, %bb.h ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bg = invoke { ptr, i64 } @_ZN14regex_automata4util11determinize5state5State4dead17h59a8e2fd8424bc33E()
          to label %.noexc51 unwind label %bb.f   ; 2 uses

.noexc51:                                         ; preds = %bb.i
  %i.bh = extractvalue { ptr, i64 } %i.bg, 0      ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bg, 1      ; 2 uses
  store ptr %i.bh, ptr %i.a, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bi, ptr %i.bj, align 8
  %i.bk = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !1294
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.noexc51
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h8b8c19407ee8f9c0E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.l unwind label %bb.f

bb.k:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %.val48, i64 360
  %i.bn = load i64, ptr %i.bm, align 8, !noundef !5 ; 2 uses
  %i.bo = icmp ult i64 %i.bn, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = mul i64 %i.bn, 24
  %i.bq = add i64 %i.bp, 24
  br label %bb.i

bb.l:                                             ; preds = %.noexc51, %bb.j
  %i.br = zext i8 %.val49 to i64
  %i.bs = add nuw nsw i64 %i.br, 1
  %i.bt = call range(i64 55, 65) i64 @llvm.ctlz.i64(i64 %i.bs, i1 true)
  %i.bu = sub nuw nsw i64 64, %i.bt               ; 2 uses
  %i.bv = shl nuw nsw i64 20, %i.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bw = getelementptr inbounds nuw i8, ptr %.val48, i64 360
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 2 uses
  %i.by = icmp ult i64 %i.bx, 2305843009213693952
  call void @llvm.assume(i1 %i.by)
  %i.bz = shl nuw nsw i64 %i.bx, 2
  %i.ca = mul i64 %i.bf, 5
  %i.cb = add i64 %i.ca, 9
  %i.cc = add i64 %i.cb, %i.bz                    ; 2 uses
  %i.cd = mul i64 %i.bi, 3
  %i.ce = shl i64 %i.cc, 1
  %reass.mul.i = mul i64 %i.bf, 12
  %i.cf = add i64 %reass.mul.i, 180
  %i.cg = add i64 %i.cf, %i.bv
  %i.ch = add i64 %i.cg, %.sroa.0.0.i
  %i.ci = add i64 %i.ch, %i.cd
  %i.cj = add i64 %i.ci, %i.cc
  %i.ck = add i64 %i.cj, %i.ce                    ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 16, !range !9, !noundef !5
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cp = load i64, ptr %i.co, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %.sroa.07.0 = phi i64 [ %i.cp, %bb.m ], [ 2097152, %bb.l ] ; 3 uses
  %i.cq = icmp ult i64 %.sroa.07.0, %i.ck
  br i1 %i.cq, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.cs = load i8, ptr %i.cr, align 1, !range !16, !noundef !5
  %i.ct = icmp eq i8 %i.cs, 1
  br i1 %i.ct, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -9223372036854775800, ptr %i.cu, align 16
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ck, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.07.0, ptr %.sroa.532.0..sroa_idx, align 16
  store i128 2, ptr %0, align 16
  %.pre = load ptr, ptr %i.f, align 8, !alias.scope !1295
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.loopexit80
  %i.cv = phi ptr [ %.pre, %bb.p ], [ %2, %.loopexit80 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !1296)
  call void @llvm.experimental.noalias.scope.decl(metadata !1297)
  call void @llvm.experimental.noalias.scope.decl(metadata !1298)
  %i.cw = atomicrmw sub ptr %i.cv, i64 1 release, align 8, !noalias !1295
  %i.cx = icmp eq i64 %i.cw, 1
  br i1 %i.cx, label %bb.r, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17hfaf8ff2b45fdc2feE.exit53"

bb.r:                                             ; preds = %bb.q
  fence acquire
  call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h4d593ceb2c0bc2d6E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17hfaf8ff2b45fdc2feE.exit53"

bb.s:                                             ; preds = %bb.n, %bb.o
  %.sroa.07.1 = phi i64 [ %.sroa.07.0, %bb.n ], [ %i.ck, %bb.o ]
  %i.cy = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 384
  invoke void @_ZN14regex_automata4util5start12StartByteMap3new17h9d18e3246e3a31c7E(ptr noalias noundef nonnull sret([256 x i8]) align 1 captures(address) dereferenceable(256) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.cz)
          to label %bb.t unwind label %bb.f

bb.t:                                             ; preds = %bb.s
  call void @llvm.experimental.noalias.scope.decl(metadata !1299)
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.db = load i8, ptr %i.da, align 16, !range !16, !alias.scope !1299, !noalias !1300, !noundef !5
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.dd = load i8, ptr %i.dc, align 8, !range !11, !alias.scope !1299, !noalias !1300, !noundef !5 ; 3 uses
  %.not16.i = icmp eq i8 %i.dd, 3
  br i1 %.not16.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1301)
  %.not.i.i = icmp eq i8 %i.dd, 2
  br i1 %.not.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !1302)
  %i.df = load ptr, ptr %i.de, align 16, !alias.scope !1303, !noalias !1304, !nonnull !5, !noundef !5 ; 2 uses
  %i.dg = atomicrmw add ptr %i.df, i64 1 monotonic, align 8, !noalias !1305
  %i.dh = icmp slt i64 %i.dg, 0
  br i1 %i.dh, label %bb.w, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i"

bb.w:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i": ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !1303, !noalias !1304, !nonnull !5, !align !17, !noundef !5
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.dl = load i64, ptr %i.dk, align 16, !alias.scope !1303, !noalias !1304, !noundef !5
  br label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i"

"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i", %bb.u, %bb.t
  %.sroa.532.0.i = phi i64 [ %i.dl, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i" ], [ undef, %bb.u ], [ undef, %bb.t ]
  %.sroa.4.035.i = phi ptr [ %i.dj, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i" ], [ undef, %bb.u ], [ undef, %bb.t ]
  %.sroa.0.034.i = phi ptr [ %i.df, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i" ], [ undef, %bb.u ], [ undef, %bb.t ]
  %i.dm = load i8, ptr %i.ba, align 1, !range !16, !alias.scope !1299, !noalias !1300, !noundef !5
  %i.dn = load i8, ptr %i.az, align 2, !range !16, !alias.scope !1299, !noalias !1300, !noundef !5
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.dp = load i8, ptr %i.do, align 1, !range !16, !alias.scope !1299, !noalias !1300, !noundef !5
  %i.dq = load i128, ptr %1, align 16, !range !18, !alias.scope !1299, !noalias !1300, !noundef !5
  %i.dr = trunc nuw i128 %i.dq to i1
  br i1 %i.dr, label %bb.x, label %bb.y

bb.x:                                             ; preds = %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i"
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i, i64 32, i1 false)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i"
  %.sroa.04.0.i = phi i128 [ 1, %bb.x ], [ 0, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i" ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.dt = load i8, ptr %i.ds, align 4, !range !16, !alias.scope !1299, !noalias !1300, !noundef !5
  %i.du = load i64, ptr %i.cl, align 16, !range !9, !alias.scope !1299, !noalias !1300, !noundef !5 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dw = load i64, ptr %i.dv, align 8, !alias.scope !1299, !noalias !1300
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.dy = load i8, ptr %i.dx, align 1, !range !16, !alias.scope !1299, !noalias !1300, !noundef !5
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ea = load i64, ptr %i.dz, align 16, !range !15, !alias.scope !1299, !noalias !1300, !noundef !5 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val28.i = load i64, ptr %i.eb, align 8, !alias.scope !1299, !noalias !1300
  %i.ec = and i64 %i.ea, 1
  %i.ed = icmp eq i64 %i.ec, 0
  %.sroa.512.0.i = select i1 %i.ed, i64 undef, i64 %.val28.i
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ef = load i64, ptr %i.ee, align 16, !range !15, !alias.scope !1299, !noalias !1300, !noundef !5 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val26.i = load i64, ptr %i.eg, align 8, !alias.scope !1299, !noalias !1300
  %i.eh = and i64 %i.ef, 1
  %i.ei = icmp eq i64 %i.eh, 0
  %.sroa.514.0.i = select i1 %i.ei, i64 undef, i64 %.val26.i
  %i.ej = trunc nuw i64 %i.du to i1
  %.sroa.59.0.i = select i1 %i.ej, i64 %i.dw, i64 undef
  %i.ek = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5
  %.sroa.010.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %.sroa.010.sroa.23.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(256) %i.c, i64 256, i1 false)
  %.sroa.010.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %.sroa.010.sroa.24.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(256) %i.d, i64 256, i1 false)
  %.sroa.010.sroa.25.sroa.4.0..sroa.010.sroa.25.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.010.sroa.25.sroa.4.0..sroa.010.sroa.25.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.11.sroa.0, i64 24, i1 false)
  store i128 %.sroa.04.0.i, ptr %0, align 16
  %.sroa.010.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.010.sroa.4.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i, i64 32, i1 false)
  %.sroa.010.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.du, ptr %.sroa.010.sroa.5.0..sroa_idx, align 16
  %.sroa.010.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.59.0.i, ptr %.sroa.010.sroa.6.0..sroa_idx, align 8
  %.sroa.010.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.ea, ptr %.sroa.010.sroa.7.0..sroa_idx, align 16
  %.sroa.010.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %.sroa.512.0.i, ptr %.sroa.010.sroa.8.0..sroa_idx, align 8
  %.sroa.010.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %i.ef, ptr %.sroa.010.sroa.9.0..sroa_idx, align 16
  %.sroa.010.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.514.0.i, ptr %.sroa.010.sroa.10.0..sroa_idx, align 8
  %.sroa.010.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %.sroa.0.034.i, ptr %.sroa.010.sroa.11.0..sroa_idx, align 16
  %.sroa.010.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.4.035.i, ptr %.sroa.010.sroa.12.0..sroa_idx, align 8
  %.sroa.010.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %.sroa.532.0.i, ptr %.sroa.010.sroa.13.0..sroa_idx, align 16
  %.sroa.010.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %i.dd, ptr %.sroa.010.sroa.14.0..sroa_idx, align 8
  %.sroa.010.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %i.db, ptr %.sroa.010.sroa.16.0..sroa_idx, align 16
  %.sroa.010.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 129
  store i8 %i.dm, ptr %.sroa.010.sroa.17.0..sroa_idx, align 1
  %.sroa.010.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 130
  store i8 %i.dn, ptr %.sroa.010.sroa.18.0..sroa_idx, align 2
  %.sroa.010.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 131
  store i8 %i.dp, ptr %.sroa.010.sroa.19.0..sroa_idx, align 1
  %.sroa.010.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 %i.dt, ptr %.sroa.010.sroa.20.0..sroa_idx, align 4
  %.sroa.010.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 %i.dy, ptr %.sroa.010.sroa.21.0..sroa_idx, align 1
  %.sroa.010.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 656
  store i64 %.sroa.855.16.copyload56, ptr %.sroa.010.sroa.25.0..sroa_idx, align 16
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 688
  store ptr %i.ek, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.811.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 696
  store i64 %i.bu, ptr %.sroa.811.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 704
  store i64 %.sroa.07.1, ptr %.sroa.9.0..sroa_idx, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17hfaf8ff2b45fdc2feE.exit53"

"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17hfaf8ff2b45fdc2feE.exit53": ; preds = %bb.r, %bb.q, %bb.y
  ret void

bb.z:                                             ; preds = %bb.g
  %i.el = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

"_ZN4core3ptr60drop_in_place$LT$regex_automata..nfa..thompson..nfa..NFA$GT$17hfaf8ff2b45fdc2feE.exit": ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.au
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa7Builder3new17h5e9fc2b14388f33dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([592 x i8]) align 16 captures(none) dereferenceable(592) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 3, ptr %.sroa.3.0..sroa_idx, align 8
  store <4 x i8> splat (i8 2), ptr %i.c, align 16
  store i128 0, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 2, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.e, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 133
  store i8 2, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 2, ptr %i.g, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 2, ptr %i.h, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E"(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.b) #29
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.j, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid3dfa7Builder5build17hf821894a685b461aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([720 x i8]) align 16 captures(none) dereferenceable(720) %0, ptr nofree noundef nonnull align 16 captures(address, read_provenance) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call fastcc void @_ZN14regex_automata6hybrid3dfa7Builder10build_many17h9e266dea655a01b7E(ptr noalias noundef align 16 captures(address) dereferenceable(720) %0, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 16 dereferenceable(592) ptr @_ZN14regex_automata6hybrid3dfa7Builder6syntax17h7ad7eacd9894e4faE(ptr noalias noundef returned align 16 dereferenceable(592) %0, ptr noalias nofree noundef readonly align 4 captures(address) dead_on_return dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef align 8 dereferenceable(448) ptr @_ZN14regex_automata3nfa8thompson8compiler8Compiler6syntax17h361a82b660289433E(ptr noalias noundef nonnull align 8 dereferenceable(448) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 16 dereferenceable(592) ptr @_ZN14regex_automata6hybrid3dfa7Builder8thompson17h7571b9079509fde3E(ptr noalias noundef returned align 16 dereferenceable(592) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = tail call noundef align 8 dereferenceable(448) ptr @_ZN14regex_automata3nfa8thompson8compiler8Compiler9configure17hbfe5f8191d8e0e14E(ptr noalias noundef nonnull align 8 dereferenceable(448) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 16 dereferenceable(592) ptr @_ZN14regex_automata6hybrid3dfa7Builder9configure17hd82b1a2a9ca26354E(ptr noalias noundef returned align 16 dereferenceable(592) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(144) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3.i = alloca [32 x i8], align 16         ; 4 uses
  %.sroa.8.i = alloca [7 x i8], align 1           ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.b = load i8, ptr %i.a, align 16, !range !16, !alias.scope !1336, !noalias !1337, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.d = load i8, ptr %i.c, align 16, !range !16, !alias.scope !1335, !noalias !1338, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.042.0.copyload.i = load ptr, ptr %i.e, align 16, !alias.scope !1336, !noalias !1337
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1336, !noalias !1337
  %.sroa.543.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.543.0.copyload.i = load i64, ptr %.sroa.543.0..sroa_idx.i, align 16, !alias.scope !1336, !noalias !1337
  %.sroa.644.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.644.0.copyload.i = load i8, ptr %.sroa.644.0..sroa_idx.i, align 8, !alias.scope !1336, !noalias !1337 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1339)
  %.not.i.i = icmp eq i8 %.sroa.644.0.copyload.i, 3
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.845.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.8.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.845.0..sroa_idx.i, i64 7, i1 false)
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h1a25c050560a680aE.exit.i"

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1340)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.g = load i8, ptr %i.f, align 8, !range !11, !alias.scope !1341, !noalias !1342, !noundef !5 ; 3 uses
  %.not.i.i.i = icmp eq i8 %i.g, 3
  br i1 %.not.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h1a25c050560a680aE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1343)
  %.not.i.i.i.i = icmp eq i8 %i.g, 2
  br i1 %.not.i.i.i.i, label %"_ZN4core6option15Option$LT$T$GT$7or_else17h1a25c050560a680aE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1344)
  %i.i = load ptr, ptr %i.h, align 16, !alias.scope !1345, !noalias !1346, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = atomicrmw add ptr %i.i, i64 1 monotonic, align 8, !noalias !1347
  %i.k = icmp slt i64 %i.j, 0
  br i1 %i.k, label %bb.f, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i": ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !1345, !noalias !1346, !nonnull !5, !align !17, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.o = load i64, ptr %i.n, align 16, !alias.scope !1345, !noalias !1346, !noundef !5
  br label %"_ZN4core6option15Option$LT$T$GT$7or_else17h1a25c050560a680aE.exit.i"

"_ZN4core6option15Option$LT$T$GT$7or_else17h1a25c050560a680aE.exit.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i", %bb.d, %bb.c, %bb.b
  %.sroa.7.0.i = phi i8 [ %.sroa.644.0.copyload.i, %bb.b ], [ 2, %bb.d ], [ %i.g, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ 3, %bb.c ] ; 2 uses
  %.sroa.6.1.i = phi i64 [ %.sroa.543.0.copyload.i, %bb.b ], [ undef, %bb.d ], [ %i.o, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.c ] ; 2 uses
  %.sroa.534.1.i = phi ptr [ %.sroa.4.0.copyload.i, %bb.b ], [ undef, %bb.d ], [ %i.m, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.c ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %.sroa.042.0.copyload.i, %bb.b ], [ undef, %bb.d ], [ %i.i, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.c ] ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN14regex_automata6hybrid5regex5Regex7builder17hab2804bd0bf12a41E:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 2, ptr %i.e, align 4, !noalias !1433
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.f, align 16, !noalias !1433
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 133
  store i8 2, ptr %i.g, align 1, !noalias !1433
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 2, ptr %i.h, align 16, !noalias !1433
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 2, ptr %i.i, align 16, !noalias !1433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1433
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a)
          to label %_ZN14regex_automata6hybrid5regex7Builder3new17h959c918de8fddf1bE.exit unwind label %bb.b, !noalias !1433

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E"(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.b) #29
          to label %bb.d unwind label %bb.c, !noalias !1433

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1433
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_ZN14regex_automata6hybrid5regex7Builder3new17h959c918de8fddf1bE.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !1434
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.l, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false), !noalias !1434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1433
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %0, ptr noundef nonnull align 16 dereferenceable(592) %i.c, i64 592, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 16 dereferenceable(592) ptr @_ZN14regex_automata6hybrid5regex7Builder3dfa17h61258567c7bde1fcE(ptr noalias noundef returned align 16 dereferenceable(592) %0, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(144) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef align 16 dereferenceable(592) ptr @_ZN14regex_automata6hybrid3dfa7Builder9configure17hd82b1a2a9ca26354E(ptr noalias noundef nonnull align 16 dereferenceable(592) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %1) ; 0 uses
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid5regex7Builder3new17h959c918de8fddf1bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([592 x i8]) align 16 captures(none) dereferenceable(592) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 12 uses
  %i.c = alloca [592 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1439
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 3, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !1439
  store <4 x i8> splat (i8 2), ptr %i.d, align 16, !noalias !1439
  store i128 0, ptr %i.b, align 16, !noalias !1439
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 2, ptr %i.e, align 4, !noalias !1439
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 0, ptr %i.f, align 16, !noalias !1439
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 133
  store i8 2, ptr %i.g, align 1, !noalias !1439
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 2, ptr %i.h, align 16, !noalias !1439
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 2, ptr %i.i, align 16, !noalias !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1439
  invoke void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr noalias noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.a)
          to label %_ZN14regex_automata6hybrid3dfa3DFA7builder17h8eaa2a98563530d1E.exit unwind label %bb.b, !noalias !1439

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E"(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.b) #29
          to label %bb.d unwind label %bb.c, !noalias !1439

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1439
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.j

_ZN14regex_automata6hybrid3dfa3DFA7builder17h8eaa2a98563530d1E.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.l, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1439
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1439
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %0, ptr noundef nonnull align 16 dereferenceable(592) %i.c, i64 592, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata6hybrid5regex7Builder5build17h52edfb58316f8744E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1440 x i8]) align 16 captures(none) dereferenceable(1440) %0, ptr nofree noundef nonnull align 16 captures(address, read_provenance) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.5.i.i.i = alloca [32 x i8], align 16     ; 4 uses
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 22 uses
  %i.c = alloca [1440 x i8], align 16             ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [144 x i8], align 16              ; 11 uses
  %i.f = alloca [592 x i8], align 16              ; 12 uses
  %i.g = alloca [720 x i8], align 16              ; 7 uses
  %.sroa.67.i = alloca [128 x i8], align 16       ; 6 uses
  %i.h = alloca [720 x i8], align 16              ; 8 uses
  %i.i = alloca [720 x i8], align 16              ; 7 uses
  %.sroa.6.i = alloca [128 x i8], align 16        ; 6 uses
  %i.j = alloca [720 x i8], align 16              ; 11 uses
  %i.k = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %2, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %3, ptr %i.l, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1513
  call fastcc void @_ZN14regex_automata6hybrid3dfa7Builder10build_many17h9e266dea655a01b7E(ptr noalias noundef align 16 captures(address) dereferenceable(720) %i.i, ptr noundef nonnull align 16 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k)
  %i.m = load i128, ptr %i.i, align 16, !range !1514, !noalias !1513, !noundef !5 ; 2 uses
  %i.n = icmp eq i128 %i.m, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.6.i, ptr noundef nonnull align 16 dereferenceable(128) %i.o, i64 128, i1 false), !noalias !1513
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1513
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.p, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.6.i, i64 128, i1 false), !noalias !1515
  store i128 2, ptr %0, align 16, !alias.scope !1512, !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  br label %_ZN14regex_automata6hybrid5regex7Builder10build_many17he0068abc0597de2dE.exit

bb.c:                                             ; preds = %bb.a
  %.sroa.616.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) %.sroa.5.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(576) %.sroa.616.0..sroa_idx.i, i64 576, i1 false), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1513
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.6.i, i64 128, i1 false), !noalias !1513
  store i128 %i.m, ptr %i.j, align 16, !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1516
  call void @llvm.experimental.noalias.scope.decl(metadata !1517)
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = load i8, ptr %i.q, align 16, !range !16, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.t = load i8, ptr %i.s, align 8, !range !11, !alias.scope !1518, !noalias !1519, !noundef !5 ; 3 uses
  %.not16.i.i.i = icmp eq i8 %i.t, 3
  br i1 %.not16.i.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !1520)
  %.not.i.i.i.i = icmp eq i8 %i.t, 2
  br i1 %.not.i.i.i.i, label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.v = load ptr, ptr %i.u, align 16, !alias.scope !1522, !noalias !1523, !nonnull !5, !noundef !5 ; 2 uses
  %i.w = atomicrmw add ptr %i.v, i64 1 monotonic, align 8, !noalias !1524
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %bb.f, label %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i"

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i": ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !1522, !noalias !1523, !nonnull !5, !align !17, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ab = load i64, ptr %i.aa, align 16, !alias.scope !1522, !noalias !1523, !noundef !5
  br label %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i.i"

"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i.i": ; preds = %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i", %bb.d, %bb.c
  %.sroa.532.0.i.i.i = phi i64 [ %i.ab, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.4.035.i.i.i = phi ptr [ %i.z, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.d ], [ undef, %bb.c ]
  %.sroa.0.034.i.i.i = phi ptr [ %i.v, %"_ZN81_$LT$regex_automata..util..prefilter..Prefilter$u20$as$u20$core..clone..Clone$GT$5clone17ha7cc727fcc2241d9E.exit.i.i.i.i" ], [ undef, %bb.d ], [ undef, %bb.c ]
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 129
  %i.ad = load i8, ptr %i.ac, align 1, !range !16, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 130
  %i.af = load i8, ptr %i.ae, align 2, !range !16, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 131
  %i.ah = load i8, ptr %i.ag, align 1, !range !16, !alias.scope !1518, !noalias !1519, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.ai = load i128, ptr %1, align 16, !range !18, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.aj = trunc nuw i128 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %"_ZN74_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..clone..Clone$GT$5clone17h687ede97c0feea8eE.exit.i.i"

bb.g:                                             ; preds = %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i.i"
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %.sroa.5.0..sroa_idx.i.i.i, i64 32, i1 false), !noalias !1519
  br label %"_ZN74_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..clone..Clone$GT$5clone17h687ede97c0feea8eE.exit.i.i"

"_ZN74_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..clone..Clone$GT$5clone17h687ede97c0feea8eE.exit.i.i": ; preds = %bb.g, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i.i"
  %.sroa.04.0.i.i.i = phi i128 [ 1, %bb.g ], [ 0, %"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6f842d39ee5c326fE.exit.i.i.i" ]
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.al = load i8, ptr %i.ak, align 4, !range !16, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = load i64, ptr %i.am, align 16, !range !9, !alias.scope !1518, !noalias !1519, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !1518, !noalias !1519
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 133
  %i.ar = load i8, ptr %i.aq, align 1, !range !16, !alias.scope !1518, !noalias !1519, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.at = load i64, ptr %i.as, align 16, !range !15, !alias.scope !1518, !noalias !1519, !noundef !5 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.val28.i.i.i = load i64, ptr %i.au, align 8, !alias.scope !1518, !noalias !1519
  %i.av = and i64 %i.at, 1
  %i.aw = icmp eq i64 %i.av, 0
  %.sroa.512.0.i.i.i = select i1 %i.aw, i64 undef, i64 %.val28.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ay = load i64, ptr %i.ax, align 16, !range !15, !alias.scope !1518, !noalias !1519, !noundef !5 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val26.i.i.i = load i64, ptr %i.az, align 8, !alias.scope !1518, !noalias !1519
  %i.ba = and i64 %i.ay, 1
  %i.bb = icmp eq i64 %i.ba, 0
  %.sroa.514.0.i.i.i = select i1 %i.bb, i64 undef, i64 %.val26.i.i.i
  %i.bc = trunc nuw i64 %i.an to i1
  %.sroa.59.0.i.i.i = select i1 %i.bc, i64 %i.ap, i64 undef
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store i8 %i.r, ptr %i.bd, align 16, !alias.scope !1517, !noalias !1525
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %.sroa.0.034.i.i.i, ptr %i.be, align 16, !alias.scope !1517, !noalias !1525
  %.sroa.4.0..sroa_idx31.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr %.sroa.4.035.i.i.i, ptr %.sroa.4.0..sroa_idx31.i.i.i, align 8, !alias.scope !1517, !noalias !1525
  %.sroa.532.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store i64 %.sroa.532.0.i.i.i, ptr %.sroa.532.0..sroa_idx.i.i.i, align 16, !alias.scope !1517, !noalias !1525
  %.sroa.6.0..sroa_idx33.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i8 %i.t, ptr %.sroa.6.0..sroa_idx33.i.i.i, align 8, !alias.scope !1517, !noalias !1525
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 129
  store i8 %i.ad, ptr %i.bf, align 1, !alias.scope !1517, !noalias !1525
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 130
  store i8 %i.af, ptr %i.bg, align 2, !alias.scope !1517, !noalias !1525
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 131
  store i8 %i.ah, ptr %i.bh, align 1, !alias.scope !1517, !noalias !1525
  store i128 %.sroa.04.0.i.i.i, ptr %i.b, align 16, !alias.scope !1517, !noalias !1525
  %.sroa.5.0..sroa_idx6.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.0..sroa_idx6.i.i.i, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.5.i.i.i, i64 32, i1 false), !noalias !1525
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  store i8 %i.al, ptr %i.bi, align 4, !alias.scope !1517, !noalias !1525
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i64 %i.an, ptr %i.bj, align 16, !alias.scope !1517, !noalias !1525
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.59.0.i.i.i, ptr %i.bk, align 8, !alias.scope !1517, !noalias !1525
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 133
  store i8 %i.ar, ptr %i.bl, align 1, !alias.scope !1517, !noalias !1525
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store i64 %i.at, ptr %i.bm, align 16, !alias.scope !1517, !noalias !1525
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %.sroa.512.0.i.i.i, ptr %i.bn, align 8, !alias.scope !1517, !noalias !1525
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 %i.ay, ptr %i.bo, align 16, !alias.scope !1517, !noalias !1525
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i64 %.sroa.514.0.i.i.i, ptr %i.bp, align 8, !alias.scope !1517, !noalias !1525
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1516
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 144
  invoke fastcc void @"_ZN88_$LT$regex_automata..nfa..thompson..compiler..Compiler$u20$as$u20$core..clone..Clone$GT$5clone17h0e3660579c9c1c77E"(ptr noalias noundef align 8 captures(address) dereferenceable(448) %i.a, ptr noundef nonnull align 8 %i.bq)
          to label %bb.k unwind label %bb.h, !noalias !1526

bb.h:                                             ; preds = %"_ZN74_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..clone..Clone$GT$5clone17h687ede97c0feea8eE.exit.i.i"
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E"(ptr noalias noundef nonnull align 16 dereferenceable(144) %i.b) #29
          to label %.body.i unwind label %bb.i, !noalias !1526

bb.i:                                             ; preds = %bb.h
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1526
  unreachable

.body.i:                                          ; preds = %.body32.i, %bb.r, %.body27.i, %bb.j, %bb.h
  %.pn.i = phi { ptr, i32 } [ %i.bu, %.body27.i ], [ %eh.lpad-body33.i, %.body32.i ], [ %i.br, %bb.h ], [ %i.bt, %bb.j ], [ %i.cm, %bb.r ]
  invoke void @"_ZN4core3ptr53drop_in_place$LT$regex_automata..hybrid..dfa..DFA$GT$17hb300fda28ee69055E"(ptr noalias noundef nonnull align 16 dereferenceable(720) %i.j) #29
          to label %common.resume.i unwind label %bb.aa, !noalias !1512

bb.j:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i"
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body27.i:                                        ; preds = %_ZN14regex_automata6hybrid3dfa7Builder8thompson17h7571b9079509fde3E.exit.i, %bb.l, %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E"(ptr noalias noundef align 16 dereferenceable(592) %i.f) #29
          to label %.body.i unwind label %bb.aa, !noalias !1512

bb.k:                                             ; preds = %"_ZN74_$LT$regex_automata..hybrid..dfa..Config$u20$as$u20$core..clone..Clone$GT$5clone17h687ede97c0feea8eE.exit.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(592) %i.f, ptr noundef nonnull align 16 dereferenceable(144) %i.b, i64 144, i1 false), !noalias !1513
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(448) %i.bv, ptr noundef nonnull align 8 dereferenceable(448) %i.a, i64 448, i1 false), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1516
  store i128 0, ptr %i.e, align 16, !alias.scope !1527, !noalias !1528
  %.sroa.443.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 0, ptr %.sroa.443.0..sroa_idx.i, align 16, !alias.scope !1527, !noalias !1528
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 2, ptr %.sroa.545.0..sroa_idx.i, align 16, !alias.scope !1527, !noalias !1528
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store i64 2, ptr %.sroa.647.0..sroa_idx.i, align 16, !alias.scope !1527, !noalias !1528
  %.sroa.748.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  store i8 2, ptr %.sroa.748.0..sroa_idx.i, align 8, !alias.scope !1527, !noalias !1528
  %.sroa.1049.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  store i32 33686016, ptr %.sroa.1049.0..sroa_idx.i, align 16, !noalias !1513
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 133
  store i8 2, ptr %.sroa.17.0..sroa_idx.i, align 1, !alias.scope !1527, !noalias !1528
  store i8 0, ptr %.sroa.14.0..sroa_idx.i, align 4, !noalias !1513
  %i.bw = invoke noundef align 16 dereferenceable(592) ptr @_ZN14regex_automata6hybrid3dfa7Builder9configure17hd82b1a2a9ca26354E(ptr noalias noundef nonnull align 16 dereferenceable(592) %i.f, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.e)
          to label %bb.l unwind label %.body27.i, !noalias !1512 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 18
  store i64 2, ptr %i.d, align 8, !noalias !1513
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i8 0, ptr %i.by, align 8, !noalias !1513
  store <4 x i8> <i8 2, i8 1, i8 2, i8 3>, ptr %i.bx, align 2, !noalias !1513
  %i.bz = invoke noundef align 8 dereferenceable(448) ptr @_ZN14regex_automata3nfa8thompson8compiler8Compiler9configure17hbfe5f8191d8e0e14E(ptr noalias noundef nonnull align 8 dereferenceable(448) %i.bv, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.d)
          to label %_ZN14regex_automata6hybrid3dfa7Builder8thompson17h7571b9079509fde3E.exit.i unwind label %.body27.i, !noalias !1512 ; 0 uses

_ZN14regex_automata6hybrid3dfa7Builder8thompson17h7571b9079509fde3E.exit.i: ; preds = %bb.l
  invoke fastcc void @_ZN14regex_automata6hybrid3dfa7Builder10build_many17h9e266dea655a01b7E(ptr noalias noundef align 16 captures(address) dereferenceable(720) %i.g, ptr noundef nonnull align 16 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.k)
          to label %bb.m unwind label %.body27.i

bb.m:                                             ; preds = %_ZN14regex_automata6hybrid3dfa7Builder8thompson17h7571b9079509fde3E.exit.i
  %i.ca = load i128, ptr %i.g, align 16, !range !1514, !noalias !1513, !noundef !5 ; 2 uses
  %i.cb = icmp eq i128 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.67.i, ptr noundef nonnull align 16 dereferenceable(128) %i.cc, i64 128, i1 false), !noalias !1513
  br i1 %i.cb, label %bb.n, label %bb.t

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1513
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.cd, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.67.i, i64 128, i1 false), !noalias !1515
  store i128 2, ptr %0, align 16, !alias.scope !1512, !noalias !1515
  call void @llvm.experimental.noalias.scope.decl(metadata !1529)
  call void @llvm.experimental.noalias.scope.decl(metadata !1530)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1531)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.cg = load i8, ptr %i.cf, align 8, !range !11, !alias.scope !1532, !noalias !1513, !noundef !5 ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 3
  br i1 %i.ch, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !1533)
  %i.ci = icmp eq i8 %i.cg, 2
  br i1 %i.ci, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i", label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.experimental.noalias.scope.decl(metadata !1534)
  call void @llvm.experimental.noalias.scope.decl(metadata !1535)
  call void @llvm.experimental.noalias.scope.decl(metadata !1536)
  %i.cj = load ptr, ptr %i.ce, align 16, !alias.scope !1537, !noalias !1513, !nonnull !5, !noundef !5
  %i.ck = atomicrmw sub ptr %i.cj, i64 1 release, align 8, !noalias !1538
  %i.cl = icmp eq i64 %i.ck, 1
  br i1 %i.cl, label %bb.q, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i"

bb.q:                                             ; preds = %bb.p
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ce)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i" unwind label %bb.r, !noalias !1512

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.bv) #29
          to label %.body.i unwind label %bb.s, !noalias !1512

"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i.i": ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.bv)
          to label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit.i" unwind label %bb.j, !noalias !1512

bb.s:                                             ; preds = %bb.r
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1512
  unreachable

bb.t:                                             ; preds = %bb.m
  %.sroa.623.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(576) %.sroa.513.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(576) %.sroa.623.0..sroa_idx.i, i64 576, i1 false), !noalias !1513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1513
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %.sroa.412.0..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(128) %.sroa.67.i, i64 128, i1 false), !noalias !1513
  store i128 %i.ca, ptr %i.h, align 16, !noalias !1513
  call void @llvm.experimental.noalias.scope.decl(metadata !1539)
  call void @llvm.experimental.noalias.scope.decl(metadata !1540)
  %i.co = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1541)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %i.cq = load i8, ptr %i.cp, align 8, !range !11, !alias.scope !1542, !noalias !1513, !noundef !5 ; 2 uses
  %i.cr = icmp eq i8 %i.cq, 3
  br i1 %i.cr, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i31.i", label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1543)
  %i.cs = icmp eq i8 %i.cq, 2
  br i1 %i.cs, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i31.i", label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !1544)
  call void @llvm.experimental.noalias.scope.decl(metadata !1545)
  call void @llvm.experimental.noalias.scope.decl(metadata !1546)
  %i.ct = load ptr, ptr %i.co, align 16, !alias.scope !1547, !noalias !1513, !nonnull !5, !noundef !5
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !1548
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.w, label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i31.i"

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc3d03fd32fecc603E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.co)
          to label %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i31.i" unwind label %bb.x, !noalias !1512

bb.x:                                             ; preds = %bb.w
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.bv) #29
          to label %.body32.i unwind label %bb.y, !noalias !1512

"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i31.i": ; preds = %bb.w, %bb.v, %bb.u, %bb.t
  invoke fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Compiler$GT$17h6875c99a58081dfbE"(ptr noalias noundef align 8 dereferenceable(448) %i.bv)
          to label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..dfa..Builder$GT$17h185a0df261d40fd6E.exit34.i" unwind label %bb.z, !noalias !1512

bb.y:                                             ; preds = %bb.x
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #30, !noalias !1512
  unreachable

bb.z:                                             ; preds = %"_ZN4core3ptr56drop_in_place$LT$regex_automata..hybrid..dfa..Config$GT$17hf9da6806932b83c5E.exit.i31.i"
  %i.cy = landingpad { ptr, i32 }
          cleanup
end_hunk_2
