Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4bc27bd9b01c2450.regex_automata.948ed56e9a6654bb-cgu.07?download=true
inline.NumInlined: 211
inline.NumDeleted: 31
begin_hunk_0_@_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17h7e12f2efa679d5e0E:bb.a

bb.kz:                                            ; preds = %bb.kx
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !103
  %i.vh = load i64, ptr %i.op, align 8, !noalias !106
  %i.vi = icmp eq i64 %i.vh, 0
  br i1 %i.vi, label %bb.lc, label %bb.la

bb.la:                                            ; preds = %bb.kz
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr nonnull align 8 @29) #19
          to label %.noexc.i.i19 unwind label %bb.lf, !noalias !106

.noexc.i.i19:                                     ; preds = %bb.la
  unreachable

bb.lb:                                            ; preds = %bb.lc
  %i.vj = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr94drop_in_place$LT$core..cell..RefMut$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h4212c18ac2bd0e9cE"(ptr nonnull align 8 %i.ac) #20
          to label %common.resume unwind label %bb.le, !noalias !103

bb.lc:                                            ; preds = %bb.kz
  store i64 -1, ptr %i.op, align 8, !noalias !106
  store ptr %i.ot, ptr %i.ac, align 8, !noalias !106
  %i.vk = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store ptr %i.op, ptr %i.vk, align 8, !noalias !106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false), !noalias !103
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder10add_sparse17hb93a00e464fa87abE(ptr nonnull sret([128 x i8]) align 8 %i.co, ptr nonnull align 8 %i.ot, ptr nonnull align 8 %i.ab)
          to label %bb.ld unwind label %bb.lb, !noalias !103

bb.ld:                                            ; preds = %bb.lc
  call void @"_ZN4core3ptr94drop_in_place$LT$core..cell..RefMut$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h4212c18ac2bd0e9cE"(ptr nonnull align 8 %i.ac), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !103
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h901ccf8ac165211bE"(ptr nonnull sret([128 x i8]) align 8 %i.cp, ptr nonnull align 8 %i.co), !noalias !103
  %i.vl = load i64, ptr %i.cp, align 8, !noalias !103
  %.not29.i = icmp eq i64 %i.vl, -9223372036854775800
  br i1 %.not29.i, label %bb.lh, label %bb.lg

bb.le:                                            ; preds = %bb.lf, %bb.lb
  %i.vm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21, !noalias !103
  unreachable

bb.lf:                                            ; preds = %bb.la
  %i.vn = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17h8d9a11beff15b3cfE"(ptr nonnull align 8 %i.cn) #20
          to label %common.resume unwind label %bb.le, !noalias !106

bb.lg:                                            ; preds = %bb.ld
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.cm, ptr noundef nonnull align 8 dereferenceable(128) %i.cp, i64 128, i1 false), !noalias !103
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h16ffca3f72ce37a6E"(ptr sret([128 x i8]) align 8 %0, ptr nonnull align 8 %i.cm, ptr nonnull align 8 @89)
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17h5dd88ead83de778cE.exit

bb.lh:                                            ; preds = %bb.ld
  %i.vo = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.vp = load i32, ptr %i.vo, align 8, !noalias !103
  %i.vq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.vp, ptr %i.vq, align 8, !alias.scope !103
  %i.vr = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.uv, ptr %i.vr, align 4, !alias.scope !103
  store i64 -9223372036854775800, ptr %0, align 8, !alias.scope !103
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17h5dd88ead83de778cE.exit

bb.li:                                            ; preds = %bb.ky
  %i.vs = invoke i32 @"_ZN4core4char7convert65_$LT$impl$u20$core..convert..From$LT$char$GT$$u20$for$u20$u32$GT$4from17h8a9ca92df021d8c8E"(i32 %i.vg)
          to label %bb.lj unwind label %.loopexit.split-lp.loopexit.split-lp.i18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

bb.lj:                                            ; preds = %bb.li
  %i.vt = invoke { i1, i8 } @"_ZN4core7convert3num66_$LT$impl$u20$core..convert..TryFrom$LT$u32$GT$$u20$for$u20$u8$GT$8try_from17h5ecf81774f122cb4E"(i32 %i.vs)
          to label %bb.lk unwind label %.loopexit.split-lp.loopexit.split-lp.i18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103 ; 2 uses

bb.lk:                                            ; preds = %bb.lj
  %i.vu = extractvalue { i1, i8 } %i.vt, 0
  %i.vv = extractvalue { i1, i8 } %i.vt, 1
  br i1 %i.vu, label %.invoke110.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h28d1e3a1e9bc78fcE.exit33.i"

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h28d1e3a1e9bc78fcE.exit33.i": ; preds = %bb.lk
  %i.vw = invoke i32 @_ZN12regex_syntax3hir17ClassUnicodeRange3end17h332a9dd12be6bc6dE(ptr nonnull align 4 %i.vf)
          to label %bb.ll unwind label %.loopexit.split-lp.loopexit.split-lp.i18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

bb.ll:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h28d1e3a1e9bc78fcE.exit33.i"
  %i.vx = invoke i32 @"_ZN4core4char7convert65_$LT$impl$u20$core..convert..From$LT$char$GT$$u20$for$u20$u32$GT$4from17h8a9ca92df021d8c8E"(i32 %i.vw)
          to label %bb.lm unwind label %.loopexit.split-lp.loopexit.split-lp.i18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

bb.lm:                                            ; preds = %bb.ll
  %i.vy = invoke { i1, i8 } @"_ZN4core7convert3num66_$LT$impl$u20$core..convert..TryFrom$LT$u32$GT$$u20$for$u20$u8$GT$8try_from17h5ecf81774f122cb4E"(i32 %i.vx)
          to label %bb.ln unwind label %.loopexit.split-lp.loopexit.split-lp.i18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103 ; 2 uses

bb.ln:                                            ; preds = %bb.lm
  %i.vz = extractvalue { i1, i8 } %i.vy, 0
  br i1 %i.vz, label %.invoke110.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h28d1e3a1e9bc78fcE.exit.i"

.invoke110.i:                                     ; preds = %bb.ln, %bb.lk
  %i.wa = phi ptr [ @90, %bb.lk ], [ @91, %bb.ln ]
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr nonnull align 1 @164, i64 43, ptr nonnull align 1 %i.a, ptr nonnull align 8 @163, ptr nonnull align 8 %i.wa) #19
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.cont.i:                                          ; preds = %.invoke110.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h28d1e3a1e9bc78fcE.exit.i": ; preds = %bb.ln
  %i.wb = extractvalue { i1, i8 } %i.vy, 1
  %.sroa.311.0.insert.ext.i = zext i8 %i.wb to i64
  %.sroa.311.0.insert.shift.i = shl nuw nsw i64 %.sroa.311.0.insert.ext.i, 40
  %.sroa.210.0.insert.ext.i = zext i8 %i.vv to i64
  %.sroa.210.0.insert.shift.i = shl nuw nsw i64 %.sroa.210.0.insert.ext.i, 32
  %.sroa.210.0.insert.insert.i = or disjoint i64 %.sroa.311.0.insert.shift.i, %.sroa.210.0.insert.shift.i
  %.sroa.09.0.insert.insert.i = or disjoint i64 %.sroa.210.0.insert.insert.i, %.sroa.09.0.insert.ext.i
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$4push17h8006d03447f01e18E"(ptr nonnull align 8 %i.cr, i64 %.sroa.09.0.insert.insert.i)
          to label %bb.kw unwind label %.loopexit.split-lp.loopexit.split-lp.i18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !103

.loopexit.split-lp.loopexit.split-lp.i18.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h28d1e3a1e9bc78fcE.exit.i", %bb.lm, %bb.ll, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h28d1e3a1e9bc78fcE.exit33.i", %bb.lj, %bb.li, %bb.ky, %bb.kw, %.invoke110.i, %bb.ku, %bb.kt
  %lpad.loopexit.split-lp169 = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17h8d9a11beff15b3cfE"(ptr nonnull align 8 %i.cr) #20
          to label %common.resume unwind label %bb.gn, !noalias !103

_ZN14regex_automata3nfa8thompson8compiler8Compiler15c_unicode_class17h5dd88ead83de778cE.exit: ; preds = %bb.fy, %bb.go, %_ZN14regex_automata3nfa8thompson8compiler8Compiler35c_unicode_class_reverse_with_suffix17hc2e1247030739eb1E.exit.i, %bb.kd, %bb.kg, %bb.ks, %bb.lg, %bb.lh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bo)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bv)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bx)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.by)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ca)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ch)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %_ZN14regex_automata3nfa8thompson8compiler8Compiler12c_repetition17hb8955eab51ca2756E.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN14regex_automata3nfa8thompson8compiler8Compiler1c28_$u7b$$u7b$closure$u7d$$u7d$17h417e74aa7d11b1feE"(ptr sret([128 x i8]) align 8 %0, ptr nofree readonly align 8 captures(none) %1, ptr align 8 %2) unnamed_addr #1 !guid !107 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  tail call fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17h7e12f2efa679d5e0E(ptr noalias align 8 %0, ptr align 8 %i.a, ptr align 8 %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler3new17h3bf25e8325f632e8E(ptr nofree writeonly sret([448 x i8]) align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !112 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 2 uses
  %i.e = alloca [160 x i8], align 8               ; 2 uses
  %i.f = alloca [168 x i8], align 8               ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 4 uses
  %i.h = alloca [112 x i8], align 8               ; 2 uses
  %i.i = alloca [120 x i8], align 8               ; 4 uses
  %i.j = alloca [16 x i8], align 4                ; 2 uses
  call void @_ZN12regex_syntax6parser13ParserBuilder3new17hab3c1227fc087ed5E(ptr nonnull sret([16 x i8]) align 4 %i.j)
  %i.k = call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h77188c793898b819E"(), !noalias !113
  %i.l = call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h77188c793898b819E"(), !noalias !113
  %i.m = call { i64, i64 } @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17hc1e05175da597ba4E"(), !noalias !113 ; 2 uses
  %i.n = call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h77188c793898b819E"(), !noalias !113
  %i.o = call i8 @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h459aecc769b75f12E"(), !noalias !113
  %i.p = call { i1, i8 } @"_ZN72_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..default..Default$GT$7default17h01e747e8c36d77e3E"(), !noalias !113 ; 2 uses
  call void @_ZN14regex_automata3nfa8thompson7builder7Builder3new17hf78f1608c04cd8eaE(ptr nonnull sret([112 x i8]) align 8 %i.h)
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(112) %i.h, i64 112, i1 false)
  store i64 0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_ZN14regex_automata3nfa8thompson3map14Utf8BoundedMap3new17hc7ed1157d8c2a3ccE(ptr nonnull sret([40 x i8]) align 8 %i.c, i64 10000)
          to label %.noexc unwind label %bb.d, !noalias !114

.noexc:                                           ; preds = %bb.a
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h9d593491d306892cE"(ptr nonnull sret([24 x i8]) align 8 %i.b)
          to label %bb.e unwind label %bb.b, !noalias !114

bb.b:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h9c4cf7496cd7d62fE"(ptr nonnull align 8 %i.c) #20
          to label %.body unwind label %bb.c, !noalias !114

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21, !noalias !114
  unreachable

.body:                                            ; preds = %bb.d, %bb.b, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.f ], [ %i.t, %bb.d ], [ %i.r, %bb.b ]
  invoke void @"_ZN4core3ptr95drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5635682c7c2074b9E"(ptr nonnull align 8 %i.i) #20
          to label %bb.l unwind label %bb.k

bb.d:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.v, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  invoke void @_ZN14regex_automata3nfa8thompson10range_trie9RangeTrie3new17hb93603d7204fecaeE(ptr nonnull sret([160 x i8]) align 8 %i.e)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.w, %bb.g ]
  invoke void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17hf73e948c15d15a94E"(ptr nonnull align 8 %i.g) #20
          to label %.body unwind label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(160) %i.e, i64 160, i1 false)
  store i64 0, ptr %i.f, align 8
  invoke void @_ZN14regex_automata3nfa8thompson3map13Utf8SuffixMap3new17hb5116f611cdff2b9E(ptr nonnull sret([40 x i8]) align 8 %i.d, i64 1000)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr100drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h6eba69669214b761E"(ptr nonnull align 8 %i.f) #20
          to label %bb.f unwind label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.z = extractvalue { i1, i8 } %i.p, 0
  %i.aa = zext i1 %i.z to i8
  %i.ab = extractvalue { i1, i8 } %i.p, 1
  %i.ac = extractvalue { i64, i64 } %i.m, 1
  %i.ad = extractvalue { i64, i64 } %i.m, 0
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 408
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.24.0..sroa_idx, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false)
  store i64 %i.ad, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.aa, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ab, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.k, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.l, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.n, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.o, ptr %.sroa.8.0..sroa_idx, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.af, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ag, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 232
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.ah, ptr noundef nonnull align 8 dereferenceable(168) %i.f, i64 168, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 400
  store i64 0, ptr %i.ai, align 8
  ret void

bb.k:                                             ; preds = %bb.i, %bb.f, %.body
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.l:                                             ; preds = %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5build17h38f106d708773af1E(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr align 1 %2, i64 %3) unnamed_addr #0 !guid !115 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  store ptr %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %3, ptr %i.b, align 8
  call void @_ZN14regex_automata3nfa8thompson8compiler8Compiler10build_many17h585886839e8a66c1E(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, ptr nonnull align 8 %i.a, i64 1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata3nfa8thompson8compiler8Compiler5c_cap17h4c57e210f2adc5bdE(ptr sret([128 x i8]) align 8 %0, ptr align 8 %1, i32 %2, ptr align 1 %3, i64 %4, ptr align 8 %5) unnamed_addr #0 personality ptr @rust_eh_personality !guid !120 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [128 x i8], align 8               ; 2 uses
  %i.g = alloca [128 x i8], align 8               ; 2 uses
  %i.h = alloca [128 x i8], align 8               ; 3 uses
  %i.i = alloca [128 x i8], align 8               ; 2 uses
  %i.j = alloca [128 x i8], align 8               ; 2 uses
  %i.k = alloca [128 x i8], align 8               ; 3 uses
  %i.l = alloca [128 x i8], align 8               ; 2 uses
  %i.m = alloca [128 x i8], align 8               ; 2 uses
  %i.n = alloca [128 x i8], align 8               ; 4 uses
  %i.o = alloca [128 x i8], align 8               ; 2 uses
  %i.p = alloca [128 x i8], align 8               ; 2 uses
  %i.q = alloca [128 x i8], align 8               ; 5 uses
  %i.r = alloca [128 x i8], align 8               ; 2 uses
  %i.s = alloca [128 x i8], align 8               ; 2 uses
  %i.t = alloca [128 x i8], align 8               ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.v = load i8, ptr %i.u, align 1
  %i.w = tail call i8 @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17hb68e7c1fbc2d24bbE"(i8 %i.v, i8 0)
  switch i8 %i.w, label %bb.b [
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %bb.e, label %bb.k

bb.d:                                             ; preds = %bb.a
  tail call fastcc void @_ZN14regex_automata3nfa8thompson8compiler8Compiler1c17h7e12f2efa679d5e0E(ptr noalias align 8 %0, ptr nonnull align 8 %1, ptr align 8 %5)
  br label %bb.l

bb.e:                                             ; preds = %bb.c, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.x = tail call { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17h35e0d1fc617eee19E"(ptr align 1 %3, i64 %4), !noalias !121 ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 2 uses
  store ptr %i.y, ptr %i.e, align 8, !noalias !121
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !121
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 12 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !121
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr nonnull align 8 @94) #19
          to label %.noexc.i unwind label %bb.g, !noalias !121

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17hd9fdeb64b1ed95e0E"(ptr nonnull align 8 %i.e) #20
          to label %common.resume unwind label %bb.j, !noalias !121

bb.h:                                             ; preds = %bb.e
  store i64 -1, ptr %i.ab, align 8, !noalias !121
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 8 uses
  store ptr %i.af, ptr %i.d, align 8, !noalias !121
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.ab, ptr %i.ag, align 8, !noalias !121
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder17add_capture_start17heb56fbe18bd57992E(ptr nonnull sret([128 x i8]) align 8 %i.s, ptr nonnull align 8 %i.af, i32 0, i32 %2, ptr %i.y, i64 %i.z)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_capture_start17hb8d1cb8ea20052b7E.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN4core5slice3raw14from_raw_parts18precondition_check17hcca0022c051c2391E:bb.a
bb.c:                                             ; preds = %bb.a
  store ptr @159, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.n, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.a, ptr nonnull align 8 @161) #19
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = udiv i64 9223372036854775807, %1
  %i.q = icmp ugt i64 %3, %i.p
  br i1 %i.q, label %bb.h, label %.critedge

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

.critedge:                                        ; preds = %bb.d, %bb.e
  ret void

bb.h:                                             ; preds = %bb.e, %bb.b
  store ptr @157, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 279, ptr %i.s, align 8
  store ptr %i.b, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.w, align 8
  call void @_ZN4core9panicking18panic_nounwind_fmt17h12c54097655c17dbE(ptr nonnull align 8 %i.c, i1 zeroext false, ptr align 8 %4) #22
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define hidden void @_ZN4core5slice3raw18from_raw_parts_mut18precondition_check17h10512ad32cf6a8d2E(ptr %0, i64 %1, i64 %2, i64 %3, ptr align 8 %4) unnamed_addr #6 personality ptr @rust_eh_personality !guid !211 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %0 to i64
  %i.g = add i64 %2, -1
  %i.h = and i64 %i.g, %i.f
  %i.i = icmp eq i64 %i.h, 0
  %i.j = icmp ne ptr %0, null
  %or.cond = and i1 %i.j, %i.i
  br i1 %or.cond, label %bb.d, label %bb.h

bb.c:                                             ; preds = %bb.a
  store ptr @159, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.n, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr nonnull align 8 %i.a, ptr nonnull align 8 @161) #19
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = udiv i64 9223372036854775807, %1
  %i.q = icmp ugt i64 %3, %i.p
  br i1 %i.q, label %bb.h, label %.critedge

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking19panic_cannot_unwind17h2cbcfb1212a61c82E() #21
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable

.critedge:                                        ; preds = %bb.d, %bb.e
  ret void

bb.h:                                             ; preds = %bb.e, %bb.b
  store ptr @162, ptr %i.b, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 283, ptr %i.s, align 8
  store ptr %i.b, ptr %i.c, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %i.w, align 8
  call void @_ZN4core9panicking18panic_nounwind_fmt17h12c54097655c17dbE(ptr nonnull align 8 %i.c, i1 zeroext false, ptr align 8 %4) #22
  unreachable
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define { ptr, ptr } @"_ZN63_$LT$I$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hfb603328537e06eaE"(ptr %0, ptr %1) unnamed_addr #5 !guid !212 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr %1, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0fa318517b23361cE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !213 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr align 8 %2) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 1
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.g, align 8
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17haa39113f91d16e25E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr118drop_in_place$LT$core..cell..Ref$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17hc4f45bd3eea7b78eE"(ptr nonnull align 8 %i.a) #20
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @"_ZN4core3ptr118drop_in_place$LT$core..cell..Ref$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17hc4f45bd3eea7b78eE"(ptr nonnull align 8 %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5b9bbd9967c6c797E"(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !216 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [64 x i8], align 8                ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = load i64, ptr %1, align 8                ; 2 uses
  %i.f = icmp ult i64 %i.e, 9223372036854775807
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr align 8 %2) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.g = add nuw nsw i64 %i.e, 1
  store i64 %i.g, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.h, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %1, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN89_$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$u20$as$u20$core..clone..Clone$GT$5clone17he562e6b46d6a08d9E"(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull align 8 %i.h)
          to label %.noexc unwind label %bb.f, !noalias !217

.noexc:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf9fd8fe4879bd9dcE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.j)
          to label %bb.g unwind label %bb.d, !noalias !217

bb.d:                                             ; preds = %.noexc
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr71drop_in_place$LT$regex_automata..nfa..thompson..map..Utf8BoundedMap$GT$17h9c4cf7496cd7d62fE"(ptr nonnull align 8 %i.b) #20
          to label %.body unwind label %bb.e, !noalias !217

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21, !noalias !217
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.k, %bb.d ]
  invoke void @"_ZN4core3ptr94drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17he07898e22ceb277cE"(ptr nonnull align 8 %i.d) #20
          to label %bb.i unwind label %bb.h

bb.g:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 0, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %i.c, i64 64, i1 false)
  call void @"_ZN4core3ptr94drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17he07898e22ceb277cE"(ptr nonnull align 8 %i.d)
  ret void

bb.h:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.i:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7cf6ddf8631d832bE"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !218 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr align 8 %2) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 1
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.g, align 8
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h536f4b8cd2014423E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17h5cd6108206fdad77E"(ptr nonnull align 8 %i.a) #20
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 0, ptr %0, align 8
  call void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17h5cd6108206fdad77E"(ptr nonnull align 8 %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E"(ptr nofree writeonly sret([120 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !219 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 8               ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr align 8 %2) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 1
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.g, align 8
  invoke void @"_ZN86_$LT$regex_automata..nfa..thompson..builder..Builder$u20$as$u20$core..clone..Clone$GT$5clone17hf59c1fb902f90b49E"(ptr nonnull sret([112 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5e2935c05e6b8f1aE"(ptr nonnull align 8 %i.a) #20
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.i, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  store i64 0, ptr %0, align 8
  call void @"_ZN4core3ptr91drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5e2935c05e6b8f1aE"(ptr nonnull align 8 %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h97d226bcf9baaa21E"(ptr nofree writeonly sret([168 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !220 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr align 8 %2) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 1
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.g, align 8
  invoke void @"_ZN91_$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$u20$as$u20$core..clone..Clone$GT$5clone17hd93aa8f2ad605be2E"(ptr nonnull sret([160 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h8510f785a0de475eE"(ptr nonnull align 8 %i.a) #20
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  store i64 0, ptr %0, align 8
  call void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h8510f785a0de475eE"(ptr nonnull align 8 %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf3a35df8bd658febE"(ptr nofree writeonly sret([48 x i8]) align 8 captures(none) %0, ptr align 8 %1, ptr align 8 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !221 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 2 uses
  %i.c = load i64, ptr %1, align 8                ; 2 uses
  %i.d = icmp ult i64 %i.c, 9223372036854775807
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr align 8 %2) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = add nuw nsw i64 %i.c, 1
  store i64 %i.e, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.g, align 8
  invoke void @"_ZN88_$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$u20$as$u20$core..clone..Clone$GT$5clone17hb949303e2256adb6E"(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr93drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h3f383e92fe2a0f13E"(ptr nonnull align 8 %i.a) #20
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  store i64 0, ptr %0, align 8
  call void @"_ZN4core3ptr93drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..map..Utf8SuffixMap$GT$$GT$17h3f383e92fe2a0f13E"(ptr nonnull align 8 %i.a)
  ret void

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.g:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN70_$LT$core..num..error..TryFromIntError$u20$as$u20$core..fmt..Debug$GT$3fmt17h35cc3928c3b18294E"(ptr align 1 %0, ptr align 8 %1) unnamed_addr #1 !guid !222 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr align 8 %1, ptr nonnull align 1 @166, i64 15, ptr nonnull align 1 %i.a, ptr nonnull align 8 @165)
  ret i1 %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h1da3b5e7fa7cabf0E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !223 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h579c452510f49acdE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !224 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5e8745e795609b3bE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !225 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN71_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h679e5bc4654e9eb9E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !226 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h38e0f485c09e46f8E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !227 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h56e076e2de84d0a3E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !228 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h66f97a086092cdd5E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !229 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h755c71495fb9608dE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !230 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h9c244c506b9352d1E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !231 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @"_ZN74_$LT$core..cell..RefMut$LT$T$GT$$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17hedd720a1ba9054a2E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 !guid !232 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN86_$LT$regex_automata..nfa..thompson..compiler..Config$u20$as$u20$core..clone..Clone$GT$5clone17h4c63f5030ce4df0aE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) initializes((0, 22)) %0, ptr align 8 %1) unnamed_addr #1 !guid !233 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.b = tail call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.d = tail call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.c)
  %i.e = tail call { i64, i64 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4078ca892b2755f7E"(ptr align 8 %1) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.i = tail call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.k = tail call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb44bc87d0363f061E"(ptr nonnull align 1 %i.j)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = tail call { i1, i8 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h89f371379f90125dE"(ptr nonnull align 1 %i.l) ; 2 uses
  %i.n = extractvalue { i1, i8 } %i.m, 0
  %i.o = extractvalue { i1, i8 } %i.m, 1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %i.b, ptr %i.p, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.d, ptr %i.q, align 1
  store i64 %i.f, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.i, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.k, ptr %i.t, align 1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = zext i1 %i.n to i8
  store i8 %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.o, ptr %i.w, align 1
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h7b09bc5ad6d9bfdbE"(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !236 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.016 = alloca [24 x i8], align 8          ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = tail call { i64, ptr } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h897ce1429f5c1ac0E"(i64 %2, i64 8, i64 32) ; 2 uses
  %i.f = extractvalue { i64, ptr } %i.e, 0        ; 5 uses
  %i.g = extractvalue { i64, ptr } %i.e, 1        ; 2 uses
  store i64 %i.f, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %i.i, align 8
  store ptr %i.d, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.b, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.k, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.i
  %3 = phi i64 [ %.pr, %bb.i ], [ %i.f, %bb.a ]
  %i.m = phi i64 [ %i.p, %bb.i ], [ 0, %bb.a ]
  %i.n = add i64 %3, -1
  store i64 %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  %i.o = invoke { i64, ptr } @"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h555c2efe17e39b35E"(ptr nonnull align 8 %i.b)
          to label %bb.b unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.i, %bb.a
  store i64 %2, ptr %i.i, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.d
  %4 = phi i64 [ %i.m, %.lr.ph ], [ %i.p, %bb.d ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store i64 %4, ptr %i.j, align 8
  br label %.body

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.g
  %lpad.loopexit.split-lp30 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.u, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp30, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @"_ZN4core3ptr206drop_in_place$LT$$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$..to_vec..DropGuard$LT$regex_automata..nfa..thompson..compiler..Utf8Node$C$alloc..alloc..Global$GT$$GT$17he6a695d6e4df513dE"(ptr nonnull align 8 %i.c) #20
          to label %bb.k unwind label %bb.j

bb.b:                                             ; preds = %.lr.ph
  %i.p = extractvalue { i64, ptr } %i.o, 0        ; 7 uses
  %i.q = extractvalue { i64, ptr } %i.o, 1        ; 3 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.p, %i.f
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb7250f407599c52eE"(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr nonnull align 8 %i.q)
          to label %.noexc unwind label %.loopexit, !noalias !237

.noexc:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.t = invoke i24 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9f462bdf3f09dd2E"(ptr nonnull align 1 %i.s)
          to label %bb.i unwind label %bb.e, !noalias !237

bb.e:                                             ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %i.p, ptr %i.j, align 8
  invoke void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17h8d9a11beff15b3cfE"(ptr nonnull align 8 %i.a) #20
          to label %.body unwind label %bb.f, !noalias !237

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21, !noalias !237
  unreachable

bb.g:                                             ; preds = %bb.c
  store i64 %i.p, ptr %i.j, align 8
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 %i.p, i64 %i.f, ptr nonnull align 8 @168) #19
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %i.p ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.016, i64 24, i1 false)
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i24 %i.t, ptr %.sroa.217.0..sroa_idx, align 8
  %.pr = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 2 uses
  %i.x = icmp eq i64 %.pr, 0
  br i1 %i.x, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.k, %.body
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

bb.k:                                             ; preds = %.body
  invoke void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$$GT$17h7cd558fbaa692d5cE"(ptr nonnull align 8 %i.d) #20
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca848d91d46dda9bE"(ptr align 8 %0) unnamed_addr #1 !guid !238 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$5clear28_$u7b$$u7b$closure$u7d$$u7d$17h95b771f90fb3bffdE"(ptr nonnull align 1 %i.a, ptr align 8 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he051ca70c2817fbaE"(ptr align 8 %0) unnamed_addr #1 !guid !239 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @"_ZN9hashbrown3raw13RawTableInner14prepare_resize28_$u7b$$u7b$closure$u7d$$u7d$17h29ab433cdb756238E"(ptr align 8 %0, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN88_$LT$hashbrown..scopeguard..ScopeGuard$LT$T$C$F$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he60922a999140d91E"(ptr align 8 %0) unnamed_addr #1 !guid !240 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @"_ZN9hashbrown3raw13RawTableInner15rehash_in_place28_$u7b$$u7b$closure$u7d$$u7d$17h51b0170e9240ee70E"(ptr nonnull align 8 %i.a, ptr align 8 %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN88_$LT$regex_automata..nfa..thompson..compiler..Compiler$u20$as$u20$core..clone..Clone$GT$5clone17hba9314bfee8d656eE"(ptr nofree writeonly sret([448 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !241 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 6 uses
  %i.f = alloca [112 x i8], align 8               ; 4 uses
  %.sroa.29 = alloca [40 x i8], align 8           ; 2 uses
  %i.g = alloca [168 x i8], align 8               ; 4 uses
  %i.h = alloca [72 x i8], align 8                ; 3 uses
  %i.i = alloca [120 x i8], align 8               ; 4 uses
  %i.j = alloca [16 x i8], align 4                ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @"_ZN74_$LT$regex_syntax..parser..ParserBuilder$u20$as$u20$core..clone..Clone$GT$5clone17hf962395a56a4d8acE"(ptr nonnull sret([16 x i8]) align 4 %i.j, ptr nonnull align 4 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.m = call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 19
  %i.o = call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.n)
  %i.p = call { i64, i64 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h4078ca892b2755f7E"(ptr align 8 %1) ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h04562ac21d5acebbE"(ptr nonnull align 1 %i.q)
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 21
  %i.t = call i8 @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hb44bc87d0363f061E"(ptr nonnull align 1 %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = call { i1, i8 } @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h89f371379f90125dE"(ptr nonnull align 1 %i.u) ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp ult i64 %i.x, 9223372036854775807
  br i1 %i.y, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr nonnull align 8 @169) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.z = add nuw nsw i64 %i.x, 1
  store i64 %i.z, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store ptr %i.aa, ptr %i.e, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.w, ptr %i.ab, align 8
  invoke void @"_ZN86_$LT$regex_automata..nfa..thompson..builder..Builder$u20$as$u20$core..clone..Clone$GT$5clone17hf59c1fb902f90b49E"(ptr nonnull sret([112 x i8]) align 8 %i.f, ptr nonnull align 8 %i.aa)
          to label %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5e2935c05e6b8f1aE"(ptr nonnull align 8 %i.e) #20
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.d ], [ %.pn.pn, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E.exit": ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.ae, ptr noundef nonnull align 8 dereferenceable(112) %i.f, i64 112, i1 false)
  store i64 0, ptr %i.i, align 8
  call void @"_ZN4core3ptr91drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5e2935c05e6b8f1aE"(ptr nonnull align 8 %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h5b9bbd9967c6c797E"(ptr nonnull sret([72 x i8]) align 8 %i.h, ptr nonnull align 8 %i.af, ptr nonnull align 8 @169)
          to label %bb.h unwind label %bb.g

bb.f:                                             ; preds = %.body, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.ag, %bb.g ]
  invoke void @"_ZN4core3ptr95drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..builder..Builder$GT$$GT$17h5635682c7c2074b9E"(ptr nonnull align 8 %i.i) #20
          to label %common.resume unwind label %bb.w

bb.g:                                             ; preds = %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E.exit"
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.h:                                             ; preds = %"_ZN67_$LT$core..cell..RefCell$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h882b6b2b59adad44E.exit"
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = icmp ult i64 %i.ai, 9223372036854775807
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h4b83bcbcb74b1f38E(ptr nonnull align 8 @169) #19
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ak = add nuw nsw i64 %i.ai, 1
  store i64 %i.ak, ptr %i.ah, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  store ptr %i.al, ptr %i.c, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ah, ptr %i.am, align 8
  invoke void @"_ZN91_$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$u20$as$u20$core..clone..Clone$GT$5clone17hd93aa8f2ad605be2E"(ptr nonnull sret([160 x i8]) align 8 %i.d, ptr nonnull align 8 %i.al)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h8510f785a0de475eE"(ptr nonnull align 8 %i.c) #20
          to label %.body unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.ao, ptr noundef nonnull align 8 dereferenceable(160) %i.d, i64 160, i1 false)
  store i64 0, ptr %i.g, align 8
  invoke void @"_ZN4core3ptr96drop_in_place$LT$core..cell..Ref$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h8510f785a0de475eE"(ptr nonnull align 8 %i.c)
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #21
  unreachable

.body:                                            ; preds = %bb.n, %bb.k, %.body6
  %.pn = phi { ptr, i32 } [ %eh.lpad-body7, %.body6 ], [ %i.aq, %bb.n ], [ %i.an, %bb.k ]
  invoke void @"_ZN4core3ptr98drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..compiler..Utf8State$GT$$GT$17hf73e948c15d15a94E"(ptr nonnull align 8 %i.h) #20
          to label %bb.f unwind label %bb.w

bb.n:                                             ; preds = %bb.l, %bb.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
end_hunk_1
