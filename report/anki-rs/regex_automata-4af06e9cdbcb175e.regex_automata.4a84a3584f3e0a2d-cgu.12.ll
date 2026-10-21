Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.12?download=true
inline.NumInlined: 611
inline.NumDeleted: 309
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_bounded17hf0775608f9afe5bfE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.m

bb.y:                                             ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit115
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bh = icmp eq i64 %i.bf, 0
  br i1 %i.bh, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i116", label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !1164
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i116": ; preds = %bb.y
  store i64 -1, ptr %i.u, align 8, !noalias !1165
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder5patch17hfdc50f8b24d65ca3E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.x, i32 noundef %i.ay, i32 noundef %i.ba)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit117 unwind label %common.resume.loopexit.split-lp.loopexit.split-lp

_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit117: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i116"
  %i.bi = load i64, ptr %i.u, align 8, !noalias !1164, !noundef !6
  %i.bj = add i64 %i.bi, 1                        ; 2 uses
  store i64 %i.bj, ptr %i.u, align 8, !noalias !1164
  %i.bk = load i64, ptr %i.f, align 8, !range !10, !noundef !6
  %.not109 = icmp eq i64 %i.bk, -9223372036854775800
  br i1 %.not109, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit117
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.f, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.m

bb.ab:                                            ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.bl = icmp eq i64 %i.bj, 0
  br i1 %i.bl, label %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i118", label %bb.ac, !prof !9

bb.ac:                                            ; preds = %bb.ab
  call void @_ZN4core4cell22panic_already_borrowed17h1f63517b53f31867E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #22, !noalias !1166
  unreachable

"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i118": ; preds = %bb.ab
  store i64 -1, ptr %i.u, align 8, !noalias !1167
  invoke void @_ZN14regex_automata3nfa8thompson7builder7Builder5patch17hfdc50f8b24d65ca3E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(112) %i.x, i32 noundef %i.ay, i32 noundef %i.ac)
          to label %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit119 unwind label %common.resume.loopexit.split-lp.loopexit.split-lp

common.resume.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i116", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i114", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i113", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i112", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i118", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i111", %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i"
  %lpad.loopexit.split-lp257 = landingpad { ptr, i32 }
          cleanup
  %i.bm = load i64, ptr %i.u, align 8, !noalias !6, !noundef !6
  %i.bn = add i64 %i.bm, 1
  store i64 %i.bn, ptr %i.u, align 8, !noalias !6
  resume { ptr, i32 } %lpad.loopexit.split-lp257

_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit119: ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE.exit.i118"
  %i.bo = load i64, ptr %i.u, align 8, !noalias !1166, !noundef !6
  %i.bp = add i64 %i.bo, 1                        ; 3 uses
  store i64 %i.bp, ptr %i.u, align 8, !noalias !1166
  %i.bq = load i64, ptr %i.e, align 8, !range !10, !noundef !6
  %.not110 = icmp eq i64 %i.bq, -9223372036854775800
  br i1 %.not110, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.m

bb.ae:                                            ; preds = %_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE.exit119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %exitcond.not = icmp eq i32 %i.ao, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define noundef nonnull align 8 dereferenceable(448) ptr @_ZN14regex_automata3nfa8thompson8compiler8Compiler9configure17hbfe5f8191d8e0e14E(ptr noalias nofree noundef returned align 8 captures(ret: address, provenance) dereferenceable(448) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1172)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 18
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.c = load i64, ptr %1, align 8, !range !18, !alias.scope !1172, !noundef !6 ; 2 uses
  %i.d = load i64, ptr %0, align 8, !range !18, !alias.scope !1171, !noundef !6
  %.not9.i = icmp eq i64 %i.c, 2                  ; 2 uses
  %spec.select.i = select i1 %.not9.i, ptr %0, ptr %1
  %spec.select12.i = select i1 %.not9.i, i64 %i.d, i64 %i.c
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 8
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !1173
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !14, !alias.scope !1172, !noundef !6
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !1172
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.val.i = load i8, ptr %i.j, align 8, !alias.scope !1171 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 17 ; 2 uses
  %.val13.i = load i8, ptr %i.k, align 1, !alias.scope !1171
  %i.l = trunc nuw i8 %.val.i to i1
  %.sroa.3.0.i.i.i = select i1 %i.l, i8 %.val13.i, i8 undef
  %i.m = select i1 %i.g, i8 %i.i, i8 %.sroa.3.0.i.i.i
  %i.n = and i8 %.val.i, 1
  %i.o = select i1 %i.g, i8 1, i8 %i.n
  store i64 %spec.select12.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.3.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  store i8 %i.o, ptr %i.j, align 8
  store i8 %i.m, ptr %i.k, align 1
  %i.p = load <4 x i8>, ptr %i.a, align 2, !alias.scope !1172 ; 2 uses
  %i.q = load <4 x i8>, ptr %i.b, align 2, !alias.scope !1171
  %i.r = icmp eq <4 x i8> %i.p, <i8 2, i8 2, i8 2, i8 3>
  %i.s = select <4 x i1> %i.r, <4 x i8> %i.q, <4 x i8> %i.p
  store <4 x i8> %i.s, ptr %i.b, align 2
  ret ptr %0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata4util6syntax10parse_with17he5120fab61150518E(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [240 x i8], align 8               ; 6 uses
  %i.b = alloca [16 x i8], align 4                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 0, ptr %.sroa.6.0..sroa_idx, align 2
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.sroa.42.sroa.7.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 5
  %.sroa.42.sroa.8.0..sroa.42.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 6
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1178)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 11
  %i.e = load i8, ptr %i.d, align 1, !range !14, !alias.scope !1177, !noundef !6
  %..i = shl nuw nsw i8 %i.e, 1
  store i8 %..i, ptr %.sroa.42.sroa.7.0..sroa.42.0..sroa_idx.sroa_idx, align 1, !alias.scope !1178
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.g = load i8, ptr %i.f, align 1, !range !14, !alias.scope !1177, !noundef !6
  %.sroa.01.0.i = sub nuw nsw i8 2, %i.g
  store i8 %.sroa.01.0.i, ptr %.sroa.42.0..sroa_idx, align 1, !alias.scope !1178
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 6
  %i.i = load i8, ptr %i.h, align 2, !range !14, !alias.scope !1177, !noundef !6
  %.sroa.02.0.i = sub nuw nsw i8 2, %i.i
  store i8 %.sroa.02.0.i, ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx, align 2, !alias.scope !1178
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 7
  %i.k = load i8, ptr %i.j, align 1, !range !14, !alias.scope !1177, !noundef !6
  %.sroa.03.0.i = sub nuw nsw i8 2, %i.k
  store i8 %.sroa.03.0.i, ptr %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx, align 1, !alias.scope !1178
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i8, ptr %i.l, align 4, !range !14, !alias.scope !1177, !noundef !6
  %.sroa.04.0.i = sub nuw nsw i8 2, %i.m
  store i8 %.sroa.04.0.i, ptr %.sroa.42.sroa.8.0..sroa.42.0..sroa_idx.sroa_idx, align 2, !alias.scope !1178
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.o = load i8, ptr %i.n, align 4, !alias.scope !1177, !noundef !6
  store i8 %i.o, ptr %.sroa.53.0..sroa_idx, align 1, !alias.scope !1178
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 9
  %i.q = load i8, ptr %i.p, align 1, !range !14, !alias.scope !1177, !noundef !6
  %.sroa.05.0.i = sub nuw nsw i8 2, %i.q
  store i8 %.sroa.05.0.i, ptr %.sroa.42.sroa.6.0..sroa.42.0..sroa_idx.sroa_idx, align 4, !alias.scope !1178
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 10
  %i.s = load i8, ptr %i.r, align 2, !range !14, !alias.scope !1177, !noundef !6
  store i8 %i.s, ptr %.sroa.4.0..sroa_idx, align 4, !alias.scope !1178
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.u = load i8, ptr %i.t, align 4, !range !14, !alias.scope !1177, !noundef !6
  store i8 %i.u, ptr %i.b, align 4, !alias.scope !1178
  %i.v = load i32, ptr %3, align 4, !alias.scope !1177, !noundef !6
  store i32 %i.v, ptr %i.c, align 4, !alias.scope !1178
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 13
  %i.x = load i8, ptr %i.w, align 1, !range !14, !alias.scope !1177, !noundef !6
  store i8 %i.x, ptr %.sroa.5.0..sroa_idx, align 1, !alias.scope !1178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN12regex_syntax6parser13ParserBuilder5build17h67e4cca3850d45b8E(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.b)
  invoke void @_ZN12regex_syntax6parser6Parser5parse17h1996957eccbbc346E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull align 8 dereferenceable(240) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hc22c94985b6fae15E"(ptr noalias noundef align 8 dereferenceable(240) %i.a) #23
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hc22c94985b6fae15E"(ptr noalias noundef align 8 dereferenceable(240) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define void @_ZN14regex_automata4util6syntax5parse17h80a47273c95658cdE(ptr dead_on_unwind noalias noundef writable sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %3 = alloca [240 x i8], align 8                 ; 6 uses
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1185
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 0, ptr %.sroa.6.0..sroa_idx.i, align 2, !noalias !1185
  store i8 0, ptr %i.c, align 4, !alias.scope !1186, !noalias !1185
  store <8 x i8> <i8 1, i8 2, i8 2, i8 2, i8 2, i8 2, i8 2, i8 10>, ptr %i.a, align 8, !alias.scope !1186, !noalias !1185
  store i32 250, ptr %i.b, align 8, !alias.scope !1186, !noalias !1185
  store i8 0, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !1186, !noalias !1185
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !1185
  call void @_ZN12regex_syntax6parser13ParserBuilder5build17h67e4cca3850d45b8E(ptr noalias noundef nonnull sret([240 x i8]) align 8 captures(address) dereferenceable(240) %3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.a), !noalias !1185
  invoke void @_ZN12regex_syntax6parser6Parser5parse17h1996957eccbbc346E(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %0, ptr noalias noundef nonnull align 8 dereferenceable(240) %3, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
          to label %_ZN14regex_automata4util6syntax10parse_with17he5120fab61150518E.exit unwind label %4, !noalias !1187

4:                                                ; preds = %bb.a
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hc22c94985b6fae15E"(ptr noalias noundef align 8 dereferenceable(240) %3) #23
          to label %8 unwind label %6, !noalias !1188

6:                                                ; preds = %4
  %7 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !noalias !1188
  unreachable

8:                                                ; preds = %4
  resume { ptr, i32 } %5

_ZN14regex_automata4util6syntax10parse_with17he5120fab61150518E.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1185
  call fastcc void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hc22c94985b6fae15E"(ptr noalias noundef align 8 dereferenceable(240) %3), !noalias !1188
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !1185
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h536dca1dc81ee12bE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !align !15, !noundef !6
  %.val = load i8, ptr %i.a, align 1, !range !16, !noundef !6 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h536dca1dc81ee12bE", i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @"switch.table._ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h536dca1dc81ee12bE.117", i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9c28a57e5591472eE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !6, !align !7, !noundef !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1192
  call void @_ZN4core3fmt9Formatter9debug_map17ha1db76d3917da565E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1), !noalias !1193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1192
  call void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$4iter17h238a2f5f37d108b0E"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.c)
  %i.d = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders8DebugMap7entries17he9a0be3d2239f79eE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1192
  %i.e = call noundef zeroext i1 @_ZN4core3fmt8builders8DebugMap6finish17h03c9a309c3bc48d4E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1192
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN48_$LT$$u5b$T$u5d$$u20$as$u20$core..fmt..Debug$GT$3fmt17h43523b5311535d89E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN4core3fmt9Formatter10debug_list17hce385b9777d986d7E(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  %i.b = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  %i.c = call noundef align 8 dereferenceable(16) ptr @_ZN4core3fmt8builders9DebugList7entries17h1daae5f58e1e8ad2E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull %0, ptr noundef nonnull %i.b)
  %i.d = call noundef zeroext i1 @_ZN4core3fmt8builders9DebugList6finish17hbf71f56035f2c70aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h70ecac23f49aed3dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h37bd9ab57da75b39E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h6f03b4a794a26c86E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17h30fc8c73a30a6a7cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha61e2f7a0e771fe2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr103drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17ha1a353d3dabdb71cE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2357809588f33f08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$17h5b0d1e49117f233aE.exit.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr80drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$17h5b0d1e49117f233aE.exit.i.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

"_ZN4core3ptr103drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17ha1a353d3dabdb71cE.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2357809588f33f08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..cell..RefCell$LT$regex_automata..nfa..thompson..range_trie..RangeTrie$GT$$GT$17h2347853ac1e44572E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5835631fad5b3180E"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab6d0aef346d059cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %.body.i.i unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab6d0aef346d059cE"(ptr noalias noundef nonnull align 8 dereferenceable(160) %i.a)
          to label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E.exit.i.i" unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.b
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #23
          to label %.body9.i.i unwind label %bb.v

"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E.exit.i.i": ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5835631fad5b3180E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E.exit.i.i"
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab6d0aef346d059cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body9.i.i unwind label %bb.h

bb.g:                                             ; preds = %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E.exit.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab6d0aef346d059cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E.exit11.i.i" unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

.body9.i.i:                                       ; preds = %bb.i, %bb.f, %.body.i.i
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.j, %bb.i ], [ %i.g, %bb.f ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke fastcc void @"_ZN4core3ptr122drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17hef5dc0003d6ccb47E"(ptr noalias noundef align 8 dereferenceable(32) %i.i) #23
          to label %.body12.i.i unwind label %bb.v

bb.i:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body9.i.i

"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E.exit11.i.i": ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4f66e92d700d202E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr125drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17ha138cf04ff2fc522E.exit.i.i.i" unwind label %bb.j

bb.j:                                             ; preds = %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E.exit11.i.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80fed29b6a7198abE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body12.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr125drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17ha138cf04ff2fc522E.exit.i.i.i": ; preds = %"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E.exit11.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80fed29b6a7198abE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr122drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17hef5dc0003d6ccb47E.exit.i.i" unwind label %bb.l

.body12.i.i:                                      ; preds = %bb.l, %bb.j, %.body9.i.i
  %.pn2.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body9.i.i ], [ %i.o, %bb.l ], [ %i.l, %bb.j ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17h30fc8c73a30a6a7cE"(ptr noalias noundef align 8 dereferenceable(32) %i.n) #23
          to label %.body14.i.i unwind label %bb.v

bb.l:                                             ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17ha138cf04ff2fc522E.exit.i.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body12.i.i

"_ZN4core3ptr122drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17hef5dc0003d6ccb47E.exit.i.i": ; preds = %"_ZN4core3ptr125drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17ha138cf04ff2fc522E.exit.i.i.i"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha61e2f7a0e771fe2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %"_ZN4core3ptr103drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17ha1a353d3dabdb71cE.exit.i.i.i" unwind label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr122drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17hef5dc0003d6ccb47E.exit.i.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2357809588f33f08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body14.i.i unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr103drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17ha1a353d3dabdb71cE.exit.i.i.i": ; preds = %"_ZN4core3ptr122drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17hef5dc0003d6ccb47E.exit.i.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2357809588f33f08E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %"_ZN4core3ptr100drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17h30fc8c73a30a6a7cE.exit.i.i" unwind label %bb.o

.body14.i.i:                                      ; preds = %bb.o, %bb.m, %.body12.i.i
  %.pn4.i.i = phi { ptr, i32 } [ %.pn2.i.i, %.body12.i.i ], [ %i.t, %bb.o ], [ %i.q, %bb.m ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  invoke fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextDupe$GT$$GT$17h2d98e6ee713ebbaeE"(ptr noalias noundef align 8 dereferenceable(24) %i.s) #23
          to label %.body16.i.i unwind label %bb.v

bb.o:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..utf8..Utf8Range$GT$$GT$$GT$17ha1a353d3dabdb71cE.exit.i.i.i"
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr122drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$$GT$$GT$17h42e8b1b56a57b109E":bb.a

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr129drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..vec..Vec$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$$GT$$GT$17h494d65ff271813a0E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr122drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17hef5dc0003d6ccb47E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4f66e92d700d202E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr125drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17ha138cf04ff2fc522E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80fed29b6a7198abE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr102drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$17he5a3add589201fb7E.exit.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr102drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$17he5a3add589201fb7E.exit.i.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

"_ZN4core3ptr125drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextIter$GT$$GT$$GT$17ha138cf04ff2fc522E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80fed29b6a7198abE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN64_$LT$regex_syntax..hir..Hir$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4cb96ffde280ed4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef align 8 dereferenceable(40) %0) #23
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 80, i64 noundef 8) #25
  ret void

bb.f:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.g:                                             ; preds = %bb.b, %bb.d
  %.pn = phi { ptr, i32 } [ %i.b, %bb.d ], [ %i.a, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef 80, i64 noundef 8) #25
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr45drop_in_place$LT$regex_syntax..hir..Class$GT$17h1a163f9f63f265aaE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !21, !noundef !6
  %i.b = icmp eq i64 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2ae0569f46e396c7E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %"_ZN4core3ptr52drop_in_place$LT$regex_syntax..hir..ClassUnicode$GT$17h6a96ea16ed073fe5E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3a6efff214b8f0aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

common.resume:                                    ; preds = %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.d, %bb.c ], [ %i.f, %bb.f ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr52drop_in_place$LT$regex_syntax..hir..ClassUnicode$GT$17h6a96ea16ed073fe5E.exit": ; preds = %bb.b
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3a6efff214b8f0aE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h32d3cc5809ec8b5cE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %"_ZN4core3ptr50drop_in_place$LT$regex_syntax..hir..ClassBytes$GT$17h1a4a6ccaab07fbd6E.exit" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5fdd31280cab6c43E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr50drop_in_place$LT$regex_syntax..hir..ClassBytes$GT$17h1a4a6ccaab07fbd6E.exit": ; preds = %bb.e
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5fdd31280cab6c43E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c)
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$regex_syntax..hir..ClassBytes$GT$17h1a4a6ccaab07fbd6E.exit", %"_ZN4core3ptr52drop_in_place$LT$regex_syntax..hir..ClassUnicode$GT$17h6a96ea16ed073fe5E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !22, !noundef !6 ; 3 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c
  switch i64 %i.d, label %bb.b [
    i64 0, label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit"
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit"
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95788fefaefa0912E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.r, %bb.l ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit": ; preds = %bb.b
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit"

"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit": ; preds = %bb.f, %bb.e, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit3", %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Capture$GT$17h514a6f32d3e39a39E.exit", %bb.h, %bb.g, %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit", %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.i = icmp eq i64 %.val1, 0
  br i1 %i.i, label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.j, align 8, !nonnull !6, !noundef !6
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %.val1, i64 noundef 1) #25
  br label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit"

bb.g:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr45drop_in_place$LT$regex_syntax..hir..Class$GT$17h1a163f9f63f265aaE"(ptr noalias noundef align 8 dereferenceable(40) %0)
  br label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit"

bb.h:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$regex_syntax..hir..Hir$GT$$GT$17h4f1dcbaa4af1a177E"(ptr noalias noundef align 8 dereferenceable(8) %i.k), !inline_history !1194
  br label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit"

bb.i:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1198)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !1198, !align !15, !noundef !6 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load i64, ptr %i.n, align 8, !alias.scope !1198 ; 2 uses
  %i.o = icmp eq ptr %.val.i, null
  %i.p = icmp eq i64 %.val1.i, 0
  %or.cond.i = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond.i, label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Capture$GT$17h514a6f32d3e39a39E.exit", label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ], !noalias !1198
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #25, !noalias !1198
  br label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Capture$GT$17h514a6f32d3e39a39E.exit"

"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Capture$GT$17h514a6f32d3e39a39E.exit": ; preds = %bb.j, %bb.i
  tail call fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$regex_syntax..hir..Hir$GT$$GT$17h4f1dcbaa4af1a177E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l), !inline_history !1197
  br label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit"

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95788fefaefa0912E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit3" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE.exit3": ; preds = %bb.k
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Literal$GT$17hab6026b73632f66dE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr49drop_in_place$LT$regex_syntax..parser..Parser$GT$17hc22c94985b6fae15E"(ptr noalias noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfcd981a87a6b5943E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr100drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..Comment$GT$$GT$$GT$17h8d50923f2cf8e7b3E.exit.i.i" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he90a54ba80b480b8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr100drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..Comment$GT$$GT$$GT$17h8d50923f2cf8e7b3E.exit.i.i": ; preds = %bb.a
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he90a54ba80b480b8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr97drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..Comment$GT$$GT$$GT$17hc3a9771e221a6fd8E.exit.i" unwind label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr100drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..Comment$GT$$GT$$GT$17h8d50923f2cf8e7b3E.exit.i.i"
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.d, %bb.d ], [ %i.b, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17ha1b5e8f5b3b7967aE"(ptr noalias noundef align 8 dereferenceable(32) %i.e) #23
          to label %.body6.i unwind label %bb.p

"_ZN4core3ptr97drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..Comment$GT$$GT$$GT$17hc3a9771e221a6fd8E.exit.i": ; preds = %"_ZN4core3ptr100drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..Comment$GT$$GT$$GT$17h8d50923f2cf8e7b3E.exit.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9b8f6b09de908167E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr110drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17h1e0dedc08818e9baE.exit.i.i" unwind label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..Comment$GT$$GT$$GT$17hc3a9771e221a6fd8E.exit.i"
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0da65eb833829e52E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body6.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr110drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17h1e0dedc08818e9baE.exit.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..Comment$GT$$GT$$GT$17hc3a9771e221a6fd8E.exit.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0da65eb833829e52E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17ha1b5e8f5b3b7967aE.exit.i" unwind label %bb.g

.body6.i:                                         ; preds = %bb.g, %bb.e, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.j, %bb.g ], [ %i.g, %bb.e ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8e36b794ec3b4c16E"(ptr noalias noundef align 8 dereferenceable(32) %i.i) #23
          to label %.body8.i unwind label %bb.p

bb.g:                                             ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17h1e0dedc08818e9baE.exit.i.i"
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %.body6.i

"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17ha1b5e8f5b3b7967aE.exit.i": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17h1e0dedc08818e9baE.exit.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h14f30c33cea80f8aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr110drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8b21b2d4c0161c27E.exit.i.i" unwind label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17ha1b5e8f5b3b7967aE.exit.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb9d431a148c32a17E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %.body8.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr110drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8b21b2d4c0161c27E.exit.i.i": ; preds = %"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..GroupState$GT$$GT$$GT$17ha1b5e8f5b3b7967aE.exit.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb9d431a148c32a17E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8e36b794ec3b4c16E.exit.i" unwind label %bb.j

.body8.i:                                         ; preds = %bb.j, %bb.h, %.body6.i
  %.pn2.i = phi { ptr, i32 } [ %.pn.i, %.body6.i ], [ %i.o, %bb.j ], [ %i.l, %bb.h ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @"_ZN4core3ptr101drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17h26126794d41be4e0E"(ptr noalias noundef align 8 dereferenceable(32) %i.n) #23
          to label %.body10.i unwind label %bb.p

bb.j:                                             ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8b21b2d4c0161c27E.exit.i.i"
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body8.i

"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8e36b794ec3b4c16E.exit.i": ; preds = %"_ZN4core3ptr110drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8b21b2d4c0161c27E.exit.i.i"
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h34dda83a7d0ec5a2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17hc7ff38c4e40244e2E.exit.i.i" unwind label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8e36b794ec3b4c16E.exit.i"
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h705253b7ddd0d066E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body10.i unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr104drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17hc7ff38c4e40244e2E.exit.i.i": ; preds = %"_ZN4core3ptr107drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..parse..ClassState$GT$$GT$$GT$17h8e36b794ec3b4c16E.exit.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h705253b7ddd0d066E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %"_ZN4core3ptr101drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17h26126794d41be4e0E.exit.i" unwind label %bb.m

.body10.i:                                        ; preds = %bb.m, %bb.k, %.body8.i
  %.pn4.i = phi { ptr, i32 } [ %.pn2.i, %.body8.i ], [ %i.t, %bb.m ], [ %i.q, %bb.k ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$core..cell..RefCell$LT$alloc..string..String$GT$$GT$17he69d9653a13c1789E"(ptr noalias noundef align 8 dereferenceable(32) %i.s) #23
          to label %.body unwind label %bb.p

bb.m:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17hc7ff38c4e40244e2E.exit.i.i"
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body10.i

"_ZN4core3ptr101drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17h26126794d41be4e0E.exit.i": ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17hc7ff38c4e40244e2E.exit.i.i"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64d9003bd4dd77e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %"_ZN4core3ptr69drop_in_place$LT$core..cell..RefCell$LT$alloc..string..String$GT$$GT$17he69d9653a13c1789E.exit.i" unwind label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr101drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17h26126794d41be4e0E.exit.i"
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr69drop_in_place$LT$core..cell..RefCell$LT$alloc..string..String$GT$$GT$17he69d9653a13c1789E.exit.i": ; preds = %"_ZN4core3ptr101drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..ast..CaptureName$GT$$GT$$GT$17h26126794d41be4e0E.exit.i"
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %"_ZN4core3ptr53drop_in_place$LT$regex_syntax..ast..parse..Parser$GT$17h97372148216b0c19E.exit" unwind label %bb.q

bb.p:                                             ; preds = %.body10.i, %.body8.i, %.body6.i, %.body.i
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

bb.q:                                             ; preds = %"_ZN4core3ptr69drop_in_place$LT$core..cell..RefCell$LT$alloc..string..String$GT$$GT$17he69d9653a13c1789E.exit.i"
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body10.i, %bb.n, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.y, %bb.q ], [ %i.v, %bb.n ], [ %.pn4.i, %.body10.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 200
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE"(ptr noalias noundef align 8 dereferenceable(40) %i.z) #23
          to label %common.resume unwind label %bb.t

"_ZN4core3ptr53drop_in_place$LT$regex_syntax..ast..parse..Parser$GT$17h97372148216b0c19E.exit": ; preds = %"_ZN4core3ptr69drop_in_place$LT$core..cell..RefCell$LT$alloc..string..String$GT$$GT$17he69d9653a13c1789E.exit.i"
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54e3dfa4499a0663E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit" unwind label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr53drop_in_place$LT$regex_syntax..ast..parse..Parser$GT$17h97372148216b0c19E.exit"
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd34639e373501fb7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

common.resume:                                    ; preds = %.body, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %i.ab, %bb.r ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE.exit": ; preds = %"_ZN4core3ptr53drop_in_place$LT$regex_syntax..ast..parse..Parser$GT$17h97372148216b0c19E.exit"
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd34639e373501fb7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
  ret void

bb.t:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr54drop_in_place$LT$regex_syntax..utf8..Utf8Sequences$GT$17heeed8473809c306bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ebb91a9b262b9a9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c392075bdd6ddfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17he7c934bc8e621e1cE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr82drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17he7c934bc8e621e1cE.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr75drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..utf8..ScalarRange$GT$$GT$17h38cefbf649b14be1E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha4c392075bdd6ddfE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_syntax..hir..translate..Translator$GT$17hf782be54e85eb09aE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h54e3dfa4499a0663E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd34639e373501fb7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$17h4cbd9398b1116458E.exit.i.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr89drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$17h4cbd9398b1116458E.exit.i.i.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

"_ZN4core3ptr109drop_in_place$LT$core..cell..RefCell$LT$alloc..vec..Vec$LT$regex_syntax..hir..translate..HirFrame$GT$$GT$$GT$17h81ced8f03d543313E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd34639e373501fb7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr66drop_in_place$LT$alloc..vec..Vec$LT$regex_syntax..hir..Hir$GT$$GT$17h24107f1faccf2f1fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h95788fefaefa0912E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr73drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_syntax..hir..Hir$GT$$GT$17hf2e67c2db677af6eE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7fb45ba24ae9620aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr73drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_syntax..hir..Hir$GT$$GT$17hf2e67c2db677af6eE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$regex_syntax..hir..Hir$GT$$GT$17h4f1dcbaa4af1a177E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6 ; 7 uses
  invoke void @"_ZN64_$LT$regex_syntax..hir..Hir$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb4cb96ffde280ed4E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b, !inline_history !19

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a) #23
          to label %bb.d unwind label %bb.f, !inline_history !19

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..HirKind$GT$17h8ef2e12125ccbecfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.g unwind label %bb.e, !inline_history !19

bb.d:                                             ; preds = %bb.e, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !1201, !nonnull !6, !noundef !6
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef 80, i64 noundef 8) #25, !inline_history !19
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #25
  resume { ptr, i32 } %.pn.i

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.f:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24, !inline_history !19
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !1201, !nonnull !6, !noundef !6
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 80, i64 noundef 8) #25, !inline_history !19
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #25
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr69drop_in_place$LT$core..cell..RefCell$LT$alloc..string..String$GT$$GT$17he69d9653a13c1789E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h64d9003bd4dd77e9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr72drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..string..String$GT$$GT$17hb96462d467be6c1fE.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h5a259a295a0feae0E.exit.i.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h5a259a295a0feae0E.exit.i.i.i": ; preds = %bb.b
  resume { ptr, i32 } %i.b

"_ZN4core3ptr72drop_in_place$LT$core..cell..UnsafeCell$LT$alloc..string..String$GT$$GT$17hb96462d467be6c1fE.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he3b98a42065343f1E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr70drop_in_place$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$17h049883ff9f83eaacE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04fc86ed3f7c5c7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h010eff5055960f1cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr97drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17h88c48f23d1b8546cE.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17h88c48f23d1b8546cE.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h010eff5055960f1cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr77drop_in_place$LT$regex_automata..nfa..thompson..literal_trie..LiteralTrie$GT$17he3edd36ffcfd8858E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hef282e1c90f4bd10E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..literal_trie..State$GT$$GT$17hc85aa4bba2eb8855E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7205a69b6417b3c9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %"_ZN4core3ptr101drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..literal_trie..State$GT$$GT$17h60ebb416ed88ead5E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr101drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..literal_trie..State$GT$$GT$17h60ebb416ed88ead5E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..literal_trie..State$GT$$GT$17hc85aa4bba2eb8855E.exit": ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7205a69b6417b3c9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hc4a99848f8d07f9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd01970aed9f1e853E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb999820c28fdf921E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hcbd46d1795836e59E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb999820c28fdf921E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr92drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..primitives..StateID$GT$$GT$17hcbd46d1795836e59E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17hb67130496ea165a6E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04fc86ed3f7c5c7aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h010eff5055960f1cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr97drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17h88c48f23d1b8546cE.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h010eff5055960f1cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..nfa..Transition$GT$$GT$17h88c48f23d1b8546cE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr92drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h0b572367ccee80e5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5835631fad5b3180E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab6d0aef346d059cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr99drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h2cea2863cec7aaf6E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hab6d0aef346d059cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr99drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..range_trie..State$GT$$GT$17h2cea2863cec7aaf6E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$$GT$17h8b83075f8b41e074E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6807fa47d3e041faE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he753f62ffc5896b4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr100drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$$GT$17hefb7b1c32d803669E.exit" unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he753f62ffc5896b4E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #24
  unreachable

"_ZN4core3ptr100drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..compiler..Utf8Node$GT$$GT$17hefb7b1c32d803669E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr95drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..range_trie..NextDupe$GT$$GT$17h2d98e6ee713ebbaeE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfac65efe6e801fb2E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h48dd6c45a3f871dfE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %"_ZN4core3ptr102drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..nfa..thompson..range_trie..NextDupe$GT$$GT$17h7d8cf30e85f218dfE.exit" unwind label %bb.d

end_hunk_1
begin_hunk_2_@llvm.memset.p0.i64
!979 = distinct !{!979, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!980 = distinct !{!980, !979, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!981 = distinct !{!981, i1 true, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h4c51a073771bcb4dE"}
!982 = distinct !{!982, !981, !"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3all17h4c51a073771bcb4dE: argument 0"}
!983 = distinct !{!983, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE"}
!984 = distinct !{!984, !983, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE: argument 0"}
!985 = distinct !{!985, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE"}
!986 = distinct !{!986, !985, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE: argument 0"}
!987 = distinct !{!987, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!988 = distinct !{!988, !987, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!989 = distinct !{!989, i1 true, !"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"}
!990 = distinct !{!990, !989, !"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E: argument 0"}
!991 = distinct !{!991, i1 true, !"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"}
!992 = distinct !{!992, !991, !"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E: argument 0"}
!993 = distinct !{!993, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler10c_alt_iter17h6b1286ce3d9a770aE"}
!994 = distinct !{!994, !993, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler10c_alt_iter17h6b1286ce3d9a770aE: argument 0"}
!995 = distinct !{!995, !993, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler10c_alt_iter17h6b1286ce3d9a770aE: argument 1"}
!996 = distinct !{!996, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler6c_fail17h8df4315ba11264ecE"}
!997 = distinct !{!997, !996, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler6c_fail17h8df4315ba11264ecE: argument 0"}
!998 = distinct !{!998, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler8add_fail17h58141d50d1a2efc4E"}
!999 = distinct !{!999, !998, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler8add_fail17h58141d50d1a2efc4E: argument 0"}
!1000 = distinct !{!1000, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1001 = distinct !{!1001, !1000, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1002 = distinct !{!1002, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_union17habe11919647d7588E"}
!1003 = distinct !{!1003, !1002, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_union17habe11919647d7588E: argument 0"}
!1004 = distinct !{!1004, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1005 = distinct !{!1005, !1004, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1006 = distinct !{!1006, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE"}
!1007 = distinct !{!1007, !1006, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE: argument 0"}
!1008 = distinct !{!1008, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1009 = distinct !{!1009, !1008, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1010 = distinct !{!1010, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE"}
!1011 = distinct !{!1011, !1010, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE: argument 0"}
!1012 = distinct !{!1012, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1013 = distinct !{!1013, !1012, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1014 = distinct !{!1014, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1015 = distinct !{!1015, !1014, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1016 = !{!976}
!1017 = !{!978}
!1018 = !{!980}
!1019 = !{!982}
!1020 = !{!984}
!1021 = !{!988, !986, !984}
!1022 = !{!986, !984}
!1023 = !{!990}
!1024 = !{!992}
!1025 = !{!994}
!1026 = !{!994, !995}
!1027 = !{!997, !994, !995}
!1028 = !{!1001, !999, !997, !994, !995}
!1029 = !{!999, !997, !994, !995}
!1030 = !{!995}
!1031 = !{!1005, !1003, !994, !995}
!1032 = !{!1003, !994, !995}
!1033 = !{!1007, !994, !995}
!1034 = !{!1009, !1007, !994, !995}
!1035 = !{!1013, !1011}
!1036 = !{!1011}
!1037 = !{!1015}
!1038 = distinct !{!1038, i1 true, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$u32$GT$2lt17ha30340562226d3e9E"}
!1039 = distinct !{!1039, !1038, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$u32$GT$2lt17ha30340562226d3e9E: argument 0"}
!1040 = distinct !{!1040, i1 true, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc691a33a20b09fbaE"}
!1041 = distinct !{!1041, !1040, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc691a33a20b09fbaE: argument 0"}
!1042 = distinct !{!1042, !1038, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$u32$GT$2lt17ha30340562226d3e9E: argument 1"}
!1043 = distinct !{!1043, i1 true, !"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h716d206f87ad10dcE"}
!1044 = distinct !{!1044, !1043, !"_ZN4core4iter5range101_$LT$impl$u20$core..iter..traits..iterator..Iterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$4next17h716d206f87ad10dcE: argument 0"}
!1045 = distinct !{!1045, i1 true, !"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hba4be5938e7f7951E"}
!1046 = distinct !{!1046, !1045, !"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$9spec_next17hba4be5938e7f7951E: argument 0"}
!1047 = distinct !{!1047, !1040, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc691a33a20b09fbaE: argument 1"}
!1048 = distinct !{!1048, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly28_$u7b$$u7b$closure$u7d$$u7d$17h747f4fbcb4f7fceaE"}
!1049 = distinct !{!1049, !1048, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly28_$u7b$$u7b$closure$u7d$$u7d$17h747f4fbcb4f7fceaE: argument 1"}
!1050 = distinct !{null, null}
!1051 = distinct !{!1051, i1 true, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$u32$GT$2lt17ha30340562226d3e9E"}
!1052 = distinct !{!1052, !1051, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$u32$GT$2lt17ha30340562226d3e9E: argument 0"}
!1053 = distinct !{!1053, i1 true, !"_ZN117_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb71f26976c8227afE"}
!1054 = distinct !{!1054, !1053, !"_ZN117_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb71f26976c8227afE: argument 0"}
!1055 = distinct !{!1055, !1051, !"_ZN4core3cmp5impls55_$LT$impl$u20$core..cmp..PartialOrd$u20$for$u20$u32$GT$2lt17ha30340562226d3e9E: argument 1"}
!1056 = distinct !{!1056, i1 true, !"_ZN4core4iter5range116_$LT$impl$u20$core..iter..traits..double_ended..DoubleEndedIterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9next_back17haa8f7ac44a2998c4E"}
!1057 = distinct !{!1057, !1056, !"_ZN4core4iter5range116_$LT$impl$u20$core..iter..traits..double_ended..DoubleEndedIterator$u20$for$u20$core..ops..range..Range$LT$A$GT$$GT$9next_back17haa8f7ac44a2998c4E: argument 0"}
!1058 = distinct !{!1058, i1 true, !"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$14spec_next_back17hbefd8f2582656defE"}
!1059 = distinct !{!1059, !1058, !"_ZN89_$LT$core..ops..range..Range$LT$T$GT$$u20$as$u20$core..iter..range..RangeIteratorImpl$GT$14spec_next_back17hbefd8f2582656defE: argument 0"}
!1060 = distinct !{!1060, !1053, !"_ZN117_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb71f26976c8227afE: argument 1"}
!1061 = distinct !{!1061, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly28_$u7b$$u7b$closure$u7d$$u7d$17h747f4fbcb4f7fceaE"}
!1062 = distinct !{!1062, !1061, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly28_$u7b$$u7b$closure$u7d$$u7d$17h747f4fbcb4f7fceaE: argument 1"}
!1063 = distinct !{null, null}
!1064 = distinct !{!1064, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE"}
!1065 = distinct !{!1065, !1064, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler7c_empty17h894220c1e5d4f5cfE: argument 0"}
!1066 = distinct !{!1066, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE"}
!1067 = distinct !{!1067, !1066, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE: argument 0"}
!1068 = distinct !{!1068, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1069 = distinct !{!1069, !1068, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1070 = distinct !{!1070, i1 true, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc691a33a20b09fbaE"}
!1071 = distinct !{!1071, !1070, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc691a33a20b09fbaE: argument 1"}
!1072 = distinct !{!1072, !1070, !"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc691a33a20b09fbaE: argument 0"}
!1073 = distinct !{!1073, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly28_$u7b$$u7b$closure$u7d$$u7d$17h747f4fbcb4f7fceaE"}
!1074 = distinct !{!1074, !1073, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly28_$u7b$$u7b$closure$u7d$$u7d$17h747f4fbcb4f7fceaE: argument 1"}
!1075 = distinct !{!1075, i1 true, !"_ZN117_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb71f26976c8227afE"}
!1076 = distinct !{!1076, !1075, !"_ZN117_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb71f26976c8227afE: argument 1"}
!1077 = distinct !{!1077, !1075, !"_ZN117_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb71f26976c8227afE: argument 0"}
!1078 = distinct !{!1078, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly28_$u7b$$u7b$closure$u7d$$u7d$17h747f4fbcb4f7fceaE"}
!1079 = distinct !{!1079, !1078, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly28_$u7b$$u7b$closure$u7d$$u7d$17h747f4fbcb4f7fceaE: argument 1"}
!1080 = distinct !{!1080, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE"}
!1081 = distinct !{!1081, !1080, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE: argument 0"}
!1082 = distinct !{!1082, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1083 = distinct !{!1083, !1082, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1084 = !{!1039}
!1085 = !{!1041}
!1086 = !{!1042}
!1087 = !{!1039, !1046, !1044}
!1088 = !{!1042, !1046, !1044}
!1089 = !{!1041, !1047}
!1090 = !{!1049}
!1091 = !{!1049, !1041}
!1092 = !{!1047}
!1093 = !{!1052}
!1094 = !{!1054}
!1095 = !{!1055}
!1096 = !{!1052, !1059, !1057}
!1097 = !{!1055, !1059, !1057}
!1098 = !{!1054, !1060}
!1099 = !{!1062}
!1100 = !{!1062, !1054}
!1101 = !{!1060}
!1102 = !{!1065}
!1103 = !{!1069, !1067, !1065}
!1104 = !{!1067, !1065}
!1105 = !{!1072, !1071}
!1106 = !{!1074, !1072}
!1107 = !{!1071}
!1108 = !{!1077, !1076}
!1109 = !{!1079, !1077}
!1110 = !{!1076}
!1111 = !{!1083, !1081}
!1112 = !{!1081}
!1113 = distinct !{!1113, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1114 = distinct !{!1114, !1113, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1115 = !{!1114}
!1116 = distinct !{!1116, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1117 = distinct !{!1117, !1116, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1118 = !{!1117}
!1119 = distinct !{!1119, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1120 = distinct !{!1120, !1119, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1121 = !{!1120}
!1122 = distinct !{!1122, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly17hc02af02b746e0986E"}
!1123 = distinct !{!1123, !1122, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly17hc02af02b746e0986E: argument 1"}
!1124 = distinct !{!1124, !1122, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9c_exactly17hc02af02b746e0986E: argument 0"}
!1125 = distinct !{!1125, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE"}
!1126 = distinct !{!1126, !1125, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_empty17hf1640bd3139961ffE: argument 0"}
!1127 = distinct !{!1127, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1128 = distinct !{!1128, !1127, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1129 = distinct !{!1129, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE"}
!1130 = distinct !{!1130, !1129, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE: argument 0"}
!1131 = distinct !{!1131, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1132 = distinct !{!1132, !1131, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1133 = distinct !{!1133, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_union_reverse17he80b67658b460473E"}
!1134 = distinct !{!1134, !1133, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler17add_union_reverse17he80b67658b460473E: argument 0"}
!1135 = distinct !{!1135, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1136 = distinct !{!1136, !1135, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1137 = distinct !{!1137, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_union17habe11919647d7588E"}
!1138 = distinct !{!1138, !1137, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler9add_union17habe11919647d7588E: argument 0"}
!1139 = distinct !{!1139, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1140 = distinct !{!1140, !1139, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1141 = distinct !{!1141, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE"}
!1142 = distinct !{!1142, !1141, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE: argument 0"}
!1143 = distinct !{!1143, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1144 = distinct !{!1144, !1143, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1145 = distinct !{!1145, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE"}
!1146 = distinct !{!1146, !1145, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE: argument 0"}
!1147 = distinct !{!1147, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1148 = distinct !{!1148, !1147, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1149 = distinct !{!1149, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE"}
!1150 = distinct !{!1150, !1149, !"_ZN14regex_automata3nfa8thompson8compiler8Compiler5patch17hd9582e0545bd1f8cE: argument 0"}
!1151 = distinct !{!1151, i1 true, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE"}
!1152 = distinct !{!1152, !1151, !"_ZN4core4cell16RefCell$LT$T$GT$10borrow_mut17ha95f14b7ad16dcbdE: argument 0"}
!1153 = !{!1124, !1123}
!1154 = !{!1128, !1126}
!1155 = !{!1126}
!1156 = !{!1130}
!1157 = !{!1132, !1130}
!1158 = !{!1134}
!1159 = !{!1136, !1134}
!1160 = !{!1138}
!1161 = !{!1140, !1138}
!1162 = !{!1144, !1142}
!1163 = !{!1142}
!1164 = !{!1146}
!1165 = !{!1148, !1146}
!1166 = !{!1150}
!1167 = !{!1152, !1150}
!1168 = distinct !{!1168, i1 true, !"_ZN14regex_automata3nfa8thompson8compiler6Config9overwrite17hdf8f4ae33125ce5fE"}
!1169 = distinct !{!1169, !1168, !"_ZN14regex_automata3nfa8thompson8compiler6Config9overwrite17hdf8f4ae33125ce5fE: argument 1"}
!1170 = distinct !{!1170, !1168, !"_ZN14regex_automata3nfa8thompson8compiler6Config9overwrite17hdf8f4ae33125ce5fE: argument 2"}
!1171 = !{!1169}
!1172 = !{!1170}
!1173 = !{!1169, !1170}
!1174 = distinct !{!1174, i1 true, !"_ZN14regex_automata4util6syntax6Config5apply17h50f5ae8aebb42e34E"}
!1175 = distinct !{!1175, !1174, !"_ZN14regex_automata4util6syntax6Config5apply17h50f5ae8aebb42e34E: argument 0"}
!1176 = distinct !{!1176, !1174, !"_ZN14regex_automata4util6syntax6Config5apply17h50f5ae8aebb42e34E: argument 1"}
!1177 = !{!1175}
!1178 = !{!1176}
!1179 = distinct !{!1179, i1 true, !"_ZN14regex_automata4util6syntax10parse_with17he5120fab61150518E"}
!1180 = distinct !{!1180, !1179, !"_ZN14regex_automata4util6syntax10parse_with17he5120fab61150518E: argument 2"}
!1181 = distinct !{!1181, !1179, !"_ZN14regex_automata4util6syntax10parse_with17he5120fab61150518E: argument 1"}
!1182 = distinct !{!1182, !1179, !"_ZN14regex_automata4util6syntax10parse_with17he5120fab61150518E: argument 0"}
!1183 = distinct !{!1183, i1 true, !"_ZN14regex_automata4util6syntax6Config5apply17h50f5ae8aebb42e34E"}
!1184 = distinct !{!1184, !1183, !"_ZN14regex_automata4util6syntax6Config5apply17h50f5ae8aebb42e34E: argument 1"}
!1185 = !{!1182, !1181, !1180}
!1186 = !{!1184}
!1187 = !{!1180}
!1188 = !{!1182, !1180}
!1189 = distinct !{!1189, i1 true, !"_ZN90_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17had29457ed357120eE"}
!1190 = distinct !{!1190, !1189, !"_ZN90_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17had29457ed357120eE: argument 1"}
!1191 = distinct !{!1191, !1189, !"_ZN90_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17had29457ed357120eE: argument 0"}
!1192 = !{!1191, !1190}
!1193 = !{!1191}
!1194 = distinct !{null}
!1195 = distinct !{!1195, i1 true, !"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Capture$GT$17h514a6f32d3e39a39E"}
!1196 = distinct !{!1196, !1195, !"_ZN4core3ptr47drop_in_place$LT$regex_syntax..hir..Capture$GT$17h514a6f32d3e39a39E: argument 0"}
!1197 = distinct !{null}
!1198 = !{!1196}
!1199 = distinct !{!1199, i1 true, !"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E"}
!1200 = distinct !{!1200, !1199, !"_ZN4core3ptr43drop_in_place$LT$regex_syntax..hir..Hir$GT$17hcf8b499f558b9139E: argument 0"}
!1201 = !{!1200}
end_hunk_2
