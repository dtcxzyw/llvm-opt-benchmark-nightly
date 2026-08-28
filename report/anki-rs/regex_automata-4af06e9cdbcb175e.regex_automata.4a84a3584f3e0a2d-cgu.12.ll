Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.12?download=true
inline.NumInlined: 610
inline.NumDeleted: 309
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !925
  unreachable

bb.ip:                                            ; preds = %bb.il
  %i.zq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq) #23
          to label %common.resume unwind label %bb.io, !noalias !925

bb.iq:                                            ; preds = %bb.in
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !923
  %i.zr = load i64, ptr %i.qz, align 8, !noalias !923, !noundef !18
  %i.zs = add i64 %i.zr, 1
  store i64 %i.zs, ptr %i.qz, align 8, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !855
  %i.zt = load i64, ptr %i.ar, align 8, !range !200, !noalias !855, !noundef !18 ; 2 uses
  %.not146.i = icmp eq i64 %i.zt, -9223372036854775800
  %i.zu = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.zv = load i32, ptr %i.zu, align 8, !noalias !855 ; 2 uses
  br i1 %.not146.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  %.sroa.577.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %.sroa.380.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.380.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.577.0..sroa_idx.i, i64 116, i1 false), !noalias !853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !855
  store i64 %i.zt, ptr %0, align 8, !alias.scope !850, !noalias !853
  %.sroa.279.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.zv, ptr %.sroa.279.0..sroa_idx.i, align 8, !alias.scope !850, !noalias !853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !855
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17hec08d8f22e81d0fcE.exit

bb.is:                                            ; preds = %bb.iq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !855
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.zv, ptr %i.zw, align 8, !alias.scope !850, !noalias !853
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.rk, ptr %i.zx, align 4, !alias.scope !850, !noalias !853
  store i64 -9223372036854775800, ptr %0, align 8, !alias.scope !850, !noalias !853
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !855
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17hec08d8f22e81d0fcE.exit

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit151.i": ; preds = %bb.ik
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.071.0256.i, i64 4
  %i.zz = load i32, ptr %i.zy, align 4, !range !869, !noalias !850, !noundef !18 ; 2 uses
  %i.aaa = icmp samesign ugt i32 %i.zz, 255
  br i1 %i.aaa, label %.invoke.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i", !prof !274

.invoke.i:                                        ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit151.i", %bb.ik
  %i.aab = phi ptr [ @24, %bb.ik ], [ @25, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit151.i" ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @40, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aab) #22
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !850

.cont.i:                                          ; preds = %.invoke.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i": ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit151.i"
  %.sroa.5120.0.insert.ext.i = zext nneg i32 %i.zz to i64
  %.sroa.5120.0.insert.shift.i = shl nuw nsw i64 %.sroa.5120.0.insert.ext.i, 40
  %.sroa.4119.0.insert.shift.i = shl nuw nsw i64 %.sroa.4119.0.insert.ext.i, 32
  %.sroa.4119.0.insert.insert.i = or disjoint i64 %.sroa.4119.0.insert.shift.i, %.sroa.0118.0.insert.ext.i
  %.sroa.0118.0.insert.insert.i = or disjoint i64 %.sroa.4119.0.insert.insert.i, %.sroa.5120.0.insert.shift.i
  %i.aac = load i64, ptr %i.as, align 8, !range !281, !alias.scope !926, !noalias !855, !noundef !18
  %i.aad = icmp eq i64 %i.zh, %i.aac
  br i1 %i.aad, label %bb.it, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i"

bb.it:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h2b4434d9eacf3cc0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i" unwind label %.loopexit.i, !noalias !850

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17heaa1619800622138E.exit.i": ; preds = %bb.it, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h13e665195e0ca7f2E.exit.i"
  %i.aae = load ptr, ptr %i.yz, align 8, !alias.scope !926, !noalias !855, !nonnull !18, !noundef !18
  %i.aaf = getelementptr inbounds nuw [8 x i8], ptr %i.aae, i64 %i.zh
  store i64 %.sroa.0118.0.insert.insert.i, ptr %i.aaf, align 4, !noalias !850
  %i.aag = add nuw nsw i64 %i.zh, 1               ; 2 uses
  store i64 %i.aag, ptr %i.za, align 8, !alias.scope !926, !noalias !855
  %i.aah = icmp eq ptr %.sroa.071.1257.i, %i.zd
  %.sroa.071.1.idx.i = select i1 %i.aah, i64 0, i64 8
  %.sroa.071.1.i = getelementptr inbounds nuw i8, ptr %.sroa.071.1257.i, i64 %.sroa.071.1.idx.i
  %exitcond = icmp eq i64 %i.zh, %i.zg
  br i1 %exitcond, label %._crit_edge259.i, label %bb.ik

.loopexit.i:                                      ; preds = %bb.it
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

.loopexit.split-lp.i:                             ; preds = %.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

bb.iu:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E"(ptr noalias noundef align 8 dereferenceable(24) %i.as) #23
          to label %common.resume unwind label %bb.fs, !noalias !850

_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17hec08d8f22e81d0fcE.exit: ; preds = %bb.ff, %bb.ft, %_ZN14regex_automata3nfa8thompson8compiler8Compiler35c_unicode_class_reverse_with_suffix17h2142d3c974f3c9a2E.exit.i, %bb.hw, %bb.hx, %bb.ih, %bb.ir, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17h21c8eb9798d60e4dE.exit
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h29560fbd3b199a01E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([448 x i8]) align 8 captures(none) dereferenceable(448) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 4 uses
  %i.c = alloca [168 x i8], align 8               ; 6 uses
  %i.d = alloca [64 x i8], align 8                ; 7 uses
  %i.e = alloca [72 x i8], align 8                ; 6 uses
  %i.f = alloca [120 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %.sroa.544.0..sroa_idx, align 8
  %.sroa.645.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.645.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.948.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.948.0..sroa_idx, align 8
  %.sroa.1049.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %.sroa.1251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1049.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.1251.0..sroa_idx, align 8
  %.sroa.1352.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  store i64 0, ptr %.sroa.1352.0..sroa_idx, align 8
  %.sroa.1453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  store i32 0, ptr %.sroa.1453.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i64 0, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i8 0, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 113
  store i8 0, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 114
  store i8 10, ptr %.sroa.19.0..sroa_idx, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_ZN14regex_automata3nfa8thompson3map14Utf8BoundedMap3new17h6819d6572105b530E(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(64) %i.d, i64 noundef 10000)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.e ], [ %i.g, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17hc6248a74d8ce9c26E"(ptr noalias noundef align 8 dereferenceable(120) %i.f) #23
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i64 0, ptr %i.h, align 8, !alias.scope !929
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !929
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !929
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 64, i1 false)
  store i64 0, ptr %i.e, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_ZN14regex_automata3nfa8thompson10range_trie9RangeTrie3new17h9cc8fe0c5fa5b798E(ptr noalias noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.b)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn = phi { ptr, i32 } [ %i.l, %bb.h ], [ %i.j, %bb.f ]
  invoke fastcc void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17h6db445899b31b621E"(ptr noalias noundef align 8 dereferenceable(72) %i.e) #23
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.k, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_ZN14regex_automata3nfa8thompson3map13Utf8SuffixMap3new17h845ddfd2f4231e7eE(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, i64 noundef 1000)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h2347853ac1e44572E"(ptr noalias noundef align 8 dereferenceable(168) %i.c) #23
          to label %bb.e unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.m, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %.sroa.017.sroa.4.0..sroa_idx, i8 2, i64 6, i1 false)
  store i8 10, ptr %.sroa.017.sroa.5.0..sroa_idx, align 1
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 250, ptr %.sroa.419.0..sroa_idx, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %.sroa.520.0..sroa_idx, align 4
  %.sroa.621.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 37
  store i8 0, ptr %.sroa.621.0..sroa_idx, align 1
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 38
  store i8 0, ptr %.sroa.722.0..sroa_idx, align 2
  store i64 2, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store <4 x i8> <i8 2, i8 2, i8 2, i8 3>, ptr %.sroa.7.0..sroa_idx, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.n, ptr noundef nonnull align 8 dereferenceable(120) %i.f, i64 120, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.p, ptr noundef nonnull align 8 dereferenceable(168) %i.c, i64 168, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.q, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.k:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5build17hc9fa4cbc5da8db9aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h649e8ac96042645bE(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5c_cap17hf644a255ba82e980E(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, i32 noundef %2, ptr noalias noundef readonly align 1 captures(address, read_provenance) %3, i64 %4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  %i.c = alloca [128 x i8], align 8               ; 6 uses
  %i.d = alloca [128 x i8], align 8               ; 7 uses
  %i.e = alloca [128 x i8], align 8               ; 8 uses
  %i.f = alloca [128 x i8], align 8               ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.h = load i8, ptr %i.g, align 1, !range !348, !noundef !18
  switch i8 %i.h, label %default.unreachable [
    i8 3, label %bb.b
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 0, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !932
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call { ptr, i64 } @"_ZN5alloc4sync22Arc$LT$$u5b$T$u5d$$GT$15copy_from_slice17h8e85c60c0688754cE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4), !noalias !936 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.k, ptr %i.l, align 8, !noalias !932
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %i.j, %bb.c ], [ null, %bb.b ] ; 4 uses
  store ptr %i.m, ptr %i.a, align 8, !noalias !932
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 16 uses
  %i.o = load i64, ptr %i.n, align 8, !noalias !937, !noundef !18
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.i, label %bb.e, !prof !198

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #22
          to label %.noexc.i unwind label %bb.f, !noalias !936

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.r = icmp eq ptr %i.m, null
  br i1 %i.r, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !940
  %i.t = icmp eq i64 %i.s, 1
  br i1 %i.t, label %bb.h, label %common.resume

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hff598df8f1e7358cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %common.resume unwind label %bb.k, !noalias !936

bb.i:                                             ; preds = %bb.d
  store i64 -1, ptr %i.n, align 8, !noalias !937
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !noalias !932
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder17add_capture_start17hdd1769dca4208a15E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.u, i32 noundef 0, i32 noundef %2, ptr noundef %i.m, i64 %i.w)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17h20c4cd9112ac4171E.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %common.resume.sink.split

bb.k:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !936
  unreachable

common.resume.sink.split:                         ; preds = %bb.u, %bb.y, %bb.ac, %bb.j
  %common.resume.op.ph = phi { ptr, i32 } [ %i.x, %bb.j ], [ %i.au, %bb.y ], [ %i.an, %bb.u ], [ %i.az, %bb.ac ]
  %i.z = load i64, ptr %i.n, align 8, !noalias !18, !noundef !18
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.n, align 8, !noalias !18
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.f, %bb.g, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.g ], [ %i.q, %bb.h ], [ %i.q, %bb.f ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17h20c4cd9112ac4171E.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !932
  %i.ab = load i64, ptr %i.n, align 8, !noalias !932, !noundef !18
  %i.ac = add i64 %i.ab, 1
  store i64 %i.ac, ptr %i.n, align 8, !noalias !932
  %i.ad = load i64, ptr %i.f, align 8, !range !200, !noundef !18 ; 2 uses
  %.not59 = icmp eq i64 %i.ad, -9223372036854775800
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.af = load i32, ptr %i.ae, align 8            ; 3 uses
  br i1 %.not59, label %bb.q, label %bb.p

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.l:                                             ; preds = %bb.a
  %.not58 = icmp eq i32 %2, 0
  br i1 %.not58, label %bb.b, label %bb.n

bb.m:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  tail call fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %bb.v, %bb.z, %bb.ad, %bb.r, %bb.m, %bb.n, %bb.ae
  ret void

bb.p:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17h20c4cd9112ac4171E.exit
  %.sroa.634.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %.sroa.337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(116) %.sroa.337.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(116) %.sroa.634.0..sroa_idx, i64 116, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %i.ad, ptr %0, align 8
  %.sroa.236.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.af, ptr %.sroa.236.0..sroa_idx, align 8
  br label %bb.o

bb.q:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17h20c4cd9112ac4171E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17hba7c1bd4fd1d6d82E(ptr noalias noundef align 8 captures(address) dereferenceable(128) %i.e, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %5)
  %i.ag = load i64, ptr %i.e, align 8, !range !200, !noundef !18 ; 2 uses
  %.not60 = icmp eq i64 %i.ag, -9223372036854775800
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ai = load i32, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  br i1 %.not60, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.448.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.448.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.7.0..sroa_idx, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  store i64 %i.ag, ptr %0, align 8
end_hunk_0
