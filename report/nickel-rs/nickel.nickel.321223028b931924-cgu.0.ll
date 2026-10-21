Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel.nickel.321223028b931924-cgu.0?download=true
inline.NumInlined: 8339
inline.NumDeleted: 3956
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hed812a3005248fa4E":bb.a
  br i1 %.not60.i.i.i.i.i.i.i.i.i.i, label %_ZN14regex_automata4util4iter8Searcher7advance17h2134e7d3cfe02366E.exit.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fd = add i64 %i.fa, -1                       ; 3 uses
  %i.fe = add i64 %i.fc, -1                       ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.fd, %i.fe
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.w, !prof !22

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !993
  store ptr @75, ptr %i.ao, align 8, !noalias !993
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 1, ptr %i.ff, align 8, !noalias !993
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr null, ptr %i.fg, align 8, !noalias !993
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fh, align 8, !noalias !993
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %i.fi, align 8, !noalias !993
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ao, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #45, !noalias !994
  unreachable

bb.w:                                             ; preds = %bb.u
  %.sroa.10.24.insert.ext.i.i.i.i.i.i.i = zext i32 %i.en to i64
  %.not.i.i.i.i.i.i.i = icmp ugt i64 %i.fe, %i.fd
  br i1 %.not.i.i.i.i.i.i.i, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.ad, %bb.aa, %bb.z, %bb.w
  %i.fj = phi i64 [ %.pre68.i.i.i.i.i.i.i, %bb.ad ], [ %i.cu, %bb.aa ], [ %i.cu, %bb.z ], [ %i.cu, %bb.w ] ; 2 uses
  %i.fk = phi i64 [ %.pre.i.i.i.i.i.i.i, %bb.ad ], [ %i.ct, %bb.aa ], [ %i.ct, %bb.z ], [ %i.ct, %bb.w ] ; 4 uses
  %.sroa.8.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.657.0.copyload.i.i.i.i.i.i.i, %bb.ad ], [ %i.fe, %bb.aa ], [ %i.fe, %bb.z ], [ %i.fe, %bb.w ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !995)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !996
  store i64 %.sroa.8.0.i.i.i.i.i.i.i, ptr %i.an, align 8, !noalias !997
  store i64 %i.fk, ptr %i.bq, align 8, !noalias !997
  %.not.i.i.i.i.i.i.i.i = icmp ugt i64 %i.fk, %i.fj
  %i.fl = add i64 %i.fk, 1
  %.not8.i.i.i.i.i.i.i.i = icmp ugt i64 %.sroa.8.0.i.i.i.i.i.i.i, %i.fl
  %or.cond.i.i.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i.i.i, %.not8.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.y, label %_ZN14regex_automata4util6search5Input8set_span17he5fd6b449d1449f8E.exit.i.i.i.i.i.i.i, !prof !24

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !997
  store i64 %i.fj, ptr %i.al, align 8, !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !997
  store ptr %i.an, ptr %i.ak, align 8, !noalias !997
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @"_ZN71_$LT$regex_automata..util..search..Span$u20$as$u20$core..fmt..Debug$GT$3fmt17hccb532d965a06914E", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !997
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store ptr %i.al, ptr %i.fm, align 8, !noalias !997
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !997
  store ptr @72, ptr %i.am, align 8, !noalias !997
  %i.fn = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store i64 2, ptr %i.fn, align 8, !noalias !997
  %i.fo = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr null, ptr %i.fo, align 8, !noalias !997
  %i.fp = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.ak, ptr %i.fp, align 8, !noalias !997
  %i.fq = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store i64 2, ptr %i.fq, align 8, !noalias !997
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.am, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #45, !noalias !998
  unreachable

_ZN14regex_automata4util6search5Input8set_span17he5fd6b449d1449f8E.exit.i.i.i.i.i.i.i: ; preds = %bb.x
  store i64 %.sroa.8.0.i.i.i.i.i.i.i, ptr %i.bl, align 8, !alias.scope !999
  store i64 %i.fk, ptr %i.bm, align 8, !alias.scope !999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !996
  store i64 1, ptr %i.bd, align 8, !alias.scope !1000
  store i64 %.sroa.8.0.i.i.i.i.i.i.i, ptr %i.bp, align 8, !alias.scope !1000
  br label %_ZN14regex_automata4util4iter8Searcher7advance17h2134e7d3cfe02366E.exit.i.i.i.i.i

bb.z:                                             ; preds = %bb.w
  %i.fr = load i64, ptr %i.bd, align 8, !range !15, !alias.scope !1000, !noundef !16
  %i.fs = trunc nuw i64 %i.fr to i1
  br i1 %i.fs, label %bb.aa, label %bb.x

bb.aa:                                            ; preds = %bb.z
  %i.ft = load i64, ptr %i.bp, align 8, !alias.scope !1000, !noundef !16
  %i.fu = icmp eq i64 %i.fe, %i.ft
  br i1 %i.fu, label %bb.ab, label %bb.x, !prof !22

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !996
  store i64 %i.fd, ptr %i.aq, align 8, !noalias !996
  store i64 %i.fe, ptr %.sroa.8.0..sroa_idx4.i.i.i.i.i.i.i, align 8, !noalias !996
  store i64 %.sroa.10.24.insert.ext.i.i.i.i.i.i.i, ptr %.sroa.12.0..sroa_idx13.i.i.i.i.i.i.i, align 8, !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !996
  store ptr %i.bx, ptr %i.ap, align 8, !noalias !1001
  store <2 x ptr> %i.bw, ptr %.sroa.59.0..sroa_idx.i.i.i.i.i, align 8, !noalias !1001
  call void @_ZN14regex_automata4util4iter8Searcher30handle_overlapping_empty_match17h512c8de02bfb79e5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.bd, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.ap), !noalias !1002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !996
  %i.fv = load i64, ptr %i.ar, align 8, !range !35, !noalias !996, !noundef !16 ; 2 uses
  %i.fw = icmp eq i64 %i.fv, 2
  br i1 %i.fw, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.sroa.657.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.657.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !996
  %i.fx = trunc nuw i64 %i.fv to i1
  br i1 %i.fx, label %bb.ad, label %_ZN14regex_automata4util4iter8Searcher7advance17h2134e7d3cfe02366E.exit.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.bm, align 8, !alias.scope !1000
  %.pre68.i.i.i.i.i.i.i = load i64, ptr %i.bn, align 8, !alias.scope !999
  br label %bb.x

bb.ae:                                            ; preds = %bb.ab
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.fz = load ptr, ptr %i.fy, align 8, !noalias !996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1003
  store ptr %i.fz, ptr %i.au, align 8, !noalias !1003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1003
  store ptr %i.au, ptr %i.as, align 8, !noalias !1003
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @"_ZN79_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Display$GT$3fmt17h39de6e426c58f75eE", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1003
  store ptr @58, ptr %i.at, align 8, !noalias !1003
  %i.ga = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 2, ptr %i.ga, align 8, !noalias !1003
  %i.gb = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  store ptr null, ptr %i.gb, align 8, !noalias !1003
  %i.gc = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.as, ptr %i.gc, align 8, !noalias !1003
  %i.gd = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i64 1, ptr %i.gd, align 8, !noalias !1003
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.at, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @60) #45
          to label %bb.af unwind label %bb.ag, !noalias !1004

bb.af:                                            ; preds = %bb.ae
  unreachable

common.resume:                                    ; preds = %bb.fy, %bb.ga, %bb.ag, %bb.am, %bb.an, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.at, %bb.au, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i", %bb.bh, %bb.cv, %bb.cw
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i.i, %bb.bh ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gr, %bb.am ], [ %i.ge, %bb.ag ], [ %i.gr, %bb.an ], [ %i.he, %bb.at ], [ %i.he, %bb.au ], [ %i.mj, %bb.cv ], [ %i.mj, %bb.cw ], [ %.pn.pn.i.i, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i" ], [ %.pn.i, %bb.ga ], [ %.pn.i, %bb.fy ]
  resume { ptr, i32 } %common.resume.op

bb.ag:                                            ; preds = %bb.ae
  %i.ge = landingpad { ptr, i32 }
          cleanup
  %.val.i.i.i.i.i.i = load ptr, ptr %i.au, align 8, !noalias !1003, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef 16, i64 noundef 8) #44, !noalias !1004
  br label %common.resume

_ZN14regex_automata4util4iter8Searcher7advance17h2134e7d3cfe02366E.exit.i.i.i.i.i: ; preds = %bb.ac, %_ZN14regex_automata4util6search5Input8set_span17he5fd6b449d1449f8E.exit.i.i.i.i.i.i.i, %bb.t, %bb.s, %bb.r, %bb.q, %_ZN14regex_automata4meta5regex5Regex17search_slots_with17h9130ecac2c09afbcE.exit.i.i.i.i.i.i.i.i, %_ZN14regex_automata4meta5regex9RegexInfo13is_impossible17hc1b22919eec0c0bfE.exit.i.i.i.i.i.i.i.i.i, %bb.k, %bb.j, %bb.i, %bb.g
  %i.gf = load i32, ptr %i.bf, align 8, !range !38, !alias.scope !974, !noundef !16
  %i.gg = trunc nuw i32 %i.gf to i1
  br i1 %i.gg, label %bb.ah, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h10cab1647b97e67dE.exit.thread"

"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h10cab1647b97e67dE.exit.thread": ; preds = %_ZN14regex_automata4util4iter8Searcher7advance17h2134e7d3cfe02366E.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  br label %bb.gb

bb.ah:                                            ; preds = %_ZN14regex_automata4util4iter8Searcher7advance17h2134e7d3cfe02366E.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1005)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1006
  %i.gh = load ptr, ptr %i.bo, align 8, !alias.scope !1007, !nonnull !16, !noundef !16 ; 4 uses
  %i.gi = atomicrmw add ptr %i.gh, i64 1 monotonic, align 8, !noalias !1008
  %i.gj = icmp slt i64 %i.gi, 0
  br i1 %i.gj, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.gh, ptr %i.aj, align 8, !noalias !1006
  %i.gk = load i32, ptr %i.bg, align 4, !alias.scope !1007
  %.val.i7.i.i.i.i.i = load ptr, ptr %i.bh, align 8, !alias.scope !1007, !nonnull !16, !noundef !16
  %.val3.i.i.i.i.i.i = load i64, ptr %i.bi, align 8, !alias.scope !1007, !noundef !16 ; 5 uses
  %i.gl = shl i64 %.val3.i.i.i.i.i.i, 3           ; 5 uses
  %i.gm = icmp ugt i64 %.val3.i.i.i.i.i.i, 2305843009213693951
  %i.gn = icmp ugt i64 %i.gl, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.gm, %i.gn
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.ak, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ai
  %i.go = icmp eq i64 %i.gl, 0
  br i1 %i.go, label %bb.ap, label %bb.aj

bb.aj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1009
  %i.gp = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.gl, i64 noundef range(i64 1, 9) 8) #44, !noalias !1009 ; 2 uses
  %i.gq = icmp eq ptr %i.gp, null
  br i1 %i.gq, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 8, %bb.aj ], [ 0, %bb.ai ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %i.gl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc.i.i.i.i.i.i unwind label %bb.am, !noalias !1008

.noexc.i.i.i.i.i.i:                               ; preds = %bb.ak
  unreachable

bb.al:                                            ; preds = %bb.ah
  call void @llvm.trap()
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.gr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %1 = atomicrmw sub ptr %i.gh, i64 1 release, align 8, !noalias !1010
  %i.gs = icmp eq i64 %1, 1
  br i1 %i.gs, label %bb.an, label %common.resume

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aj)
          to label %common.resume unwind label %bb.ao, !noalias !1008

bb.ao:                                            ; preds = %bb.an
  %i.gt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !1008
  unreachable

bb.ap:                                            ; preds = %bb.aj, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.gp, %bb.aj ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %.val3.i.i.i.i.i.i, %bb.aj ] ; 2 uses
  %i.gu = icmp samesign ule i64 %.val3.i.i.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.gu)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 8 %.val.i7.i.i.i.i.i, i64 %i.gl, i1 false), !noalias !1011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1006
  %i.gv = load ptr, ptr %i.br, align 8, !alias.scope !974, !nonnull !16, !align !28, !noundef !16 ; 2 uses
  %i.gw = load i64, ptr %i.bs, align 8, !alias.scope !974, !noundef !16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.616.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1012
  store i64 %.sroa.0.0.i.i.i.i.i, ptr %i.av, align 8, !noalias !1012
  store i64 %.sroa.5.0.i.i.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1012
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !1012
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !1012
  store i64 %.val3.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !1012
  store i32 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !1012
  store i32 %i.gk, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 4, !noalias !1012
  store ptr %i.gh, ptr %.sroa.88.0..sroa_idx.i.i.i.i, align 8, !noalias !1012
  store ptr %i.gv, ptr %.sroa.99.0..sroa_idx.i.i.i.i, align 8, !noalias !1012
  store i64 %i.gw, ptr %.sroa.1010.0..sroa_idx.i.i.i.i, align 8, !noalias !1012
  call void @llvm.experimental.noalias.scope.decl(metadata !1013)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1015
  invoke void @_ZN14regex_automata4util8captures8Captures4iter17h5ada3b58a888dec5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.bt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i.i)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1016

.noexc.i.i.i.i.i:                                 ; preds = %bb.ap
  store ptr %i.gv, ptr %i.ai, align 8, !noalias !1015
  store i64 %i.gw, ptr %i.bu, align 8, !noalias !1015
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  br label %bb.aq

bb.aq:                                            ; preds = %.backedge199, %.noexc.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1019
  invoke void @"_ZN110_$LT$regex_automata..util..captures..CapturesPatternIter$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h619b166054bf7559E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.bt)
          to label %.noexc1.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1016

.noexc1.i.i.i.i.i:                                ; preds = %bb.aq
  %i.gx = load i64, ptr %i.ah, align 8, !range !35, !noalias !1019, !noundef !16
  switch i64 %i.gx, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h3f3b5e0d4c439e73E.exit.i.i.i.i.i.i.i.i" [
    i64 2, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.i.i.i.i"
    i64 0, label %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h3f3b5e0d4c439e73E.exit.thread.i.i.i.i.i.i.i.i"
  ]

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h3f3b5e0d4c439e73E.exit.thread.i.i.i.i.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1019
  br label %.backedge199

"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h3f3b5e0d4c439e73E.exit.i.i.i.i.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  %i.gy = load i64, ptr %i.bu, align 8, !alias.scope !1020, !noalias !1015, !noundef !16
  %i.gz = load ptr, ptr %i.ai, align 8, !alias.scope !1020, !noalias !1015, !nonnull !16, !align !28, !noundef !16
  %i.ha = load <2 x i64>, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1021
  store ptr %i.gz, ptr %i.ag, align 8, !noalias !1022
  store i64 %i.gy, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 8, !noalias !1023
  store <2 x i64> %i.ha, ptr %.sroa.610.8..sroa.5.0..sroa_idx2.i.sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1023
  %i.hb = invoke noundef zeroext i1 @_ZN16nickel_lang_core4term6string29grapheme_cluster_preservation5regex36does_match_start_and_end_on_boundary17h8d2dadd5ade1752cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.val.i.i, i64 noundef %.val1.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ag)
          to label %.noexc2.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1016

.noexc2.i.i.i.i.i:                                ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h3f3b5e0d4c439e73E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !1021
  br i1 %i.hb, label %.backedge199, label %bb.ar

.backedge199:                                     ; preds = %.noexc2.i.i.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h3f3b5e0d4c439e73E.exit.thread.i.i.i.i.i.i.i.i"
  br label %bb.aq

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %"_ZN4core4iter6traits8iterator8Iterator3all5check28_$u7b$$u7b$closure$u7d$$u7d$17h3f3b5e0d4c439e73E.exit.i.i.i.i.i.i.i.i", %bb.aq, %bb.ap
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17hbc64c41b1eceb9c7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.av) #46
          to label %common.resume unwind label %bb.aw, !noalias !1016

bb.ar:                                            ; preds = %.noexc2.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1015
  call void @llvm.experimental.noalias.scope.decl(metadata !1024)
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.experimental.noalias.scope.decl(metadata !1027)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  %i.hc = load ptr, ptr %.sroa.88.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1029, !noalias !1012, !nonnull !16, !noundef !16
  %2 = atomicrmw sub ptr %i.hc, i64 1 release, align 8, !noalias !1030
  %i.hd = icmp eq i64 %2, 1
  br i1 %i.hd, label %bb.as, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i.i"

bb.as:                                            ; preds = %bb.ar
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.88.0..sroa_idx.i.i.i.i)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i.i" unwind label %bb.at, !noalias !1016

bb.at:                                            ; preds = %bb.as
  %i.he = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1031, !noalias !1012 ; 2 uses
  %i.hf = icmp eq i64 %.val2.i.i.i.i.i.i.i, 0
  br i1 %i.hf, label %common.resume, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1031, !noalias !1012, !nonnull !16, !noundef !16
  %i.hg = shl nuw i64 %.val2.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i, i64 noundef %i.hg, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1016
  br label %common.resume

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i.i": ; preds = %bb.as, %bb.ar
  %.val.i.i.i.i.i.i.i = load i64, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1031, !noalias !1012 ; 2 uses
  %i.hh = icmp eq i64 %.val.i.i.i.i.i.i.i, 0
  br i1 %i.hh, label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.thread.i.i.i.i", label %bb.av

bb.av:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i.i"
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1031, !noalias !1012, !nonnull !16, !noundef !16
  %i.hi = shl nuw i64 %.val.i.i.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.hi, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1016
  br label %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.thread.i.i.i.i"

bb.aw:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.hj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !1016
  unreachable

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.thread.i.i.i.i": ; preds = %bb.av, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1012
  br label %bb.ax

"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.i.i.i.i": ; preds = %.noexc1.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1015
  %.sroa.015.0.copyload.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !1032, !noalias !1012 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.2.0..sroa_idx.i.i.i.i, i64 64, i1 false), !alias.scope !1032, !noalias !1012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !1012
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.015.0.copyload.i.i.i.i, 2
  br i1 %.not.i.i.i.i.i, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.i.i.i.i", %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.thread.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i.i)
  br label %bb.b

bb.ay:                                            ; preds = %"_ZN4core4iter6traits8iterator8Iterator4find5check28_$u7b$$u7b$closure$u7d$$u7d$17he345ba2e1e0da0ebE.exit.i.i.i.i"
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !1033
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.616.i.i.i.i, i64 64, i1 false), !noalias !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.616.i.i.i.i)
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.sroa.015.0.copyload.i.i.i.i, ptr %i.aw, align 8, !noalias !1033
  %.val.i = load ptr, ptr %i.hk, align 8, !alias.scope !968 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1034)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1035)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.aw, i64 40
  %i.ho = load i32, ptr %i.hn, align 8, !range !38, !alias.scope !1036, !noalias !1033, !noundef !16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.aw, i64 44
  %i.hq = load i32, ptr %i.hp, align 4, !alias.scope !1036, !noalias !1033
  %i.hr = trunc nuw i32 %i.ho to i1
  br i1 %i.hr, label %bb.az, label %bb.bk

bb.az:                                            ; preds = %bb.ay
  %i.hs = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !alias.scope !1036, !noalias !1033, !nonnull !16, !noundef !16
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32
  %i.hv = load i64, ptr %i.hu, align 8, !noalias !1037, !noundef !16 ; 3 uses
  %i.hw = icmp ult i64 %i.hv, 1152921504606846976
  call void @llvm.assume(i1 %i.hw)
  %i.hx = icmp eq i64 %i.hv, 1
  br i1 %i.hx, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hy = zext i32 %i.hq to i64                   ; 2 uses
  %.not.i.i.i.i = icmp samesign ugt i64 %i.hv, %i.hy
  %i.hz = shl nuw nsw i64 %i.hy, 1                ; 2 uses
  %i.ia = or disjoint i64 %i.hz, 1
  br i1 %.not.i.i.i.i, label %bb.bb, label %bb.bk

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.sroa.057.0.i.i.i = phi i64 [ 0, %bb.az ], [ %i.hz, %bb.ba ] ; 2 uses
  %.sroa.058.0.i.i.i = phi i64 [ 1, %bb.az ], [ %i.ia, %bb.ba ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.aw, i64 24 ; 3 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.aw, i64 32
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !1036, !noalias !1033, !noundef !16 ; 2 uses
  %.not63.i.i.i = icmp ult i64 %.sroa.057.0.i.i.i, %i.id
  %i.ie = load ptr, ptr %i.ib, align 8, !alias.scope !1036, !noalias !1033, !nonnull !16 ; 2 uses
  br i1 %.not63.i.i.i, label %bb.bc, label %bb.bk

bb.bc:                                            ; preds = %bb.bb
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.sroa.057.0.i.i.i
  %i.ig = load i64, ptr %i.if, align 8, !noalias !1037, !noundef !16 ; 6 uses
  %.not.i.i.i = icmp ne i64 %i.ig, 0
  %.not64.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i, %i.id
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %.not64.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.bd, label %bb.bk

bb.bd:                                            ; preds = %bb.bc
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %.sroa.058.0.i.i.i
  %i.ii = load i64, ptr %i.ih, align 8, !noalias !1037, !noundef !16 ; 6 uses
  %.not60.i.i.i = icmp eq i64 %i.ii, 0
  br i1 %.not60.i.i.i, label %bb.bk, label %bb.bj

.body.i.i:                                        ; preds = %bb.ce, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c8149b4fd09469E.exit.i.i", %.body.i.i.i.i.i.i, %bb.bp, %bb.bo, %bb.bo, %bb.bi
  %.pn.pn.i.i = phi { ptr, i32 } [ %i.jb, %bb.bp ], [ %i.it, %bb.bi ], [ %eh.lpad-body.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %i.jb, %bb.bo ], [ %i.jb, %bb.bo ], [ %.pn.i.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c8149b4fd09469E.exit.i.i" ], [ %.pn.i.i, %bb.ce ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  call void @llvm.experimental.noalias.scope.decl(metadata !1039), !noalias !1040
  %i.ij = getelementptr inbounds nuw i8, ptr %i.aw, i64 48 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1041), !noalias !1040
  call void @llvm.experimental.noalias.scope.decl(metadata !1042), !noalias !1040
  call void @llvm.experimental.noalias.scope.decl(metadata !1043), !noalias !1040
  %i.ik = load ptr, ptr %i.ij, align 8, !alias.scope !1044, !noalias !1045, !nonnull !16, !noundef !16
  %3 = atomicrmw sub ptr %i.ik, i64 1 release, align 8, !noalias !1046
  %i.il = icmp eq i64 %3, 1
  br i1 %i.il, label %bb.be, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i"

bb.be:                                            ; preds = %.body.i.i
  fence acquire, !noalias !1040
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ij)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i" unwind label %bb.bf, !noalias !1047

bb.bf:                                            ; preds = %bb.be
  %i.im = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val2.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1048, !noalias !1045 ; 2 uses
  %i.in = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.in, label %.body.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.io = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val3.i.i.i = load ptr, ptr %i.io, align 8, !alias.scope !1048, !noalias !1045, !nonnull !16, !noundef !16
  %i.ip = shl nuw i64 %.val2.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.ip, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1047
  br label %.body.i

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i": ; preds = %bb.be, %.body.i.i
  %.val.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1048, !noalias !1045 ; 2 uses
  %i.iq = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.iq, label %common.resume, label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i"
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %.val1.i.i.i = load ptr, ptr %i.ir, align 8, !alias.scope !1048, !noalias !1045, !nonnull !16, !noundef !16
  %i.is = shl nuw i64 %.val.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.is, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1047
  br label %common.resume

bb.bi:                                            ; preds = %bb.bm, %bb.bk, %bb.bj
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.bj:                                            ; preds = %bb.bd
  %i.iu = add i64 %i.ig, -1                       ; 8 uses
  %i.iv = add i64 %i.ii, -1                       ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %i.aw, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !1034, !noalias !1033, !nonnull !16, !align !28, !noundef !16 ; 5 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.iz = load i64, ptr %i.iy, align 8, !alias.scope !1034, !noalias !1033, !noundef !16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1049
  invoke void @_ZN14regex_automata4util8captures8Captures4iter17h5ada3b58a888dec5E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.hm)
          to label %bb.bm unwind label %bb.bi, !noalias !1047

bb.bk:                                            ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.ay
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @307) #45
          to label %bb.bl unwind label %bb.bi, !noalias !1047

bb.bl:                                            ; preds = %bb.cs, %.loopexit24.i.i, %bb.bk
  unreachable

bb.bm:                                            ; preds = %bb.bj
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false), !noalias !1049
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1049
  store ptr %i.ix, ptr %i.ac, align 8, !alias.scope !1051, !noalias !1052
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.iz, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !alias.scope !1051, !noalias !1052
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store i64 1, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !1051, !noalias !1052
  call void @llvm.experimental.noalias.scope.decl(metadata !1053)
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1055
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb4d8f5d6fee17f7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.ac)
          to label %.noexc.i.i unwind label %bb.bi, !noalias !1047

.noexc.i.i:                                       ; preds = %bb.bm
  %i.ja = load i64, ptr %i.aa, align 8, !range !39, !noalias !1055, !noundef !16 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ja, -9223372036854775807
  br i1 %.not.i.i.i.i.i.i, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1055
  br label %bb.by

bb.bo:                                            ; preds = %bb.bs
  %i.jb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  switch i64 %i.ja, label %bb.bp [
    i64 -9223372036854775808, label %.body.i.i
    i64 0, label %.body.i.i
  ]

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i.i.i.i.i.i, i64 noundef %i.ja, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1056
  br label %.body.i.i

bb.bq:                                            ; preds = %.noexc.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1055 ; 3 uses
  %.sroa.6.0..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !1055
  %i.jc = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.jc, align 8, !alias.scope !1057, !noalias !1050, !nonnull !16, !noundef !16
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %.val5.i.i.i.i.i.i.i.i = load ptr, ptr %i.jd, align 8, !alias.scope !1057, !noalias !1050, !nonnull !16, !noundef !16
  %i.je = ptrtoint ptr %.val5.i.i.i.i.i.i.i.i to i64
  %i.jf = ptrtoint ptr %.val.i.i.i.i.i.i.i.i to i64
  %i.jg = sub nuw i64 %i.je, %i.jf
  %i.jh = lshr exact i64 %i.jg, 4
  %i.ji = load i64, ptr %.sroa.65.0..sroa_idx.i.i, align 8, !alias.scope !1057, !noalias !1050, !noundef !16
  %i.jj = call i64 @llvm.usub.sat.i64(i64 %i.jh, i64 %i.ji) ; 2 uses
  %i.jk = call i64 @llvm.umax.i64(i64 %i.jj, i64 3) ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i.i = add nuw nsw i64 %i.jk, 1 ; 2 uses
  %i.jl = mul i64 %.sroa.0.0.i.i.i.i.i.i.i, 24    ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i.i = icmp samesign ugt i64 %i.jj, 384307168202282324
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.bs, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %bb.bq
  %i.jm = icmp eq i64 %i.jl, 0
  br i1 %i.jm, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1058
  %i.jn = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jl, i64 noundef range(i64 1, 9) 8) #44, !noalias !1058 ; 2 uses
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.br ], [ 0, %bb.bq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.jl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @463) #45
          to label %.noexc.i.i.i.i.i3.i unwind label %bb.bo, !noalias !1059

.noexc.i.i.i.i.i3.i:                              ; preds = %bb.bs
  unreachable

bb.bt:                                            ; preds = %bb.br, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.jn, %bb.br ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i.i, %bb.br ] ; 3 uses
  %i.jp = icmp samesign ult i64 %i.jk, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.jp)
  store i64 %i.ja, ptr %.sroa.10.0.i.i.i.i.i.i.i, align 8, !noalias !1059
  %.sroa.410.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i, ptr %.sroa.410.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1059
  %.sroa.511.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.10.0.i.i.i.i.i.i.i, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i, ptr %.sroa.511.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1059
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.ab, align 8, !noalias !1055
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1055
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1055
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1055
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.z, ptr noundef nonnull align 8 dereferenceable(56) %i.ac, i64 56, i1 false), !noalias !1060
  call void @llvm.experimental.noalias.scope.decl(metadata !1061)
  call void @llvm.experimental.noalias.scope.decl(metadata !1062)
  call void @llvm.experimental.noalias.scope.decl(metadata !1063)
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1065
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb4d8f5d6fee17f7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %.noexc6.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1059

.noexc6.i.i.i.i.i.i:                              ; preds = %bb.bt
  %i.jq = load i64, ptr %i.y, align 8, !range !39, !noalias !1065, !noundef !16 ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i64 %i.jq, -9223372036854775807
  br i1 %.not12.i.i.i.i.i.i.i.i, label %.loopexit12.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.noexc6.i.i.i.i.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.jt = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  br label %bb.bu

bb.bu:                                            ; preds = %.noexc7.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ju = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ka, %.noexc7.i.i.i.i.i.i ]
  %i.jv = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kc, %.noexc7.i.i.i.i.i.i ] ; 5 uses
  %i.jw = phi i64 [ %i.jq, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.kd, %.noexc7.i.i.i.i.i.i ] ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1065 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1065
  %i.jx = icmp samesign ult i64 %i.jv, 384307168202282326
  call void @llvm.assume(i1 %i.jx)
  %i.jy = load i64, ptr %i.ab, align 8, !range !40, !alias.scope !1066, !noalias !1055, !noundef !16
  %i.jz = icmp eq i64 %i.jv, %i.jy
  br i1 %i.jz, label %bb.bx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i_crit_edge.i.i.i.i.i.i", %bb.bu
  %i.ka = phi ptr [ %.pre.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17heed1ecb72d779ed0E.exit.i.i_crit_edge.i.i.i.i.i.i" ], [ %i.ju, %bb.bu ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [24 x i8], ptr %i.ka, i64 %i.jv ; 3 uses
  store i64 %i.jw, ptr %i.kb, align 8, !noalias !1067
  %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  store ptr %.sroa.5.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.49.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1067
  %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  store i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i, ptr %.sroa.510.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !1067
  %i.kc = add nuw nsw i64 %i.jv, 1                ; 3 uses
  store i64 %i.kc, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !1066, !noalias !1055
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1065
  invoke fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17heb4d8f5d6fee17f7E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.z)
          to label %.noexc7.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1059
end_hunk_0
begin_hunk_1_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hed812a3005248fa4E":bb.a
  %i.la = icmp eq i64 %i.kz, %i.iu
  br i1 %i.la, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1076
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1078
  %i.lb = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #44, !noalias !1078 ; 3 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.cb, label %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h169a6dd1a8e9f99fE.exit.i.i.i.i.i", !prof !22

bb.cb:                                            ; preds = %bb.ca
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #45
          to label %.noexc61.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1047

.noexc61.i.i:                                     ; preds = %bb.cb
  unreachable

"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h169a6dd1a8e9f99fE.exit.i.i.i.i.i": ; preds = %bb.ca
  store i64 %i.kw, ptr %i.lb, align 8, !noalias !1078
  store i64 1, ptr %i.x, align 8, !alias.scope !1079, !noalias !1076
  store ptr %i.lb, ptr %i.kt, align 8, !alias.scope !1079, !noalias !1076
  store i64 1, ptr %i.ku, align 8, !alias.scope !1079, !noalias !1076
  invoke void @"_ZN12malachite_nz7natural10conversion10from_limbs48_$LT$impl$u20$malachite_nz..natural..Natural$GT$20from_owned_limbs_asc17he0a178d1730e0898E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %.sroa.0.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.x)
          to label %.noexc62.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1047

.noexc62.i.i:                                     ; preds = %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h169a6dd1a8e9f99fE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1076
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.24..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) @40, i64 24, i1 false), !noalias !1080
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %.sroa.0.i.i.i.i.i.i, align 8, !noalias !1080 ; 4 uses
  %.not.i.i.i.i2.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i.i2.i, label %bb.cc, label %bb.cf

bb.cc:                                            ; preds = %.noexc62.i.i, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i), !noalias !1075
  %i.ld = add i64 %i.kw, 1                        ; 2 uses
  store i64 %i.ld, ptr %i.kr, align 8, !alias.scope !1073, !noalias !1081
  %i.le = invoke fastcc ptr @"_ZN100_$LT$unicode_segmentation..grapheme..Graphemes$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h23989c0c124e9c8bE"(ptr noalias noundef nonnull align 8 dereferenceable(200) %i.af)
          to label %.noexc63.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc63.i.i:                                     ; preds = %bb.cc
  %.not.i.i59.i.i = icmp eq ptr %i.le, null
  br i1 %.not.i.i59.i.i, label %.loopexit24.i.i, label %bb.bz

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.co, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i.i"
  %.pn.i.i = phi { ptr, i32 } [ %i.ly, %bb.co ], [ %i.ly, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i.i" ], [ %lpad.loopexit.split-lp186, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1082), !noalias !1040
  %i.lf = icmp eq i64 %.sroa.8.0.i, 0
  br i1 %i.lf, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c8149b4fd09469E.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.loopexit.split-lp.i.i, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.lh, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i" ], [ 0, %.loopexit.split-lp.i.i ] ; 2 uses
  %i.lg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.615.0.i, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.lh = add nuw i64 %.sroa.0.011.i.i.i.i, 1     ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.lg, align 8, !range !33, !alias.scope !1082, !noalias !1083, !noundef !16 ; 2 uses
  %switch.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i, 0
  br i1 %switch.i.i.i.i, label %bb.cd, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i"

bb.cd:                                            ; preds = %.lr.ph.i.i.i.i
  %i.li = getelementptr i8, ptr %i.lg, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.li, align 8, !alias.scope !1082, !noalias !1083, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1084
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i": ; preds = %bb.cd, %.lr.ph.i.i.i.i
  %i.lj = icmp eq i64 %i.lh, %.sroa.8.0.i
  br i1 %i.lj, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c8149b4fd09469E.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c8149b4fd09469E.exit.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i", %.loopexit.split-lp.i.i
  %i.lk = icmp eq i64 %.sroa.013.0.i, 0
  br i1 %i.lk, label %.body.i.i, label %bb.ce

bb.ce:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h83c8149b4fd09469E.exit.i.i"
  %i.ll = mul nuw i64 %.sroa.013.0.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.615.0.i, i64 noundef %i.ll, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1083
  br label %.body.i.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.cc, %"_ZN16nickel_lang_core4term6string12NickelString14find_all_regex28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h169a6dd1a8e9f99fE.exit.i.i.i.i.i", %bb.by, %.loopexit24.i.i, %bb.cb
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit24.i.i:                                  ; preds = %.noexc63.i.i, %.noexc60.i.i
  store i64 -9223372036854775807, ptr %i.ad, align 8, !noalias !1033
  call fastcc void @"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$malachite_q..Rational$GT$$GT$17hb687ef14db0cf35bE"(ptr noalias noundef align 8 dereferenceable(56) %i.ad), !noalias !1085
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @308, i64 noundef 72, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @309) #45
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1047

bb.cf:                                            ; preds = %.noexc62.i.i
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.0.i.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.hl, ptr noundef nonnull align 8 dereferenceable(40) %i.lm, i64 40, i1 false), !noalias !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i), !noalias !1075
  %.sroa.319.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i8 1, ptr %.sroa.319.0..sroa_idx.i.i.i, align 8, !noalias !1033
  %.sroa.519.8.copyload.i = load ptr, ptr %i.hl, align 8, !noalias !1033 ; 3 uses
  %.sroa.720.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.721.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.sroa.721.8.copyload.i = load i64, ptr %.sroa.721.8..sroa_idx.i, align 8, !noalias !1033 ; 2 uses
  %i.ln = load <2 x i64>, ptr %.sroa.720.8..sroa_idx.i, align 8, !noalias !1033
  %.sroa.822.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %.sroa.822.8.copyload.i = load ptr, ptr %.sroa.822.8..sroa_idx.i, align 8, !noalias !1033 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !1049
  %.not.i64.i.i = icmp ugt i64 %i.iu, %i.iv
  br i1 %.not.i64.i.i, label %bb.cs, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lo = icmp eq i64 %i.iu, 0
  br i1 %i.lo, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %.not5.i.i.i = icmp ult i64 %i.iu, %i.iz
  br i1 %.not5.i.i.i, label %bb.cj, label %.split.i.i.i

bb.ci:                                            ; preds = %bb.cj, %.split.i.i.i, %bb.cg
  %i.lp = icmp eq i64 %i.iv, 0
  br i1 %i.lp, label %bb.cp, label %bb.ck

.split.i.i.i:                                     ; preds = %bb.ch
  %i.lq = icmp eq i64 %i.iu, %i.iz
  br i1 %i.lq, label %bb.ci, label %bb.cs

bb.cj:                                            ; preds = %bb.ch
  %i.lr = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iu
  %i.ls = load i8, ptr %i.lr, align 1, !alias.scope !1086, !noalias !1047, !noundef !16
  %i.lt = icmp sgt i8 %i.ls, -65
  br i1 %i.lt, label %bb.ci, label %bb.cs

bb.ck:                                            ; preds = %bb.ci
  %.not6.i.i.i = icmp ult i64 %i.iv, %i.iz
  br i1 %.not6.i.i.i, label %bb.cl, label %.split7.i.i.i

.split7.i.i.i:                                    ; preds = %bb.ck
  %i.lu = icmp eq i64 %i.iv, %i.iz
  br i1 %i.lu, label %bb.cp, label %bb.cs

bb.cl:                                            ; preds = %bb.ck
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iv
  %i.lw = load i8, ptr %i.lv, align 1, !alias.scope !1086, !noalias !1047, !noundef !16
  %i.lx = icmp sgt i8 %i.lw, -65
  br i1 %i.lx, label %bb.cp, label %bb.cs

bb.cm:                                            ; preds = %bb.cs, %bb.cr
  %i.ly = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %switch.i.i = icmp sgt i64 %.sroa.0.0.copyload1.i.i.i.i.i, 0
  br i1 %switch.i.i, label %bb.cn, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i.i"

bb.cn:                                            ; preds = %bb.cm
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.519.8.copyload.i) ]
  %i.lz = shl nuw i64 %.sroa.0.0.copyload1.i.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.519.8.copyload.i, i64 noundef %i.lz, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1087
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i.i": ; preds = %bb.cn, %bb.cm
  %switch8.i.i = icmp sgt i64 %.sroa.721.8.copyload.i, 0
  br i1 %switch8.i.i, label %bb.co, label %.loopexit.split-lp.i.i

bb.co:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.822.8.copyload.i) ]
  %i.ma = shl nuw i64 %.sroa.721.8.copyload.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.822.8.copyload.i, i64 noundef %i.ma, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1087
  br label %.loopexit.split-lp.i.i

bb.cp:                                            ; preds = %bb.cl, %.split7.i.i.i, %bb.ci
  %i.mb = sub nuw i64 %i.ii, %i.ig                ; 10 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.iu
  %i.md = icmp slt i64 %i.mb, 0
  br i1 %i.md, label %bb.cr, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.cp
  %i.me = icmp eq i64 %i.ii, %i.ig
  br i1 %i.me, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1088
  %i.mf = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.mb, i64 noundef range(i64 1, 9) 1) #44, !noalias !1088 ; 2 uses
  %i.mg = icmp eq ptr %i.mf, null
  br i1 %i.mg, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.cq ], [ 0, %bb.cp ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.mb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc65.i.i unwind label %bb.cm, !noalias !1047

.noexc65.i.i:                                     ; preds = %bb.cr
  unreachable

bb.cs:                                            ; preds = %bb.cl, %.split7.i.i.i, %bb.cj, %.split.i.i.i, %bb.cf
  invoke void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.ix, i64 noundef %i.iz, i64 noundef %i.iu, i64 noundef %i.iv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @311) #45
          to label %bb.bl unwind label %bb.cm, !noalias !1047

bb.ct:                                            ; preds = %bb.cq, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.mf, %bb.cq ] ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.mc, i64 %i.mb, i1 false), !noalias !1089
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  call void @llvm.experimental.noalias.scope.decl(metadata !1091)
  call void @llvm.experimental.noalias.scope.decl(metadata !1092)
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  %i.mh = load ptr, ptr %i.hs, align 8, !alias.scope !1095, !noalias !1033, !nonnull !16, !noundef !16
  %4 = atomicrmw sub ptr %i.mh, i64 1 release, align 8, !noalias !1096
  %i.mi = icmp eq i64 %4, 1
  br i1 %i.mi, label %bb.cu, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i"

bb.cu:                                            ; preds = %bb.ct
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hs)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i" unwind label %bb.cv, !noalias !1047

bb.cv:                                            ; preds = %bb.cu
  %i.mj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1097, !noalias !1033 ; 2 uses
  %i.mk = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.mk, label %common.resume, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %.val3.i.i.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !1097, !noalias !1033, !nonnull !16, !noundef !16
  %i.ml = shl nuw i64 %.val2.i.i.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %i.ml, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1047
  br label %common.resume

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i": ; preds = %bb.cu, %bb.ct
  %.val.i.i66.i.i = load i64, ptr %i.hm, align 8, !alias.scope !1097, !noalias !1033 ; 2 uses
  %i.mm = icmp eq i64 %.val.i.i66.i.i, 0
  br i1 %i.mm, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i"
  %.val1.i.i67.i.i = load ptr, ptr %i.ib, align 8, !alias.scope !1097, !noalias !1033, !nonnull !16, !noundef !16
  %i.mn = shl nuw i64 %.val.i.i66.i.i, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i67.i.i, i64 noundef %i.mn, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !1047
  br label %bb.cy

.body.i:                                          ; preds = %bb.bg, %bb.bf
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !1047
  unreachable

bb.cy:                                            ; preds = %bb.cx, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !1033
  %.sroa.1414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.1414.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  store i64 %i.mb, ptr %i.ax, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store i64 %i.mb, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 2 uses
  store i64 %.sroa.013.0.i, ptr %.sroa.66.0..sroa_idx, align 8
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  store ptr %.sroa.615.0.i, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.88.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  store i64 %.sroa.8.0.i, ptr %.sroa.88.0..sroa_idx, align 8
  %.sroa.99.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 4 uses
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %.sroa.99.0..sroa_idx, align 8
  %.sroa.1010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  store ptr %.sroa.519.8.copyload.i, ptr %.sroa.1010.0..sroa_idx, align 8
  %.sroa.1111.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  store <2 x i64> %i.ln, ptr %.sroa.1111.0..sroa_idx, align 8
  %.sroa.1313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store ptr %.sroa.822.8.copyload.i, ptr %.sroa.1313.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1098
  %i.mo = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mo, i64 16 ; 2 uses
  %i.mq = load i8, ptr %i.mp, align 8, !range !17, !noalias !1099, !noundef !16
  %i.mr = trunc nuw i8 %i.mq to i1
  br i1 %i.mr, label %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i", !prof !18

._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i: ; preds = %bb.cy
  %.pre.i.i.i = load i64, ptr %i.mo, align 8, !noalias !1100
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %.pre1.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !1100
  br label %bb.db

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i": ; preds = %bb.cy
  %i.ms = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i unwind label %bb.da, !noalias !1098 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i"
  %i.mt = extractvalue { i64, i64 } %i.ms, 0
  %i.mu = extractvalue { i64, i64 } %i.ms, 1      ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  store i64 %i.mu, ptr %i.mv, align 8, !noalias !1101
  store i8 1, ptr %i.mp, align 8, !noalias !1101
  br label %bb.db

bb.cz:                                            ; preds = %.body.thread.i, %bb.da
  %.pn.i = phi { ptr, i32 } [ %i.my, %bb.da ], [ %eh.lpad-body33.i, %.body.thread.i ] ; 2 uses
  %.sroa.03.0.i = phi i8 [ %.sroa.01.1.i, %bb.da ], [ %.sroa.03.2.lpad-body30.i, %.body.thread.i ]
  %.sroa.02.0.i = phi i8 [ %.sroa.01.1.i, %bb.da ], [ %.sroa.02.2.lpad-body31.i, %.body.thread.i ]
  %.sroa.01.0.i = phi i8 [ %.sroa.01.1.i, %bb.da ], [ %.sroa.01.2.lpad-body32.i, %.body.thread.i ]
  %i.mw = trunc nuw i8 %.sroa.03.0.i to i1
  %i.mx = icmp ne i64 %i.ii, %i.ig
  %or.cond.not = and i1 %i.mx, %i.mw
  br i1 %or.cond.not, label %bb.fx, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit.i"

bb.da:                                            ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit37.i", %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i"
  %.sroa.01.1.i = phi i8 [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit37.i" ], [ 1, %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i" ] ; 3 uses
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.db:                                            ; preds = %.noexc.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i
  %.pre-phi61.i = phi i64 [ %.pre1.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i ], [ %i.mu, %.noexc.i ]
  %i.mz = phi i64 [ %.pre.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i ], [ %i.mt, %.noexc.i ] ; 2 uses
  %i.na = add i64 %i.mz, 1
  store i64 %i.na, ptr %i.mo, align 8, !noalias !1100
  store i64 0, ptr %i.w, align 8, !alias.scope !1102, !noalias !1098
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1098
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !alias.scope !1102, !noalias !1098
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false), !noalias !1098
  %i.nb = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 %i.mz, ptr %i.nb, align 8, !alias.scope !1102, !noalias !1098
  %i.nc = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i64 %.pre-phi61.i, ptr %i.nc, align 8, !alias.scope !1102, !noalias !1098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1098
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.v, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @192, i64 noundef 7)
          to label %bb.dc unwind label %.body.thread35.i, !noalias !1098

.body.thread35.i:                                 ; preds = %bb.dh, %bb.ds, %bb.fp, %bb.fv, %bb.fu, %bb.fr, %bb.fo, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit24.i", %bb.dy, %bb.dx, %bb.du, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit.i", %bb.dn, %bb.dm, %bb.dj, %bb.db
  %.sroa.03.2.ph.i = phi i8 [ 0, %bb.fu ], [ 0, %bb.fr ], [ 0, %bb.dj ], [ 1, %bb.db ], [ 0, %bb.dh ], [ 0, %bb.dn ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit.i" ], [ 0, %bb.dm ], [ 0, %bb.ds ], [ 0, %bb.dy ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit24.i" ], [ 0, %bb.dx ], [ 0, %bb.du ], [ 0, %bb.fo ], [ 0, %bb.fp ], [ 0, %bb.fv ]
  %.sroa.02.2.ph.i = phi i8 [ 0, %bb.fu ], [ 0, %bb.fr ], [ 1, %bb.dj ], [ 1, %bb.db ], [ 1, %bb.dh ], [ 1, %bb.dn ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit.i" ], [ 1, %bb.dm ], [ 0, %bb.ds ], [ 0, %bb.dy ], [ 0, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit24.i" ], [ 0, %bb.dx ], [ 0, %bb.du ], [ 0, %bb.fo ], [ 0, %bb.fp ], [ 0, %bb.fv ]
  %.sroa.01.2.ph.i = phi i8 [ 0, %bb.fu ], [ 0, %bb.fr ], [ 1, %bb.dj ], [ 1, %bb.db ], [ 1, %bb.dh ], [ 1, %bb.dn ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit.i" ], [ 1, %bb.dm ], [ 1, %bb.ds ], [ 1, %bb.dy ], [ 1, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit24.i" ], [ 1, %bb.dx ], [ 1, %bb.du ], [ 0, %bb.fo ], [ 0, %bb.fp ], [ 0, %bb.fv ]
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.dc:                                            ; preds = %bb.db
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1103
  %i.nd = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #44, !noalias !1103 ; 7 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.df, label %bb.dh, !prof !22

bb.dd:                                            ; preds = %bb.df
  %i.nf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ng = icmp eq i64 %i.ii, %i.ig
  br i1 %i.ng, label %.body.thread.i, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.mb, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1104
  br label %.body.thread.i

bb.df:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1103
  store ptr @135, ptr %i.o, align 8, !noalias !1103
  %i.nh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 1, ptr %i.nh, align 8, !noalias !1103
  %i.ni = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr null, ptr %i.ni, align 8, !noalias !1103
  %i.nj = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.nj, align 8, !noalias !1103
  %i.nk = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 0, ptr %i.nk, align 8, !noalias !1103
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.dg unwind label %bb.dd, !noalias !1103

bb.dg:                                            ; preds = %bb.df
  unreachable

bb.dh:                                            ; preds = %bb.dc
  store i64 216172782113783809, ptr %i.nd, align 8, !noalias !1103
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store i32 -1, ptr %i.nl, align 8, !noalias !1103
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store i64 %i.mb, ptr %i.nm, align 8, !noalias !1098
  %.sroa.3.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.3.0..sroa_idx3.i, align 8, !noalias !1098
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  store i64 %i.mb, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !1098
  %i.nn = invoke fastcc ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h7577daa01b6e1291E"(ptr noalias noundef align 8 dereferenceable(72) %i.w, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.v, ptr noundef nonnull %i.nd)
          to label %._crit_edge155 unwind label %.body.thread35.i ; 5 uses

._crit_edge155:                                   ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1098
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit.i", label %bb.di

bb.di:                                            ; preds = %._crit_edge155
  %i.np = ptrtoint ptr %i.nn to i64
  %i.nq = and i64 %i.np, 3
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.nq, i64 2)
  switch i64 %..i.i.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit.i" [
    i64 2, label %bb.dj
    i64 0, label %bb.dk
  ], !prof !21

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc10.i unwind label %.body.thread35.i, !noalias !1098

.noexc10.i:                                       ; preds = %bb.dj
  unreachable

bb.dk:                                            ; preds = %bb.di
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1105
  store ptr %i.nn, ptr %i.n, align 8, !noalias !1105
end_hunk_1
begin_hunk_2_@_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hc40db94b318c2270E:bb.a
  %i.jn = tail call i64 @llvm.fshl.i64(i64 %i.jh, i64 %i.jh, i64 32)
  %i.jo = add i64 %i.jk, %i.ji                    ; 3 uses
  %i.jp = add i64 %i.jm, %i.jn                    ; 2 uses
  %i.jq = tail call i64 @llvm.fshl.i64(i64 %i.jk, i64 %i.jk, i64 13)
  %i.jr = xor i64 %i.jq, %i.jo                    ; 3 uses
  %i.js = tail call i64 @llvm.fshl.i64(i64 %i.jm, i64 %i.jm, i64 16)
  %i.jt = xor i64 %i.js, %i.jp                    ; 3 uses
  %i.ju = tail call i64 @llvm.fshl.i64(i64 %i.jo, i64 %i.jo, i64 32)
  %i.jv = add i64 %i.jr, %i.jp                    ; 3 uses
  %i.jw = add i64 %i.jt, %i.ju                    ; 2 uses
  %i.jx = tail call i64 @llvm.fshl.i64(i64 %i.jr, i64 %i.jr, i64 17)
  %i.jy = xor i64 %i.jx, %i.jv                    ; 3 uses
  %i.jz = tail call i64 @llvm.fshl.i64(i64 %i.jt, i64 %i.jt, i64 21)
  %i.ka = xor i64 %i.jz, %i.jw                    ; 3 uses
  %i.kb = tail call i64 @llvm.fshl.i64(i64 %i.jv, i64 %i.jv, i64 32)
  %i.kc = add i64 %i.jy, %i.jw
  %i.kd = add i64 %i.ka, %i.kb                    ; 2 uses
  %i.ke = tail call i64 @llvm.fshl.i64(i64 %i.jy, i64 %i.jy, i64 13)
  %i.kf = xor i64 %i.ke, %i.kc                    ; 3 uses
  %i.kg = tail call i64 @llvm.fshl.i64(i64 %i.ka, i64 %i.ka, i64 16)
  %i.kh = xor i64 %i.kg, %i.kd                    ; 2 uses
  %i.ki = add i64 %i.kf, %i.kd                    ; 3 uses
  %i.kj = tail call i64 @llvm.fshl.i64(i64 %i.kf, i64 %i.kf, i64 17)
  %i.kk = tail call i64 @llvm.fshl.i64(i64 %i.kh, i64 %i.kh, i64 21)
  %i.kl = tail call i64 @llvm.fshl.i64(i64 %i.ki, i64 %i.ki, i64 32)
  %i.km = xor i64 %i.kk, %i.kj
  %i.kn = xor i64 %i.km, %i.kl
  %i.ko = xor i64 %i.kn, %i.ki                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16545
  %i.kp = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !16552, !noundef !16
  %i.kq = icmp eq i64 %i.kp, 0
  br i1 %i.kq, label %bb.as, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4464a100f466c72fE.exit.i.i.i.i", !prof !22

bb.as:                                            ; preds = %.noexc10
  %i.kr = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h648cb2e679db5f2dE"(ptr noalias noundef nonnull align 8 dereferenceable(48) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 72), i64 noundef 1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 104), i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4464a100f466c72fE.exit.i.i.i.i" unwind label %bb.ba ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4464a100f466c72fE.exit.i.i.i.i": ; preds = %bb.as, %.noexc10
  %.val.i.i.i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 72), align 8, !alias.scope !16553, !nonnull !16, !noundef !16 ; 9 uses
  %.val7.i.i.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 80), align 8, !alias.scope !16553, !noundef !16 ; 4 uses
  %i.ks = lshr i64 %i.ko, 57
  %i.kt = trunc nuw nsw i64 %i.ks to i8           ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.kt, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.at

bb.at:                                            ; preds = %bb.av, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4464a100f466c72fE.exit.i.i.i.i"
  %.pn.i.i.i.i.i = phi i64 [ %i.ko, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4464a100f466c72fE.exit.i.i.i.i" ], [ %i.lt, %bb.av ]
  %.sroa.6.0.i.i.i.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4464a100f466c72fE.exit.i.i.i.i" ], [ %.sroa.6.120.i.i.i.i.i, %bb.av ]
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4464a100f466c72fE.exit.i.i.i.i" ], [ %.sroa.01.122.i.i.i.i.i, %bb.av ]
  %i.ku = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h4464a100f466c72fE.exit.i.i.i.i" ], [ %i.ls, %bb.av ]
  %.sroa.0.017.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %.val7.i.i.i.i ; 4 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.0.017.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i.i = load <16 x i8>, ptr %i.kv, align 1, !noalias !16554 ; 3 uses
  %i.kw = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i.i
  %i.kx = bitcast <16 x i1> %i.kw to i16          ; 2 uses
  %.not25.i.i.i.i.i = icmp eq i16 %i.kx, 0
  br i1 %.not25.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.at, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.thread.i.i.i.i"
  %.sroa.05.026.i.i.i.i.i = phi i16 [ %i.li, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.thread.i.i.i.i" ], [ %i.kx, %bb.at ] ; 3 uses
  %i.ky = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.026.i.i.i.i.i, i1 true)
  %i.kz = zext nneg i16 %i.ky to i64
  %i.la = add i64 %.sroa.0.017.i.i.i.i.i, %i.kz
  %i.lb = and i64 %i.la, %.val7.i.i.i.i
  %i.lc = sub nsw i64 0, %i.lb                    ; 2 uses
  %i.ld = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.lc ; 2 uses
  %i.le = getelementptr i8, ptr %i.ld, i64 -16
  %.val4.i.i.i.i.i = load i64, ptr %i.le, align 8, !noalias !16555, !noundef !16
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.4.0.i.i.i, %.val4.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.i.i.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.thread.i.i.i.i", !prof !64

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  %i.lf = getelementptr inbounds i8, ptr %i.ld, i64 -24
  %.val3.i.i.i.i.i = load ptr, ptr %i.lf, align 8, !noalias !16555, !nonnull !16, !align !28, !noundef !16
  %bcmp.i.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.027.0.i.i.i, ptr nonnull readonly align 1 %.val3.i.i.i.i.i, i64 range(i64 -9223372036854775807, -9223372036854775808) %.sroa.4.0.i.i.i), !alias.scope !16556, !noalias !16557
  %i.lg = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.lg, label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h223295aa553abfb2E.exit.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.thread.i.i.i.i", !prof !16528

._crit_edge.i.i.i.i.i:                            ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.thread.i.i.i.i", %bb.at
  %.not13.i.i.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i.i.i, 1
  br i1 %.not13.i.i.i.i.i, label %.thread.i.i.i.i.i, label %bb.au, !prof !22

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.thread.i.i.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.i.i.i.i", %.lr.ph.i.i.i.i.i
  %i.lh = add i16 %.sroa.05.026.i.i.i.i.i, -1
  %i.li = and i16 %i.lh, %.sroa.05.026.i.i.i.i.i  ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %i.li, 0
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

bb.au:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.lj = icmp slt <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, zeroinitializer
  %i.lk = bitcast <16 x i1> %i.lj to i16          ; 2 uses
  %.not.not.i.not.i.i.i.i.i = icmp eq i16 %i.lk, 0 ; 2 uses
  %i.ll = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.lk, i1 true)
  %i.lm = zext nneg i16 %i.ll to i64
  %.sroa.6.0.i.i.i.i.i.i = select i1 %.not.not.i.not.i.i.i.i.i, i64 undef, i64 %i.lm
  %i.ln = add i64 %.sroa.6.0.i.i.i.i.i.i, %.sroa.0.017.i.i.i.i.i
  %i.lo = and i64 %i.ln, %.val7.i.i.i.i
  br i1 %.not.not.i.not.i.i.i.i.i, label %bb.av, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %bb.au, %._crit_edge.i.i.i.i.i
  %.sroa.6.121.i.i.i.i.i = phi i64 [ %i.lo, %bb.au ], [ %.sroa.6.0.i.i.i.i.i, %._crit_edge.i.i.i.i.i ] ; 3 uses
  %i.lp = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i.i, splat (i8 -1)
  %i.lq = bitcast <16 x i1> %i.lp to i16
  %i.lr = icmp eq i16 %i.lq, 0
  br i1 %i.lr, label %bb.av, label %bb.aw, !prof !22

bb.av:                                            ; preds = %.thread.i.i.i.i.i, %bb.au
  %.sroa.01.122.i.i.i.i.i = phi i64 [ 1, %.thread.i.i.i.i.i ], [ 0, %bb.au ]
  %.sroa.6.120.i.i.i.i.i = phi i64 [ %.sroa.6.121.i.i.i.i.i, %.thread.i.i.i.i.i ], [ undef, %bb.au ]
  %i.ls = add i64 %i.ku, 16                       ; 2 uses
  %i.lt = add i64 %i.ls, %.sroa.0.017.i.i.i.i.i
  br label %bb.at

bb.aw:                                            ; preds = %.thread.i.i.i.i.i
  %i.lu = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.6.121.i.i.i.i.i
  %i.lv = load i8, ptr %i.lu, align 1, !noalias !16558, !noundef !16 ; 2 uses
  %i.lw = icmp sgt i8 %i.lv, -1
  br i1 %i.lw, label %bb.ax, label %bb.ay, !prof !22

bb.ax:                                            ; preds = %bb.aw
  %.val2.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i, align 16, !noalias !16558
  %i.lx = icmp slt <16 x i8> %.val2.i.i.i.i.i.i, zeroinitializer
  %i.ly = bitcast <16 x i1> %i.lx to i16          ; 2 uses
  %i.lz = icmp ne i16 %i.ly, 0
  tail call void @llvm.assume(i1 %i.lz)
  %i.ma = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ly, i1 true)
  %i.mb = zext nneg i16 %i.ma to i64              ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.mb
  %.pre.i7.i.i = load i8, ptr %.phi.trans.insert.i.i.i, align 1, !noalias !16559
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.mc = phi i8 [ %.pre.i7.i.i, %bb.ax ], [ %i.lv, %bb.aw ]
  %.sroa.3.0.i.ph.i.i.i.i = phi i64 [ %i.mb, %bb.ax ], [ %.sroa.6.121.i.i.i.i.i, %bb.aw ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16560)
  %i.md = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %.sroa.3.0.i.ph.i.i.i.i
  %i.me = and i8 %i.mc, 1
  %i.mf = zext nneg i8 %i.me to i64
  %i.mg = add i64 %.sroa.3.0.i.ph.i.i.i.i, -16
  %i.mh = and i64 %i.mg, %.val7.i.i.i.i
  store i8 %i.kt, ptr %i.md, align 1, !noalias !16559
  %i.mi = getelementptr i8, ptr %.val.i.i.i.i, i64 %i.mh
  %i.mj = getelementptr i8, ptr %i.mi, i64 16
  store i8 %i.kt, ptr %i.mj, align 1, !noalias !16559
  %i.mk = load <2 x i64>, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !16561
  %i.ml = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.mf, i64 0
  %i.mm = sub <2 x i64> %i.mk, %i.ml
  store <2 x i64> %i.mm, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 88), align 8, !alias.scope !16561
  %i.mn = sub nsw i64 0, %.sroa.3.0.i.ph.i.i.i.i  ; 2 uses
  %i.mo = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.mn ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %i.mo, i64 -24
  store ptr %.sroa.027.0.i.i.i, ptr %i.mp, align 8, !noalias !16562
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.mo, i64 -16
  store i64 %.sroa.4.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !16560
  br label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h223295aa553abfb2E.exit.i"

bb.az:                                            ; preds = %.body.i.i
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !16532
  unreachable

"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h223295aa553abfb2E.exit.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.i.i.i.i", %bb.ay
  %i.mr = phi i64 [ %i.mn, %bb.ay ], [ %i.lc, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h8536c5c6399bab0eE.exit.i.i.i.i" ]
  %i.ms = getelementptr inbounds [24 x i8], ptr %.val.i.i.i.i, i64 %i.mr
  %i.mt = trunc i64 %i.hr to i32                  ; 2 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds i8, ptr %i.ms, i64 -8
  store i32 %i.mt, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !16
  br label %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17h375bd31a8b3c2ae0E.exit"

bb.ba:                                            ; preds = %bb.as, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17he20a0b624809b4a5E.exit.i.i", %bb.ar, %bb.aq, %bb.ao, %bb.m, %bb.l
  %i.mu = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %.body.i.i, %bb.ba
  %eh.lpad-body = phi { ptr, i32 } [ %i.mu, %bb.ba ], [ %i.dx, %bb.o ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17he82c77ff2c0914b4E"(ptr nonnull @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i8 %.sroa.01.0.i.i) #46
          to label %common.resume unwind label %bb.bf

"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17h375bd31a8b3c2ae0E.exit": ; preds = %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h223295aa553abfb2E.exit.i", %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h7fe3b95448c39044E.exit.i"
  %.sroa.0.0.i = phi i32 [ %i.dk, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h7fe3b95448c39044E.exit.i" ], [ %i.mt, %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$6intern17h223295aa553abfb2E.exit.i" ]
  br i1 %i.t, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.bb

bb.bb:                                            ; preds = %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17h375bd31a8b3c2ae0E.exit"
  %i.mv = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.mw = and i64 %i.mv, 9223372036854775807
  %i.mx = icmp eq i64 %i.mw, 0
  br i1 %i.mx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.bc, !prof !18

bb.bc:                                            ; preds = %bb.bb
  %i.my = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.my, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store atomic i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 8) monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.bd, %bb.bc, %bb.bb, %"_ZN18nickel_lang_parser10identifier8interner104_$LT$impl$u20$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$13get_or_intern17h375bd31a8b3c2ae0E.exit"
  %2 = atomicrmw sub ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 1073741823 release, align 4
  %i.mz = add i32 %2, -1073741823                 ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.mz, 1073741824
  br i1 %or.cond.i.i, label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17he82c77ff2c0914b4E.exit", label %bb.be, !prof !43

bb.be:                                            ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i32 noundef %i.mz)
  br label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17he82c77ff2c0914b4E.exit"

"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17he82c77ff2c0914b4E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.be
  ret i32 %.sroa.0.0.i

bb.bf:                                            ; preds = %.body
  %i.na = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$11set_current17h9572ce3fa491928cE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 16 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 1, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !16585
  %i.f = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !16585 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17he019e9ab3d40aaafE.exit", !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 64) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr147drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17he24abd37e4453a66E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.e)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.l, %bb.c, %bb.p
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.p ], [ %i.h, %bb.c ], [ %i.aa, %bb.l ], [ %i.an, %bb.r ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17he019e9ab3d40aaafE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.f, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = load ptr, ptr %0, align 8, !nonnull !16, !noundef !16 ; 6 uses
  store ptr %i.j, ptr %i.c, align 8
  store ptr %i.f, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !16
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17he019e9ab3d40aaafE.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.o = load ptr, ptr %i.n, align 8, !noundef !16 ; 4 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.j, label %bb.h

bb.f:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17he019e9ab3d40aaafE.exit"
  %i.p = load i64, ptr %i.j, align 8, !noalias !16586, !noundef !16
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.j, align 8, !noalias !16586
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit"

bb.g:                                             ; preds = %bb.f
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit"

bb.h:                                             ; preds = %bb.e
  %.val.i = load i64, ptr %i.o, align 8, !noundef !16 ; 2 uses
  %i.s = icmp ne i64 %.val.i, 0
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %.val.i, 1                       ; 2 uses
  store i64 %i.t, ptr %i.o, align 8
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h50e845598d12803cE.exit, !prof !22

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.x, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !16587
  %i.y = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !16587 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd8845b9d143025a6E.exit", !prof !19

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #45
          to label %.noexc26 unwind label %bb.l

.noexc26:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hbd516a6aa9f530ddE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #46
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd8845b9d143025a6E.exit": ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !16588)
  %i.ac = load ptr, ptr %i.n, align 8, !alias.scope !16588, !noundef !16 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit", label %bb.n

bb.n:                                             ; preds = %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd8845b9d143025a6E.exit"
  %i.ae = load i64, ptr %i.ac, align 8, !noalias !16589, !noundef !16
  %i.af = add i64 %i.ae, -1                       ; 2 uses
  store i64 %i.af, ptr %i.ac, align 8, !noalias !16589
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.o, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit"

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit" unwind label %bb.p

bb.p:                                             ; preds = %bb.u, %bb.o
  %.sroa.0.0 = phi ptr [ %i.al, %bb.u ], [ %i.y, %bb.o ]
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.0.0, ptr %i.n, align 8
  br label %common.resume

"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit": ; preds = %bb.n, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd8845b9d143025a6E.exit", %bb.o
  store ptr %i.y, ptr %i.n, align 8
  br label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit"

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit": ; preds = %bb.g, %bb.f, %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit34", %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

_ZN5alloc2rc10RcInnerPtr10inc_strong17h50e845598d12803cE.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.o, ptr %i.ak, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !16590
  %i.al = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !16590 ; 4 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.q, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17hd8845b9d143025a6E.exit24", !prof !19

bb.q:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h50e845598d12803cE.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 32) #45
          to label %.noexc31 unwind label %bb.r

.noexc31:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17hbd516a6aa9f530ddE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a) #46
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

end_hunk_2
begin_hunk_3_@"_ZN4core3ptr152drop_in_place$LT$std..collections..hash..map..HashMap$LT$$LP$std..path..PathBuf$C$nickel_lang_parser..identifier..Ident$RP$$C$std..path..PathBuf$GT$$GT$17he213d8067ed77647E":bb.a

"_ZN4core3ptr172drop_in_place$LT$hashbrown..map..HashMap$LT$$LP$std..path..PathBuf$C$nickel_lang_parser..identifier..Ident$RP$$C$std..path..PathBuf$C$std..hash..random..RandomState$GT$$GT$17h14fde7d81644bd05E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hf39e580b7413e3feE.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr152drop_in_place$LT$std..io..default_write_fmt..Adapter$LT$codespan_reporting..term..renderer..WriteStyleByRef$LT$dyn$u20$termcolor..WriteColor$GT$$GT$$GT$17h6ea956076dea1750E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !16 ; 2 uses
  %i.b = icmp eq ptr %.val, null
  br i1 %i.b, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcde705317f33c33fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h89d62c0ecd4b1cc0E"(ptr nonnull %.val)
  br label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcde705317f33c33fE.exit"

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17hcde705317f33c33fE.exit": ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr153drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17ha86cc149e8624d06E"(ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = udiv exact i64 %i.c, 24                  ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18083)
  %i.e = icmp eq ptr %.8.val, %.0.val
  br i1 %i.e, label %"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc69ace324e4405bbE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc69ace324e4405bbE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1 ; 2 uses
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  %.val8.i.i = load i64, ptr %i.g, align 8, !range !33, !alias.scope !18083, !noundef !16
  %i.i = getelementptr i8, ptr %i.g, i64 8
  %.val9.i.i = load ptr, ptr %i.i, align 8, !alias.scope !18083
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hcfec7508bfe2eae5E"(i64 %.val8.i.i, ptr %.val9.i.i)
          to label %bb.b unwind label %bb.d, !noalias !18083

bb.c:                                             ; preds = %.lr.ph3
  %i.j = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.d
  br i1 %i.k, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.h, %i.d
  br i1 %i.m, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.j, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2 ; 2 uses
  %.val.i.i = load i64, ptr %i.n, align 8, !range !33, !alias.scope !18083, !noundef !16
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %.val7.i.i = load ptr, ptr %i.o, align 8, !alias.scope !18083
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hcfec7508bfe2eae5E"(i64 %.val.i.i, ptr %.val7.i.i) #46
          to label %bb.c unwind label %bb.e, !noalias !18083

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.l

bb.e:                                             ; preds = %.lr.ph3
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !18083
  unreachable

"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc69ace324e4405bbE.exit": ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr154drop_in_place$LT$core..array..iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$C$4_usize$GT$$GT$17h652219b4dcea6177E"(ptr noalias noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !alias.scope !18088, !noundef !16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18088, !noundef !16 ; 2 uses
  %i.d = icmp eq i64 %i.c, %i.a
  br i1 %i.d, label %"_ZN4core3ptr228drop_in_place$LT$core..array..iter..iter_inner..PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$u3b$$u20$4$u5d$$GT$$GT$17h80642435f9076195E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = sub nuw i64 %i.c, %i.a                   ; 3 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.a ; 2 uses
  br label %bb.b

"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit.i.i.i.i.i": ; preds = %bb.b
  %i.h = icmp eq i64 %i.j, %i.f
  br i1 %i.h, label %"_ZN4core3ptr228drop_in_place$LT$core..array..iter..iter_inner..PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$u3b$$u20$4$u5d$$GT$$GT$17h80642435f9076195E.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit.i.i.i.i.i"
  %.sroa.0.0.i.i.i.i.i3 = phi i64 [ 0, %.lr.ph ], [ %i.j, %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit.i.i.i.i.i" ] ; 2 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i.i.i3
  %i.j = add i64 %.sroa.0.0.i.i.i.i.i3, 1         ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hd6967b05622b50ebE"(ptr noalias noundef align 8 dereferenceable(40) %i.k)
          to label %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit.i.i.i.i.i" unwind label %bb.c

"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit7.i.i.i.i.i": ; preds = %.lr.ph5
  %i.l = add i64 %.sroa.0.1.i.i.i.i.i4, 1         ; 2 uses
  %i.m = icmp eq i64 %i.l, %i.f
  br i1 %i.m, label %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit7.i.i.i.i.i._crit_edge", label %.lr.ph5

bb.c:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = icmp eq i64 %i.j, %i.f
  br i1 %i.o, label %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit7.i.i.i.i.i._crit_edge", label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.c, %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit7.i.i.i.i.i"
  %.sroa.0.1.i.i.i.i.i4 = phi i64 [ %i.l, %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit7.i.i.i.i.i" ], [ %i.j, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i.i.i4
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hd6967b05622b50ebE"(ptr noalias noundef align 8 dereferenceable(40) %i.q)
          to label %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit7.i.i.i.i.i" unwind label %bb.d

"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit7.i.i.i.i.i._crit_edge": ; preds = %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit7.i.i.i.i.i", %bb.c
  resume { ptr, i32 } %i.n

bb.d:                                             ; preds = %.lr.ph5
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr228drop_in_place$LT$core..array..iter..iter_inner..PolymorphicIter$LT$$u5b$core..mem..maybe_uninit..MaybeUninit$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$$u3b$$u20$4$u5d$$GT$$GT$17h80642435f9076195E.exit": ; preds = %"_ZN4core3ptr109drop_in_place$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$RP$$GT$17h6b3ff681db2a3eebE.exit.i.i.i.i.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfbb36f5653a6d39fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18113)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18114)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18115, !noundef !16 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17hca76584e05817fbeE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18116)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18117, !noundef !16 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !18117, !nonnull !16, !noundef !16 ; 3 uses
  %.val3.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !18118
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i", %bb.c
  %.sroa.06.017.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !18119
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i, i64 %i.t
  %i.v = add i64 %.sroa.108.014.i.i.i.i.i, -1     ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18120)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18121)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18122)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18123)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !18124, !noalias !18117, !nonnull !16, !noundef !16
  %1 = atomicrmw sub ptr %i.x, i64 1 release, align 8, !noalias !18125
  %i.y = icmp eq i64 %1, 1
  br i1 %i.y, label %bb.e, label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i"

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w), !noalias !18117
  br label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i"

"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i"
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i: ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i", %bb.b
  %i.aa = mul i64 %i.b, 24
  %i.ab = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = and i64 %i.aa, -16                      ; 2 uses
  %i.ad = add i64 %i.ac, 32                       ; 2 uses
  %i.ae = add nsw i64 %i.b, 17
  %i.af = add i64 %i.ae, %i.ad                    ; 4 uses
  %i.ag = icmp uge i64 %i.af, %i.ad
  %i.ah = icmp ult i64 %i.af, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ag)
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.af, 0
  br i1 %i.ai, label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17hca76584e05817fbeE.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i
  %i.aj = load ptr, ptr %0, align 8, !alias.scope !18115, !nonnull !16, !noundef !16
  %i.ak = sub i64 -32, %i.ac
  %i.al = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.al, i64 noundef %i.af, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !18115
  br label %"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17hca76584e05817fbeE.exit"

"_ZN4core3ptr174drop_in_place$LT$hashbrown..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$C$std..hash..random..RandomState$GT$$GT$17hca76584e05817fbeE.exit": ; preds = %bb.a, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr155drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h0974f77ca5a921d1E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18130)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18130, !nonnull !16, !noundef !16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !18130, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 4                   ; 3 uses
  %i.h = icmp eq ptr %.val2.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr126drop_in_place$LT$$u5b$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h38d8e16bf8419f28E.exit.i", label %.lr.ph

.body.i:                                          ; preds = %bb.d, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18130, !noundef !16 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr249drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$C$alloc..alloc..Global$GT$$GT$17h991df36de8dc199cE.exit.i", label %bb.b

bb.b:                                             ; preds = %.body.i
  %i.l = load ptr, ptr %0, align 8, !alias.scope !18130, !nonnull !16, !noundef !16
  %i.m = shl nuw i64 %i.j, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18130
  br label %"_ZN4core3ptr249drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$C$alloc..alloc..Global$GT$$GT$17h991df36de8dc199cE.exit.i"

bb.c:                                             ; preds = %.lr.ph
  %i.n = icmp eq i64 %i.p, %i.g
  br i1 %i.n, label %"_ZN4core3ptr126drop_in_place$LT$$u5b$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h38d8e16bf8419f28E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.0.0.i.i3 = phi i64 [ %i.p, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.0.i.i3
  %i.p = add nuw nsw i64 %.sroa.0.0.i.i3, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$17heb9f5b76883cd498E"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.o)
          to label %bb.c unwind label %bb.e, !noalias !18130

bb.d:                                             ; preds = %.lr.ph5
  %i.q = add i64 %.sroa.0.1.i.i4, 1               ; 2 uses
  %i.r = icmp eq i64 %i.q, %i.g
  br i1 %i.r, label %.body.i, label %.lr.ph5

bb.e:                                             ; preds = %.lr.ph
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = icmp eq i64 %i.p, %i.g
  br i1 %i.t, label %.body.i, label %.lr.ph5

.lr.ph5:                                          ; preds = %bb.e, %bb.d
  %.sroa.0.1.i.i4 = phi i64 [ %i.q, %bb.d ], [ %i.p, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.sroa.0.1.i.i4
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$17heb9f5b76883cd498E"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.u) #46
          to label %bb.d unwind label %bb.f, !noalias !18130

bb.f:                                             ; preds = %.lr.ph5
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !18131
  unreachable

"_ZN4core3ptr126drop_in_place$LT$$u5b$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h38d8e16bf8419f28E.exit.i": ; preds = %bb.c, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !18130, !noundef !16 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f709f78fd0178dbE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr126drop_in_place$LT$$u5b$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h38d8e16bf8419f28E.exit.i"
  %i.z = load ptr, ptr %0, align 8, !alias.scope !18130, !nonnull !16, !noundef !16
  %i.aa = shl nuw i64 %i.x, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.z, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18130
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f709f78fd0178dbE.exit"

"_ZN4core3ptr249drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$C$alloc..alloc..Global$GT$$GT$17h991df36de8dc199cE.exit.i": ; preds = %bb.b, %.body.i
  resume { ptr, i32 } %i.s

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0f709f78fd0178dbE.exit": ; preds = %"_ZN4core3ptr126drop_in_place$LT$$u5b$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h38d8e16bf8419f28E.exit.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18149)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !18150, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noalias !18150, !noundef !16
  %i.c = add i64 %i.b, -1                         ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !noalias !18150
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %0)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18151)
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !18151, !noundef !16 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !noalias !18152, !noundef !16
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.g, align 8, !noalias !18152
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit"

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit" unwind label %bb.h

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit": ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18153)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !18153, !noundef !16 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit2", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit"
  %i.o = load i64, ptr %i.m, align 8, !noalias !18154, !noundef !16
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.m, align 8, !noalias !18154
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit2"

bb.g:                                             ; preds = %bb.f
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l)
  br label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit2"

"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit2": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit", %bb.f, %bb.g
  ret void

bb.h:                                             ; preds = %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit": ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr156drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..array..iter..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$2_usize$GT$$GT$$GT$17h1ea3797f5a12ec85E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18167, !noundef !16 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18167, !noundef !16 ; 2 uses
  %i.h = icmp eq i64 %i.g, %i.e
  br i1 %i.h, label %"_ZN4core3ptr108drop_in_place$LT$core..array..iter..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$2_usize$GT$$GT$17h1fd70b54d181a00fE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
end_hunk_3
begin_hunk_4_@"_ZN4core3ptr156drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..array..iter..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$2_usize$GT$$GT$$GT$17h1ea3797f5a12ec85E":bb.a
  br i1 %or.cond.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..array..iter..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$2_usize$GT$$GT$17h1fd70b54d181a00fE.exit"
  %i.q = ptrtoint ptr %.val1 to i64
  %i.r = and i64 %i.q, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 2)
  switch i64 %..i.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit" [
    i64 2, label %bb.e
    i64 0, label %bb.f
  ], !prof !21

bb.e:                                             ; preds = %bb.d
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !18168
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18168
  store ptr %.val1, ptr %i.c, align 8, !noalias !18168
  %i.s = load i64, ptr %.val1, align 8, !noalias !18169, !noundef !16 ; 3 uses
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = add nsw i64 %i.t, -1                     ; 3 uses
  %i.v = and i64 %i.s, 1080863910568919040
  %i.w = icmp ult i64 %i.s, 864691128455135232
  tail call void @llvm.assume(i1 %i.w)
  %i.x = or i64 %i.u, %i.v
  store i64 %i.x, ptr %.val1, align 8, !noalias !18169
  %i.y = icmp ugt i64 %i.u, 72057594037927935
  br i1 %i.y, label %bb.h, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq i64 %i.u, 0
  br i1 %i.z, label %bb.i, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18169
  store ptr @604, ptr %i.b, align 8, !noalias !18169
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.aa, align 8, !noalias !18169
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ab, align 8, !noalias !18169
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ac, align 8, !noalias !18169
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ad, align 8, !noalias !18169
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !18169
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !18168
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i": ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18168
  br label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit": ; preds = %"_ZN4core3ptr108drop_in_place$LT$core..array..iter..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$2_usize$GT$$GT$17h1fd70b54d181a00fE.exit", %bb.d, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"
  ret void

bb.j:                                             ; preds = %bb.c
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr157drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17hc17cba9c57c52280E"(ptr %.0.val, ptr %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = ptrtoint ptr %.8.val to i64
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = sub nuw i64 %i.a, %i.b
  %i.d = udiv exact i64 %i.c, 48                  ; 3 uses
  %i.e = icmp eq ptr %.8.val, %.0.val
  br i1 %i.e, label %"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha359f40e0aada48dE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha359f40e0aada48dE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i1 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.0.i.i1
  %i.h = add nuw nsw i64 %.sroa.0.0.i.i1, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$17h39c33227e6ada347E"(ptr noalias noundef align 8 dereferenceable(48) %i.g)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph3
  %i.i = add i64 %.sroa.0.1.i.i2, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph3

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
  br i1 %i.l, label %._crit_edge, label %.lr.ph3

.lr.ph3:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i2 = phi i64 [ %i.i, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i2
  invoke fastcc void @"_ZN4core3ptr111drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$17h39c33227e6ada347E"(ptr noalias noundef align 8 dereferenceable(48) %i.m) #46
          to label %bb.c unwind label %bb.e

._crit_edge:                                      ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %.lr.ph3
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN89_$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha359f40e0aada48dE.exit": ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h2c64307a246edbbeE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(304) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18184)
  invoke fastcc void @"_ZN4core3ptr219drop_in_place$LT$alloc..vec..Vec$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$$GT$17h87bf72128be9dbf6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(296) %0)
          to label %"_ZN4core3ptr118drop_in_place$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h806cbb89041ef3e6E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18185, !noundef !16 ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !18185, !noundef !16
  %i.h = sub i64 %i.g, %i.d
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17hbbaa9bee1438b8e6E"(ptr noalias noundef nonnull readonly align 8 %i.e, i64 noundef %i.h)
          to label %"_ZN4core3ptr124drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hee062416483e3fa2E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !18184
  unreachable

"_ZN4core3ptr124drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hee062416483e3fa2E.exit.i": ; preds = %bb.b
  resume { ptr, i32 } %i.a

"_ZN4core3ptr118drop_in_place$LT$nickel_lang_vector..vector..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h806cbb89041ef3e6E.exit": ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !18186, !noundef !16 ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !18186, !noundef !16
  %i.p = sub i64 %i.o, %i.l
  tail call fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17hbbaa9bee1438b8e6E"(ptr noalias noundef nonnull readonly align 8 %i.m, i64 noundef %i.p)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr158drop_in_place$LT$core..result..Result$LT$core..convert..Infallible$C$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$$GT$17ha5390e1cb164f8c5E"(ptr nonnull %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..record..FieldMetadata$GT$17h951259faf96bed92E"(ptr noalias noundef nonnull align 8 dereferenceable(384) %.0.val)
          to label %"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$17h90690ab648aa6c24E.exit" unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 384, i64 noundef 8) #44
  resume { ptr, i32 } %i.a

"_ZN4core3ptr102drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..term..record..MissingFieldDefErrorData$GT$$GT$17h90690ab648aa6c24E.exit": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 384, i64 noundef 8) #44
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17he82c77ff2c0914b4E"(ptr %.0.val, i8 %.8.val) unnamed_addr #1 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.b = trunc nuw i8 %.8.val to i1
  br i1 %i.b, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.d = and i64 %i.c, 9223372036854775807
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.f = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.a monotonic, align 1
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %0 = atomicrmw sub ptr %.0.val, i32 1073741823 release, align 4
  %i.g = add i32 %0, -1073741823                  ; 2 uses
  %or.cond.i = icmp ult i32 %i.g, 1073741824
  br i1 %or.cond.i, label %"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4b3b96f17fc2a14E.exit", label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.0.val, i32 noundef %i.g)
  br label %"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4b3b96f17fc2a14E.exit"

"_ZN94_$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$T$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4b3b96f17fc2a14E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr161drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$nickel_lang_core..term..RuntimeContract$C$nickel_lang_core..term..RuntimeContract$GT$$GT$17h2fd19605042f5765E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18189)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !18189, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !18189, !noundef !16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18189, !noundef !16 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %"_ZN4core3ptr70drop_in_place$LT$$u5b$nickel_lang_core..term..RuntimeContract$u5d$$GT$17hbab63a33e3bb9ba9E.exit.i", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = icmp eq i64 %i.i, %i.e
  br i1 %i.g, label %"_ZN4core3ptr70drop_in_place$LT$$u5b$nickel_lang_core..term..RuntimeContract$u5d$$GT$17hbab63a33e3bb9ba9E.exit.i", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i2 = phi i64 [ %i.i, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.0.i.i2
  %i.i = add i64 %.sroa.0.0.i.i2, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h501756f344b33a0eE"(ptr noalias noundef align 8 dereferenceable(160) %i.h)
          to label %bb.b unwind label %bb.d, !noalias !18189

bb.c:                                             ; preds = %.lr.ph4
  %i.j = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %i.e
  br i1 %i.k, label %.body.i, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.i, %i.e
  br i1 %i.m, label %.body.i, label %.lr.ph4

.lr.ph4:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i3 = phi i64 [ %i.j, %bb.c ], [ %i.i, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %i.a, i64 %.sroa.0.1.i.i3
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..term..RuntimeContract$GT$17h501756f344b33a0eE"(ptr noalias noundef align 8 dereferenceable(160) %i.n) #46
          to label %bb.c unwind label %bb.e, !noalias !18189

bb.e:                                             ; preds = %.lr.ph4
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !18189
  unreachable

.body.i:                                          ; preds = %bb.c, %bb.d
  %i.p = icmp eq i64 %i.c, 0
  br i1 %i.p, label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h67efa84080cb57aaE.exit.i", label %bb.f

bb.f:                                             ; preds = %.body.i
  %i.q = mul nuw i64 %i.c, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18189
  br label %"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h67efa84080cb57aaE.exit.i"

"_ZN4core3ptr70drop_in_place$LT$$u5b$nickel_lang_core..term..RuntimeContract$u5d$$GT$17hbab63a33e3bb9ba9E.exit.i": ; preds = %bb.b, %bb.a
  %i.r = icmp eq i64 %i.c, 0
  br i1 %i.r, label %"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf66c78f2fb80fa8cE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr70drop_in_place$LT$$u5b$nickel_lang_core..term..RuntimeContract$u5d$$GT$17hbab63a33e3bb9ba9E.exit.i"
  %i.s = mul nuw i64 %i.c, 160
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18189
  br label %"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf66c78f2fb80fa8cE.exit"

"_ZN4core3ptr90drop_in_place$LT$alloc..raw_vec..RawVec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17h67efa84080cb57aaE.exit.i": ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %i.l

"_ZN111_$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$Src$C$Dest$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf66c78f2fb80fa8cE.exit": ; preds = %"_ZN4core3ptr70drop_in_place$LT$$u5b$nickel_lang_core..term..RuntimeContract$u5d$$GT$17hbab63a33e3bb9ba9E.exit.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr161drop_in_place$LT$smallvec..SmallVec$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u3b$$u20$4$u5d$$GT$$GT$17h2a30eb78ac4526e9E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18194)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18194, !noundef !16 ; 4 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h46f10acec7ea8733E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(136) %0, i64 noundef %i.b)
  br label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4cb40b62aa5b0e01E.exit"

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !alias.scope !18194, !nonnull !16, !noundef !16 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !18194, !noundef !16
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h46f10acec7ea8733E"(ptr noalias noundef nonnull readonly align 8 %i.d, i64 noundef %i.f)
          to label %"_ZN4core3ptr137drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h2fc3df83fbd4bf62E.exit.i" unwind label %"_ZN4core3ptr144drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17he536dbeb26064a10E.exit.i.i", !noalias !18195

"_ZN4core3ptr144drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17he536dbeb26064a10E.exit.i.i": ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = shl nuw i64 %i.b, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18195
  resume { ptr, i32 } %i.g

"_ZN4core3ptr137drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h2fc3df83fbd4bf62E.exit.i": ; preds = %bb.c
  %i.i = shl nuw i64 %i.b, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18195
  br label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4cb40b62aa5b0e01E.exit"

"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4cb40b62aa5b0e01E.exit": ; preds = %bb.b, %"_ZN4core3ptr137drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h2fc3df83fbd4bf62E.exit.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr167drop_in_place$LT$alloc..vec..Vec$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17h4825826ffe86dfc2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.b, align 8, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18204)
  %i.c = icmp eq i64 %.val5, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb171592966e35932E.exit", label %.lr.ph

"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i"
  %i.d = icmp eq i64 %i.f, %.val5
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb171592966e35932E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i.i"
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [88 x i8], ptr %.val4, i64 %.sroa.0.0.i.i7 ; 3 uses
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18205)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18206)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18207)
  %.val.i.i.i.i.i = load i64, ptr %i.e, align 8, !range !40, !alias.scope !18208, !noundef !16 ; 2 uses
  %i.g = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.g, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !18208, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18208
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i": ; preds = %bb.b, %.lr.ph
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  invoke fastcc void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$usize$C$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..Line$GT$$GT$17hb2e956eec4b59db1E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.i)
          to label %"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i.i" unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.j = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val5
  br i1 %i.k, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i"
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %i.f, %.val5
  br i1 %i.m, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.j, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds nuw [88 x i8], ptr %.val4, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E"(ptr noalias noundef readonly align 8 dereferenceable(88) %i.n) #46
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !18204
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val2 = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 2 uses
  %i.p = icmp eq i64 %.val2, 0
  br i1 %i.p, label %"_ZN4core3ptr174drop_in_place$LT$alloc..raw_vec..RawVec$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17h0a78d79d501af94bE.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.q = mul nuw i64 %.val2, 88
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr174drop_in_place$LT$alloc..raw_vec..RawVec$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17h0a78d79d501af94bE.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb171592966e35932E.exit": ; preds = %"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i.i", %bb.a
  %.val = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 2 uses
  %i.r = icmp eq i64 %.val, 0
  br i1 %i.r, label %"_ZN4core3ptr174drop_in_place$LT$alloc..raw_vec..RawVec$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17h0a78d79d501af94bE.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb171592966e35932E.exit"
  %i.s = mul nuw i64 %.val, 88
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr174drop_in_place$LT$alloc..raw_vec..RawVec$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17h0a78d79d501af94bE.exit6"

"_ZN4core3ptr174drop_in_place$LT$alloc..raw_vec..RawVec$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17h0a78d79d501af94bE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb171592966e35932E.exit", %bb.g
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h6f7cc97ea8531990E":bb.a

bb.d:                                             ; preds = %.lr.ph12.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.w = icmp eq i64 %i.r, %i.f
  br i1 %i.w, label %._crit_edge13.i.i, label %.lr.ph12.i.i

._crit_edge13.i.i:                                ; preds = %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i", %bb.c
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN92_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd3bc4dc8f5d472bfE.exit": ; preds = %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h9cdd7fc70d819eebE"(ptr noalias nofree noundef nonnull readonly align 64 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18368)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18369)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18370)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i = load ptr, ptr %i.b, align 16, !alias.scope !18371, !nonnull !16, !noundef !16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !18371, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18372)
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbd379b98ab2966c7E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.a, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i"
  %.sroa.0.08.i.i.i.i.i = phi i64 [ %i.f, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.08.i.i.i.i.i
  %i.f = add nuw i64 %.sroa.0.08.i.i.i.i.i, 1     ; 4 uses
  %.val7.i.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !18372, !noalias !18371, !nonnull !16, !noundef !16 ; 3 uses
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h5dd80144f6d46b51E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.val7.i.i.i.i.i)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i" unwind label %.body.i.i.i.i.i, !noalias !18373

.body.i.i.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #44, !noalias !18373
  %i.h = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.h, label %.body.i.i.i, label %.lr.ph

"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i, i64 noundef 1400, i64 noundef 8) #44, !noalias !18373
  %i.i = icmp eq i64 %i.f, %.val1.i.i.i
  br i1 %i.i, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbd379b98ab2966c7E.exit.i.i.i", label %.lr.ph.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph
  %i.j = add i64 %.sroa.0.1.i.i.i.i.i9, 1         ; 2 uses
  %i.k = icmp eq i64 %i.j, %.val1.i.i.i
  br i1 %i.k, label %.body.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i.i.i.i, %bb.b
  %.sroa.0.1.i.i.i.i.i9 = phi i64 [ %i.j, %bb.b ], [ %i.f, %.body.i.i.i.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.0.1.i.i.i.i.i9
  %.val.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !18372, !noalias !18371, !nonnull !16, !noundef !16
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE"(ptr %.val.i.i.i.i.i) #46
          to label %bb.b unwind label %bb.c, !noalias !18373

bb.c:                                             ; preds = %.lr.ph
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !18373
  unreachable

.body.i.i.i:                                      ; preds = %bb.b, %.body.i.i.i.i.i
  %.val4.i.i.i = load i64, ptr %i.a, align 8, !range !40, !alias.scope !18371, !noundef !16 ; 2 uses
  %i.n = icmp eq i64 %.val4.i.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17h4cd7817b5fab0e05E.exit.i.i.i", label %bb.d

bb.d:                                             ; preds = %.body.i.i.i
  %i.o = shl nuw i64 %.val4.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18371
  br label %"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17h4cd7817b5fab0e05E.exit.i.i.i"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbd379b98ab2966c7E.exit.i.i.i": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i", %bb.a
  %.val2.i.i.i = load i64, ptr %i.a, align 8, !range !40, !alias.scope !18371, !noundef !16 ; 2 uses
  %i.p = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd97cc6cba7546f3aE.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbd379b98ab2966c7E.exit.i.i.i"
  %i.q = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18371
  br label %"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd97cc6cba7546f3aE.exit"

"_ZN4core3ptr110drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$17h4cd7817b5fab0e05E.exit.i.i.i": ; preds = %bb.d, %.body.i.i.i
  resume { ptr, i32 } %i.g

"_ZN4core3ptr142drop_in_place$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hd97cc6cba7546f3aE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbd379b98ab2966c7E.exit.i.i.i", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr196drop_in_place$LT$imbl_sized_chunks..sized_chunk..iter..Iter$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h0bf08aee072fd60cE"(ptr noalias noundef nonnull align 8 dereferenceable(272) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !18388, !noundef !16 ; 3 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !18388, !noundef !16 ; 2 uses
  %i.f = sub i64 %i.e, %i.b                       ; 3 uses
  %i.g = icmp eq i64 %i.e, %i.b
  br i1 %i.g, label %"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h6f7cc97ea8531990E.exit", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i"
  %.sroa.0.09.i.i.i = phi i64 [ %i.i, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.0.09.i.i.i ; 2 uses
  %i.i = add nuw i64 %.sroa.0.09.i.i.i, 1         ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18389)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18390)
  %i.j = load ptr, ptr %i.h, align 8, !alias.scope !18391, !nonnull !16, !noundef !16 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !noalias !18392, !noundef !16
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !noalias !18392
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i" unwind label %bb.c

"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i
  %i.n = icmp eq i64 %i.i, %i.f
  br i1 %i.n, label %"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h6f7cc97ea8531990E.exit", label %.lr.ph.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = icmp eq i64 %i.i, %i.f
  br i1 %i.p, label %._crit_edge13.i.i.i, label %.lr.ph12.i.i.i

.lr.ph12.i.i.i:                                   ; preds = %bb.c, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i"
  %.sroa.0.110.i.i.i = phi i64 [ %i.r, %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i" ], [ %i.i, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %.sroa.0.110.i.i.i ; 2 uses
  %i.r = add i64 %.sroa.0.110.i.i.i, 1            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18393)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18394)
  %i.s = load ptr, ptr %i.q, align 8, !alias.scope !18395, !nonnull !16, !noundef !16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !noalias !18396, !noundef !16
  %i.u = add i64 %i.t, -1                         ; 2 uses
  store i64 %i.u, ptr %i.s, align 8, !noalias !18396
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i" unwind label %bb.e

"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i": ; preds = %bb.d, %.lr.ph12.i.i.i
  %i.w = icmp eq i64 %i.r, %i.f
  br i1 %i.w, label %._crit_edge13.i.i.i, label %.lr.ph12.i.i.i

._crit_edge13.i.i.i:                              ; preds = %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit8.i.i.i", %bb.c
  resume { ptr, i32 } %i.o

bb.e:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h6f7cc97ea8531990E.exit": ; preds = %"_ZN4core3ptr135drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$17h171284741bb69ab6E.exit.i.i.i", %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr196drop_in_place$LT$std..sync..poison..PoisonError$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$$GT$17hc9e62116af36c810E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !16, !align !23, !noundef !16 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i8, ptr %i.a, align 8, !range !17, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.c = trunc nuw i8 %.val1 to i1
  br i1 %i.c, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8
  %i.e = and i64 %i.d, 9223372036854775807
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
  br i1 %i.g, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 1, ptr %i.b monotonic, align 8
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %1 = atomicrmw sub ptr %.val, i32 1073741823 release, align 4
  %i.h = add i32 %1, -1073741823                  ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.h, 1073741824
  br i1 %or.cond.i.i, label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17he82c77ff2c0914b4E.exit", label %bb.e, !prof !43

bb.e:                                             ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i
  tail call void @_ZN3std3sys4sync6rwlock5futex6RwLock22wake_writer_or_readers17h996aee56cbf483f2E(ptr noundef nonnull align 4 %.val, i32 noundef %i.h)
  br label %"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17he82c77ff2c0914b4E.exit"

"_ZN4core3ptr158drop_in_place$LT$std..sync..poison..rwlock..RwLockWriteGuard$LT$nickel_lang_parser..identifier..interner..ouroboros_impl_inner_interner..InnerInterner$GT$$GT$17he82c77ff2c0914b4E.exit": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr200drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$$GT$17ha7869cdf25050918E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !39, !noundef !16 ; 4 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  br i1 %i.b, label %"_ZN4core3ptr172drop_in_place$LT$core..option..Option$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17hf39c15b4508a99e1E.exit", label %bb.b

"_ZN4core3ptr172drop_in_place$LT$core..option..Option$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17hf39c15b4508a99e1E.exit": ; preds = %"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i", %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18405)
  %i.c = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.c, label %"_ZN4core3ptr172drop_in_place$LT$core..option..Option$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17hf39c15b4508a99e1E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18408)
  %i.d = icmp eq i64 %i.a, 0
  br i1 %i.d, label %"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !18409, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18409
  br label %"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i"

"_ZN4core3ptr144drop_in_place$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$17h3c643290dc702436E.exit.i": ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$usize$C$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..Line$GT$$GT$17hb2e956eec4b59db1E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.f)
  br label %"_ZN4core3ptr172drop_in_place$LT$core..option..Option$LT$codespan_reporting..term..views..RichDiagnostic$LT$FileId$GT$..render..LabeledFile$LT$nickel_lang_parser..files..FileId$GT$$GT$$GT$17hf39c15b4508a99e1E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr201drop_in_place$LT$core..option..Option$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$$GT$17heab1107e29f5c1a8E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !39, !noundef !16 ; 3 uses
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8d9df6e7ea5740c9E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18416)
  %switch.i = icmp sgt i64 %i.a, 0
  br i1 %switch.i, label %bb.d, label %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8d9df6e7ea5740c9E.exit"

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !18416, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.a, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18417
  br label %"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8d9df6e7ea5740c9E.exit"

"_ZN4core3ptr173drop_in_place$LT$$LP$serde_spanned..spanned..Spanned$LT$alloc..borrow..Cow$LT$str$GT$$GT$$C$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$RP$$GT$17h8d9df6e7ea5740c9E.exit": ; preds = %bb.c, %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @"_ZN4core3ptr94drop_in_place$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$17h9687e9e05a53dcfcE"(ptr noalias noundef readonly align 8 dereferenceable(56) %i.d)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr208drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$C$$LT$std..path..PathBuf$u20$as$u20$core..convert..From$LT$std..path..PathBuf$GT$$GT$..from$GT$$GT$17hb2d399ac6b022f94E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18429)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18430, !nonnull !16, !noundef !16 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load ptr, ptr %i.c, align 8, !alias.scope !18430, !nonnull !16, !noundef !16 ; 2 uses
  %i.d = ptrtoint ptr %.val2.i.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18431)
  %i.h = icmp eq ptr %.val2.i.i, %i.b
  br i1 %i.h, label %"_ZN4core3ptr49drop_in_place$LT$$u5b$std..path..PathBuf$u5d$$GT$17h06babe571193f4e6E.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.j, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.j = add nuw i64 %.sroa.0.011.i.i.i, 1        ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.i, align 8, !range !40, !alias.scope !18432, !noalias !18430, !noundef !16 ; 2 uses
  %i.k = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.k, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val9.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !18431, !noalias !18430, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18433
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i
  %i.m = icmp eq i64 %i.j, %i.g
  br i1 %i.m, label %"_ZN4core3ptr49drop_in_place$LT$$u5b$std..path..PathBuf$u5d$$GT$17h06babe571193f4e6E.exit.i.i", label %.lr.ph.i.i.i

"_ZN4core3ptr49drop_in_place$LT$$u5b$std..path..PathBuf$u5d$$GT$17h06babe571193f4e6E.exit.i.i": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i.i", %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !18430, !noundef !16 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$17h7ef0660f74697dd3E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr49drop_in_place$LT$$u5b$std..path..PathBuf$u5d$$GT$17h06babe571193f4e6E.exit.i.i"
  %i.q = load ptr, ptr %0, align 8, !alias.scope !18430, !nonnull !16, !noundef !16
  %i.r = mul nuw i64 %i.o, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18430
  br label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$17h7ef0660f74697dd3E.exit"

"_ZN4core3ptr78drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..path..PathBuf$GT$$GT$17h7ef0660f74697dd3E.exit": ; preds = %"_ZN4core3ptr49drop_in_place$LT$$u5b$std..path..PathBuf$u5d$$GT$17h06babe571193f4e6E.exit.i.i", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr217drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h04d475ec4775cda2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !16 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc51f2b7153555200E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.d = icmp eq i64 %i.f, %.val1
  br i1 %i.d, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc51f2b7153555200E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i7 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.0.i.i7
  %i.f = add i64 %.sroa.0.0.i.i7, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h9cdd7fc70d819eebE"(ptr noalias noundef readonly align 64 dereferenceable(64) %i.e)
          to label %bb.b unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph9
  %i.g = add i64 %.sroa.0.1.i.i8, 1               ; 2 uses
  %i.h = icmp eq i64 %i.g, %.val1
  br i1 %i.h, label %.body, label %.lr.ph9

bb.d:                                             ; preds = %.lr.ph
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.f, %.val1
  br i1 %i.j, label %.body, label %.lr.ph9

.lr.ph9:                                          ; preds = %bb.d, %bb.c
  %.sroa.0.1.i.i8 = phi i64 [ %i.g, %bb.c ], [ %i.f, %bb.d ] ; 2 uses
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %.val, i64 %.sroa.0.1.i.i8
  invoke fastcc void @"_ZN4core3ptr194drop_in_place$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$17h9cdd7fc70d819eebE"(ptr noalias noundef readonly align 64 dereferenceable(64) %i.k) #46
          to label %bb.c unwind label %bb.e

bb.e:                                             ; preds = %.lr.ph9
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !18436
  unreachable

.body:                                            ; preds = %bb.c, %bb.d
  %.val4 = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 2 uses
  %i.m = icmp eq i64 %.val4, 0
  br i1 %i.m, label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h5e90933dcb6cb8f5E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.n = shl nuw i64 %.val4, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 64) #44
  br label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h5e90933dcb6cb8f5E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc51f2b7153555200E.exit": ; preds = %bb.b, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 2 uses
  %i.o = icmp eq i64 %.val2, 0
  br i1 %i.o, label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h5e90933dcb6cb8f5E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc51f2b7153555200E.exit"
  %i.p = shl nuw i64 %.val2, 6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 64) #44
  br label %"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h5e90933dcb6cb8f5E.exit6"

"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h5e90933dcb6cb8f5E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc51f2b7153555200E.exit", %bb.g
  ret void

"_ZN4core3ptr224drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..pool..inner..CacheLine$LT$std..sync..poison..mutex..Mutex$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17h5e90933dcb6cb8f5E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr218drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$nickel_lang_parser..position..TermPos$GT$$GT$$GT$17hff6f8ca9fa3220d3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18452)
end_hunk_5
begin_hunk_6_@"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h89d62c0ecd4b1cc0E":bb.a
bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.0.val, i64 -1    ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.0.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !16, !align !23, !noundef !16 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !40, !invariant.load !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !37, !invariant.load !16 ; 2 uses
  %i.k = icmp ult i64 %i.j, -9223372036854775807
  tail call void @llvm.assume(i1 %i.k)
  %i.l = icmp eq i64 %i.h, 0
  br i1 %i.l, label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hb54926b71f40d097E.exit.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i": ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) %i.j) #44
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hb54926b71f40d097E.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !40, !invariant.load !16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !37, !invariant.load !16 ; 2 uses
  %i.r = icmp ult i64 %i.q, -9223372036854775807
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp eq i64 %i.o, 0
  br i1 %i.s, label %bb.g, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.q) #44
  br label %bb.g

bb.g:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i4.i.i.i.i.i.i", %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #44
  resume { ptr, i32 } %i.m

"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hb54926b71f40d097E.exit.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i", %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #44
  br label %"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hf89d679bcc737a1dE.exit"

"_ZN4core3ptr57drop_in_place$LT$std..io..error..repr_bitpacked..Repr$GT$17hf89d679bcc737a1dE.exit": ; preds = %bb.a, %bb.a, %bb.b, %"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17hb54926b71f40d097E.exit.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr439drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf0ac985c90c4ef51E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18826)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18827)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18828)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18829, !nonnull !16, !noundef !16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !18829, !nonnull !16, !noundef !16 ; 2 uses
  %i.h = ptrtoint ptr %.val2.i.i.i to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18830)
  %i.l = icmp eq ptr %.val2.i.i.i, %i.f
  br i1 %i.l, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$u5d$$GT$17h9f3fcba41bf2e9e9E.exit.i.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i"
  %.sroa.0.011.i.i.i.i = phi i64 [ %i.n, %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.0.011.i.i.i.i ; 2 uses
  %i.n = add nuw i64 %.sroa.0.011.i.i.i.i, 1      ; 2 uses
  %.val8.i.i.i.i = load i64, ptr %i.m, align 8, !range !33, !alias.scope !18830, !noalias !18829, !noundef !16 ; 2 uses
  %switch.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i, 0
  br i1 %switch.i.i.i.i, label %bb.b, label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val9.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !18830, !noalias !18829, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %.val8.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18831
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i
  %i.p = icmp eq i64 %i.n, %i.k
  br i1 %i.p, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$u5d$$GT$17h9f3fcba41bf2e9e9E.exit.i.i.i", label %.lr.ph.i.i.i.i

"_ZN4core3ptr103drop_in_place$LT$$u5b$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$u5d$$GT$17h9f3fcba41bf2e9e9E.exit.i.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$17hd95aa2705549118fE.exit.i.i.i.i", %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !18829, !noundef !16 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %"_ZN4core3ptr391drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf7988fae59156a20E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$u5d$$GT$17h9f3fcba41bf2e9e9E.exit.i.i.i"
  %i.t = load ptr, ptr %i.d, align 8, !alias.scope !18829, !nonnull !16, !noundef !16
  %i.u = mul nuw i64 %i.r, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.t, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18829
  br label %"_ZN4core3ptr391drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf7988fae59156a20E.exit"

"_ZN4core3ptr391drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf7988fae59156a20E.exit": ; preds = %bb.c, %"_ZN4core3ptr103drop_in_place$LT$$u5b$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$u5d$$GT$17h9f3fcba41bf2e9e9E.exit.i.i.i"
  %.val = load i64, ptr %0, align 8, !range !15, !noundef !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.v, align 8            ; 5 uses
  %i.w = icmp eq i64 %.val, 0
  %i.x = icmp eq ptr %.val1, null
  %or.cond.i = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr391drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf7988fae59156a20E.exit"
  %i.y = ptrtoint ptr %.val1 to i64
  %i.z = and i64 %i.y, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit" [
    i64 2, label %bb.e
    i64 0, label %bb.f
  ], !prof !21

bb.e:                                             ; preds = %bb.d
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !18832
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18832
  store ptr %.val1, ptr %i.c, align 8, !noalias !18832
  %i.aa = load i64, ptr %.val1, align 8, !noalias !18833, !noundef !16 ; 3 uses
  %i.ab = and i64 %i.aa, 72057594037927935
  %i.ac = add nsw i64 %i.ab, -1                   ; 3 uses
  %i.ad = and i64 %i.aa, 1080863910568919040
  %i.ae = icmp ult i64 %i.aa, 864691128455135232
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = or i64 %i.ac, %i.ad
  store i64 %i.af, ptr %.val1, align 8, !noalias !18833
  %i.ag = icmp ugt i64 %i.ac, 72057594037927935
  br i1 %i.ag, label %bb.h, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.ah = icmp eq i64 %i.ac, 0
  br i1 %i.ah, label %bb.i, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18833
  store ptr @604, ptr %i.b, align 8, !noalias !18833
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ai, align 8, !noalias !18833
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aj, align 8, !noalias !18833
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8, !noalias !18833
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.al, align 8, !noalias !18833
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !18833
  unreachable

bb.i:                                             ; preds = %bb.g
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !18832
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i": ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18832
  br label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit": ; preds = %"_ZN4core3ptr391drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hf7988fae59156a20E.exit", %bb.d, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hde4ee8c98865ab72E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18852)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18853)
  %.val.i.i = load i64, ptr %i.a, align 8, !range !40, !alias.scope !18854, !noundef !16 ; 2 uses
  %i.b = icmp eq i64 %.val.i.i, 0
  br i1 %i.b, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !18854, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18854
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit": ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18855)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !18855, !noundef !16 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h84b5193819b4779bE.exit3", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"
  %1 = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !18856
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h84b5193819b4779bE.exit3"

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7afa1a5d914a33daE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h84b5193819b4779bE.exit3" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17habc5d8a4af8bcaacE"(ptr noalias noundef align 8 dereferenceable(24) %i.i) #46
  resume { ptr, i32 } %i.h

"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h84b5193819b4779bE.exit3": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit", %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18857)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val.i = load ptr, ptr %i.k, align 8, !alias.scope !18857, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val1.i = load i64, ptr %i.l, align 8, !alias.scope !18857, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18858)
  %i.m = icmp eq i64 %.val1.i, 0
  br i1 %i.m, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h84b5193819b4779bE.exit3", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i"
  %.sroa.0.010.i.i.i = phi i64 [ %i.o, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i" ], [ 0, %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h84b5193819b4779bE.exit3" ] ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.sroa.0.010.i.i.i ; 2 uses
  %i.o = add nuw i64 %.sroa.0.010.i.i.i, 1        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18859)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18860)
  %.val.i.i.i.i.i = load i64, ptr %i.n, align 8, !range !40, !alias.scope !18861, !noalias !18857, !noundef !16 ; 2 uses
  %i.p = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.p, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val1.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !18861, !noalias !18857, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !18862
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i": ; preds = %bb.f, %.lr.ph.i.i.i
  %i.r = icmp eq i64 %i.o, %.val1.i
  br i1 %i.r, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit.i": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i.i", %"_ZN4core3ptr76drop_in_place$LT$core..option..Option$LT$alloc..sync..Arc$LT$str$GT$$GT$$GT$17h84b5193819b4779bE.exit3"
  %.val2.i = load i64, ptr %i.j, align 8, !range !40, !alias.scope !18857, !noundef !16 ; 2 uses
  %i.s = icmp eq i64 %.val2.i, 0
  br i1 %i.s, label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17habc5d8a4af8bcaacE.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit.i"
  %i.t = mul nuw i64 %.val2.i, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18857
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17habc5d8a4af8bcaacE.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17habc5d8a4af8bcaacE.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr457drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hc6ba35469f99e02fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18875)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18877)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !18878, !nonnull !16, !noundef !16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !18878, !nonnull !16, !noundef !16
  %i.h = ptrtoint ptr %.val2.i.i.i to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = lshr exact i64 %i.j, 4
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17h34965dde403ff302E"(ptr noalias noundef nonnull align 8 %i.f, i64 noundef %i.k)
          to label %bb.d unwind label %bb.b, !noalias !18878

bb.b:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !18878, !noundef !16 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.d, align 8, !alias.scope !18878, !nonnull !16, !noundef !16
  %i.q = shl nuw i64 %i.n, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.p, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18878
  br label %.body

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !18878, !noundef !16 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %"_ZN4core3ptr409drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h96d79b4306c84d62E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !18878, !nonnull !16, !noundef !16
  %i.v = shl nuw i64 %i.s, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef %i.v, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !18878
  br label %"_ZN4core3ptr409drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h96d79b4306c84d62E.exit"

.body:                                            ; preds = %bb.b, %bb.c
  %.val2 = load i64, ptr %0, align 8, !range !15, !noundef !16
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.w, align 8
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E"(i64 %.val2, ptr %.val3) #46
          to label %bb.m unwind label %bb.l

"_ZN4core3ptr409drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h96d79b4306c84d62E.exit": ; preds = %bb.e, %bb.d
  %.val = load i64, ptr %0, align 8, !range !15, !noundef !16
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.x, align 8            ; 5 uses
  %i.y = icmp eq i64 %.val, 0
  %i.z = icmp eq ptr %.val1, null
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr409drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h96d79b4306c84d62E.exit"
  %i.aa = ptrtoint ptr %.val1 to i64
  %i.ab = and i64 %i.aa, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 2)
  switch i64 %..i.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit" [
    i64 2, label %bb.g
    i64 0, label %bb.h
  ], !prof !21

bb.g:                                             ; preds = %bb.f
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !18879
  unreachable

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18879
  store ptr %.val1, ptr %i.c, align 8, !noalias !18879
  %i.ac = load i64, ptr %.val1, align 8, !noalias !18880, !noundef !16 ; 3 uses
  %i.ad = and i64 %i.ac, 72057594037927935
  %i.ae = add nsw i64 %i.ad, -1                   ; 3 uses
  %i.af = and i64 %i.ac, 1080863910568919040
  %i.ag = icmp ult i64 %i.ac, 864691128455135232
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = or i64 %i.ae, %i.af
  store i64 %i.ah, ptr %.val1, align 8, !noalias !18880
  %i.ai = icmp ugt i64 %i.ae, 72057594037927935
  br i1 %i.ai, label %bb.j, label %bb.i, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.aj = icmp eq i64 %i.ae, 0
  br i1 %i.aj, label %bb.k, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18880
  store ptr @604, ptr %i.b, align 8, !noalias !18880
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ak, align 8, !noalias !18880
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.al, align 8, !noalias !18880
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.am, align 8, !noalias !18880
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.an, align 8, !noalias !18880
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !18880
  unreachable

bb.k:                                             ; preds = %bb.i
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !18879
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i": ; preds = %bb.k, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18879
  br label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit": ; preds = %"_ZN4core3ptr409drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h96d79b4306c84d62E.exit", %bb.f, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"
  ret void

bb.l:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h76a4ebbc4b688667E"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18886)
  %i.a = load i64, ptr %.0.val, align 8, !range !60, !alias.scope !18887, !noundef !16
  switch i64 %i.a, label %"_ZN4core3ptr74drop_in_place$LT$alloc..boxed..Box$LT$serde_json..error..ErrorImpl$GT$$GT$17hdd0863c8844e8eefE.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]
end_hunk_6
begin_hunk_7_@"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..error..Error$GT$17h1b7f6c635abeaeb5E":bb.a
  br label %"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..error..ParseErrors$GT$17h870220d2aa1b5e8dE.exit"

"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..error..ParseErrors$GT$17h870220d2aa1b5e8dE.exit": ; preds = %bb.ac, %bb.ab, %bb.o, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd7dc38d1a7c1bb02E.exit.i.i", %"_ZN4core3ptr86drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..ExportErrorData$GT$$GT$17h5fb17647fce384f8E.exit", %"_ZN4core3ptr86drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..ImportErrorKind$GT$$GT$17hefc633d881958713E.exit", %"_ZN4core3ptr126drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..ouroboros_impl_typecheck_error_data..TypecheckErrorData$GT$$GT$17h96a27084ed1e7864E.exit", %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorData$GT$$GT$17h36f7ac611cbae8fbE.exit", %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..ReplErrorKind$GT$$GT$17hc0a2dfdc867c9ac2E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h1f41c9bd92b54091E"(ptr noalias noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19243)
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !19244, !nonnull !16, !noundef !16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !noalias !19244, !noundef !16
  %i.g = add i64 %i.f, -1                         ; 2 uses
  store i64 %i.g, ptr %i.e, align 8, !noalias !19244
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h3c5d8e0013c40db0E.exit"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17hc1334db6af4865e7E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h3c5d8e0013c40db0E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @"_ZN4core3ptr111drop_in_place$LT$smallvec..SmallVec$LT$$u5b$nickel_lang_core..label..ContractDiagnostic$u3b$$u20$1$u5d$$GT$$GT$17h46b5209b6bda8629E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.j) #46
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val6 = load ptr, ptr %i.k, align 8, !noundef !16
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8fc45951efd579acE"(ptr %.val6) #46
          to label %bb.j unwind label %bb.s

"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h3c5d8e0013c40db0E.exit": ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @"_ZN4core3ptr111drop_in_place$LT$smallvec..SmallVec$LT$$u5b$nickel_lang_core..label..ContractDiagnostic$u3b$$u20$1$u5d$$GT$$GT$17h46b5209b6bda8629E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.l)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.m, align 8, !noundef !16 ; 5 uses
  %i.n = icmp eq ptr %.val, null
  br i1 %i.n, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8fc45951efd579acE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h3c5d8e0013c40db0E.exit"
  %i.o = ptrtoint ptr %.val to i64
  %i.p = and i64 %i.o, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.p, i64 2)
  switch i64 %..i.i.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8fc45951efd579acE.exit" [
    i64 2, label %bb.e
    i64 0, label %bb.f
  ], !prof !21

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc11 unwind label %bb.m

.noexc11:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19245
  store ptr %.val, ptr %i.c, align 8, !noalias !19245
  %i.q = load i64, ptr %.val, align 8, !noalias !19246, !noundef !16 ; 3 uses
  %i.r = and i64 %i.q, 72057594037927935
  %i.s = add nsw i64 %i.r, -1                     ; 3 uses
  %i.t = and i64 %i.q, 1080863910568919040
  %i.u = icmp ult i64 %i.q, 864691128455135232
  tail call void @llvm.assume(i1 %i.u)
  %i.v = or i64 %i.s, %i.t
  store i64 %i.v, ptr %.val, align 8, !noalias !19246
  %i.w = icmp ugt i64 %i.s, 72057594037927935
  br i1 %i.w, label %bb.h, label %bb.g, !prof !22

bb.g:                                             ; preds = %bb.f
  %i.x = icmp eq i64 %i.s, 0
  br i1 %i.x, label %bb.i, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19246
  store ptr @604, ptr %i.b, align 8, !noalias !19246
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.y, align 8, !noalias !19246
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.z, align 8, !noalias !19246
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.aa, align 8, !noalias !19246
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ab, align 8, !noalias !19246
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc12 unwind label %bb.m

.noexc12:                                         ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i" unwind label %bb.m

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i": ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19245
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8fc45951efd579acE.exit"

bb.j:                                             ; preds = %bb.c, %bb.m
  %.pn2 = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %i.i, %bb.c ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19247)
  call void @llvm.experimental.noalias.scope.decl(metadata !19248)
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !19249, !noundef !16 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load i64, ptr %i.ad, align 8, !noalias !19250, !noundef !16
  %i.ag = add i64 %i.af, -1                       ; 2 uses
  store i64 %i.ag, ptr %i.ad, align 8, !noalias !19250
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit"

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6d89f56da8e877cbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit" unwind label %bb.s

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8fc45951efd579acE.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i", %bb.d, %"_ZN4core3ptr69drop_in_place$LT$alloc..rc..Rc$LT$nickel_lang_core..typ..Type$GT$$GT$17h3c5d8e0013c40db0E.exit"
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19251)
  call void @llvm.experimental.noalias.scope.decl(metadata !19252)
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !19253, !noundef !16 ; 3 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit16", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8fc45951efd579acE.exit"
  %i.am = load i64, ptr %i.ak, align 8, !noalias !19254, !noundef !16
  %i.an = add i64 %i.am, -1                       ; 2 uses
  store i64 %i.an, ptr %i.ak, align 8, !noalias !19254
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.o, label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit16"

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6d89f56da8e877cbE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit16" unwind label %bb.q

"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit": ; preds = %bb.k, %bb.j, %bb.l, %bb.q
  %.pn4 = phi { ptr, i32 } [ %i.as, %bb.q ], [ %.pn2, %bb.l ], [ %.pn2, %bb.j ], [ %.pn2, %bb.k ]
  %.val9 = load i64, ptr %0, align 8              ; 2 uses
  %i.ap = icmp eq i64 %.val9, 0
  br i1 %i.ap, label %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$$LP$i32$C$nickel_lang_core..label..TypeVarData$RP$$GT$$GT$17hb10f13be7b0954c3E.exit", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit"
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  %i.ar = shl nuw i64 %.val9, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$$LP$i32$C$nickel_lang_core..label..TypeVarData$RP$$GT$$GT$17hb10f13be7b0954c3E.exit"

bb.q:                                             ; preds = %bb.o
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit"

"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit16": ; preds = %bb.n, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8fc45951efd579acE.exit", %bb.o
  %.val7 = load i64, ptr %0, align 8              ; 2 uses
  %i.at = icmp eq i64 %.val7, 0
  br i1 %i.at, label %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$$LP$i32$C$nickel_lang_core..label..TypeVarData$RP$$GT$$GT$17hb10f13be7b0954c3E.exit17", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit16"
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load ptr, ptr %i.au, align 8, !nonnull !16, !noundef !16
  %i.av = shl nuw i64 %.val7, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.av, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$$LP$i32$C$nickel_lang_core..label..TypeVarData$RP$$GT$$GT$17hb10f13be7b0954c3E.exit17"

"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$$LP$i32$C$nickel_lang_core..label..TypeVarData$RP$$GT$$GT$17hb10f13be7b0954c3E.exit17": ; preds = %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit16", %bb.r
  ret void

bb.s:                                             ; preds = %bb.l, %bb.c
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr94drop_in_place$LT$alloc..vec..Vec$LT$$LP$i32$C$nickel_lang_core..label..TypeVarData$RP$$GT$$GT$17hb10f13be7b0954c3E.exit": ; preds = %bb.p, %"_ZN4core3ptr111drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..label..ty_path..Elem$C$4_usize$GT$$GT$17h3986f341f917ac86E.exit"
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17hbc64c41b1eceb9c7E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19263)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19266)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !19267, !nonnull !16, !noundef !16
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !19267
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !19263 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !19263, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit.i"

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !19263 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !19263, !nonnull !16, !noundef !16
  %i.k = shl nuw i64 %.val.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E.exit"

"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.e

"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E.exit": ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i", %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hfd322dfa2f3c7fc4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19292)
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !19292, !nonnull !16, !noundef !16 ; 4 uses
  %i.d = ptrtoint ptr %.val.i to i64
  %i.e = and i64 %i.d, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit" [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19292
  store ptr %.val.i, ptr %i.c, align 8, !noalias !19292
  %i.f = load i64, ptr %.val.i, align 8, !noalias !19293, !noundef !16 ; 3 uses
  %i.g = and i64 %i.f, 72057594037927935
  %i.h = add nsw i64 %i.g, -1                     ; 3 uses
  %i.i = and i64 %i.f, 1080863910568919040
  %i.j = icmp ult i64 %i.f, 864691128455135232
  tail call void @llvm.assume(i1 %i.j)
  %i.k = or i64 %i.h, %i.i
  store i64 %i.k, ptr %.val.i, align 8, !noalias !19293
  %i.l = icmp ugt i64 %i.h, 72057594037927935
  br i1 %i.l, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %bb.f, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19293
  store ptr @604, ptr %i.b, align 8, !noalias !19293
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.n, align 8, !noalias !19293
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.o, align 8, !noalias !19293
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8, !noalias !19293
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.q, align 8, !noalias !19293
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc1 unwind label %bb.g

.noexc1:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i" unwind label %bb.g

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i": ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19292
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit"

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E"(ptr noalias noundef align 8 dereferenceable(16) %i.s) #46
          to label %common.resume unwind label %bb.o

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i", %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19294)
  call void @llvm.experimental.noalias.scope.decl(metadata !19295)
  call void @llvm.experimental.noalias.scope.decl(metadata !19296)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !19297, !nonnull !16, !noundef !16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !19297, !noundef !16
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8, !noalias !19297
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.h, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"

bb.h:                                             ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.t)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i" unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19298)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !19299, !noundef !16 ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %common.resume, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = load i64, ptr %i.aa, align 8, !noalias !19300, !noundef !16
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.aa, align 8, !noalias !19300
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.k, label %common.resume

bb.k:                                             ; preds = %bb.j
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %common.resume unwind label %bb.n

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i": ; preds = %bb.h, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit"
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19301)
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !19302, !noundef !16 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"
  %i.ai = load i64, ptr %i.ag, align 8, !noalias !19303, !noundef !16
  %i.aj = add i64 %i.ai, -1                       ; 2 uses
  store i64 %i.aj, ptr %i.ag, align 8, !noalias !19303
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.m, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit"

bb.m:                                             ; preds = %bb.l
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.af)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit"

bb.n:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.i, %bb.j, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.y, %bb.i ], [ %i.y, %bb.k ], [ %i.y, %bb.j ], [ %i.r, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i", %bb.l, %bb.m
  ret void

bb.o:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..typ..EnumRows$GT$17h8fd6966f58aee422E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !range !26, !alias.scope !19315, !noundef !16 ; 2 uses
  %i.c = icmp ne i32 %i.b, 4
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %i.b, 3
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr174drop_in_place$LT$nickel_lang_parser..typ..EnumRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typ..EnumRows$GT$$GT$$GT$17hdf5a4aa53dc342a6E.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !alias.scope !19316, !align !23, !noundef !16 ; 4 uses
end_hunk_7
begin_hunk_8_@"_ZN4core3ptr54drop_in_place$LT$nickel_lang_core..typ..RecordRows$GT$17h9fd7ddce105a2d53E":bb.a
  invoke fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..RecordRows$GT$$GT$17h21e7f93818a85354E"(ptr noalias noundef align 8 dereferenceable(8) %i.g) #46
          to label %bb.e unwind label %bb.d, !inline_history !19389

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 104, i64 noundef 8) #44, !noalias !19393
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @"_ZN4core3ptr79drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..RecordRows$GT$$GT$17h21e7f93818a85354E"(ptr noalias noundef align 8 dereferenceable(8) %i.h), !inline_history !19389
  br label %"_ZN4core3ptr178drop_in_place$LT$nickel_lang_parser..typ..RecordRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typ..RecordRows$GT$$GT$$GT$17hccad6fbce8d94a6bE.exit"

bb.d:                                             ; preds = %.body
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !inline_history !19389
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.f

"_ZN4core3ptr178drop_in_place$LT$nickel_lang_parser..typ..RecordRowsF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$alloc..boxed..Box$LT$nickel_lang_core..typ..RecordRows$GT$$GT$$GT$17hccad6fbce8d94a6bE.exit": ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$alloc..vec..drain..Drain$LT$u8$GT$$GT$17h7803e49a2db9260cE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19396)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !19396, !nonnull !16, !noundef !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !19396, !nonnull !16, !noundef !16
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !alias.scope !19396
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !alias.scope !19396
  %i.d = icmp eq ptr %i.c, %i.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !19396, !noundef !16 ; 5 uses
  %.not.i.i.i = icmp eq i64 %i.f, 0               ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h82d274d01e65267aE.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !19396, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !noalias !19396, !noundef !16 ; 4 uses
  %i.k = icmp sgt i64 %i.j, -1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !19396, !noundef !16 ; 2 uses
  %.not3.i.i.i = icmp eq i64 %i.m, %i.j
  br i1 %.not3.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f
  store i64 %i.n, ptr %i.i, align 8, !noalias !19396
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h82d274d01e65267aE.exit"

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !noalias !19396, !nonnull !16, !noundef !16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.q, i64 %i.f, i1 false), !noalias !19396
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i.i, label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h82d274d01e65267aE.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !19396, !nonnull !16, !noundef !16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noalias !19396, !noundef !16 ; 4 uses
  %i.w = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !19396, !noundef !16 ; 2 uses
  %.not3.i.i23.i = icmp eq i64 %i.y, %i.v
  br i1 %.not3.i.i23.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.z = add i64 %i.v, %i.f
  store i64 %i.z, ptr %i.u, align 8, !noalias !19396
  br label %"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h82d274d01e65267aE.exit"

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !19396, !nonnull !16, !noundef !16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.y
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.v
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ad, ptr nonnull align 1 %i.ac, i64 %i.f, i1 false), !noalias !19396
  br label %bb.h

"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h82d274d01e65267aE.exit": ; preds = %bb.b, %bb.d, %bb.f, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h5cf242145dc0cbb0E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val19 = load i64, ptr %i.a, align 8           ; 2 uses
  %i.b = icmp eq i64 %.val19, 0
  br i1 %i.b, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val20 = load ptr, ptr %i.c, align 8, !nonnull !16, !noundef !16
  %i.d = shl nuw i64 %.val19, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit"

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val15 = load i64, ptr %i.e, align 8           ; 2 uses
  %i.f = icmp eq i64 %.val15, 0
  br i1 %i.f, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit26", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val16 = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val15, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val16, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit26"

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit26": ; preds = %bb.c, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h3c12e9ca09a6619fE"(ptr noalias noundef align 8 dereferenceable(24) %i.i)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit26"
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 280
  invoke fastcc void @"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfbb36f5653a6d39fE"(ptr noalias noundef align 8 dereferenceable(48) %i.k) #46
          to label %bb.k unwind label %bb.y

bb.e:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..hybrid..id..LazyStateID$GT$$GT$17h38730c55aa269fcbE.exit26"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19452)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19453)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !19454, !noundef !16 ; 4 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfbb36f5653a6d39fE.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19455)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.q = load i64, ptr %i.p, align 8, !alias.scope !19456, !noundef !16 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %i.l, align 8, !alias.scope !19456, !nonnull !16, !noundef !16 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.s, align 16, !noalias !19457
  %i.t = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = bitcast <16 x i1> %i.t to i16
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i", %bb.g
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.s, %bb.g ], [ %.sroa.06.1.i.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.v, %bb.g ], [ %i.ae, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.q, %bb.g ], [ %i.ah, %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i
  %i.w = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.h ] ; 2 uses
  %i.x = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.h ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.w, align 16, !noalias !19458
  %i.y = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.z = getelementptr inbounds i8, ptr %i.x, i64 -384 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.y to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.h
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.h ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.h ], [ %i.z, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.h ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ab = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ac = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = and i16 %i.ab, %.lcssa.i.i.i.i.i.i.i
  %i.af = sub nsw i64 0, %i.ad
  %i.ag = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.af
  %i.ah = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19462)
  %i.aj = load ptr, ptr %i.ai, align 8, !alias.scope !19463, !noalias !19456, !nonnull !16, !noundef !16
  %1 = atomicrmw sub ptr %i.aj, i64 1 release, align 8, !noalias !19464
  %i.ak = icmp eq i64 %1, 1
  br i1 %i.ak, label %bb.i, label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i"

bb.i:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i.i"
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i" unwind label %bb.l

"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i": ; preds = %bb.i, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h13eaab7df3425e45E.exit.i.i.i.i.i.i"
  %i.al = icmp eq i64 %i.ah, 0
  br i1 %i.al, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i.i, label %bb.h

_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr118drop_in_place$LT$$LP$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$RP$$GT$17h5e4eec2f699d34e5E.exit.i.i.i.i.i.i", %bb.f
  %i.am = mul i64 %i.n, 24
  %i.an = icmp slt i64 %i.n, 768614336404564650
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = and i64 %i.am, -16                      ; 2 uses
  %i.ap = add i64 %i.ao, 32                       ; 2 uses
  %i.aq = add nsw i64 %i.n, 17
  %i.ar = add i64 %i.aq, %i.ap                    ; 4 uses
  %i.as = icmp uge i64 %i.ar, %i.ap
  %i.at = icmp ult i64 %i.ar, 9223372036854775793
  tail call void @llvm.assume(i1 %i.as)
  tail call void @llvm.assume(i1 %i.at)
  %i.au = icmp eq i64 %i.ar, 0
  br i1 %i.au, label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfbb36f5653a6d39fE.exit", label %bb.j

bb.j:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i.i
  %i.av = load ptr, ptr %i.l, align 8, !alias.scope !19454, !nonnull !16, !noundef !16
  %i.aw = sub i64 -32, %i.ao
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.ar, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !19454
  br label %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfbb36f5653a6d39fE.exit"

bb.k:                                             ; preds = %bb.l, %bb.d
  %.pn4 = phi { ptr, i32 } [ %i.bb, %bb.l ], [ %i.j, %bb.d ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call fastcc void @"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h669a2ded85215c07E"(ptr noalias noundef align 8 dereferenceable(112) %i.ay) #46
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val13 = load i64, ptr %i.az, align 8          ; 2 uses
  %i.ba = icmp eq i64 %.val13, 0
  br i1 %i.ba, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit", label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfbb36f5653a6d39fE.exit": ; preds = %bb.j, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h0b1a859c5233fa5fE.exit.i.i.i.i.i, %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19465)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19466)
  %.val4.i.i = load i64, ptr %i.bc, align 8, !alias.scope !19467 ; 2 uses
  %i.bd = icmp eq i64 %.val4.i.i, 0
  br i1 %i.bd, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i.i", label %bb.m

bb.m:                                             ; preds = %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfbb36f5653a6d39fE.exit"
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val5.i.i = load ptr, ptr %i.be, align 8, !alias.scope !19467, !nonnull !16, !noundef !16
  %i.bf = shl nuw i64 %.val4.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !19467
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i.i": ; preds = %bb.m, %"_ZN4core3ptr154drop_in_place$LT$std..collections..hash..map..HashMap$LT$regex_automata..util..determinize..state..State$C$regex_automata..hybrid..id..LazyStateID$GT$$GT$17hfbb36f5653a6d39fE.exit"
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val.i.i = load i64, ptr %i.bg, align 8, !alias.scope !19467 ; 2 uses
  %i.bh = icmp eq i64 %.val.i.i, 0
  br i1 %i.bh, label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hac4cf8d79e039b44E.exit.i", label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i.i"
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val1.i.i = load ptr, ptr %i.bi, align 8, !alias.scope !19467, !nonnull !16, !noundef !16
  %i.bj = shl nuw i64 %.val.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.bj, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !19467
  br label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hac4cf8d79e039b44E.exit.i"

"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hac4cf8d79e039b44E.exit.i": ; preds = %bb.n, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i.i"
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19468)
  %.val4.i1.i = load i64, ptr %i.bk, align 8, !alias.scope !19469 ; 2 uses
  %i.bl = icmp eq i64 %.val4.i1.i, 0
  br i1 %i.bl, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i3.i", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hac4cf8d79e039b44E.exit.i"
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val5.i2.i = load ptr, ptr %i.bm, align 8, !alias.scope !19469, !nonnull !16, !noundef !16
  %i.bn = shl nuw i64 %.val4.i1.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i2.i, i64 noundef %i.bn, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !19469
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i3.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i3.i": ; preds = %bb.o, %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hac4cf8d79e039b44E.exit.i"
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val.i4.i = load i64, ptr %i.bo, align 8, !alias.scope !19469 ; 2 uses
  %i.bp = icmp eq i64 %.val.i4.i, 0
  br i1 %i.bp, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h669a2ded85215c07E.exit", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i3.i"
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val1.i5.i = load ptr, ptr %i.bq, align 8, !alias.scope !19469, !nonnull !16, !noundef !16
  %i.br = shl nuw i64 %.val.i4.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i5.i, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !19469
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h669a2ded85215c07E.exit"

bb.q:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val14 = load ptr, ptr %i.bs, align 8, !nonnull !16, !noundef !16
  %i.bt = shl nuw i64 %.val13, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.bt, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit"

"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h669a2ded85215c07E.exit": ; preds = %bb.p, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i3.i"
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %.val = load i64, ptr %i.bu, align 8            ; 2 uses
  %i.bv = icmp eq i64 %.val, 0
  br i1 %i.bv, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit27", label %bb.r

bb.r:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h669a2ded85215c07E.exit"
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 216
  %.val12 = load ptr, ptr %i.bw, align 8, !nonnull !16, !noundef !16
  %i.bx = shl nuw i64 %.val, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12, i64 noundef %i.bx, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit27"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit": ; preds = %bb.q, %bb.k
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val23 = load i64, ptr %i.by, align 8, !range !40, !alias.scope !19470, !noundef !16 ; 2 uses
  %i.bz = icmp eq i64 %.val23, 0
  br i1 %i.bz, label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit", label %bb.s

bb.s:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit"
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val24 = load ptr, ptr %i.ca, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val23, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !19471
  br label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit27": ; preds = %bb.r, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h669a2ded85215c07E.exit"
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 232
  %.val21 = load i64, ptr %i.cb, align 8, !range !40, !alias.scope !19470, !noundef !16 ; 2 uses
  %i.cc = icmp eq i64 %.val21, 0
  br i1 %i.cc, label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit28", label %bb.t

bb.t:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit27"
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 240
  %.val22 = load ptr, ptr %i.cd, align 8, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val21, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !19472
  br label %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit28"

"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit": ; preds = %bb.s, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit"
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19473)
  %i.cf = load i32, ptr %i.ce, align 8, !range !36, !alias.scope !19473, !noundef !16
  %i.cg = icmp eq i32 %i.cf, 1
  br i1 %i.cg, label %bb.u, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h3b398a2926fb26e8E.exit"

bb.u:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit"
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19474)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19476)
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !19477, !nonnull !16, !noundef !16
  %2 = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !19477
  %i.cj = icmp eq i64 %2, 1
  br i1 %i.cj, label %bb.v, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h3b398a2926fb26e8E.exit"

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ch)
          to label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h3b398a2926fb26e8E.exit" unwind label %bb.y

"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit28": ; preds = %bb.t, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit27"
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 256
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19478)
  %i.cl = load i32, ptr %i.ck, align 8, !range !36, !alias.scope !19478, !noundef !16
  %i.cm = icmp eq i32 %i.cl, 1
  br i1 %i.cm, label %bb.w, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h3b398a2926fb26e8E.exit30"

bb.w:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit28"
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19479)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19481)
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !19482, !nonnull !16, !noundef !16
  %3 = atomicrmw sub ptr %i.co, i64 1 release, align 8, !noalias !19482
  %i.cp = icmp eq i64 %3, 1
  br i1 %i.cp, label %bb.x, label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h3b398a2926fb26e8E.exit30"

bb.x:                                             ; preds = %bb.w
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.cn)
  br label %"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h3b398a2926fb26e8E.exit30"

"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h3b398a2926fb26e8E.exit30": ; preds = %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit28", %bb.w, %bb.x
  ret void

bb.y:                                             ; preds = %bb.v, %bb.d
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr60drop_in_place$LT$regex_automata..hybrid..dfa..StateSaver$GT$17h3b398a2926fb26e8E.exit": ; preds = %bb.u, %"_ZN4core3ptr80drop_in_place$LT$regex_automata..util..determinize..state..StateBuilderEmpty$GT$17h5f5386c6aedc7a89E.exit", %bb.v
  resume { ptr, i32 } %.pn4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h5dd80144f6d46b51E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19509)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19510)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19511)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19512)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !19513, !nonnull !16, !noundef !16
  %1 = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !19513
  %i.d = icmp eq i64 %1, 1
  br i1 %i.d, label %bb.b, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %.val2.i = load i64, ptr %i.a, align 8, !alias.scope !19509 ; 2 uses
  %i.f = icmp eq i64 %.val2.i, 0
  br i1 %i.f, label %.body, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val3.i = load ptr, ptr %i.g, align 8, !alias.scope !19509, !nonnull !16, !noundef !16
  %i.h = shl nuw i64 %.val2.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %.body

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load i64, ptr %i.a, align 8, !alias.scope !19509 ; 2 uses
  %i.i = icmp eq i64 %.val.i, 0
  br i1 %i.i, label %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E.exit", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.val1.i = load ptr, ptr %i.j, align 8, !alias.scope !19509, !nonnull !16, !noundef !16
  %i.k = shl nuw i64 %.val.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E.exit"

.body:                                            ; preds = %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..PikeVMCache$GT$17h4a30586384356c3eE"(ptr noalias noundef align 8 dereferenceable(216) %i.l) #46
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call fastcc void @"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h2d7d8676e5d8b559E"(ptr noalias noundef align 8 dereferenceable(56) %i.m) #46
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val9 = load i64, ptr %i.n, align 8, !range !33, !noundef !16 ; 2 uses
  %switch16 = icmp sgt i64 %.val9, 0
  br i1 %switch16, label %bb.i, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit"

"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E.exit": ; preds = %bb.e, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..PikeVMCache$GT$17h4a30586384356c3eE"(ptr noalias noundef align 8 dereferenceable(216) %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1312
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19514)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19515)
  %i.q = load i64, ptr %i.p, align 8, !range !33, !alias.scope !19516, !noundef !16 ; 3 uses
  %i.r = icmp eq i64 %i.q, -9223372036854775808
  br i1 %i.r, label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h2d7d8676e5d8b559E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19517)
  %i.s = icmp eq i64 %i.q, 0
  br i1 %i.s, label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17h977565e42c2299d8E.exit.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %.val1.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !19518, !nonnull !16, !noundef !16
  %i.u = shl nuw i64 %i.q, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %i.u, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !19518
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17h977565e42c2299d8E.exit.i.i.i"

"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17h977565e42c2299d8E.exit.i.i.i": ; preds = %bb.g, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1336
  %.val2.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !19518 ; 2 uses
  %i.w = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.w, label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h2d7d8676e5d8b559E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17h977565e42c2299d8E.exit.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %.val3.i.i.i = load ptr, ptr %i.x, align 8, !alias.scope !19518, !nonnull !16, !noundef !16
  %i.y = shl nuw i64 %.val2.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !19518
  br label %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h2d7d8676e5d8b559E.exit"

bb.i:                                             ; preds = %.body
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val10 = load ptr, ptr %i.z, align 8, !nonnull !16, !noundef !16
  %i.aa = shl nuw i64 %.val9, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit"

"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h2d7d8676e5d8b559E.exit": ; preds = %bb.h, %"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..nfa..thompson..backtrack..Frame$GT$$GT$17h977565e42c2299d8E.exit.i.i.i", %"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E.exit"
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %.val = load i64, ptr %i.ab, align 8, !range !33, !noundef !16 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %bb.j, label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit11"

bb.j:                                             ; preds = %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h2d7d8676e5d8b559E.exit"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1376
  %.val8 = load ptr, ptr %i.ac, align 8, !nonnull !16, !noundef !16
  %i.ad = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit11"

"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit": ; preds = %.body, %bb.i
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h701fa3f57af12904E"(ptr noalias noundef align 8 dereferenceable(704) %0) #46
          to label %.body12 unwind label %bb.q

"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit11": ; preds = %"_ZN4core3ptr76drop_in_place$LT$regex_automata..meta..wrappers..BoundedBacktrackerCache$GT$17h2d7d8676e5d8b559E.exit", %bb.j
  %i.ae = load i64, ptr %0, align 8, !range !35, !alias.scope !19519, !noundef !16
  %i.af = icmp eq i64 %i.ae, 2
  br i1 %i.af, label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h701fa3f57af12904E.exit", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit11"
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h5cf242145dc0cbb0E"(ptr noalias noundef nonnull align 8 dereferenceable(704) %0)
          to label %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17h85b6324160162e4bE.exit.i.i" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h5cf242145dc0cbb0E"(ptr noalias noundef align 8 dereferenceable(352) %i.ah) #46
          to label %.body12 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17h85b6324160162e4bE.exit.i.i": ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 352
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h5cf242145dc0cbb0E"(ptr noalias noundef align 8 dereferenceable(352) %i.aj)
          to label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h701fa3f57af12904E.exit" unwind label %bb.o

.body12:                                          ; preds = %bb.o, %bb.l, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit"
  %.pn6 = phi { ptr, i32 } [ %i.e, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit" ], [ %i.an, %bb.o ], [ %i.ag, %bb.l ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !range !35, !alias.scope !19520, !noundef !16
  %i.am = icmp eq i64 %i.al, 2
  br i1 %i.am, label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17ha35e214402a6b142E.exit", label %bb.n

bb.n:                                             ; preds = %.body12
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h5cf242145dc0cbb0E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ak)
          to label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17ha35e214402a6b142E.exit" unwind label %bb.q

bb.o:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17h85b6324160162e4bE.exit.i.i"
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body12

"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h701fa3f57af12904E.exit": ; preds = %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit11", %"_ZN4core3ptr57drop_in_place$LT$regex_automata..hybrid..regex..Cache$GT$17h85b6324160162e4bE.exit.i.i"
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !range !35, !alias.scope !19521, !noundef !16
  %i.aq = icmp eq i64 %i.ap, 2
  br i1 %i.aq, label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17ha35e214402a6b142E.exit15", label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h701fa3f57af12904E.exit"
  tail call fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..hybrid..dfa..Cache$GT$17h5cf242145dc0cbb0E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %i.ao)
  br label %"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17ha35e214402a6b142E.exit15"

"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17ha35e214402a6b142E.exit15": ; preds = %"_ZN4core3ptr64drop_in_place$LT$regex_automata..meta..wrappers..HybridCache$GT$17h701fa3f57af12904E.exit", %bb.p
  ret void

bb.q:                                             ; preds = %bb.n, %"_ZN4core3ptr65drop_in_place$LT$regex_automata..meta..wrappers..OnePassCache$GT$17h62e24a9fd421a25eE.exit"
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr71drop_in_place$LT$regex_automata..meta..wrappers..ReverseHybridCache$GT$17ha35e214402a6b142E.exit": ; preds = %.body12, %bb.n
  resume { ptr, i32 } %.pn6
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr55drop_in_place$LT$toml..de..parser..dearray..DeArray$GT$17h69f8bd58fd85bc45E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19527)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !19527, !nonnull !16, !noundef !16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !19527, !noundef !16 ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hb97afc600fad5ef8E.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d
  br i1 %i.f, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$$GT$17hb97afc600fad5ef8E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i2 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [56 x i8], ptr %i.b, i64 %.sroa.0.0.i.i2
  %i.h = add i64 %.sroa.0.0.i.i2, 1               ; 4 uses
  invoke fastcc void @"_ZN4core3ptr94drop_in_place$LT$serde_spanned..spanned..Spanned$LT$toml..de..parser..devalue..DeValue$GT$$GT$17h9687e9e05a53dcfcE"(ptr noalias noundef align 8 dereferenceable(56) %i.g)
          to label %bb.b unwind label %bb.d, !noalias !19527, !inline_history !19524

bb.c:                                             ; preds = %.lr.ph4
  %i.i = add i64 %.sroa.0.1.i.i3, 1               ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.d
  br i1 %i.j, label %.body, label %.lr.ph4

bb.d:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.d
end_hunk_8
begin_hunk_9_@"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..cache..SourceCache$GT$17h691f483939e8a008E":bb.a
"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6ffdea1c5843b357E.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i25, %bb.q
  %.sroa.6.1.i.i.i.i.i.i23 = phi ptr [ %.sroa.6.017.i.i.i.i.i.i, %bb.q ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i25 ]
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i, %bb.q ], [ %i.dh, %.lr.ph.i.i.i.i.i.i.i25 ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i24 = phi i16 [ %.sroa.88.016.i.i.i.i.i.i, %bb.q ], [ %.cast.i.i.i.i.i.i.i27, %.lr.ph.i.i.i.i.i.i.i25 ] ; 3 uses
  %i.dj = add i16 %.lcssa.i.i.i.i.i.i.i24, -1
  %i.dk = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i24, i1 true)
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = and i16 %i.dj, %.lcssa.i.i.i.i.i.i.i24
  %i.dn = sub nsw i64 0, %i.dl
  %i.do = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i.i.i.i, i64 %i.dn ; 2 uses
  %i.dp = add i64 %.sroa.109.015.i.i.i.i.i.i, -1  ; 2 uses
  %i.dq = getelementptr i8, ptr %i.do, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.dq, align 8, !range !40, !alias.scope !19698, !noalias !19695, !noundef !16 ; 2 uses
  %i.dr = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.dr, label %"_ZN4core3ptr83drop_in_place$LT$$LP$nickel_lang_parser..files..FileId$C$std..path..PathBuf$RP$$GT$17h8926207a2b326773E.exit.i.i.i.i.i.i", label %bb.r

bb.r:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6ffdea1c5843b357E.exit.i.i.i.i.i.i"
  %i.ds = getelementptr i8, ptr %i.do, i64 -16
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.ds, align 8, !noalias !19695, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !19699
  br label %"_ZN4core3ptr83drop_in_place$LT$$LP$nickel_lang_parser..files..FileId$C$std..path..PathBuf$RP$$GT$17h8926207a2b326773E.exit.i.i.i.i.i.i"

"_ZN4core3ptr83drop_in_place$LT$$LP$nickel_lang_parser..files..FileId$C$std..path..PathBuf$RP$$GT$17h8926207a2b326773E.exit.i.i.i.i.i.i": ; preds = %bb.r, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17h6ffdea1c5843b357E.exit.i.i.i.i.i.i"
  %i.dt = icmp eq i64 %i.dp, 0
  br i1 %i.dt, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17hadd7b050e5596d1eE.exit.i.i.i.i.i, label %bb.q

_ZN9hashbrown3raw13RawTableInner13drop_elements17hadd7b050e5596d1eE.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr83drop_in_place$LT$$LP$nickel_lang_parser..files..FileId$C$std..path..PathBuf$RP$$GT$17h8926207a2b326773E.exit.i.i.i.i.i.i", %bb.o
  %i.du = shl i64 %i.cv, 5                        ; 2 uses
  %i.dv = add i64 %i.du, 32                       ; 2 uses
  %i.dw = add i64 %i.cv, 17
  %i.dx = add i64 %i.dw, %i.dv                    ; 4 uses
  %i.dy = icmp uge i64 %i.dx, %i.dv
  %i.dz = icmp ult i64 %i.dx, 9223372036854775793
  tail call void @llvm.assume(i1 %i.dy)
  tail call void @llvm.assume(i1 %i.dz)
  %i.ea = icmp eq i64 %i.dx, 0
  br i1 %i.ea, label %"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$std..path..PathBuf$GT$$GT$17h4ddf836bbdaa63fdE.exit", label %bb.s

bb.s:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17hadd7b050e5596d1eE.exit.i.i.i.i.i
  %i.eb = load ptr, ptr %i.ct, align 8, !alias.scope !19693, !nonnull !16, !noundef !16
  %i.ec = sub nuw nsw i64 -32, %i.du
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 %i.ec
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ed, i64 noundef %i.dx, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !19693
  br label %"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$std..path..PathBuf$GT$$GT$17h4ddf836bbdaa63fdE.exit"

bb.t:                                             ; preds = %bb.d
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..package..PackageMap$GT$17hcd8ec82bc27cc9fbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.k)
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h174274f060f6a2d9E.exit"

"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$std..path..PathBuf$GT$$GT$17h4ddf836bbdaa63fdE.exit": ; preds = %bb.s, %_ZN9hashbrown3raw13RawTableInner13drop_elements17hadd7b050e5596d1eE.exit.i.i.i.i.i, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h5c54bc866257ab3aE.exit"
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !alias.scope !19700, !noundef !16
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h174274f060f6a2d9E.exit29", label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$std..path..PathBuf$GT$$GT$17h4ddf836bbdaa63fdE.exit"
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..package..PackageMap$GT$17hcd8ec82bc27cc9fbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.ee)
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h174274f060f6a2d9E.exit29"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h174274f060f6a2d9E.exit29": ; preds = %"_ZN4core3ptr119drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..files..FileId$C$std..path..PathBuf$GT$$GT$17h4ddf836bbdaa63fdE.exit", %bb.u
  ret void

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h174274f060f6a2d9E.exit": ; preds = %bb.t, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..eval..stack..EqItem$GT$17ha42c5e5827bdf70fE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hfd322dfa2f3c7fc4E"(ptr noalias noundef align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hfd322dfa2f3c7fc4E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #46
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hfd322dfa2f3c7fc4E"(ptr noalias noundef align 8 dereferenceable(24) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..package..PackageMap$GT$17hcd8ec82bc27cc9fbE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19722)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19723)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19724)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19725)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !19726, !noundef !16 ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$GT$$GT$17h32ba39638cf903aaE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19727)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !19728, !noundef !16 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h67ed9205d3a97d11E.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !19728, !nonnull !16, !noundef !16 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !19729
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i", %bb.c
  %.sroa.07.018.i.i.i.i.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.07.1.i.i.i.i.i.i, %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.6.017.i.i.i.i.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i, %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.88.016.i.i.i.i.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.109.015.i.i.i.i.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i" ]
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %.sroa.88.016.i.i.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hfbc7a0f0e262e11eE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !19730
  %i.m = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -512 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.m to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hfbc7a0f0e262e11eE.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hfbc7a0f0e262e11eE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.017.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.07.1.i.i.i.i.i.i = phi ptr [ %.sroa.07.018.i.i.i.i.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.88.016.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i.i.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [32 x i8], ptr %.sroa.07.1.i.i.i.i.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.109.015.i.i.i.i.i.i, -1   ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !range !40, !alias.scope !19731, !noalias !19728, !noundef !16 ; 2 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.x, label %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i", label %bb.e

bb.e:                                             ; preds = %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hfbc7a0f0e262e11eE.exit.i.i.i.i.i.i"
  %i.y = getelementptr i8, ptr %i.u, i64 -16
  %.val6.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !noalias !19728, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !19732
  br label %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i"

"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i": ; preds = %bb.e, %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hfbc7a0f0e262e11eE.exit.i.i.i.i.i.i"
  %i.z = icmp eq i64 %i.v, 0
  br i1 %i.z, label %_ZN9hashbrown3raw13RawTableInner13drop_elements17h67ed9205d3a97d11E.exit.i.i.i.i.i, label %bb.d

_ZN9hashbrown3raw13RawTableInner13drop_elements17h67ed9205d3a97d11E.exit.i.i.i.i.i: ; preds = %"_ZN4core3ptr87drop_in_place$LT$$LP$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$RP$$GT$17h94beb1a3cde7ae4dE.exit.i.i.i.i.i.i", %bb.b
  %i.aa = shl i64 %i.b, 5                         ; 2 uses
  %i.ab = add i64 %i.aa, 32                       ; 2 uses
  %i.ac = add i64 %i.b, 17
  %i.ad = add i64 %i.ac, %i.ab                    ; 4 uses
  %i.ae = icmp uge i64 %i.ad, %i.ab
  %i.af = icmp ult i64 %i.ad, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ae)
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = icmp eq i64 %i.ad, 0
  br i1 %i.ag, label %"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$GT$$GT$17h32ba39638cf903aaE.exit", label %bb.f

bb.f:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner13drop_elements17h67ed9205d3a97d11E.exit.i.i.i.i.i
  %i.ah = load ptr, ptr %0, align 8, !alias.scope !19726, !nonnull !16, !noundef !16
  %i.ai = sub nuw nsw i64 -32, %i.aa
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 %i.ai
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aj, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 16) #44, !noalias !19726
  br label %"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$GT$$GT$17h32ba39638cf903aaE.exit"

"_ZN4core3ptr123drop_in_place$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$std..path..PathBuf$GT$$GT$17h32ba39638cf903aaE.exit": ; preds = %bb.f, %_ZN9hashbrown3raw13RawTableInner13drop_elements17h67ed9205d3a97d11E.exit.i.i.i.i.i, %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call fastcc void @"_ZN4core3ptr152drop_in_place$LT$std..collections..hash..map..HashMap$LT$$LP$std..path..PathBuf$C$nickel_lang_parser..identifier..Ident$RP$$C$std..path..PathBuf$GT$$GT$17he213d8067ed77647E"(ptr noalias noundef align 8 dereferenceable(48) %i.ak)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h53b8d4e804571518E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19749)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19752)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !19753, !nonnull !16, !noundef !16
  %1 = atomicrmw sub ptr %i.a, i64 1 release, align 8, !noalias !19753
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h4d70f8b71f279a7cE.exit.i.i"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h184672a2c4e08df5E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h4d70f8b71f279a7cE.exit.i.i" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.d, align 8, !alias.scope !19754, !nonnull !16, !noundef !16
  invoke fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h14341ef6bfdfb790E"(ptr nonnull %.val1.i.i) #46
          to label %.body.i unwind label %bb.d

"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h4d70f8b71f279a7cE.exit.i.i": ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i.i = load ptr, ptr %i.e, align 8, !alias.scope !19754, !nonnull !16, !noundef !16
  invoke fastcc void @"_ZN4core3ptr361drop_in_place$LT$regex_automata..util..pool..Pool$LT$regex_automata..meta..regex..Cache$C$alloc..boxed..Box$LT$dyn$u20$core..ops..function..Fn$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$regex_automata..meta..regex..Cache$u2b$core..panic..unwind_safe..RefUnwindSafe$u2b$core..marker..Sync$u2b$core..marker..Send$u2b$core..panic..unwind_safe..UnwindSafe$GT$$GT$$GT$17h14341ef6bfdfb790E"(ptr nonnull %.val.i.i)
          to label %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17h20d8a1cffe8b79f3E.exit.i" unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.e:                                             ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h4d70f8b71f279a7cE.exit.i.i"
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.c, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19756)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !19757, !nonnull !16, !noundef !16
  %2 = atomicrmw sub ptr %i.i, i64 1 release, align 8, !noalias !19758
  %i.j = icmp eq i64 %2, 1
  br i1 %i.j, label %bb.f, label %"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h5fbb574e94ae9d27E.exit.i"

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7afa1a5d914a33daE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h5fbb574e94ae9d27E.exit.i" unwind label %bb.h

"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17h20d8a1cffe8b79f3E.exit.i": ; preds = %"_ZN4core3ptr80drop_in_place$LT$alloc..sync..Arc$LT$regex_automata..meta..regex..RegexI$GT$$GT$17h4d70f8b71f279a7cE.exit.i.i"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19759)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19760)
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !19761, !nonnull !16, !noundef !16
  %3 = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !19762
  %i.m = icmp eq i64 %3, 1
  br i1 %i.m, label %bb.g, label %"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17he9432f6e281338b8E.exit"

bb.g:                                             ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17h20d8a1cffe8b79f3E.exit.i"
  fence acquire
  tail call void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h7afa1a5d914a33daE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
  br label %"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17he9432f6e281338b8E.exit"

bb.h:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr48drop_in_place$LT$alloc..sync..Arc$LT$str$GT$$GT$17h5fbb574e94ae9d27E.exit.i": ; preds = %bb.f, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17he9432f6e281338b8E.exit": ; preds = %"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Regex$GT$17h20d8a1cffe8b79f3E.exit.i", %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hd6967b05622b50ebE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.d, align 8, !noundef !16 ; 5 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = ptrtoint ptr %.val to i64
  %i.g = and i64 %i.f, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !21

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !19785
  store ptr %.val, ptr %i.c, align 8, !noalias !19785
  %i.h = load i64, ptr %.val, align 8, !noalias !19786, !noundef !16 ; 3 uses
  %i.i = and i64 %i.h, 72057594037927935
  %i.j = add nsw i64 %i.i, -1                     ; 3 uses
  %i.k = and i64 %i.h, 1080863910568919040
  %i.l = icmp ult i64 %i.h, 864691128455135232
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %i.j, %i.k
  store i64 %i.m, ptr %.val, align 8, !noalias !19786
  %i.n = icmp ugt i64 %i.j, 72057594037927935
  br i1 %i.n, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.o = icmp eq i64 %i.j, 0
  br i1 %i.o, label %bb.g, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !19786
  store ptr @604, ptr %i.b, align 8, !noalias !19786
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.p, align 8, !noalias !19786
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.q, align 8, !noalias !19786
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.r, align 8, !noalias !19786
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.s, align 8, !noalias !19786
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc2 unwind label %bb.h

.noexc2:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i" unwind label %bb.h

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i": ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !19785
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit"

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19787)
  call void @llvm.experimental.noalias.scope.decl(metadata !19788)
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !19789, !noundef !16 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !noalias !19790, !noundef !16
  %i.y = add i64 %i.x, -1                         ; 2 uses
  store i64 %i.y, ptr %i.v, align 8, !noalias !19790
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.j, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit"

bb.j:                                             ; preds = %bb.i
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit" unwind label %bb.n

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i", %bb.b, %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !19791)
  call void @llvm.experimental.noalias.scope.decl(metadata !19792)
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !19793, !noundef !16 ; 3 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit6", label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit"
  %i.ad = load i64, ptr %i.ab, align 8, !noalias !19794, !noundef !16
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ab, align 8, !noalias !19794
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.l, label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit6"

bb.l:                                             ; preds = %bb.k
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa)
          to label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit6" unwind label %bb.m

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit": ; preds = %bb.i, %bb.h, %bb.j, %bb.m
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.m ], [ %i.t, %bb.j ], [ %i.t, %bb.h ], [ %i.t, %bb.i ]
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef align 8 dereferenceable(24) %0) #46
          to label %bb.o unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit"

"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit6": ; preds = %bb.k, %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit", %bb.l
  call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef align 8 dereferenceable(24) %0)
  ret void

bb.n:                                             ; preds = %bb.j, %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit"
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.o:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..record..SharedMetadata$GT$17ha1a9ec4e1f7ebd3dE.exit"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h3ca185eb63e99643E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !19837, !noundef !16 ; 5 uses
  %i.b = icmp samesign ult i64 %i.a, 18
  br i1 %i.b, label %bb.b, label %"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h9f9562494538ba75E.exit"

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i64 %i.a, 12
  tail call void @llvm.assume(i1 %i.c)
  %i.d = add nsw i64 %i.a, -3
  %i.e = icmp samesign ugt i64 %i.a, 2
  %i.f = select i1 %i.e, i64 %i.d, i64 9
  switch i64 %i.f, label %"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h9f9562494538ba75E.exit" [
    i64 6, label %bb.c
    i64 7, label %bb.k
    i64 9, label %bb.l
    i64 10, label %bb.o
    i64 11, label %bb.u
    i64 12, label %bb.aa
    i64 13, label %bb.ac
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19838)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19840)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19841)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19842)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !19843, !nonnull !16, !noundef !16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noalias !19843, !noundef !16
  %i.j = add i64 %i.i, -1                         ; 2 uses
  store i64 %i.j, ptr %i.h, align 8, !noalias !19843
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %"_ZN4core3ptr201drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$17hd60a5d66a05ad869E.exit.i.i.i"

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h7e52362cfe2caf38E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.g)
          to label %"_ZN4core3ptr201drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$$LP$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$$GT$17hd60a5d66a05ad869E.exit.i.i.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
end_hunk_9
begin_hunk_10_@"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..error..ExportErrorKind$GT$17heeeb6646a098ffffE":bb.a
  %.val.i13 = load ptr, ptr %i.cd, align 8, !alias.scope !20287, !nonnull !16, !noundef !16 ; 4 uses
  %i.ce = ptrtoint ptr %.val.i13 to i64
  %i.cf = and i64 %i.ce, 3
  %..i.i14 = tail call i64 @llvm.umin.i64(i64 %i.cf, i64 2)
  switch i64 %..i.i14, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit18" [
    i64 2, label %bb.ac
    i64 0, label %bb.ad
  ], !prof !21

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc unwind label %bb.an

.noexc:                                           ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20287
  store ptr %.val.i13, ptr %i.e, align 8, !noalias !20287
  %i.cg = load i64, ptr %.val.i13, align 8, !noalias !20288, !noundef !16 ; 3 uses
  %i.ch = and i64 %i.cg, 72057594037927935
  %i.ci = add nsw i64 %i.ch, -1                   ; 3 uses
  %i.cj = and i64 %i.cg, 1080863910568919040
  %i.ck = icmp ult i64 %i.cg, 864691128455135232
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = or i64 %i.ci, %i.cj
  store i64 %i.cl, ptr %.val.i13, align 8, !noalias !20288
  %i.cm = icmp ugt i64 %i.ci, 72057594037927935
  br i1 %i.cm, label %bb.af, label %bb.ae, !prof !22

bb.ae:                                            ; preds = %bb.ad
  %i.cn = icmp eq i64 %i.ci, 0
  br i1 %i.cn, label %bb.ag, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i15"

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20288
  store ptr @604, ptr %i.d, align 8, !noalias !20288
  %i.co = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.co, align 8, !noalias !20288
  %i.cp = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.cp, align 8, !noalias !20288
  %i.cq = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cq, align 8, !noalias !20288
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.cr, align 8, !noalias !20288
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc16 unwind label %bb.an

.noexc16:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.ae
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i15" unwind label %bb.an

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i15": ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20287
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit18"

bb.ah:                                            ; preds = %bb.a
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20289)
  %.val.i19 = load ptr, ptr %i.cs, align 8, !alias.scope !20289, !nonnull !16, !noundef !16 ; 4 uses
  %i.ct = ptrtoint ptr %.val.i19 to i64
  %i.cu = and i64 %i.ct, 3
  %..i.i20 = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 2)
  switch i64 %..i.i20, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit" [
    i64 2, label %bb.ai
    i64 0, label %bb.aj
  ], !prof !21

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !20289
  unreachable

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20289
  store ptr %.val.i19, ptr %i.c, align 8, !noalias !20289
  %i.cv = load i64, ptr %.val.i19, align 8, !noalias !20290, !noundef !16 ; 3 uses
  %i.cw = and i64 %i.cv, 72057594037927935
  %i.cx = add nsw i64 %i.cw, -1                   ; 3 uses
  %i.cy = and i64 %i.cv, 1080863910568919040
  %i.cz = icmp ult i64 %i.cv, 864691128455135232
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = or i64 %i.cx, %i.cy
  store i64 %i.da, ptr %.val.i19, align 8, !noalias !20290
  %i.db = icmp ugt i64 %i.cx, 72057594037927935
  br i1 %i.db, label %bb.al, label %bb.ak, !prof !22

bb.ak:                                            ; preds = %bb.aj
  %i.dc = icmp eq i64 %i.cx, 0
  br i1 %i.dc, label %bb.am, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i21"

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20290
  store ptr @604, ptr %i.b, align 8, !noalias !20290
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.dd, align 8, !noalias !20290
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.de, align 8, !noalias !20290
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.df, align 8, !noalias !20290
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.dg, align 8, !noalias !20290
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !20290
  unreachable

bb.am:                                            ; preds = %bb.ak
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !20289
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i21"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i21": ; preds = %bb.am, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20289
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit": ; preds = %bb.ap, %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i", %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i21", %bb.ah, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i11", %bb.v, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i7", %bb.p, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i3", %bb.j, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i", %bb.d, %bb.c, %bb.b
  ret void

bb.an:                                            ; preds = %bb.ag, %bb.af, %bb.ac
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17hd4e0d2516a4f0431E"(ptr noalias noundef align 8 dereferenceable(56) %0) #46
  resume { ptr, i32 } %i.dh

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit18": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i15", %bb.ab
  call void @llvm.experimental.noalias.scope.decl(metadata !20291)
  %switch.i = icmp sgt i64 %i.n, 0
  br i1 %switch.i, label %bb.ao, label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i"

bb.ao:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit18"
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load ptr, ptr %i.di, align 8, !alias.scope !20291, !nonnull !16, !noundef !16
  %i.dj = shl nuw i64 %i.n, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.dj, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !20291
  br label %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i"

"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i": ; preds = %bb.ao, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit18"
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i23 = load i64, ptr %i.dk, align 8, !range !33, !alias.scope !20291, !noundef !16 ; 2 uses
  %switch8.i = icmp sgt i64 %.val.i23, 0
  br i1 %switch8.i, label %bb.ap, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"

bb.ap:                                            ; preds = %"_ZN4core3ptr51drop_in_place$LT$malachite_nz..natural..Natural$GT$17h0f1ae27131fc6e6dE.exit.i"
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.dl, align 8, !alias.scope !20291, !nonnull !16, !noundef !16
  %i.dm = shl nuw i64 %.val.i23, 3
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.dm, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !20291
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..value..ArrayData$GT$17h2c76592aa2eb5676E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20302)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20303)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20304)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !20305, !noundef !16 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..slice..Slice$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h41b116663c6e40aeE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %i.b, align 8, !noalias !20306, !noundef !16
  %i.e = add i64 %i.d, -1                         ; 2 uses
  store i64 %i.e, ptr %i.b, align 8, !noalias !20306
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..slice..Slice$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h41b116663c6e40aeE.exit"

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..slice..Slice$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h41b116663c6e40aeE.exit" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef align 8 dereferenceable(24) %0) #46
          to label %bb.f unwind label %bb.e

"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..slice..Slice$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h41b116663c6e40aeE.exit": ; preds = %bb.b, %bb.a, %bb.c
  tail call fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef align 8 dereferenceable(24) %0)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20313)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20315)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !20316, !nonnull !16, !noundef !16
  %1 = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !20316
  %i.c = icmp eq i64 %1, 1
  br i1 %i.c, label %bb.b, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit"

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit" unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val2 = load i64, ptr %0, align 8              ; 2 uses
  %i.e = icmp eq i64 %.val2, 0
  br i1 %i.e, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !16, !noundef !16
  %i.g = shl nuw i64 %.val2, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit"

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit": ; preds = %bb.a, %bb.b
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.h = icmp eq i64 %.val, 0
  br i1 %i.h, label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit4", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.i, align 8, !nonnull !16, !noundef !16
  %i.j = shl nuw i64 %.val, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit4"

"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit4": ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit", %bb.e
  ret void

"_ZN4core3ptr117drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$regex_automata..util..primitives..NonMaxUsize$GT$$GT$$GT$17he296625df9105325E.exit": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17h5c54bc866257ab3aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20323)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf8213f05f49a0eb4E.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i"
  %.sroa.0.011.i.i = phi i64 [ %i.e, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.011.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.011.i.i, 1          ; 2 uses
  %.val8.i.i = load i64, ptr %i.d, align 8, !range !40, !alias.scope !20324, !noundef !16 ; 2 uses
  %i.f = icmp eq i64 %.val8.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val9.i.i = load ptr, ptr %i.g, align 8, !alias.scope !20323, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i, i64 noundef %.val8.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !20325
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf8213f05f49a0eb4E.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf8213f05f49a0eb4E.exit": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb8a306fde339f3f2E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %"_ZN4core3ptr69drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..path..PathBuf$GT$$GT$17h1daa02481e5f6130E.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf8213f05f49a0eb4E.exit"
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..path..PathBuf$GT$$GT$17h1daa02481e5f6130E.exit6"

"_ZN4core3ptr69drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..path..PathBuf$GT$$GT$17h1daa02481e5f6130E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf8213f05f49a0eb4E.exit", %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..eval..stack..StrAccItem$GT$17h944505f5d042408bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20349)
  %.val.i.i = load i64, ptr %0, align 8, !range !40, !alias.scope !20350, !noundef !16 ; 2 uses
  %i.a = icmp eq i64 %.val.i.i, 0
  br i1 %i.a, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1.i.i = load ptr, ptr %i.b, align 8, !alias.scope !20350, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !20350
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit": ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20352)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20353)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !20354, !nonnull !16, !noundef !16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noalias !20354, !noundef !16
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !20354
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.c, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"

bb.c:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i" unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20355)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !20356, !noundef !16 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit.i", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !noalias !20357, !noundef !16
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.j, align 8, !noalias !20357
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.f, label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit.i"

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit.i" unwind label %bb.i

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i": ; preds = %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20358)
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !20359, !noundef !16 ; 3 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit", label %bb.g

bb.g:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"
  %i.r = load i64, ptr %i.p, align 8, !noalias !20360, !noundef !16
  %i.s = add i64 %i.r, -1                         ; 2 uses
  store i64 %i.s, ptr %i.p, align 8, !noalias !20360
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %bb.h, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit"

bb.h:                                             ; preds = %bb.g
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit"

bb.i:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr204drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$$GT$17hba398200adee194cE.exit.i": ; preds = %bb.f, %bb.e, %bb.d
  resume { ptr, i32 } %i.h

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i", %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..program..ProgramBuilder$GT$17h695140e04d6fd0f4E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(264) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17h25283c41b07c1d4dE"(ptr noalias noundef align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..FieldOverride$GT$$GT$17hfdd433cab53ceb3fE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #46
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val13 = load i64, ptr %i.c, align 8           ; 2 uses
  %i.d = icmp eq i64 %.val13, 0
  br i1 %i.d, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h23a6f150ab51430cE.exit", label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..FieldOverride$GT$$GT$17hfdd433cab53ceb3fE"(ptr noalias noundef align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load i64, ptr %i.f, align 8             ; 2 uses
  %i.g = icmp eq i64 %.val, 0
  br i1 %i.g, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h23a6f150ab51430cE.exit15", label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val14 = load ptr, ptr %i.h, align 8, !nonnull !16, !noundef !16
  %i.i = mul nuw i64 %.val13, 20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h23a6f150ab51430cE.exit"

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val12 = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
end_hunk_10
begin_hunk_11_@"_ZN4core3ptr653drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter..Filter$LT$regex..regex..string..CaptureMatches$C$nickel_lang_core..term..string..grapheme_cluster_preservation..regex..captures_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..term..string..NickelString..find_all_regex..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h539c9d96ee87462cE":bb.a
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.7.i.i.i.i.i.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.7.i.i.i.i.i.i.i.i.i: ; preds = %bb.bv, %.noexc26.7.i.i.i.i.i.i.i.i.i, %bb.bt, %bb.bs
  %i.hd = atomicrmw xchg ptr %i.gn, i32 0 release, align 4, !noalias !20640
  %i.he = icmp eq i32 %i.hd, 2
  br i1 %i.he, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.7.i.i.i.i.i.i.i.i.i", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.7.i.i.i.i.i.i.i.i.i", !prof !22

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.7.i.i.i.i.i.i.i.i.i": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.7.i.i.i.i.i.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.gn)
          to label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.7.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !20635

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.7.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.7.i.i.i.i.i.i.i.i.i", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.7.i.i.i.i.i.i.i.i.i, %bb.bp
  %i.hf = load i64, ptr %i.v, align 8, !noalias !20635, !noundef !16 ; 2 uses
  %i.hg = icmp ult i64 %i.z, %i.hf
  br i1 %i.hg, label %bb.bw, label %bb.l

bb.bw:                                            ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.7.i.i.i.i.i.i.i.i.i"
  %i.hh = load ptr, ptr %i.aa, align 8, !noalias !20635, !nonnull !16, !noundef !16
  %i.hi = getelementptr inbounds nuw [64 x i8], ptr %i.hh, i64 %i.z ; 5 uses
  %i.hj = cmpxchg ptr %i.hi, i32 0, i32 1 acquire monotonic, align 4, !noalias !20636
  %i.hk = extractvalue { i32, i1 } %i.hj, 1
  br i1 %i.hk, label %bb.bx, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.8.i.i.i.i.i.i.i.i.i"

bb.bx:                                            ; preds = %bb.bw
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 4 ; 2 uses
  %i.hm = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !20636
  %i.hn = and i64 %i.hm, 9223372036854775807
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17he8a8fd170be289b7E.exit.8.i.i.i.i.i.i.i.i.i", label %bb.by, !prof !18

bb.by:                                            ; preds = %bb.bx
  %i.hp = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc12.8.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !20635

.noexc12.8.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.by
  %i.hq = xor i1 %i.hp, true
  %i.hr = zext i1 %i.hq to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17he8a8fd170be289b7E.exit.8.i.i.i.i.i.i.i.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17he8a8fd170be289b7E.exit.8.i.i.i.i.i.i.i.i.i": ; preds = %.noexc12.8.i.i.i.i.i.i.i.i.i, %bb.bx
  %.sroa.01.0.i.i.8.i.i.i.i.i.i.i.i.i = phi i8 [ %i.hr, %.noexc12.8.i.i.i.i.i.i.i.i.i ], [ 0, %bb.bx ] ; 2 uses
  %i.hs = load atomic i8, ptr %i.hl monotonic, align 1, !noalias !20636
  %.not.i.not.8.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.hs, 0
  br i1 %.not.i.not.8.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.bz

bb.bz:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17he8a8fd170be289b7E.exit.8.i.i.i.i.i.i.i.i.i"
  %i.ht = trunc nuw i8 %.sroa.01.0.i.i.8.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.ht, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.8.i.i.i.i.i.i.i.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.hu = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !20640
  %i.hv = and i64 %i.hu, 9223372036854775807
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.8.i.i.i.i.i.i.i.i.i, label %bb.cb, !prof !18

bb.cb:                                            ; preds = %bb.ca
  %i.hx = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc26.8.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !20635

.noexc26.8.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cb
  br i1 %i.hx, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.8.i.i.i.i.i.i.i.i.i, label %bb.cc

bb.cc:                                            ; preds = %.noexc26.8.i.i.i.i.i.i.i.i.i
  store atomic i8 1, ptr %i.hl monotonic, align 1, !noalias !20640
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.8.i.i.i.i.i.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.8.i.i.i.i.i.i.i.i.i: ; preds = %bb.cc, %.noexc26.8.i.i.i.i.i.i.i.i.i, %bb.ca, %bb.bz
  %i.hy = atomicrmw xchg ptr %i.hi, i32 0 release, align 4, !noalias !20640
  %i.hz = icmp eq i32 %i.hy, 2
  br i1 %i.hz, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.8.i.i.i.i.i.i.i.i.i", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.8.i.i.i.i.i.i.i.i.i", !prof !22

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.8.i.i.i.i.i.i.i.i.i": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.8.i.i.i.i.i.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.hi)
          to label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.8.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !20635

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.8.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.8.i.i.i.i.i.i.i.i.i", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.8.i.i.i.i.i.i.i.i.i, %bb.bw
  %i.ia = load i64, ptr %i.v, align 8, !noalias !20635, !noundef !16 ; 2 uses
  %i.ib = icmp ult i64 %i.z, %i.ia
  br i1 %i.ib, label %bb.cd, label %bb.l

bb.cd:                                            ; preds = %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.8.i.i.i.i.i.i.i.i.i"
  %i.ic = load ptr, ptr %i.aa, align 8, !noalias !20635, !nonnull !16, !noundef !16
  %i.id = getelementptr inbounds nuw [64 x i8], ptr %i.ic, i64 %i.z ; 5 uses
  %i.ie = cmpxchg ptr %i.id, i32 0, i32 1 acquire monotonic, align 4, !noalias !20636
  %i.if = extractvalue { i32, i1 } %i.ie, 1
  br i1 %i.if, label %bb.ce, label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.9.i.i.i.i.i.i.i.i.i"

bb.ce:                                            ; preds = %bb.cd
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 4 ; 2 uses
  %i.ih = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !20636
  %i.ii = and i64 %i.ih, 9223372036854775807
  %i.ij = icmp eq i64 %i.ii, 0
  br i1 %i.ij, label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17he8a8fd170be289b7E.exit.9.i.i.i.i.i.i.i.i.i", label %bb.cf, !prof !18

bb.cf:                                            ; preds = %bb.ce
  %i.ik = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc12.9.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !20635

.noexc12.9.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.cf
  %i.il = xor i1 %i.ik, true
  %i.im = zext i1 %i.il to i8
  br label %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17he8a8fd170be289b7E.exit.9.i.i.i.i.i.i.i.i.i"

"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17he8a8fd170be289b7E.exit.9.i.i.i.i.i.i.i.i.i": ; preds = %.noexc12.9.i.i.i.i.i.i.i.i.i, %bb.ce
  %.sroa.01.0.i.i.9.i.i.i.i.i.i.i.i.i = phi i8 [ %i.im, %.noexc12.9.i.i.i.i.i.i.i.i.i ], [ 0, %bb.ce ] ; 2 uses
  %i.in = load atomic i8, ptr %i.ig monotonic, align 1, !noalias !20636
  %.not.i.not.9.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.in, 0
  br i1 %.not.i.not.9.i.i.i.i.i.i.i.i.i, label %bb.m, label %bb.cg

bb.cg:                                            ; preds = %"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17he8a8fd170be289b7E.exit.9.i.i.i.i.i.i.i.i.i"
  %i.io = trunc nuw i8 %.sroa.01.0.i.i.9.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.io, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9.i.i.i.i.i.i.i.i.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ip = load atomic i64, ptr @_ZN3std9panicking11panic_count18GLOBAL_PANIC_COUNT17h933148eac7c069a2E monotonic, align 8, !noalias !20640
  %i.iq = and i64 %i.ip, 9223372036854775807
  %i.ir = icmp eq i64 %i.iq, 0
  br i1 %i.ir, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9.i.i.i.i.i.i.i.i.i, label %bb.ci, !prof !18

bb.ci:                                            ; preds = %bb.ch
  %i.is = invoke noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE()
          to label %.noexc26.9.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !20635

.noexc26.9.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.ci
  br i1 %i.is, label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9.i.i.i.i.i.i.i.i.i, label %bb.cj

bb.cj:                                            ; preds = %.noexc26.9.i.i.i.i.i.i.i.i.i
  store atomic i8 1, ptr %i.ig monotonic, align 1, !noalias !20640
  br label %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9.i.i.i.i.i.i.i.i.i

_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9.i.i.i.i.i.i.i.i.i: ; preds = %bb.cj, %.noexc26.9.i.i.i.i.i.i.i.i.i, %bb.ch, %bb.cg
  %i.it = atomicrmw xchg ptr %i.id, i32 0 release, align 4, !noalias !20640
  %i.iu = icmp eq i32 %i.it, 2
  br i1 %i.iu, label %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.9.i.i.i.i.i.i.i.i.i", label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.9.i.i.i.i.i.i.i.i.i", !prof !22

"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.9.i.i.i.i.i.i.i.i.i": ; preds = %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9.i.i.i.i.i.i.i.i.i
  invoke void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4 %i.id)
          to label %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.9.i.i.i.i.i.i.i.i.i" unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i, !noalias !20635

"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.9.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.9.i.i.i.i.i.i.i.i.i", %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i21.9.i.i.i.i.i.i.i.i.i, %bb.cd
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h5dd80144f6d46b51E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.h)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i.i.i.i.i" unwind label %common.resume.sink.split.i.i.i.i.i.i.i.i, !noalias !20633

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i: ; preds = %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.9.i.i.i.i.i.i.i.i.i", %bb.ci, %bb.cf, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.8.i.i.i.i.i.i.i.i.i", %bb.cb, %bb.by, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.7.i.i.i.i.i.i.i.i.i", %bb.bu, %bb.br, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.6.i.i.i.i.i.i.i.i.i", %bb.bn, %bb.bk, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.5.i.i.i.i.i.i.i.i.i", %bb.bg, %bb.bd, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.4.i.i.i.i.i.i.i.i.i", %bb.az, %bb.aw, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.3.i.i.i.i.i.i.i.i.i", %bb.as, %bb.ap, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.2.i.i.i.i.i.i.i.i.i", %bb.al, %bb.ai, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.1.i.i.i.i.i.i.i.i.i", %bb.ae, %bb.ab, %"_ZN4core3ptr147drop_in_place$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$17hb49e053dbb1aaf55E.exit.sink.split.i22.i.i.i.i.i.i.i.i.i", %bb.x, %bb.l, %bb.k, %bb.g, %bb.e
  %lpad.loopexit.split-lp55.i.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE"(ptr nonnull align 8 %i.h) #46
          to label %.body.i.i.i.i.i unwind label %bb.u, !noalias !20633

bb.ck:                                            ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.h) ]
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$regex_automata..meta..regex..Cache$GT$17h5dd80144f6d46b51E"(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.h)
          to label %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i.i.i.i" unwind label %common.resume.sink.split.i.i.i.i.i.i.i.i, !noalias !20632

common.resume.sink.split.i.i.i.i.i.i.i.i:         ; preds = %bb.ck, %"_ZN4core3ptr343drop_in_place$LT$core..result..Result$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$C$std..sync..poison..TryLockError$LT$std..sync..poison..mutex..MutexGuard$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$$GT$$GT$$GT$$GT$17he58aaef9c72066c8E.exit28.9.i.i.i.i.i.i.i.i.i"
  %i.iv = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 1400, i64 noundef 8) #44, !noalias !20632
  br label %.body.i.i.i.i.i

"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ck
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.h, i64 noundef 1400, i64 noundef 8) #44, !noalias !20632
  br label %bb.cn

.noexc5.i.i.i.i.i.i.i:                            ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20633
  store ptr null, ptr %i.d, align 8, !noalias !20633
  invoke void @_ZN4core9panicking13assert_failed17he513e705e2b74251E(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_ZN14regex_automata4util4pool5inner17THREAD_ID_DROPPED17h55f6ec996bef5bb7E, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @65) #45
          to label %.noexc2.i.i.i.i.i unwind label %bb.cm, !noalias !20639

.noexc2.i.i.i.i.i:                                ; preds = %.noexc5.i.i.i.i.i.i.i
  unreachable

bb.cl:                                            ; preds = %bb.b
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !alias.scope !20633, !nonnull !16, !align !23, !noundef !16
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 40
  store atomic i64 %i.i, ptr %i.iy release, align 8, !noalias !20633
  br label %bb.cn

bb.cm:                                            ; preds = %.noexc5.i.i.i.i.i.i.i, %bb.t, %.noexc16.i.i.i.i.i.i.i.i.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.cm, %common.resume.sink.split.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.iz, %bb.cm ], [ %i.iv, %common.resume.sink.split.i.i.i.i.i.i.i.i ], [ %i.as, %.body.i.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp55.i.i.i.i.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i.i.i.i.i ]
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17he9a741a9ce9f6104E"(ptr noalias noundef align 8 dereferenceable(40) %i.ja) #46
          to label %.body unwind label %bb.cs

bb.cn:                                            ; preds = %bb.cl, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i.i.i.i", %bb.t, %_ZN3std4sync6poison4Flag4done17h723d8023d05917a8E.exit.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core3ptr80drop_in_place$LT$alloc..boxed..Box$LT$regex_automata..meta..regex..Cache$GT$$GT$17hae47164f7ba0c61dE.exit.i.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20632
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20641)
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20642)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20643)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20644)
  %i.jd = load ptr, ptr %i.jc, align 8, !alias.scope !20645, !nonnull !16, !noundef !16
  %1 = atomicrmw sub ptr %i.jd, i64 1 release, align 8, !noalias !20645
  %i.je = icmp eq i64 %1, 1
  br i1 %i.je, label %bb.co, label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i"

bb.co:                                            ; preds = %bb.cn
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hccbb52f5fa43bc77E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jc)
          to label %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i" unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i = load i64, ptr %i.jb, align 8, !alias.scope !20646 ; 2 uses
  %i.jg = icmp eq i64 %.val2.i.i.i.i.i.i, 0
  br i1 %i.jg, label %.body, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val3.i.i.i.i.i.i = load ptr, ptr %i.jh, align 8, !alias.scope !20646, !nonnull !16, !noundef !16
  %i.ji = shl nuw i64 %.val2.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i, i64 noundef %i.ji, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %.body

"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i": ; preds = %bb.co, %bb.cn
  %.val.i.i.i.i.i.i = load i64, ptr %i.jb, align 8, !alias.scope !20646 ; 2 uses
  %i.jj = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.jj, label %"_ZN4core3ptr605drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter..Filter$LT$regex..regex..string..CaptureMatches$C$nickel_lang_core..term..string..grapheme_cluster_preservation..regex..captures_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..term..string..NickelString..find_all_regex..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h69595139156f9024E.exit", label %bb.cr

bb.cr:                                            ; preds = %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i"
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val1.i.i.i.i.i.i = load ptr, ptr %i.jk, align 8, !alias.scope !20646, !nonnull !16, !noundef !16
  %i.jl = shl nuw i64 %.val.i.i.i.i.i.i, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i, i64 noundef %i.jl, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr605drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter..Filter$LT$regex..regex..string..CaptureMatches$C$nickel_lang_core..term..string..grapheme_cluster_preservation..regex..captures_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..term..string..NickelString..find_all_regex..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h69595139156f9024E.exit"

bb.cs:                                            ; preds = %.body.i.i.i.i.i
  %i.jm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

.body:                                            ; preds = %.body.i.i.i.i.i, %bb.cp, %bb.cq
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i.i.i.i.i, %.body.i.i.i.i.i ], [ %i.jf, %bb.cp ], [ %i.jf, %bb.cq ]
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val2 = load i64, ptr %i.jn, align 8, !range !15, !noundef !16
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val3 = load ptr, ptr %i.jo, align 8
  invoke fastcc void @"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E"(i64 %.val2, ptr %.val3) #46
          to label %bb.da unwind label %bb.cz

"_ZN4core3ptr605drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter..Filter$LT$regex..regex..string..CaptureMatches$C$nickel_lang_core..term..string..grapheme_cluster_preservation..regex..captures_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..term..string..NickelString..find_all_regex..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h69595139156f9024E.exit": ; preds = %bb.cr, %"_ZN4core3ptr62drop_in_place$LT$regex_automata..util..captures..GroupInfo$GT$17h7961dd941afced30E.exit.i.i.i.i.i.i"
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val = load i64, ptr %i.jp, align 8, !range !15, !noundef !16
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 192
  %.val1 = load ptr, ptr %i.jq, align 8           ; 5 uses
  %i.jr = icmp eq i64 %.val, 0
  %i.js = icmp eq ptr %.val1, null
  %or.cond.i = select i1 %i.jr, i1 true, i1 %i.js
  br i1 %or.cond.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit", label %bb.ct

bb.ct:                                            ; preds = %"_ZN4core3ptr605drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter..Filter$LT$regex..regex..string..CaptureMatches$C$nickel_lang_core..term..string..grapheme_cluster_preservation..regex..captures_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..term..string..NickelString..find_all_regex..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h69595139156f9024E.exit"
  %i.jt = ptrtoint ptr %.val1 to i64
  %i.ju = and i64 %i.jt, 3
  %..i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ju, i64 2)
  switch i64 %..i.i.i.i, label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit" [
    i64 2, label %bb.cu
    i64 0, label %bb.cv
  ], !prof !21

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !20647
  unreachable

bb.cv:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20647
  store ptr %.val1, ptr %i.c, align 8, !noalias !20647
  %i.jv = load i64, ptr %.val1, align 8, !noalias !20648, !noundef !16 ; 3 uses
  %i.jw = and i64 %i.jv, 72057594037927935
  %i.jx = add nsw i64 %i.jw, -1                   ; 3 uses
  %i.jy = and i64 %i.jv, 1080863910568919040
  %i.jz = icmp ult i64 %i.jv, 864691128455135232
  tail call void @llvm.assume(i1 %i.jz)
  %i.ka = or i64 %i.jx, %i.jy
  store i64 %i.ka, ptr %.val1, align 8, !noalias !20648
  %i.kb = icmp ugt i64 %i.jx, 72057594037927935
  br i1 %i.kb, label %bb.cx, label %bb.cw, !prof !22

bb.cw:                                            ; preds = %bb.cv
  %i.kc = icmp eq i64 %i.jx, 0
  br i1 %i.kc, label %bb.cy, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20648
  store ptr @604, ptr %i.b, align 8, !noalias !20648
  %i.kd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.kd, align 8, !noalias !20648
  %i.ke = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ke, align 8, !noalias !20648
  %i.kf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.kf, align 8, !noalias !20648
  %i.kg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.kg, align 8, !noalias !20648
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !20648
  unreachable

bb.cy:                                            ; preds = %bb.cw
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !20647
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i": ; preds = %bb.cy, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20647
  br label %"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit"

"_ZN4core3ptr119drop_in_place$LT$core..option..Option$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hef2e90ad18f2a170E.exit": ; preds = %"_ZN4core3ptr605drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..filter..Filter$LT$regex..regex..string..CaptureMatches$C$nickel_lang_core..term..string..grapheme_cluster_preservation..regex..captures_iter..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..term..string..NickelString..find_all_regex..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h69595139156f9024E.exit", %bb.ct, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i"
  ret void

bb.cz:                                            ; preds = %.body
  %i.kh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.da:                                            ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17habc5d8a4af8bcaacE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20655)
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i"
  %.sroa.0.010.i.i = phi i64 [ %i.e, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.010.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.010.i.i, 1          ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20656)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20657)
  %.val.i.i.i.i = load i64, ptr %i.d, align 8, !range !40, !alias.scope !20658, !noundef !16 ; 2 uses
  %i.f = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.f, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.g, align 8, !alias.scope !20658, !nonnull !16, !noundef !16
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !20658
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 2 uses
  %i.i = icmp eq i64 %.val2, 0
  br i1 %i.i, label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h42ed3a8a8f5fc583E.exit6", label %bb.c

bb.c:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit"
  %i.j = mul nuw i64 %.val2, 24
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h42ed3a8a8f5fc583E.exit6"

"_ZN4core3ptr72drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..string..String$GT$$GT$17h42ed3a8a8f5fc583E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h19292c9396674d0dE.exit", %bb.c
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr65drop_in_place$LT$regex_automata..util..sparse_set..SparseSets$GT$17h669a2ded85215c07E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20663)
  %.val4.i = load i64, ptr %0, align 8, !alias.scope !20663 ; 2 uses
  %i.a = icmp eq i64 %.val4.i, 0
  br i1 %i.a, label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load ptr, ptr %i.b, align 8, !alias.scope !20663, !nonnull !16, !noundef !16
  %i.c = shl nuw i64 %.val4.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !20663
  br label %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i"

"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i": ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i64, ptr %i.d, align 8, !alias.scope !20663 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hac4cf8d79e039b44E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !20663, !nonnull !16, !noundef !16
  %i.g = shl nuw i64 %.val.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !20663
  br label %"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hac4cf8d79e039b44E.exit"

"_ZN4core3ptr64drop_in_place$LT$regex_automata..util..sparse_set..SparseSet$GT$17hac4cf8d79e039b44E.exit": ; preds = %bb.c, %"_ZN4core3ptr85drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..primitives..StateID$GT$$GT$17h091e5e299daa76bcE.exit.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
end_hunk_11
begin_hunk_12_@"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h3070a4e771407d69E":bb.a

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 96, i64 noundef 8) #44, !noalias !21148
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$$GT$17h3070a4e771407d69E"(ptr noalias noundef align 8 dereferenceable(8) %i.j)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17hb7966f17d95e6059E.exit" unwind label %bb.f, !inline_history !21144

bb.e:                                             ; preds = %.body2
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !inline_history !21143
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..typecheck..UnifRecordRows$GT$17hb7966f17d95e6059E.exit": ; preds = %bb.a, %bb.d, %bb.b
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #44
  ret void

bb.g:                                             ; preds = %bb.f, %.body2
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.f ], [ %i.h, %.body2 ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #44
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr89drop_in_place$LT$alloc..rc..RcInner$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$17h691a0e05652c6f65E"(ptr noalias noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21157)
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h1f41c9bd92b54091E"(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.d)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f) #46
          to label %bb.i unwind label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21158)
  %.val.i.i = load ptr, ptr %i.g, align 8, !alias.scope !21159, !nonnull !16, !noundef !16 ; 4 uses
  %i.h = ptrtoint ptr %.val.i.i to i64
  %i.i = and i64 %i.h, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.i, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit.i" [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !21

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc.i unwind label %bb.k

.noexc.i:                                         ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21159
  store ptr %.val.i.i, ptr %i.c, align 8, !noalias !21159
  %i.j = load i64, ptr %.val.i.i, align 8, !noalias !21160, !noundef !16 ; 3 uses
  %i.k = and i64 %i.j, 72057594037927935
  %i.l = add nsw i64 %i.k, -1                     ; 3 uses
  %i.m = and i64 %i.j, 1080863910568919040
  %i.n = icmp ult i64 %i.j, 864691128455135232
  tail call void @llvm.assume(i1 %i.n)
  %i.o = or i64 %i.l, %i.m
  store i64 %i.o, ptr %.val.i.i, align 8, !noalias !21160
  %i.p = icmp ugt i64 %i.l, 72057594037927935
  br i1 %i.p, label %bb.g, label %bb.f, !prof !22

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i64 %i.l, 0
  br i1 %i.q, label %bb.h, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i"

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21161
  store ptr @604, ptr %i.b, align 8, !noalias !21161
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8, !noalias !21161
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.s, align 8, !noalias !21161
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.t, align 8, !noalias !21161
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.u, align 8, !noalias !21161
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc5.i unwind label %bb.k

.noexc5.i:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i" unwind label %bb.k

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i": ; preds = %bb.h, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21159
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit.i"

bb.i:                                             ; preds = %bb.k, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.k ], [ %i.e, %bb.b ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val3.i = load i64, ptr %i.v, align 8, !alias.scope !21157 ; 2 uses
  %i.w = icmp eq i64 %.val3.i, 0
  br i1 %i.w, label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9a4be7c024c78c0dE.exit.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val4.i = load ptr, ptr %i.x, align 8, !alias.scope !21157, !nonnull !16, !noundef !16
  %i.y = shl nuw i64 %.val3.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9a4be7c024c78c0dE.exit.i"

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i", %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val.i = load i64, ptr %i.aa, align 8, !alias.scope !21157 ; 2 uses
  %i.ab = icmp eq i64 %.val.i, 0
  br i1 %i.ab, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..SealedTail$GT$17h2ef37bdd6da054d1E.exit", label %bb.l

bb.l:                                             ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit.i"
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val2.i = load ptr, ptr %i.ac, align 8, !alias.scope !21157, !nonnull !16, !noundef !16
  %i.ad = shl nuw i64 %.val.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..SealedTail$GT$17h2ef37bdd6da054d1E.exit"

bb.m:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr81drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..Ident$GT$$GT$17h9a4be7c024c78c0dE.exit.i": ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %.pn.i

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..SealedTail$GT$17h2ef37bdd6da054d1E.exit": ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit.i", %bb.l
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr90drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h9abfb46f9ffb0c57E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !15, !noundef !16
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h5367a7147cd81420E.exit", label %bb.b

"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h5367a7147cd81420E.exit": ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21168)
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !21168, !noundef !16 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h5367a7147cd81420E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %i.d, align 8, !noalias !21169, !noundef !16
  %i.f = add i64 %i.e, -1                         ; 2 uses
  store i64 %i.f, ptr %i.d, align 8, !noalias !21169
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h5367a7147cd81420E.exit"

bb.d:                                             ; preds = %bb.c
  tail call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %"_ZN4core3ptr62drop_in_place$LT$nickel_lang_core..term..record..FieldDeps$GT$17h5367a7147cd81420E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$alloc..vec..Vec$LT$regex_automata..util..determinize..state..State$GT$$GT$17h3c12e9ca09a6619fE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !16 ; 4 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h602e0cace2a7b24dE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit.i.i"
  %.sroa.0.09.i.i = phi i64 [ %i.e, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit.i.i" ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.09.i.i ; 2 uses
  %i.e = add nuw i64 %.sroa.0.09.i.i, 1           ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21186)
  %i.f = load ptr, ptr %i.d, align 8, !alias.scope !21187, !nonnull !16, !noundef !16
  %1 = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !21188
  %i.g = icmp eq i64 %1, 1
  br i1 %i.g, label %bb.b, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit.i.i" unwind label %bb.c

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit.i.i": ; preds = %bb.b, %.lr.ph.i.i
  %i.h = icmp eq i64 %i.e, %.val1
  br i1 %i.h, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h602e0cace2a7b24dE.exit", label %.lr.ph.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = icmp eq i64 %i.e, %.val1
  br i1 %i.j, label %.body, label %.lr.ph12.i.i

.lr.ph12.i.i:                                     ; preds = %bb.c, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit8.i.i"
  %.sroa.0.110.i.i = phi i64 [ %i.l, %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit8.i.i" ], [ %i.e, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %.val, i64 %.sroa.0.110.i.i ; 2 uses
  %i.l = add i64 %.sroa.0.110.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21189)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21191)
  %i.m = load ptr, ptr %i.k, align 8, !alias.scope !21192, !nonnull !16, !noundef !16
  %2 = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !21193
  %i.n = icmp eq i64 %2, 1
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit8.i.i"

bb.d:                                             ; preds = %.lr.ph12.i.i
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17hc6c0f33150f9a57eE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit8.i.i" unwind label %bb.e

"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit8.i.i": ; preds = %bb.d, %.lr.ph12.i.i
  %i.o = icmp eq i64 %i.l, %.val1
  br i1 %i.o, label %.body, label %.lr.ph12.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

.body:                                            ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit8.i.i", %bb.c
  %.val4 = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 2 uses
  %i.q = icmp eq i64 %.val4, 0
  br i1 %i.q, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17he435f8dd24fd52f1E.exit", label %bb.f

bb.f:                                             ; preds = %.body
  %i.r = shl nuw i64 %.val4, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17he435f8dd24fd52f1E.exit"

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h602e0cace2a7b24dE.exit": ; preds = %"_ZN4core3ptr68drop_in_place$LT$regex_automata..util..determinize..state..State$GT$17ha879776ccfa56996E.exit.i.i", %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 2 uses
  %i.s = icmp eq i64 %.val2, 0
  br i1 %i.s, label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17he435f8dd24fd52f1E.exit6", label %bb.g

bb.g:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h602e0cace2a7b24dE.exit"
  %i.t = shl nuw i64 %.val2, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #44
  br label %"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17he435f8dd24fd52f1E.exit6"

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17he435f8dd24fd52f1E.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h602e0cace2a7b24dE.exit", %bb.g
  ret void

"_ZN4core3ptr98drop_in_place$LT$alloc..raw_vec..RawVec$LT$regex_automata..util..determinize..state..State$GT$$GT$17he435f8dd24fd52f1E.exit": ; preds = %bb.f, %.body
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h8fc45951efd579acE"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = icmp eq ptr %.0.val, null
  br i1 %i.d, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hd25c69aae239df07E.exit", label %bb.b

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hd25c69aae239df07E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i", %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.0.val to i64
  %i.f = and i64 %i.e, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2)
  switch i64 %..i.i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hd25c69aae239df07E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !21

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !21200
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21200
  store ptr %.0.val, ptr %i.c, align 8, !noalias !21200
  %i.g = load i64, ptr %.0.val, align 8, !noalias !21201, !noundef !16 ; 3 uses
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = add nsw i64 %i.h, -1                     ; 3 uses
  %i.j = and i64 %i.g, 1080863910568919040
  %i.k = icmp ult i64 %i.g, 864691128455135232
  tail call void @llvm.assume(i1 %i.k)
  %i.l = or i64 %i.i, %i.j
  store i64 %i.l, ptr %.0.val, align 8, !noalias !21201
  %i.m = icmp ugt i64 %i.i, 72057594037927935
  br i1 %i.m, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %bb.g, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i"

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21201
  store ptr @604, ptr %i.b, align 8, !noalias !21201
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8, !noalias !21201
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8, !noalias !21201
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !21201
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.r, align 8, !noalias !21201
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !21201
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !21200
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i": ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21200
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hd25c69aae239df07E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E"(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = icmp eq ptr %.0.val, null
  br i1 %i.d, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit", label %bb.b

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i", %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.0.val to i64
  %i.f = and i64 %i.e, 3
  %..i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !21

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !21208
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21208
  store ptr %.0.val, ptr %i.c, align 8, !noalias !21208
  %i.g = load i64, ptr %.0.val, align 8, !noalias !21209, !noundef !16 ; 3 uses
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = add nsw i64 %i.h, -1                     ; 3 uses
  %i.j = and i64 %i.g, 1080863910568919040
  %i.k = icmp ult i64 %i.g, 864691128455135232
  tail call void @llvm.assume(i1 %i.k)
  %i.l = or i64 %i.i, %i.j
  store i64 %i.l, ptr %.0.val, align 8, !noalias !21209
  %i.m = icmp ugt i64 %i.i, 72057594037927935
  br i1 %i.m, label %bb.f, label %bb.e, !prof !22

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %bb.g, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i"

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21209
  store ptr @604, ptr %i.b, align 8, !noalias !21209
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8, !noalias !21209
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8, !noalias !21209
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !21209
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.r, align 8, !noalias !21209
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !21209
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !21208
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i": ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21208
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..term..record..RecordDeps$GT$$GT$17hafa9c94bbf8b7713E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !33, !noundef !16
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordDeps$GT$17h17a77432a3d6ed60E.exit", %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21218)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !21219, !noundef !16 ; 4 uses
  %i.d = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr143drop_in_place$LT$indexmap..map..core..IndexMapCore$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..term..record..FieldDeps$GT$$GT$17h23941b67699aef84E.exit.i.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !21219, !nonnull !16, !noundef !16
  %or.cond.i.i.i.i.i.i.i.i = icmp slt i64 %.val1.i.i.i, 2305843009213693950
end_hunk_12
