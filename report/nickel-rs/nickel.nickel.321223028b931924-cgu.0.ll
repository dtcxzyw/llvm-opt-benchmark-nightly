Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel.nickel.321223028b931924-cgu.0?download=true
inline.NumInlined: 8338
inline.NumDeleted: 3955
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hed812a3005248fa4E":bb.a
  %i.sc = phi ptr [ %.pr55.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h8f21b20584413032E.exit52thread-pre-split.i.i.i.i" ], [ %.sroa.0.0.i.i.i48.i.i.i.i, %bb.fi ]
  %.not9.i.i.i.i = icmp eq ptr %i.sc, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.fj

bb.fj:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h8f21b20584413032E.exit52.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hfbb310a33e3baf1eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %._crit_edge5.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !1162

._crit_edge5.i.i.i:                               ; preds = %bb.fj
  %.pre.pre.i.i.i = load i64, ptr %i.h, align 8, !range !15, !alias.scope !1166, !noalias !1178
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge5.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h8f21b20584413032E.exit52.i.i.i.i"
  %.be = phi i64 [ %.pre.pre.i.i.i, %._crit_edge5.i.i.i ], [ 1, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h8f21b20584413032E.exit52.i.i.i.i" ]
  br label %bb.ek

bb.fk:                                            ; preds = %.body.i.i.i.i
  %i.sd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !1162
  unreachable

bb.fl:                                            ; preds = %bb.et
  %i.se = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.fl, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.se, %bb.fl ], [ %.pn.i.i.i.i, %.body.i.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1192)
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  %i.sf = load ptr, ptr %i.i, align 16, !alias.scope !1194, !noalias !1143, !noundef !16 ; 3 uses
  %i.sg = icmp eq ptr %i.sf, null
  br i1 %i.sg, label %.body.thread.i, label %bb.fm

bb.fm:                                            ; preds = %.body.i.i.i
  %i.sh = load i64, ptr %i.sf, align 8, !noalias !1195, !noundef !16
  %i.si = add i64 %i.sh, -1                       ; 2 uses
  store i64 %i.si, ptr %i.sf, align 8, !noalias !1195
  %i.sj = icmp eq i64 %i.si, 0
  br i1 %i.sj, label %bb.fn, label %.body.thread.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body.thread.i unwind label %bb.fo, !noalias !1143

bb.fo:                                            ; preds = %bb.fn
  %i.sk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !1143
  unreachable

bb.fp:                                            ; preds = %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1145
  %.sroa.522.0.copyload24.i = load i64, ptr %i.ph, align 16, !noalias !1196
  %.sroa.419.0.copyload21.i = load i64, ptr %i.pg, align 8, !noalias !1196
  %i.sl = load <2 x i64>, ptr %i.i, align 16, !noalias !1196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1143
  store <2 x i64> %i.sl, ptr %i.s, align 16, !noalias !1131
  %.sroa.522.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.sroa.522.0.copyload24.i, ptr %.sroa.522.0..sroa_idx.i, align 16, !noalias !1131
  %i.sm = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store i64 0, ptr %i.sm, align 8, !noalias !1131
  %i.sn = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %.sroa.419.0.copyload21.i, ptr %i.sn, align 16, !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1131
  store i64 0, ptr %i.r, align 8, !noalias !1131
  %i.so = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.so, align 8, !noalias !1131
  %i.sp = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %i.sp, align 8, !noalias !1131
  %i.sq = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue5array17h650af8dba8a4cfcfE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.s, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.r, i32 noundef -1)
          to label %bb.fq unwind label %.body.thread35.i, !noalias !1131

bb.fq:                                            ; preds = %bb.fp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1131
  %i.sr = invoke fastcc ptr @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$11insert_full17h7577daa01b6e1291E"(ptr noalias noundef align 8 dereferenceable(72) %i.w, ptr noalias noundef align 4 captures(address) dereferenceable(20) %i.t, ptr noundef nonnull %i.sq)
          to label %._crit_edge unwind label %.body.thread35.i ; 5 uses

._crit_edge:                                      ; preds = %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1131
  %i.ss = icmp eq ptr %i.sr, null
  br i1 %i.ss, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit37.i", label %bb.fr

bb.fr:                                            ; preds = %._crit_edge
  %i.st = ptrtoint ptr %i.sr to i64
  %i.su = and i64 %i.st, 3
  %..i.i.i32.i = call i64 @llvm.umin.i64(i64 %i.su, i64 2)
  switch i64 %..i.i.i32.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit37.i" [
    i64 2, label %bb.fs
    i64 0, label %bb.ft
  ], !prof !21

bb.fs:                                            ; preds = %bb.fr
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc34.i unwind label %.body.thread35.i, !noalias !1131

.noexc34.i:                                       ; preds = %bb.fs
  unreachable

bb.ft:                                            ; preds = %bb.fr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1197
  store ptr %i.sr, ptr %i.c, align 8, !noalias !1197
  %i.sv = load i64, ptr %i.sr, align 8, !noalias !1198, !noundef !16 ; 3 uses
  %i.sw = and i64 %i.sv, 72057594037927935
  %i.sx = add nsw i64 %i.sw, -1                   ; 3 uses
  %i.sy = and i64 %i.sv, 1080863910568919040
  %i.sz = icmp ult i64 %i.sv, 864691128455135232
  call void @llvm.assume(i1 %i.sz)
  %i.ta = or i64 %i.sx, %i.sy
  store i64 %i.ta, ptr %i.sr, align 8, !noalias !1198
  %i.tb = icmp ugt i64 %i.sx, 72057594037927935
  br i1 %i.tb, label %bb.fv, label %bb.fu, !prof !22

bb.fu:                                            ; preds = %bb.ft
  %i.tc = icmp eq i64 %i.sx, 0
  br i1 %i.tc, label %bb.fw, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i33.i"

bb.fv:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1198
  store ptr @604, ptr %i.b, align 8, !noalias !1198
  %i.td = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.td, align 8, !noalias !1198
  %i.te = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.te, align 8, !noalias !1198
  %i.tf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.tf, align 8, !noalias !1198
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.tg, align 8, !noalias !1198
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc35.i unwind label %.body.thread35.i, !noalias !1131

.noexc35.i:                                       ; preds = %bb.fv
  unreachable

bb.fw:                                            ; preds = %bb.fu
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i33.i" unwind label %.body.thread35.i, !noalias !1131

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i33.i": ; preds = %bb.fw, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1197
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit37.i"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit37.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i33.i", %bb.fr, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false), !noalias !1131
  call fastcc void @_ZN16nickel_lang_core4term6record10RecordData17with_field_values17h3b30dedcc0e48dfaE(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1131
  %i.th = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue14record_posless17heca82e0fedb09f30E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.q), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1131
  %i.ti = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval9operation19closurize_container17h4723a6b0da5ef11dE(ptr noundef nonnull %i.th)
          to label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h9a2904b80cc71737E.exit" unwind label %bb.db, !noalias !1131

.body.thread.i:                                   ; preds = %bb.fn, %bb.fm, %.body.i.i.i, %bb.dq, %bb.df, %bb.de, %.body.thread35.i
  %eh.lpad-body33.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread35.i ], [ %i.nh, %bb.de ], [ %i.oh, %bb.dq ], [ %i.nh, %bb.df ], [ %eh.lpad-body.i.i.i, %bb.fn ], [ %eh.lpad-body.i.i.i, %bb.fm ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  %.sroa.01.2.lpad-body32.i = phi i8 [ %.sroa.01.2.ph.i, %.body.thread35.i ], [ 1, %bb.de ], [ 1, %bb.dq ], [ 1, %bb.df ], [ 0, %bb.fn ], [ 0, %bb.fm ], [ 0, %.body.i.i.i ]
  %.sroa.02.2.lpad-body31.i = phi i8 [ %.sroa.02.2.ph.i, %.body.thread35.i ], [ 1, %bb.de ], [ 0, %bb.dq ], [ 1, %bb.df ], [ 0, %bb.fn ], [ 0, %bb.fm ], [ 0, %.body.i.i.i ]
  %.sroa.03.2.lpad-body30.i = phi i8 [ %.sroa.03.2.ph.i, %.body.thread35.i ], [ 0, %bb.de ], [ 0, %bb.dq ], [ 0, %bb.df ], [ 0, %bb.fn ], [ 0, %bb.fm ], [ 0, %.body.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hdd348c516b468b13E"(ptr noalias noundef align 8 dereferenceable(72) %i.w) #46
          to label %bb.da unwind label %bb.fx, !noalias !1131

bb.fx:                                            ; preds = %.body.thread.i
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !1131
  unreachable

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit.i": ; preds = %bb.fy, %bb.da
  %i.tk = trunc nuw i8 %.sroa.02.0.i to i1
  br i1 %i.tk, label %bb.ga, label %bb.fz

bb.fy:                                            ; preds = %bb.da
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1199
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit.i"

bb.fz:                                            ; preds = %bb.ga, %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit.i"
  %i.tl = trunc nuw i8 %.sroa.01.0.i to i1
  br i1 %i.tl, label %bb.gb, label %common.resume

bb.ga:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit.i"
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17hd4e0d2516a4f0431E"(ptr noalias noundef readonly align 8 dereferenceable(56) %.sroa.99.0..sroa_idx) #46
  br label %bb.fz

bb.gb:                                            ; preds = %bb.fz
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$GT$17h129007d066d41211E"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.66.0..sroa_idx) #46
  br label %common.resume

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h9a2904b80cc71737E.exit": ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E.exit37.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.gc

bb.gc:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h10cab1647b97e67dE.exit.thread", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h9a2904b80cc71737E.exit"
  %.sroa.0.0 = phi ptr [ %i.ti, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h9a2904b80cc71737E.exit" ], [ null, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h10cab1647b97e67dE.exit.thread" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf52cb00736a4b5d7E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1218, !noalias !1219, !nonnull !16, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1218, !noalias !1219, !nonnull !16, !noundef !16 ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit": ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !1218, !noalias !1219
  %.sroa.0.0.copyload1 = load i32, ptr %i.g, align 4, !noalias !1218 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload1, 3
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit"
  %.sroa.6.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2, i64 16, i1 false)
  store i32 %.sroa.0.0.copyload1, ptr %i.c, align 4
  %.val = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.k = call { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c) ; 2 uses
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1        ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1220
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 16, i1 false)
  %i.n = call noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1220
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1221
  %i.q = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #44, !noalias !1221 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45, !noalias !1222
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.q, %bb.c ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !1223
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !1224
  %i.s = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #44, !noalias !1224 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h75098d47cbdf16fbE.exit", !prof !22

bb.e:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br i1 %i.p, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !1225
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit.i.i"

bb.g:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1226
  store ptr @135, ptr %i.a, align 8, !noalias !1226
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.v, align 8, !noalias !1226
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.w, align 8, !noalias !1226
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !1226
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.y, align 8, !noalias !1226
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.h unwind label %bb.e, !noalias !1224

bb.h:                                             ; preds = %bb.g
  unreachable

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.u

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h75098d47cbdf16fbE.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i"
  store i64 216172782113783809, ptr %i.s, align 8, !noalias !1224
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.n, ptr %i.z, align 8, !noalias !1224
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.m, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx4.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.thread"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.thread": ; preds = %bb.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h75098d47cbdf16fbE.exit"
  %.sroa.0.0 = phi ptr [ %i.s, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h75098d47cbdf16fbE.exit" ], [ null, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf88f6eefee340d5dE"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !1232, !noundef !16 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h13321886363ac363E.exit.thread", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc502e3d514fe03E.exit.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc502e3d514fe03E.exit.i": ; preds = %bb.a
  %i.f = add i64 %i.d, -1
  store i64 %i.f, ptr %i.c, align 8, !alias.scope !1232
  %i.g = tail call fastcc noundef align 8 dereferenceable_or_null(8) ptr @"_ZN104_$LT$nickel_lang_vector..vector..Iter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h030df9fde96d4e95E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %0) ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h13321886363ac363E.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0cc502e3d514fe03E.exit.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val.i = load ptr, ptr %i.h, align 8, !alias.scope !1231 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.val3.i = load i32, ptr %i.i, align 8, !alias.scope !1231
  %.val4.i = load ptr, ptr %i.g, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.j = ptrtoint ptr %.val4.i to i64
  %i.k = and i64 %i.j, 3
  %..i.i.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 2)
  switch i64 %..i.i.i, label %bb.f [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !21

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %.val4.i, align 8, !noundef !16 ; 3 uses
  %i.m = and i64 %i.l, 72057594037927935          ; 3 uses
  %i.n = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  %i.p = and i64 %i.l, 1080863910568919040
  %i.q = icmp ult i64 %i.l, 864691128455135232
  tail call void @llvm.assume(i1 %i.q)
  %i.r = or i64 %i.o, %i.p
  store i64 %i.r, ptr %.val4.i, align 8
  %i.s = icmp eq i64 %i.m, 72057594037927935
  br i1 %i.s, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1231
  store ptr @604, ptr %i.b, align 8, !noalias !1231
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.t, align 8, !noalias !1231
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.u, align 8, !noalias !1231
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.v, align 8, !noalias !1231
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.w, align 8, !noalias !1231
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noundef !16
  %i.ab = getelementptr inbounds nuw [160 x i8], ptr %i.y, i64 %i.aa
  %i.ac = tail call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17hd8424252342daac9E(ptr noundef nonnull %.val4.i, ptr noundef nonnull %i.y, ptr noundef %i.ab, i32 noundef %.val3.i)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val = load ptr, ptr %i.ad, align 8, !nonnull !16, !align !28, !noundef !16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val3 = load ptr, ptr %i.ae, align 8, !nonnull !16, !align !23, !noundef !16 ; 2 uses
  %.val.i4 = load ptr, ptr %.val3, align 8, !nonnull !16, !noundef !16 ; 3 uses
  %i.af = getelementptr i8, ptr %.val3, i64 8
  %.val2.i = load ptr, ptr %i.af, align 8         ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i4, align 8, !noundef !16 ; 2 uses
  %i.ag = icmp ne i64 %.val.i.i.i, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.ah, ptr %.val.i4, align 8
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h08754d0134483a48E.exit.i.i, !prof !22

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h08754d0134483a48E.exit.i.i: ; preds = %bb.f
end_hunk_0
begin_hunk_1_@"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h5dc8d277e69011f2E":bb.a
  %i.do = load i64, ptr %0, align 8, !range !15, !alias.scope !3039, !noalias !3040, !noundef !16
  %i.dp = trunc nuw i64 %i.do to i1
  br i1 %i.dp, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hb700e38cfd7d3fd7E.exit28thread-pre-split", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dq = load i64, ptr %i.t, align 8, !alias.scope !3041, !noalias !3039, !noundef !16
  %i.dr = load i64, ptr %i.r, align 8, !alias.scope !3041, !noalias !3039, !noundef !16 ; 4 uses
  %.not.i.i.i.i26 = icmp eq i64 %i.dq, %i.dr
  br i1 %.not.i.i.i.i26, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = add nuw nsw i64 %i.dr, 1
  store i64 %i.ds, ptr %i.r, align 8, !alias.scope !3041, !noalias !3039
  %i.dt = icmp ult i64 %i.dr, 2
  call void @llvm.assume(i1 %i.dt)
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.dr
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !3041, !noalias !3039, !nonnull !16, !noundef !16
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.sroa.0.0.i.i.i.i27 = phi ptr [ %i.dv, %bb.al ], [ null, %bb.ak ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !3039, !noalias !3040
  store ptr %.sroa.0.0.i.i.i.i27, ptr %i.s, align 8, !alias.scope !3039, !noalias !3040
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hb700e38cfd7d3fd7E.exit28"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hb700e38cfd7d3fd7E.exit28thread-pre-split": ; preds = %bb.aj
  %.pr39 = load ptr, ptr %i.s, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hb700e38cfd7d3fd7E.exit28"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hb700e38cfd7d3fd7E.exit28": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hb700e38cfd7d3fd7E.exit28thread-pre-split", %bb.am
  %i.dw = phi ptr [ %.pr39, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hb700e38cfd7d3fd7E.exit28thread-pre-split" ], [ %.sroa.0.0.i.i.i.i27, %bb.am ]
  %.not20.not = icmp eq ptr %i.dw, null
  br i1 %.not20.not, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17hb700e38cfd7d3fd7E.exit28"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  %i.dx = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h5dc8d277e69011f2E"(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(272) %i.h, i8 noundef %.pre-phi)
          to label %bb.ao unwind label %bb.at

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.h, i64 272, i1 false)
  store i64 1, ptr %i.f, align 8
  store i64 1, ptr %i.w, align 8
  store i64 1, ptr %i.x, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3042
  %i.dy = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !3042 ; 3 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.ap, label %bb.as, !prof !19

bb.ap:                                            ; preds = %bb.ao
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #45
          to label %.noexc29 unwind label %bb.aq

.noexc29:                                         ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap
  %i.ea = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h73f9256d6a0b4975E"(ptr noalias noundef align 8 dereferenceable(280) %i.x)
          to label %common.resume unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.as:                                            ; preds = %bb.ao
  %i.ec = add i64 %i.dx, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dy, ptr noundef nonnull align 8 dereferenceable(296) %i.f, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17ha6c55521a30056acE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ah

bb.at:                                            ; preds = %bb.an
  %i.ed = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h6f7cc97ea8531990E"(ptr noalias noundef align 8 dereferenceable(272) %i.h) #46
          to label %common.resume unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ee = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h6275fe3e0032e18bE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 4                ; 4 uses
  %i.d = alloca [20 x i8], align 4                ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 7 uses
  %i.h = alloca [272 x i8], align 8               ; 9 uses
  %i.i = alloca [296 x i8], align 8               ; 7 uses
  %i.j = alloca [296 x i8], align 8               ; 9 uses
  %i.k = alloca [272 x i8], align 8               ; 6 uses
  %i.l = icmp eq i8 %2, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !16 ; 2 uses
  %.not21 = icmp eq i64 %i.p, %i.n
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.r = xor i64 %i.n, -1
  %i.s = getelementptr [8 x i8], ptr %i.q, i64 %i.p
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %i.r ; 3 uses
  %.not2256 = icmp eq ptr %i.t, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not2256 ; 2 uses
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader60_crit_edge, label %bb.ao

..preheader60_crit_edge:                          ; preds = %bb.c
  %.pre = add i8 %2, -1
  br label %.preheader60

.preheader60:                                     ; preds = %..preheader60_crit_edge, %bb.ap
  %.pre-phi = phi i8 [ %.pre, %..preheader60_crit_edge ], [ %i.ea, %bb.ap ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader60_crit_edge ], [ %i.eb, %bb.ap ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  br label %bb.ar

bb.d:                                             ; preds = %bb.b
  %i.z = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hd77c38f99ee34a96E"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !15, !noundef !16
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #45
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 272 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !16
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 264 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !16
  %i.ah = sub i64 %i.ae, %i.ag                    ; 2 uses
  %i.ai = sub i64 32, %i.ah
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h63106780afaac034E"(ptr noalias noundef align 8 dereferenceable(272) %i.ac, ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.ai)
  %i.aj = load i64, ptr %i.ad, align 8, !noundef !16
  %i.ak = load i64, ptr %i.af, align 8, !noundef !16
  %i.al = add i64 %i.ah, %i.ak
  %i.am = sub i64 %i.aj, %i.al
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.am, %bb.f ]
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 256 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 264 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h72f888cf16fe605fE.exit24"
  %.sroa.0.0 = phi i64 [ %i.dv, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h72f888cf16fe605fE.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.aw = load i64, ptr %i.m, align 8, !noundef !16
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.o, align 8, !noundef !16
  %i.az = icmp eq i64 %i.ay, 32
  br i1 %i.az, label %.loopexit59, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !3095)
  %i.ba = load i64, ptr %0, align 8, !range !15, !alias.scope !3095, !noalias !3096, !noundef !16
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = call fastcc noalias noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf52cb00736a4b5d7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao), !noalias !3095 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !3095, !noalias !3096
  store ptr %i.bc, ptr %i.an, align 8, !alias.scope !3095, !noalias !3096
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exitthread-pre-split": ; preds = %bb.i
  %.pr = load ptr, ptr %i.an, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exitthread-pre-split", %bb.j
  %i.bd = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exitthread-pre-split" ], [ %i.bc, %bb.j ]
  %.not23.not = icmp eq ptr %i.bd, null
  br i1 %.not23.not, label %.loopexit59, label %bb.k

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !3097)
  call void @llvm.experimental.noalias.scope.decl(metadata !3098)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3099
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !noalias !3099
  br label %bb.l

.body.i.i:                                        ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i", %bb.x, %.body38
  %i.be = phi i64 [ %.pre.i.i, %.body38 ], [ 0, %bb.x ], [ 0, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i" ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body39, %.body38 ], [ %i.cp, %bb.x ], [ %i.cp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i" ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.be
  %i.bg = sub i64 %i.bh, %i.be
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17hbbaa9bee1438b8e6E"(ptr noalias noundef nonnull readonly align 8 %i.bf, i64 noundef %i.bg)
          to label %common.resume unwind label %bb.ak, !noalias !3099

bb.l:                                             ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i", %bb.k
  %i.bh = phi i64 [ 0, %bb.k ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i" ] ; 7 uses
  %.sroa.4.07.i.i = phi i64 [ 32, %bb.k ], [ %i.bi, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i" ]
  %i.bi = add nsw i64 %.sroa.4.07.i.i, -1         ; 2 uses
  %i.bj = load i64, ptr %0, align 8, !range !15, !alias.scope !3100, !noalias !3101, !noundef !16
  %i.bk = load ptr, ptr %i.an, align 8, !alias.scope !3100, !noalias !3101 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !3100, !noalias !3101
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !3102)
  call void @llvm.experimental.noalias.scope.decl(metadata !3103), !noalias !3104
  %i.bm = load ptr, ptr %i.ar, align 8, !alias.scope !3105, !noalias !3106, !nonnull !16, !noundef !16
  %i.bn = load ptr, ptr %i.as, align 8, !alias.scope !3105, !noalias !3106, !nonnull !16, !noundef !16 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, %i.bm
  br i1 %i.bo, label %_ZN4core4iter6traits8iterator8Iterator7collect17hbeda369e2181e6d0E.exit, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.i": ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store ptr %i.bp, ptr %i.as, align 8, !alias.scope !3105, !noalias !3106
  %.sroa.0.0.copyload1.i = load i32, ptr %i.bn, align 4, !noalias !3107 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hbeda369e2181e6d0E.exit, label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3108
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !noalias !3108
  store i32 %.sroa.0.0.copyload1.i, ptr %i.d, align 4, !noalias !3108
  %.val.i34 = load ptr, ptr %i.at, align 8, !alias.scope !3102, !noalias !3104 ; 2 uses
  %i.bq = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.d)
          to label %.noexc35 unwind label %.loopexit ; 2 uses

.noexc35:                                         ; preds = %bb.n
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i34) ], !noalias !3104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3109
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 16, i1 false), !noalias !3108
  %i.bt = invoke noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i34, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3109
  %i.bu = icmp slt i64 %i.bs, 0
  br i1 %i.bu, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %.noexc36
  %i.bv = icmp eq i64 %i.bs, 0                    ; 2 uses
  br i1 %i.bv, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i.i", label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3110
  %i.bw = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, 9) 1) #44, !noalias !3110 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i.i"

bb.p:                                             ; preds = %bb.o, %.noexc36
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %.noexc36 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.p
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i.i": ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bw, %bb.o ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.br, i64 %i.bs, i1 false), !noalias !3111
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3112
  %i.by = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #44, !noalias !3112 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.s, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i.thread45", !prof !22

bb.q:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bv, label %.body38, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !3113
  br label %.body38

bb.s:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3114
  store ptr @135, ptr %i.b, align 8, !noalias !3114
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !3114
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cc, align 8, !noalias !3114
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !noalias !3114
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ce, align 8, !noalias !3114
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.t unwind label %bb.q, !noalias !3112

bb.t:                                             ; preds = %bb.s
  unreachable

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i.thread45": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h3a14984c49f94d2cE.exit.i.i"
  store i64 216172782113783809, ptr %i.by, align 8, !noalias !3112
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bt, ptr %i.cf, align 8, !noalias !3112
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bs, ptr %i.cg, align 8, !noalias !3108
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !3108
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !3108
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3108
  br label %bb.u

.loopexit:                                        ; preds = %bb.n, %.noexc35
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %.loopexit, %.loopexit.split-lp, %bb.q, %bb.r
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.ca, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.pre.i.i = load i64, ptr %i.ap, align 8, !alias.scope !3115, !noalias !3099
  br label %.body.i.i

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i": ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hbeda369e2181e6d0E.exit, label %bb.u

bb.u:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i.thread45", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i"
  %.sroa.0.0.i.i.i48 = phi ptr [ %i.by, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i.thread45" ], [ %i.bk, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i" ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3116)
  %i.ch = load i64, ptr %i.ap, align 8, !alias.scope !3116, !noalias !3099, !noundef !16 ; 5 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = icmp eq i64 %i.bh, 32                   ; 2 uses
  %or.cond.i.i.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.v, !prof !45

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i64 %i.ch, %i.bh
  br i1 %i.ck, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3117
  store ptr @358, ptr %i.g, align 8, !noalias !3117
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.cl, align 8, !noalias !3117
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.cm, align 8, !noalias !3117
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8, !noalias !3117
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.co, align 8, !noalias !3117
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @359) #45
          to label %bb.ad unwind label %bb.x, !noalias !3117

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = ptrtoint ptr %.sroa.0.0.i.i.i48 to i64
  %i.cr = and i64 %i.cq, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 2)
  switch i64 %..i.i, label %.body.i.i [
    i64 2, label %bb.y
    i64 0, label %bb.z
  ], !prof !21

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc31 unwind label %bb.ae

.noexc31:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3118
  store ptr %.sroa.0.0.i.i.i48, ptr %i.f, align 8, !noalias !3118
  %i.cs = load i64, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !3119, !noundef !16 ; 3 uses
  %i.ct = and i64 %i.cs, 72057594037927935
  %i.cu = add nsw i64 %i.ct, -1                   ; 3 uses
  %i.cv = and i64 %i.cs, 1080863910568919040
  %i.cw = icmp ult i64 %i.cs, 864691128455135232
  call void @llvm.assume(i1 %i.cw), !noalias !3117
  %i.cx = or i64 %i.cu, %i.cv
  store i64 %i.cx, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !3119
  %i.cy = icmp ugt i64 %i.cu, 72057594037927935
  br i1 %i.cy, label %bb.ab, label %bb.aa, !prof !22

bb.aa:                                            ; preds = %bb.z
  %i.cz = icmp eq i64 %i.cu, 0
  br i1 %i.cz, label %bb.ac, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i"

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3119
  store ptr @604, ptr %i.e, align 8, !noalias !3119
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.da, align 8, !noalias !3119
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.db, align 8, !noalias !3119
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !noalias !3119
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.dd, align 8, !noalias !3119
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc32 unwind label %bb.ae

.noexc32:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i" unwind label %bb.ae

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i": ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3118
  br label %.body.i.i

bb.ad:                                            ; preds = %bb.w
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !3117
  unreachable

bb.af:                                            ; preds = %bb.v
  br i1 %i.cj, label %bb.ah, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i"

bb.ag:                                            ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !3116, !noalias !3099
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i"

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.i = icmp eq i64 %i.ch, 32
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.df = phi i64 [ %i.dj, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  store i64 %i.df, ptr %i.aq, align 8, !alias.scope !3116, !noalias !3099
  store i64 0, ptr %i.ap, align 8, !alias.scope !3116, !noalias !3099
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ch
  %i.dh = shl i64 %i.ch, 3
  %i.di = sub i64 256, %i.dh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.h, ptr nonnull align 8 %i.dg, i64 %i.di, i1 false), !alias.scope !3116, !noalias !3099
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !3116, !noalias !3099
  %i.dj = sub i64 32, %.pre.i.i.i
  br label %bb.ai

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i": ; preds = %bb.ai, %bb.ag, %bb.af
  %i.dk = phi i64 [ %i.df, %bb.ai ], [ %i.bh, %bb.af ], [ 0, %bb.ag ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dk
  store ptr %.sroa.0.0.i.i.i48, ptr %i.dl, align 8, !alias.scope !3116, !noalias !3099
  %i.dm = load i64, ptr %i.aq, align 8, !alias.scope !3116, !noalias !3099, !noundef !16
  %i.dn = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.aq, align 8, !alias.scope !3116, !noalias !3099
  %i.do = icmp eq i64 %i.bi, 0
  br i1 %i.do, label %_ZN4core4iter6traits8iterator8Iterator7collect17hbeda369e2181e6d0E.exit, label %bb.l

bb.ak:                                            ; preds = %.body.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !3099
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.ay, %bb.am, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %bb.am ], [ %.pn.i.i, %.body.i.i ], [ %i.en, %bb.ay ], [ %i.eq, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17hbeda369e2181e6d0E.exit: ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i"
  %.sroa.3.0.copyload41 = phi i64 [ %i.bh, %bb.m ], [ %i.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h279dd0397d123a3eE.exit.i" ], [ %i.bh, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa3cd32894cc2b53E.exit.i.i" ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false)
  %.sroa.2.0.copyload40 = load i64, ptr %i.ap, align 8, !noalias !3120 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3099
  store i64 1, ptr %i.j, align 8
  store i64 1, ptr %i.au, align 8
  store i64 0, ptr %i.av, align 8
  store i64 %.sroa.2.0.copyload40, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.3.0.copyload41, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3121
  %i.dq = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !3121 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.al, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h72f888cf16fe605fE.exit24", !prof !19

bb.al:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hbeda369e2181e6d0E.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #45
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h73f9256d6a0b4975E"(ptr noalias noundef align 8 dereferenceable(280) %i.av)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h72f888cf16fe605fE.exit24": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17hbeda369e2181e6d0E.exit
  %i.du = sub i64 %.sroa.0.0, %.sroa.2.0.copyload40
  %i.dv = add i64 %i.du, %.sroa.3.0.copyload41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dq, ptr noundef nonnull align 8 dereferenceable(296) %i.j, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17ha6c55521a30056acE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.dq)
  br label %bb.g

.loopexit59:                                      ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26", %bb.as, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit", %bb.h
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit" ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.2, %bb.as ], [ %.sroa.0.2, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26" ]
  ret i64 %.sroa.0.1

bb.ao:                                            ; preds = %bb.c
  %i.dw = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hd77c38f99ee34a96E"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !range !15, !noundef !16
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.ap, label %bb.aq, !prof !18

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = add i8 %2, -1                           ; 2 uses
  %i.eb = tail call fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h6275fe3e0032e18bE"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.dz, i8 noundef %i.ea)
  br label %.preheader60

bb.aq:                                            ; preds = %bb.ao
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #45
  unreachable

bb.ar:                                            ; preds = %.preheader60, %bb.ba
  %.sroa.0.2 = phi i64 [ %i.ep, %bb.ba ], [ %.sroa.0.2.ph, %.preheader60 ] ; 3 uses
  %i.ec = load i64, ptr %i.m, align 8, !noundef !16
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ee = load i64, ptr %i.o, align 8, !noundef !16
  %i.ef = icmp eq i64 %i.ee, 32
  br i1 %i.ef, label %.loopexit59, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !3122)
  %i.eg = load i64, ptr %0, align 8, !range !15, !alias.scope !3122, !noalias !3123, !noundef !16
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26thread-pre-split", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = call fastcc noalias noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf52cb00736a4b5d7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v), !noalias !3122 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !3122, !noalias !3123
  store ptr %i.ei, ptr %i.u, align 8, !alias.scope !3122, !noalias !3123
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26thread-pre-split": ; preds = %bb.at
  %.pr49 = load ptr, ptr %i.u, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26thread-pre-split", %bb.au
  %i.ej = phi ptr [ %.pr49, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26thread-pre-split" ], [ %i.ei, %bb.au ]
  %.not20.not = icmp eq ptr %i.ej, null
  br i1 %.not20.not, label %.loopexit59, label %bb.av

bb.av:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit26"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.ek = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h6275fe3e0032e18bE"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.k, i8 noundef %.pre-phi)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.k, i64 272, i1 false)
  store i64 1, ptr %i.i, align 8
  store i64 1, ptr %i.x, align 8
  store i64 1, ptr %i.y, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !3124
  %i.el = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !3124 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ax, label %bb.ba, !prof !19

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #45
          to label %.noexc27 unwind label %bb.ay

.noexc27:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h73f9256d6a0b4975E"(ptr noalias noundef align 8 dereferenceable(280) %i.y)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.ba:                                            ; preds = %bb.aw
  %i.ep = add i64 %i.ek, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.el, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17ha6c55521a30056acE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ar

bb.bb:                                            ; preds = %bb.av
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h6f7cc97ea8531990E"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #46
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h6cebfb39a0c4d1f8E"(ptr noalias noundef nonnull align 8 dereferenceable(352) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [272 x i8], align 8               ; 9 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [296 x i8], align 8               ; 7 uses
  %i.i = alloca [296 x i8], align 8               ; 9 uses
  %i.j = alloca [272 x i8], align 8               ; 6 uses
  %i.k = icmp eq i8 %2, 1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !noundef !16 ; 2 uses
  %.not21 = icmp eq i64 %i.o, %i.m
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.q = xor i64 %i.m, -1
  %i.r = getelementptr [8 x i8], ptr %i.p, i64 %i.o
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %i.q ; 3 uses
  %.not22105 = icmp eq ptr %i.s, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not22105 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader108_crit_edge, label %bb.ax

..preheader108_crit_edge:                         ; preds = %bb.c
  %.pre134 = add i8 %2, -1
  br label %.preheader108

.preheader108:                                    ; preds = %..preheader108_crit_edge, %bb.ay
  %.pre-phi = phi i8 [ %.pre134, %..preheader108_crit_edge ], [ %i.ft, %bb.ay ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader108_crit_edge ], [ %i.fu, %bb.ay ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.aa = getelementptr inbounds nuw i8, ptr %i.j, i64 256
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.ba

bb.d:                                             ; preds = %bb.b
  %i.ad = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hd77c38f99ee34a96E"(ptr noalias noundef align 8 dereferenceable(8) %i.s) ; 4 uses
  %i.ae = load i64, ptr %i.ad, align 8, !range !15, !noundef !16
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @10, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @29) #45
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 272 ; 6 uses
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !16 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 264 ; 6 uses
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !16 ; 2 uses
  %i.al = sub i64 %i.ai, %i.ak                    ; 3 uses
  %i.am = icmp eq i64 %i.al, 32
  br i1 %i.am, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h253b33f59e845d44E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.an = sub i64 32, %i.al
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 344
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit"
  %.sroa.4.0122 = phi i64 [ %i.an, %.lr.ph ], [ %i.av, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17hf1f7403761fbf9b5E.exit" ]
  %i.av = add i64 %.sroa.4.0122, -1               ; 2 uses
  %i.aw = load i64, ptr %0, align 8, !range !15, !alias.scope !3187, !noalias !3188, !noundef !16
  %i.ax = load ptr, ptr %i.ao, align 8, !alias.scope !3187, !noalias !3188 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !3187, !noalias !3188
  %i.ay = trunc nuw i64 %i.aw to i1
  br i1 %i.ay, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha318101d6beb28c2E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load i64, ptr %i.ap, align 8, !alias.scope !3189, !noalias !3188, !noundef !16 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h253b33f59e845d44E.exit.loopexit", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64b5ce4583d3157dE.exit.i"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64b5ce4583d3157dE.exit.i": ; preds = %bb.h
  %i.bb = add i64 %i.az, -1
  store i64 %i.bb, ptr %i.ap, align 8, !alias.scope !3189, !noalias !3188
  %i.bc = tail call fastcc noundef ptr @"_ZN108_$LT$nickel_lang_vector..vector..IntoIter$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h08b48178ce7e95d3E"(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.aq), !noalias !3188, !inline_history !3135 ; 2 uses
  %.not.i.i51 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i51, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h253b33f59e845d44E.exit.loopexit", label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha318101d6beb28c2E.exit.thread77"

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha318101d6beb28c2E.exit.thread77": ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h64b5ce4583d3157dE.exit.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3190), !noalias !3188
  %i.bd = load ptr, ptr %i.ar, align 8, !alias.scope !3191, !noalias !3188, !nonnull !16, !align !23, !noundef !16
  %i.be = load ptr, ptr %i.as, align 8, !alias.scope !3191, !noalias !3188, !nonnull !16, !align !28, !noundef !16
  %i.bf = load ptr, ptr %i.at, align 8, !alias.scope !3191, !noalias !3188, !nonnull !16, !align !23, !noundef !16
  %i.bg = load ptr, ptr %i.au, align 8, !alias.scope !3191, !noalias !3188, !nonnull !16, !align !23, !noundef !16
  %i.bh = tail call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h354e9df9e305227aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bd, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.be, ptr noundef nonnull %i.bc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bg), !noalias !3192, !inline_history !3138
  br label %bb.i

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha318101d6beb28c2E.exit": ; preds = %bb.g
  %.not.i = icmp eq ptr %i.ax, null
  br i1 %.not.i, label %"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h253b33f59e845d44E.exit.loopexit", label %bb.i

bb.i:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha318101d6beb28c2E.exit.thread77", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha318101d6beb28c2E.exit"
  %.sroa.0.0.i82 = phi ptr [ %i.bh, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha318101d6beb28c2E.exit.thread77" ], [ %i.ax, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha318101d6beb28c2E.exit" ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3193)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %.sroa.0.0.i82, ptr %i.g, align 8, !noalias !3193
  %i.bi = load i64, ptr %i.aj, align 8, !alias.scope !3193, !noundef !16 ; 5 uses
  %i.bj = icmp eq i64 %i.bi, 0
  %i.bk = load i64, ptr %i.ah, align 8, !alias.scope !3193 ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 32                   ; 2 uses
  %or.cond.i = select i1 %i.bj, i1 %i.bl, i1 false, !prof !45
  br i1 %or.cond.i, label %bb.k, label %bb.j, !prof !45

end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core4eval17update_at_indices17ha2b1c572f75663c9E:bb.a

bb.d:                                             ; preds = %bb.c
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @129, i64 noundef 69, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @130) #45, !noalias !4487
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr i8, ptr %i.q, i64 -9
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.w, align 1, !noalias !4487, !nonnull !16, !noundef !16 ; 7 uses
  %i.x = add nsw i64 %i.p, -9                     ; 3 uses
  store i64 %i.x, ptr %i.g, align 8, !alias.scope !4487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !4488)
  switch i64 %..i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i" [
    i64 2, label %bb.f
    i64 0, label %bb.g
  ], !prof !21

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.y = load i64, ptr %.val.i, align 8, !noalias !4489, !noundef !16 ; 3 uses
  %i.z = and i64 %i.y, 72057594037927935          ; 3 uses
  %i.aa = icmp ne i64 %i.z, 0
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nuw nsw i64 %i.z, 1
  %i.ac = and i64 %i.y, 1080863910568919040
  %i.ad = icmp ult i64 %i.y, 864691128455135232
  call void @llvm.assume(i1 %i.ad)
  %i.ae = or i64 %i.ab, %i.ac
  store i64 %i.ae, ptr %.val.i, align 8, !noalias !4489
  %i.af = icmp eq i64 %i.z, 72057594037927935
  br i1 %i.af, label %bb.h, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i", !prof !22

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4489
  store ptr @604, ptr %i.e, align 8, !noalias !4489
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ag, align 8, !noalias !4489
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ah, align 8, !noalias !4489
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ai, align 8, !noalias !4489
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.aj, align 8, !noalias !4489
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc5 unwind label %bb.w

.noexc5:                                          ; preds = %bb.h
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i": ; preds = %bb.g, %bb.e
  %.val.i.i.i = load i64, ptr %.val1.i, align 8, !noalias !4489, !noundef !16 ; 2 uses
  %i.ak = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.ak)
  %i.al = add i64 %.val.i.i.i, 1                  ; 2 uses
  store i64 %i.al, ptr %.val1.i, align 8, !noalias !4489
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.i, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h08754d0134483a48E.exit.i.i, !prof !22

bb.i:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h08754d0134483a48E.exit.i.i: ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i"
  br i1 %.not.i.i, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h08754d0134483a48E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val2.i, align 8, !noalias !4489, !noundef !16 ; 2 uses
  %i.an = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.an)
  %i.ao = add i64 %.val.i2.i.i, 1                 ; 2 uses
  store i64 %i.ao, ptr %.val2.i, align 8, !noalias !4489
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l, !prof !22

bb.k:                                             ; preds = %bb.j
  call void @llvm.trap()
  unreachable

._crit_edge:                                      ; preds = %bb.b, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i.i", %bb.a
  ret void

bb.l:                                             ; preds = %bb.j, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h08754d0134483a48E.exit.i.i
  store ptr %.val.i, ptr %i.f, align 8, !alias.scope !4488, !noalias !4490
  store ptr %.val1.i, ptr %i.n, align 8, !alias.scope !4488, !noalias !4490
  store ptr %.val2.i, ptr %i.o, align 8, !alias.scope !4488, !noalias !4490
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 16 ; 6 uses
  %i.ar = load i64, ptr %i.aq, align 8, !noalias !4491, !noundef !16
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.o, !prof !18

bb.m:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = load i64, ptr %i.aq, align 8, !noalias !4491, !noundef !16
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.aq, align 8, !noalias !4491
  br label %bb.u

bb.n:                                             ; preds = %bb.l
  store i64 -1, ptr %i.aq, align 8, !noalias !4491
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.03.0.copyload.i.i.i, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !4491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData6update17h9149a9fa047e6de7E(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.p unwind label %bb.m, !noalias !4491

bb.o:                                             ; preds = %bb.l
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @104) #45
          to label %bb.t unwind label %bb.v, !noalias !4491

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4491
  %i.ax = load i64, ptr %i.aq, align 8, !noalias !4491, !noundef !16
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %i.aq, align 8, !noalias !4491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4492
  store ptr %.sroa.03.0.copyload.i.i.i, ptr %i.c, align 8, !noalias !4492
  %i.az = load i64, ptr %.sroa.03.0.copyload.i.i.i, align 8, !noalias !4493, !noundef !16 ; 3 uses
  %i.ba = and i64 %i.az, 72057594037927935
  %i.bb = add nsw i64 %i.ba, -1                   ; 3 uses
  %i.bc = and i64 %i.az, 1080863910568919040
  %i.bd = icmp ult i64 %i.az, 864691128455135232
  call void @llvm.assume(i1 %i.bd)
  %i.be = or i64 %i.bb, %i.bc
  store i64 %i.be, ptr %.sroa.03.0.copyload.i.i.i, align 8, !noalias !4493
  %i.bf = icmp ugt i64 %i.bb, 72057594037927935
  br i1 %i.bf, label %.noexc7, label %bb.q, !prof !22

bb.q:                                             ; preds = %bb.p
  %i.bg = icmp eq i64 %i.bb, 0
  br i1 %i.bg, label %bb.r, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i.i"

.noexc7:                                          ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4493
  store ptr @604, ptr %i.b, align 8, !noalias !4493
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bh, align 8, !noalias !4493
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bi, align 8, !noalias !4493
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bj, align 8, !noalias !4493
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bk, align 8, !noalias !4493
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
  unreachable

bb.r:                                             ; preds = %bb.q
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i.i.i.i": ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %.not.i = icmp eq i64 %i.x, 0
  br i1 %.not.i, label %._crit_edge, label %bb.b

bb.s:                                             ; preds = %bb.v, %bb.u
  %i.bl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.t:                                             ; preds = %bb.o
  unreachable

bb.u:                                             ; preds = %bb.v, %bb.m
  %.pn10.i.i = phi { ptr, i32 } [ %i.bm, %bb.v ], [ %i.at, %bb.m ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hd25c69aae239df07E"(ptr nonnull %.sroa.03.0.copyload.i.i.i) #46
          to label %.body.thread unwind label %bb.s

bb.v:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr52drop_in_place$LT$nickel_lang_core..eval..Closure$GT$17hfd322dfa2f3c7fc4E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #46
          to label %bb.u unwind label %bb.s

.body.thread:                                     ; preds = %bb.u, %bb.w
  %eh.lpad-body7 = phi { ptr, i32 } [ %.pn10.i.i, %bb.u ], [ %lpad.thr_comm.split-lp, %bb.w ]
  resume { ptr, i32 } %eh.lpad-body7

bb.w:                                             ; preds = %bb.h, %bb.f
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hd25c69aae239df07E"(ptr nonnull %.sroa.03.0.copyload.i.i.i) #46
          to label %.body.thread unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$13err_with_ctxt17h584354d9b2aa2af8E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(392) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [392 x i8], align 8               ; 4 uses
  %i.b = alloca [440 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.a, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4508)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !4508, !noalias !4509 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4508, !noalias !4509 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4508, !noalias !4509
  store i64 0, ptr %i.c, align 8, !alias.scope !4508, !noalias !4509
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !4508, !noalias !4509
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4508, !noalias !4509
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4508, !noalias !4509, !nonnull !16, !align !23, !noundef !16 ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 640
  %.val7.i = load ptr, ptr %i.f, align 8, !noalias !4510, !nonnull !16, !noundef !16
  %i.g = getelementptr i8, ptr %i.e, i64 648
  %.val8.i = load i64, ptr %i.g, align 8, !noalias !4510, !noundef !16 ; 5 uses
  %i.h = mul i64 %.val8.i, 12                     ; 4 uses
  %or.cond.i.i.i.i.i.i = icmp ugt i64 %.val8.i, 768614336404564650
  br i1 %or.cond.i.i.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.a
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !4511
  %i.j = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.h, i64 noundef range(i64 1, 9) 4) #44, !noalias !4511 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 4, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc.i unwind label %bb.d, !noalias !4510

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.m, label %.body, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = shl nuw i64 %.sroa.0.0.copyload.i, 5
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %i.n, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !4510
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef align 8 dereferenceable(392) %i.a) #46
          to label %common.resume unwind label %bb.j

bb.f:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.val8.i, %bb.b ] ; 2 uses
  %i.o = icmp samesign ule i64 %.val8.i, %.sroa.4.0.i.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 4 %.val7.i, i64 %i.h, i1 false), !noalias !4512
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 392
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.p, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 408
  store i64 %.val8.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i64 %.sroa.0.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  store i64 %.sroa.6.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.b, ptr noundef nonnull align 8 dereferenceable(392) %1, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !4513
  %i.q = tail call noundef align 8 dereferenceable_or_null(440) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 440, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !4513 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.g, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha02f05be7f70cde7E.exit", !prof !19

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 440) #45
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorData$GT$17h29bba18e2dd81edaE"(ptr noalias noundef nonnull align 8 dereferenceable(440) %i.b) #46
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

common.resume:                                    ; preds = %.body, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.h ], [ %i.l, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17ha02f05be7f70cde7E.exit": ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(440) %i.q, ptr noundef nonnull align 8 dereferenceable(440) %i.b, i64 440, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.q

bb.j:                                             ; preds = %.body
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval27VirtualMachine$LT$R$C$C$GT$17enter_cache_index17h2c70d1119b650a97E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %2, ptr noundef nonnull %3, i32 noundef %4, ptr noundef nonnull %5, ptr noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [392 x i8], align 8               ; 8 uses
  %i.h = alloca [56 x i8], align 8                ; 6 uses
  %i.i = alloca [392 x i8], align 8               ; 11 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  %i.k = alloca [24 x i8], align 16               ; 9 uses
  %i.l = alloca [20 x i8], align 4                ; 2 uses
  %i.m = alloca [392 x i8], align 8               ; 9 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 5 uses
  store ptr %3, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %5, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 5 uses
  store ptr %6, ptr %i.p, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4563)
  %i.q = load i64, ptr %5, align 8, !noalias !4564, !noundef !16
  %i.r = add i64 %i.q, -1                         ; 2 uses
  store i64 %i.r, ptr %5, align 8, !noalias !4564
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.b, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"

bb.b:                                             ; preds = %bb.a
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.n)
          to label %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i_crit_edge" unwind label %bb.c

"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i_crit_edge": ; preds = %bb.b
  %.pre = load ptr, ptr %i.p, align 8, !alias.scope !4565
  br label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"

bb.c:                                             ; preds = %bb.b
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4566)
  %i.u = load ptr, ptr %i.p, align 8, !alias.scope !4567, !noundef !16 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread59, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %i.u, align 8, !noalias !4568, !noundef !16
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !noalias !4568
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.e, label %.thread59

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %.thread59 unwind label %bb.h

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i": ; preds = %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i_crit_edge", %bb.a
  %i.z = phi ptr [ %.pre, %"._ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i_crit_edge" ], [ %6, %bb.a ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4569)
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"
  %i.ab = load i64, ptr %i.z, align 8, !noalias !4570, !noundef !16
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.z, align 8, !noalias !4570
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit"

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit" unwind label %.thread63

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

end_hunk_2
begin_hunk_3_@_ZN16nickel_lang_core4eval5subst17h354e9df9e305227aE:bb.a
bb.fo:                                            ; preds = %.thread367
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$nickel_lang_core..eval..value..lens..TermContent$GT$17h03b23cb7c0dc2f50E"(i64 %i.bn, ptr nonnull %.sroa.9.0.copyload) #46
          to label %.thread309 unwind label %bb.bk

bb.fp:                                            ; preds = %bb.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.az, ptr noundef nonnull align 8 dereferenceable(20) %i.qv, i64 20, i1 false)
  %i.qw = load ptr, ptr %i.ay, align 8, !noundef !16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not = icmp eq ptr %i.qw, null
  br i1 %.not, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17ha65a92dbab90bda5E.exit", label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qx = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h354e9df9e305227aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17ha65a92dbab90bda5E.exit" unwind label %.thread316, !inline_history !7449

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17ha65a92dbab90bda5E.exit": ; preds = %bb.fq, %bb.fp
  %.sroa.06.0 = phi ptr [ null, %bb.fp ], [ %i.qx, %bb.fq ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !7580
  %i.qy = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #44, !noalias !7580 ; 6 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.fs, label %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h83f08bf53251f2e0E.exit, !prof !22

bb.fr:                                            ; preds = %bb.fs
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h166821a95c5c2f52E"(ptr %.sroa.06.0) #46
          to label %.thread unwind label %bb.fu, !noalias !7580

bb.fs:                                            ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17ha65a92dbab90bda5E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7580
  store ptr @135, ptr %i.t, align 8, !noalias !7580
  %i.rb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.rb, align 8, !noalias !7580
  %i.rc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.rc, align 8, !noalias !7580
  %i.rd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.rd, align 8, !noalias !7580
  %i.re = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.re, align 8, !noalias !7580
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.ft unwind label %bb.fr, !noalias !7580

bb.ft:                                            ; preds = %bb.fs
  unreachable

bb.fu:                                            ; preds = %bb.fr
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !7580
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h83f08bf53251f2e0E.exit: ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17ha65a92dbab90bda5E.exit"
  store i64 504403158265495553, ptr %i.qy, align 8, !noalias !7580
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i32 %i.bm, ptr %i.rg, align 8, !noalias !7580
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %.sroa.06.0, ptr %i.rh, align 8, !noalias !7581
  %.sroa.5.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i100, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.az, i64 20, i1 false)
  br label %.thread398.thread

.thread398:                                       ; preds = %bb.er, %bb.ch
  %.val73 = phi ptr [ %.sroa.9.0.copyload, %bb.er ], [ %i.by, %bb.ch ]
  %.sroa.0.0 = phi ptr [ %i.nm, %bb.er ], [ %i.lq, %bb.ch ] ; 6 uses
  switch i64 %i.br, label %bb.fv [
    i64 3, label %.thread398.thread
    i64 4, label %.thread398.thread
    i64 6, label %.thread398.thread
    i64 7, label %.thread398.thread
    i64 9, label %.thread398.thread
  ]

bb.fv:                                            ; preds = %.thread398
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17h56c57fcd6cd71514E"(i64 %i.bn, ptr nonnull %.val73)
  br label %.thread398.thread

.thread309:                                       ; preds = %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %.thread367, %bb.fo, %bb.ce, %bb.cd, %.body114, %.thread316
  %.val71 = phi ptr [ %.sroa.9.0.copyload, %.thread367 ], [ %.val71471, %.thread316 ], [ %i.by, %bb.ce ], [ %.sroa.9.0.copyload, %.thread367 ], [ %i.by, %.body114 ], [ %i.by, %bb.cd ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %bb.fo ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ], [ %.sroa.9.0.copyload, %.thread367 ]
  %.pn61302 = phi { ptr, i32 } [ %.pn57, %.thread367 ], [ %lpad.thr_comm314, %.thread316 ], [ %eh.lpad-body115, %bb.ce ], [ %.pn57, %.thread367 ], [ %eh.lpad-body115, %.body114 ], [ %eh.lpad-body115, %bb.cd ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %bb.fo ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ], [ %.pn57, %.thread367 ] ; 6 uses
  switch i64 %i.br, label %bb.fw [
    i64 3, label %.thread
    i64 4, label %.thread
    i64 6, label %.thread
    i64 7, label %.thread
    i64 9, label %.thread
  ]

bb.fw:                                            ; preds = %.thread309
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17h56c57fcd6cd71514E"(i64 %i.bn, ptr %.val71) #46
          to label %.thread unwind label %bb.bk

.thread:                                          ; preds = %bb.cn, %bb.co, %bb.cp, %bb.fr, %.body, %bb.ck, %bb.fm, %bb.fn, %bb.fi, %bb.fj, %bb.eu, %.sink.split.i, %bb.dy, %bb.dz, %bb.fa, %bb.fc, %bb.em, %.thread309, %.thread309, %.thread309, %.thread309, %.thread309, %bb.fw, %bb.fx
  %.pn63292 = phi { ptr, i32 } [ %.pn61302, %bb.fw ], [ %lpad.thr_comm.split-lp, %bb.fx ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %lpad.thr_comm359372, %bb.dz ], [ %i.ra, %bb.fr ], [ %lpad.thr_comm379395, %bb.em ], [ %i.lz, %bb.cp ], [ %lpad.thr_comm.split-lp360, %bb.dy ], [ %i.lz, %bb.cn ], [ %lpad.thr_comm404, %bb.fc ], [ %lpad.thr_comm404, %bb.fa ], [ %i.lz, %bb.co ], [ %eh.lpad-body, %.body ], [ %i.qe, %bb.fi ], [ %i.lu, %bb.ck ], [ %i.pl, %.sink.split.i ], [ %i.pl, %bb.eu ], [ %i.qe, %bb.fj ], [ %i.qr, %bb.fn ], [ %i.qr, %bb.fm ]
  resume { ptr, i32 } %.pn63292

bb.fx:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl) #46
          to label %.thread unwind label %bb.bk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h5b7161e0b029939eE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !16, !align !28, !noundef !16
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !16, !align !23, !noundef !16
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !16, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !align !23, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.i = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h354e9df9e305227aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E"(ptr noalias noundef align 8 dereferenceable(16) %i.h) #46
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !7600)
  call void @llvm.experimental.noalias.scope.decl(metadata !7601)
  call void @llvm.experimental.noalias.scope.decl(metadata !7602)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !7603, !nonnull !16, !noundef !16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !7603, !noundef !16
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !7603
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7604)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !7605, !noundef !16 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !noalias !7606, !noundef !16
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !7606
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %common.resume unwind label %bb.j

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i": ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7607)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !7608, !noundef !16 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i"
  %i.y = load i64, ptr %i.w, align 8, !noalias !7609, !noundef !16
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.w, align 8, !noalias !7609
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit"

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i", %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

bb.k:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17ha4e5ddaf16af2d91E"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, i32 %.0.val, ptr noalias noundef nonnull align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  store i64 -9223372036854775760, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !7612
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44, !noalias !7612 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h78da3807b59cbf84E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #46
          to label %.body unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7612
  store ptr @135, ptr %i.a, align 8, !noalias !7612
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !7612
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !7612
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !7612
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !7612
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b, !noalias !7612

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

.body:                                            ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h438f1c3871c904deE"(ptr %1) #46
          to label %common.resume unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.d, align 8, !noalias !7612
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.0.val, ptr %i.l, align 8, !noalias !7612
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %1)
          to label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h438f1c3871c904deE.exit" unwind label %bb.g

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #44
  br label %common.resume

"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h438f1c3871c904deE.exit": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #44
  ret ptr %i.d

bb.h:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h83f08bf53251f2e0E(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !7615
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #44, !noalias !7615 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h166821a95c5c2f52E"(ptr %1) #46
          to label %.body unwind label %bb.e, !noalias !7615

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7615
  store ptr @135, ptr %i.a, align 8, !noalias !7615
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !7615
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !noalias !7615
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !noalias !7615
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8, !noalias !7615
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b, !noalias !7615

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !7615
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.b, align 8, !noalias !7615
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.j, align 8, !noalias !7615
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  ret ptr %i.b

.body:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17he039ec7baedc42a2E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [20 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h24ec8daf228dc89dE.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h24ec8daf228dc89dE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !7618
  %i.c = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #44, !noalias !7618 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h166821a95c5c2f52E"(ptr %2) #46
          to label %.body unwind label %bb.e, !noalias !7618

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h24ec8daf228dc89dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7618
  store ptr @135, ptr %i.a, align 8, !noalias !7618
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8, !noalias !7618
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8, !noalias !7618
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !noalias !7618
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8, !noalias !7618
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b, !noalias !7618

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !7618
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h24ec8daf228dc89dE.exit"
  store i64 504403158265495553, ptr %i.c, align 8, !noalias !7618
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %3, ptr %i.k, align 8, !noalias !7618
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %2, ptr %i.l, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret ptr %i.c

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.m, %bb.g ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body5

bb.g:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E"(ptr %2) #46
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(64) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h7f9409843ab94447E(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h9596b1f6952f3509E(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp samesign ult i64 %i.d, 72057594037927936
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(152) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17habf38f353f27055cE(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 432345564227567616
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hbe4b80caff348dbfE(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 360287970189639680
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(32) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hc27e59d6c11dcb16E(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 504403158265495552
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(24) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hcf76cd613ccce7acE(ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !21

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !16 ; 2 uses
  %i.e = icmp ult i64 %i.d, 864691128455135232
  tail call void @llvm.assume(i1 %i.e)
  %.mask = and i64 %i.d, 1080863910568919040
  %i.f = icmp eq i64 %.mask, 216172782113783808
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %spec.select = select i1 %i.f, ptr %i.g, ptr null
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.0.0 = phi ptr [ %spec.select, %bb.c ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h1a9083870e508763E(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #44 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #46
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 720575940379279361, ptr %i.c, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %0, ptr %i.k, align 8
  ret ptr %i.c

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h6d305308a49d3dfaE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h78da3807b59cbf84E"(ptr noalias noundef align 8 dereferenceable(56) %0) #46
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h8dbc0fad83530bedE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$nickel_lang_core..eval..cache..lazy..InnerThunkData$GT$17h796376a7b90b4e1cE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17h27b9b6d92c54cc19E.exit" unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 288230376151711745, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17h27b9b6d92c54cc19E.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h9fd828136792695aE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #44 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17hd4e0d2516a4f0431E"(ptr noalias noundef align 8 dereferenceable(56) %0) #46
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.j, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17had7744683e6b4240E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #44 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8, !range !40, !alias.scope !7627, !noundef !16 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !7628
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 216172782113783809, ptr %i.b, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  ret ptr %i.b

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h75a1faa0cf858480E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hb36b651cf0bbc653E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.b = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #44 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..value..ArrayData$GT$17h2c76592aa2eb5676E"(ptr noalias noundef align 8 dereferenceable(64) %0) #46
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 72057594037927937, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.j, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hc4129aa0e813ec7bE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.b = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef 8) #44 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17h1f41c9bd92b54091E"(ptr noalias noundef align 8 dereferenceable(152) %0) #46
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 432345564227567617, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.j, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hd006bd180f05e258E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0, i32 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.b = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef 8) #44 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordData$GT$17h57163aad94fcc3dcE"(ptr noalias noundef align 8 dereferenceable(88) %0) #46
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @135, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.a
  store i64 144115188075855873, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.j, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false)
  ret ptr %i.b

bb.f:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint11patch_field17h8ab1370c1655baa4E(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !16
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !7641 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %cond.i = icmp eq i64 %i.d, 6
  br i1 %cond.i, label %bb.c, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !7641, !nonnull !16, !noundef !16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !7642, !noundef !16
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !18

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.f, align 8, !noalias !7642
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i" unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #45, !noalias !7642
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.f, align 8, !noalias !7643, !noundef !16
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.f, align 8, !noalias !7643
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i": ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !noalias !7643, !noundef !16
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.f, align 8, !noalias !7643
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit

_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit: ; preds = %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i", %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !16, !noundef !16 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !16 ; 2 uses
  %.idx = mul nuw nsw i64 %i.r, 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit5
  %.sroa.01.02 = phi ptr [ %i.u, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit5 ], [ %i.p, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 160 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 152
  %i.w = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v), !noalias !7644 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %cond.i2 = icmp eq i64 %i.x, 6
  br i1 %cond.i2, label %bb.g, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit5

bb.g:                                             ; preds = %.lr.ph
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %.val.i3 = load ptr, ptr %i.y, align 8, !noalias !7644, !nonnull !16, !noundef !16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i3, i64 16 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !7645, !noundef !16
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !18

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.z, align 8, !noalias !7645
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i3, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4" unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #45, !noalias !7645
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i64, ptr %i.z, align 8, !noalias !7646, !noundef !16
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.z, align 8, !noalias !7646
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4": ; preds = %bb.h
  %i.ag = load i64, ptr %i.z, align 8, !noalias !7646, !noundef !16
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.z, align 8, !noalias !7646
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit5

_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit5: ; preds = %.lr.ph, %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4"
  %i.ai = icmp eq ptr %i.u, %i.s
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit5, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h7831c43cae0e1eb3E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint6revert17hb9f96122018174d3E(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.08.i.i.i.i.i.i = alloca [24 x i8], align 8 ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 13 uses
  %i.g = alloca [96 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [88 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %.sroa.0.sroa.0.0.copyload = load i64, ptr %2, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.sroa.4.0.copyload = load ptr, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.l = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.l, label %bb.b, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !16, !noundef !16
  %or.cond.i.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.m = shl i64 %.sroa.5.0.copyload, 3
  %i.n = and i64 %i.m, -16                        ; 2 uses
  %i.o = add i64 %i.n, 16                         ; 2 uses
  %i.p = add nsw i64 %.sroa.5.0.copyload, 17
  %i.q = add i64 %i.p, %i.o                       ; 3 uses
  %i.r = icmp uge i64 %i.q, %i.o
  tail call void @llvm.assume(i1 %i.r)
  %i.s = icmp ult i64 %i.q, 9223372036854775793
  tail call void @llvm.assume(i1 %i.s)
  %i.t = sub nuw nsw i64 -16, %i.n
end_hunk_3
begin_hunk_4_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op117hb837d2b9f4457279E":bb.a

._crit_edge3504:                                  ; preds = %bb.arf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  store ptr %i.cgr, ptr %0, align 8
  %.sroa.4468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cgs, ptr %.sroa.4468.0..sroa_idx, align 8
  %.sroa.5469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.5469.0..sroa_idx, align 8
  br label %.thread2778

bb.arh:                                           ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %.thread2778

bb.ari:                                           ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %.thread2778

bb.arj:                                           ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %.thread2778

bb.ark:                                           ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %.thread2778

bb.arl:                                           ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %.thread2778

bb.arm:                                           ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %.thread2778

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit1843": ; preds = %bb.ars, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i1837", %bb.art, %.thread2778, %bb.bw
  %.sroa.0516.22774 = phi i8 [ %.sroa.0516.2.ph2777, %.thread2778 ], [ %.sroa.0516.2, %bb.bw ], [ %.sroa.0516.22775, %bb.art ], [ %.sroa.0516.22775, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i1837" ], [ %.sroa.0516.22775, %bb.ars ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.pw)
  %i.cgw = trunc nuw i8 %.sroa.0516.22774 to i1
  br i1 %i.cgw, label %bb.arv, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1847"

bb.arn:                                           ; preds = %.thread2771, %bb.bw
  %.sroa.0516.22775 = phi i8 [ %.sroa.0516.2.ph, %.thread2771 ], [ %.sroa.0516.2, %bb.bw ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9415)
  call void @llvm.experimental.noalias.scope.decl(metadata !9416)
  call void @llvm.experimental.noalias.scope.decl(metadata !9417)
  %i.cgx = load ptr, ptr %i.pw, align 16, !alias.scope !9418, !nonnull !16, !noundef !16 ; 2 uses
  %i.cgy = load i64, ptr %i.cgx, align 8, !noalias !9418, !noundef !16
  %i.cgz = add i64 %i.cgy, -1                     ; 2 uses
  store i64 %i.cgz, ptr %i.cgx, align 8, !noalias !9418
  %i.cha = icmp eq i64 %i.cgz, 0
  br i1 %i.cha, label %bb.aro, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i1837"

bb.aro:                                           ; preds = %bb.arn
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.pw)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i1837" unwind label %bb.arp

bb.arp:                                           ; preds = %bb.aro
  %i.chb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9419)
  %i.chc = load ptr, ptr %i.qd, align 8, !alias.scope !9420, !noundef !16 ; 3 uses
  %i.chd = icmp eq ptr %i.chc, null
  br i1 %i.chd, label %.body1834, label %bb.arq

bb.arq:                                           ; preds = %bb.arp
  %i.che = load i64, ptr %i.chc, align 8, !noalias !9421, !noundef !16
  %i.chf = add i64 %i.che, -1                     ; 2 uses
  store i64 %i.chf, ptr %i.chc, align 8, !noalias !9421
  %i.chg = icmp eq i64 %i.chf, 0
  br i1 %i.chg, label %bb.arr, label %.body1834

bb.arr:                                           ; preds = %bb.arq
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qd)
          to label %.body1834 unwind label %bb.aru

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i1837": ; preds = %bb.aro, %bb.arn
  call void @llvm.experimental.noalias.scope.decl(metadata !9422)
  %i.chh = load ptr, ptr %i.qd, align 8, !alias.scope !9423, !noundef !16 ; 3 uses
  %i.chi = icmp eq ptr %i.chh, null
  br i1 %i.chi, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit1843", label %bb.ars

bb.ars:                                           ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i1837"
  %i.chj = load i64, ptr %i.chh, align 8, !noalias !9424, !noundef !16
  %i.chk = add i64 %i.chj, -1                     ; 2 uses
  store i64 %i.chk, ptr %i.chh, align 8, !noalias !9424
  %i.chl = icmp eq i64 %i.chk, 0
  br i1 %i.chl, label %bb.art, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit1843"

bb.art:                                           ; preds = %bb.ars
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qd)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit1843" unwind label %bb.aqx

bb.aru:                                           ; preds = %bb.arr
  %i.chm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.arv:                                           ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit1843"
  %i.chn = ptrtoint ptr %i.qb to i64
  %i.cho = and i64 %i.chn, 3
  %..i.i1845 = call i64 @llvm.umin.i64(i64 %i.cho, i64 2)
  switch i64 %..i.i1845, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1847" [
    i64 2, label %bb.arw
    i64 0, label %bb.arx
  ], !prof !21

bb.arw:                                           ; preds = %bb.arv
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45, !noalias !9425
  unreachable

bb.arx:                                           ; preds = %bb.arv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9425
  store ptr %i.qb, ptr %i.c, align 8, !noalias !9425
  %i.chp = load i64, ptr %i.qb, align 8, !noalias !9426, !noundef !16 ; 3 uses
  %i.chq = and i64 %i.chp, 72057594037927935
  %i.chr = add nsw i64 %i.chq, -1                 ; 3 uses
  %i.chs = and i64 %i.chp, 1080863910568919040
  %i.cht = icmp ult i64 %i.chp, 864691128455135232
  call void @llvm.assume(i1 %i.cht)
  %i.chu = or i64 %i.chr, %i.chs
  store i64 %i.chu, ptr %i.qb, align 8, !noalias !9426
  %i.chv = icmp ugt i64 %i.chr, 72057594037927935
  br i1 %i.chv, label %bb.arz, label %bb.ary, !prof !22

bb.ary:                                           ; preds = %bb.arx
  %i.chw = icmp eq i64 %i.chr, 0
  br i1 %i.chw, label %bb.asa, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1846"

bb.arz:                                           ; preds = %bb.arx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9426
  store ptr @604, ptr %i.b, align 8, !noalias !9426
  %i.chx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.chx, align 8, !noalias !9426
  %i.chy = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.chy, align 8, !noalias !9426
  %i.chz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.chz, align 8, !noalias !9426
  %i.cia = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cia, align 8, !noalias !9426
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45, !noalias !9426
  unreachable

bb.asa:                                           ; preds = %bb.ary
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !9425
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1846"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1846": ; preds = %bb.asa, %bb.ary
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9425
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1847"

bb.asb:                                           ; preds = %.invoke3496, %bb.ase, %bb.asd, %bb.asc, %.critedge969.thread
  br i1 %.sroa.0513.02330, label %bb.asf, label %bb.aqw

.critedge969.thread:                              ; preds = %bb.im, %bb.akh, %.thread2924.thread, %bb.bo, %bb.aqj, %bb.aqi, %bb.apz, %bb.apy, %bb.apd, %bb.aoo, %bb.aon, %bb.aoe, %bb.aod, %bb.anp, %bb.ano, %bb.anf, %bb.amq, %bb.amp, %bb.ame, %bb.amd, %bb.aly, %bb.alg, %bb.alf, %bb.aku, %bb.akt, %bb.ajt, %bb.ajs, %bb.ajp, %bb.ajo, %bb.ajq, %bb.ajl, %bb.aiv, %bb.ais, %.thread3207, %bb.ahp, %bb.aho, %bb.ahq, %.thread3183, %bb.adj, %bb.adi, %bb.acs, %bb.acr, %bb.acb, %bb.aca, %bb.abk, %bb.abj, %bb.aax, %bb.aaw, %bb.aaa, %bb.zz, %bb.zl, %bb.zk, %bb.yy, %bb.yx, %bb.yl, %bb.yk, %bb.xy, %bb.xx, %bb.xl, %bb.xk, %.thread3122, %bb.wo, %bb.wn, %bb.si, %.thread3045, %bb.rw, %bb.rv, %bb.pt, %bb.ps, %.thread2992, %bb.pe, %bb.pd, %.thread2985, %bb.op, %bb.oo, %.thread2978, %bb.oa, %bb.nz, %.thread2971, %bb.nl, %bb.nk, %bb.my, %bb.mx, %bb.jn, %.thread2866, %bb.ix, %bb.iw, %bb.hp, %bb.ho, %bb.fn, %bb.fm, %bb.fb, %bb.fa, %bb.el, %bb.ek, %bb.cb, %bb.ca, %.thread2924, %bb.fw, %.thread3261, %bb.anm, %bb.amb, %bb.ain, %bb.aja, %bb.aii, %.body1123, %.body1126, %.body1129, %bb.xh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit1707", %bb.tq, %bb.pq, %bb.pb, %bb.om, %bb.nx, %bb.arg, %bb.md, %bb.mo, %bb.ml, %bb.kl, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit", %bb.jc, %bb.hj, %bb.hf, %bb.eu, %.body1485, %.body1497, %bb.bx, %.critedge969.thread2752, %.critedge969.thread2743, %.critedge969.thread2735, %.critedge969.thread2727, %.critedge969.thread2719, %.critedge969.thread2711, %.critedge969.thread2703, %.critedge969.thread2695, %.critedge969.thread2687, %.critedge969.thread2679, %.critedge969.thread2671, %.critedge969.thread2663, %.critedge969.thread2655, %.critedge969.thread2647, %.critedge969.thread2639, %.critedge969.thread2631, %.critedge969.thread2623, %.critedge969.thread2615, %.critedge969.thread2607, %.critedge969.thread2599, %.critedge969.thread2591, %.critedge969.thread2583, %.critedge969.thread2575, %.critedge969.thread2567, %.critedge969.thread2559, %.critedge969.thread2551, %.critedge969.thread2543, %.critedge969.thread2535, %.critedge969.thread2527, %.critedge969.thread2519, %.critedge969.thread2511, %.critedge969.thread2503, %.critedge969.thread2495, %.critedge969.thread2487, %.critedge969.thread2479, %.critedge969.thread2471, %.critedge969.thread2463, %.critedge969.thread2455, %.critedge969.thread2447, %.critedge969.thread2439, %.critedge969.thread2431, %.critedge969.thread2423, %.critedge969.thread2415, %.critedge969.thread2407, %.critedge969.thread2399, %.critedge969.thread2391, %.critedge969.thread2383, %.critedge969.thread2375, %.critedge969.thread2367, %.critedge969.thread2359, %.critedge969.thread2351, %.critedge969.thread2343, %.critedge969.thread2335
  %.sroa.226.02334 = phi i32 [ %i.ul, %.critedge969.thread2743 ], [ %i.qk, %.critedge969.thread2752 ], [ %i.cfg, %.critedge969.thread2335 ], [ %i.cep, %.critedge969.thread2343 ], [ %i.cca, %.critedge969.thread2351 ], [ %i.cbd, %.critedge969.thread2359 ], [ %i.caj, %.critedge969.thread2367 ], [ %i.bzi, %.critedge969.thread2375 ], [ %i.byw, %.critedge969.thread2383 ], [ %i.byf, %.critedge969.thread2391 ], [ %i.bxi, %.critedge969.thread2399 ], [ %i.bwy, %.critedge969.thread2407 ], [ %i.bvw, %.critedge969.thread2415 ], [ %i.bva, %.critedge969.thread2423 ], [ %i.bto, %.critedge969.thread2431 ], [ %i.bpq, %.critedge969.thread2439 ], [ %i.bjy, %.critedge969.thread2447 ], [ %i.biu, %.critedge969.thread2455 ], [ %i.bhq, %.critedge969.thread2463 ], [ %i.bgm, %.critedge969.thread2471 ], [ %i.bfw, %.critedge969.thread2479 ], [ %i.bet, %.critedge969.thread2487 ], [ %i.bds, %.critedge969.thread2495 ], [ %i.bcy, %.critedge969.thread2503 ], [ %i.bce, %.critedge969.thread2511 ], [ %i.bbm, %.critedge969.thread2519 ], [ %i.bap, %.critedge969.thread2527 ], [ %i.azm, %.critedge969.thread2535 ], [ %i.ayt, %.critedge969.thread2543 ], [ %i.arv, %.critedge969.thread2551 ], [ %i.arl, %.critedge969.thread2559 ], [ %i.aqr, %.critedge969.thread2567 ], [ %i.aqa, %.critedge969.thread2575 ], [ %i.aom, %.critedge969.thread2583 ], [ %i.aoc, %.critedge969.thread2591 ], [ %i.anh, %.critedge969.thread2599 ], [ %i.amm, %.critedge969.thread2607 ], [ %i.alr, %.critedge969.thread2615 ], [ %i.akw, %.critedge969.thread2623 ], [ %i.akc, %.critedge969.thread2631 ], [ %i.agg, %.critedge969.thread2639 ], [ %i.aey, %.critedge969.thread2647 ], [ %i.aei, %.critedge969.thread2655 ], [ %i.adq, %.critedge969.thread2663 ], [ %i.act, %.critedge969.thread2671 ], [ %i.acj, %.critedge969.thread2679 ], [ %i.abt, %.critedge969.thread2687 ], [ %i.zd, %.critedge969.thread2695 ], [ %i.ym, %.critedge969.thread2703 ], [ %i.xy, %.critedge969.thread2711 ], [ %i.xl, %.critedge969.thread2719 ], [ %i.wv, %.critedge969.thread2727 ], [ %i.vu, %.critedge969.thread2735 ], [ %.sroa.226.24, %bb.ajl ], [ %.sroa.226.6, %bb.jn ], [ %.sroa.226.7, %.thread2924 ], [ %.sroa.226.10, %bb.si ], [ %.sroa.226.3, %bb.fw ], [ %.sroa.226.26, %bb.apd ], [ %.sroa.226.263268, %.thread3261 ], [ %i.cat, %bb.aoe ], [ %i.bzz, %bb.anp ], [ %i.bym, %bb.amq ], [ %i.bzm, %bb.anf ], [ %i.bzw, %bb.anm ], [ %i.bxv, %bb.ame ], [ %i.bwo, %bb.alg ], [ %i.bxm, %bb.aly ], [ %i.bxs, %bb.amb ], [ %i.bvm, %bb.aku ], [ %i.bte, %bb.ajt ], [ %.sroa.226.25, %bb.akh ], [ %.sroa.226.243231, %bb.ajp ], [ %.sroa.226.21, %bb.aho ], [ %.sroa.226.21, %bb.ahq ], [ %i.bre, %bb.ain ], [ %i.brp, %bb.ais ], [ %.sroa.226.21, %bb.ahp ], [ %i.bru, %bb.aiv ], [ %i.bsc, %bb.aja ], [ %.sroa.226.223210, %.thread3207 ], [ %.sroa.226.22, %bb.aii ], [ %.sroa.226.213186, %.thread3183 ], [ %i.bjl, %bb.adj ], [ %.sroa.226.20, %.body1123 ], [ %.sroa.226.18, %.body1126 ], [ %.sroa.226.17, %.body1129 ], [ %i.bih, %bb.acs ], [ %i.bhd, %bb.acb ], [ %i.bgc, %bb.abk ], [ %i.bfm, %bb.aax ], [ %i.bej, %bb.aaa ], [ %i.bdi, %bb.zl ], [ %i.bco, %bb.yy ], [ %i.bbu, %bb.yl ], [ %i.bbc, %bb.xy ], [ %i.baf, %bb.xl ], [ %i.ayj, %bb.wo ], [ %i.azs, %.thread3122 ], [ %i.bab, %bb.xh ], [ %i.arb, %bb.rw ], [ %.sroa.226.113085, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit1707" ], [ %.sroa.226.73305, %.thread2924.thread ], [ %.sroa.226.103049, %.thread3045 ], [ %.sroa.226.103043, %bb.tq ], [ %i.ans, %bb.pt ], [ %i.amx, %bb.pe ], [ %i.anl, %.thread2992 ], [ %i.anp, %bb.pq ], [ %i.amc, %bb.op ], [ %i.amq, %.thread2985 ], [ %i.amu, %bb.pb ], [ %i.alh, %bb.oa ], [ %i.alv, %.thread2978 ], [ %i.alz, %bb.om ], [ %i.akm, %bb.nl ], [ %i.ala, %.thread2971 ], [ %i.ale, %bb.nx ], [ %i.ajs, %bb.my ], [ %i.adu, %bb.iw ], [ %i.cgv, %bb.arg ], [ %i.air, %bb.md ], [ %i.adu, %bb.ix ], [ %.sroa.226.72915, %bb.mo ], [ %i.cef, %bb.apz ], [ %i.ajg, %bb.ml ], [ %.sroa.226.62870, %.thread2866 ], [ %.sroa.226.62864, %bb.kl ], [ %i.yt, %bb.fm ], [ %i.aby, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit" ], [ %i.abj, %bb.hp ], [ %.sroa.226.5, %bb.im ], [ %i.ael, %bb.jc ], [ %i.yt, %bb.fn ], [ %.sroa.226.32809, %bb.hj ], [ %i.cbq, %bb.aoo ], [ %i.aaz, %bb.hf ], [ %i.yc, %bb.fb ], [ %i.xb, %bb.el ], [ %i.xr, %bb.eu ], [ %i.ub, %bb.cb ], [ %.sroa.226.2, %.body1485 ], [ %.sroa.226.1, %.body1497 ], [ %i.tx, %bb.bx ], [ %i.tt, %bb.bo ], [ %i.ub, %bb.ca ], [ %i.xb, %bb.ek ], [ %i.yc, %bb.fa ], [ %i.abj, %bb.ho ], [ %i.ajs, %bb.mx ], [ %i.akm, %bb.nk ], [ %i.alh, %bb.nz ], [ %i.amc, %bb.oo ], [ %i.amx, %bb.pd ], [ %i.ans, %bb.ps ], [ %i.arb, %bb.rv ], [ %i.ayj, %bb.wn ], [ %i.baf, %bb.xk ], [ %i.bbc, %bb.xx ], [ %i.bbu, %bb.yk ], [ %i.bco, %bb.yx ], [ %i.bdi, %bb.zk ], [ %i.bej, %bb.zz ], [ %i.bfm, %bb.aaw ], [ %i.bgc, %bb.abj ], [ %i.bhd, %bb.aca ], [ %i.bih, %bb.acr ], [ %i.bjl, %bb.adi ], [ %.sroa.226.243231, %bb.ajq ], [ %.sroa.226.243231, %bb.ajo ], [ %i.bte, %bb.ajs ], [ %i.bvm, %bb.akt ], [ %i.bwo, %bb.alf ], [ %i.bxv, %bb.amd ], [ %i.bym, %bb.amp ], [ %i.bzz, %bb.ano ], [ %i.cat, %bb.aod ], [ %i.cbq, %bb.aon ], [ %i.cef, %bb.apy ], [ %i.cew, %bb.aqi ], [ %i.cew, %bb.aqj ] ; 2 uses
  %.sroa.0782.02332 = phi ptr [ %i.uk, %.critedge969.thread2743 ], [ %i.qj, %.critedge969.thread2752 ], [ %i.cff, %.critedge969.thread2335 ], [ %i.ceo, %.critedge969.thread2343 ], [ %i.cbz, %.critedge969.thread2351 ], [ %i.cbc, %.critedge969.thread2359 ], [ %i.cai, %.critedge969.thread2367 ], [ %i.bzh, %.critedge969.thread2375 ], [ %i.byv, %.critedge969.thread2383 ], [ %i.bye, %.critedge969.thread2391 ], [ %i.bxh, %.critedge969.thread2399 ], [ %i.bwx, %.critedge969.thread2407 ], [ %i.bvv, %.critedge969.thread2415 ], [ %i.buz, %.critedge969.thread2423 ], [ %i.btn, %.critedge969.thread2431 ], [ %i.bpp, %.critedge969.thread2439 ], [ %i.bjx, %.critedge969.thread2447 ], [ %i.bit, %.critedge969.thread2455 ], [ %i.bhp, %.critedge969.thread2463 ], [ %i.bgl, %.critedge969.thread2471 ], [ %i.bfv, %.critedge969.thread2479 ], [ %i.bes, %.critedge969.thread2487 ], [ %i.bdr, %.critedge969.thread2495 ], [ %i.bcx, %.critedge969.thread2503 ], [ %i.bcd, %.critedge969.thread2511 ], [ %i.bbl, %.critedge969.thread2519 ], [ %i.bao, %.critedge969.thread2527 ], [ %i.azl, %.critedge969.thread2535 ], [ %i.ays, %.critedge969.thread2543 ], [ %i.aru, %.critedge969.thread2551 ], [ %i.ark, %.critedge969.thread2559 ], [ %i.aqq, %.critedge969.thread2567 ], [ %i.apz, %.critedge969.thread2575 ], [ %i.aol, %.critedge969.thread2583 ], [ %i.aob, %.critedge969.thread2591 ], [ %i.ang, %.critedge969.thread2599 ], [ %i.aml, %.critedge969.thread2607 ], [ %i.alq, %.critedge969.thread2615 ], [ %i.akv, %.critedge969.thread2623 ], [ %i.akb, %.critedge969.thread2631 ], [ %i.agf, %.critedge969.thread2639 ], [ %i.aex, %.critedge969.thread2647 ], [ %i.aeh, %.critedge969.thread2655 ], [ %i.adp, %.critedge969.thread2663 ], [ %i.acs, %.critedge969.thread2671 ], [ %i.aci, %.critedge969.thread2679 ], [ %i.abs, %.critedge969.thread2687 ], [ %i.zc, %.critedge969.thread2695 ], [ %i.yl, %.critedge969.thread2703 ], [ %i.xx, %.critedge969.thread2711 ], [ %i.xk, %.critedge969.thread2719 ], [ %i.wu, %.critedge969.thread2727 ], [ %i.vt, %.critedge969.thread2735 ], [ %.sroa.0782.24, %bb.ajl ], [ %.sroa.0782.6, %bb.jn ], [ %.sroa.0782.7, %.thread2924 ], [ %.sroa.0782.10, %bb.si ], [ %.sroa.0782.3, %bb.fw ], [ %.sroa.0782.26, %bb.apd ], [ %.sroa.0782.263269, %.thread3261 ], [ %i.cas, %bb.aoe ], [ %i.bzy, %bb.anp ], [ %i.byl, %bb.amq ], [ %i.bzl, %bb.anf ], [ %i.bzv, %bb.anm ], [ %i.bxu, %bb.ame ], [ %i.bwn, %bb.alg ], [ %i.bxl, %bb.aly ], [ %i.bxr, %bb.amb ], [ %i.bvl, %bb.aku ], [ %i.btd, %bb.ajt ], [ %.sroa.0782.25, %bb.akh ], [ %.sroa.0782.243232, %bb.ajp ], [ %.sroa.0782.21, %bb.aho ], [ %.sroa.0782.21, %bb.ahq ], [ %i.brd, %bb.ain ], [ %i.bro, %bb.ais ], [ %.sroa.0782.21, %bb.ahp ], [ %i.brt, %bb.aiv ], [ %i.bsb, %bb.aja ], [ %.sroa.0782.223211, %.thread3207 ], [ %.sroa.0782.22, %bb.aii ], [ %.sroa.0782.213187, %.thread3183 ], [ %i.bjk, %bb.adj ], [ %.sroa.0782.20, %.body1123 ], [ %.sroa.0782.18, %.body1126 ], [ %.sroa.0782.17, %.body1129 ], [ %i.big, %bb.acs ], [ %i.bhc, %bb.acb ], [ %i.bgb, %bb.abk ], [ %i.bfl, %bb.aax ], [ %i.bei, %bb.aaa ], [ %i.bdh, %bb.zl ], [ %i.bcn, %bb.yy ], [ %i.bbt, %bb.yl ], [ %i.bbb, %bb.xy ], [ %i.bae, %bb.xl ], [ %i.ayi, %bb.wo ], [ %i.azr, %.thread3122 ], [ %i.baa, %bb.xh ], [ %i.ara, %bb.rw ], [ %.sroa.0782.113087, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit1707" ], [ %.sroa.0782.73306, %.thread2924.thread ], [ %.sroa.0782.103050, %.thread3045 ], [ %.sroa.0782.103044, %bb.tq ], [ %i.anr, %bb.pt ], [ %i.amw, %bb.pe ], [ %i.ank, %.thread2992 ], [ %i.ano, %bb.pq ], [ %i.amb, %bb.op ], [ %i.amp, %.thread2985 ], [ %i.amt, %bb.pb ], [ %i.alg, %bb.oa ], [ %i.alu, %.thread2978 ], [ %i.aly, %bb.om ], [ %i.akl, %bb.nl ], [ %i.akz, %.thread2971 ], [ %i.ald, %bb.nx ], [ %i.ajr, %bb.my ], [ %i.adt, %bb.iw ], [ %i.cgu, %bb.arg ], [ %i.ais, %bb.md ], [ %i.adt, %bb.ix ], [ %.sroa.0782.72916, %bb.mo ], [ %i.cee, %bb.apz ], [ %i.ajh, %bb.ml ], [ %.sroa.0782.62871, %.thread2866 ], [ %.sroa.0782.62865, %bb.kl ], [ %i.ys, %bb.fm ], [ %i.abx, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit" ], [ %i.abi, %bb.hp ], [ %.sroa.0782.5, %bb.im ], [ %i.aek, %bb.jc ], [ %i.ys, %bb.fn ], [ %.sroa.0782.32810, %bb.hj ], [ %i.cbp, %bb.aoo ], [ %i.aba, %bb.hf ], [ %i.yb, %bb.fb ], [ %i.xa, %bb.el ], [ %i.xq, %bb.eu ], [ %i.ua, %bb.cb ], [ %.sroa.0782.2, %.body1485 ], [ %.sroa.0782.1, %.body1497 ], [ %i.tw, %bb.bx ], [ %i.ts, %bb.bo ], [ %i.ua, %bb.ca ], [ %i.xa, %bb.ek ], [ %i.yb, %bb.fa ], [ %i.abi, %bb.ho ], [ %i.ajr, %bb.mx ], [ %i.akl, %bb.nk ], [ %i.alg, %bb.nz ], [ %i.amb, %bb.oo ], [ %i.amw, %bb.pd ], [ %i.anr, %bb.ps ], [ %i.ara, %bb.rv ], [ %i.ayi, %bb.wn ], [ %i.bae, %bb.xk ], [ %i.bbb, %bb.xx ], [ %i.bbt, %bb.yk ], [ %i.bcn, %bb.yx ], [ %i.bdh, %bb.zk ], [ %i.bei, %bb.zz ], [ %i.bfl, %bb.aaw ], [ %i.bgb, %bb.abj ], [ %i.bhc, %bb.aca ], [ %i.big, %bb.acr ], [ %i.bjk, %bb.adi ], [ %.sroa.0782.243232, %bb.ajq ], [ %.sroa.0782.243232, %bb.ajo ], [ %i.btd, %bb.ajs ], [ %i.bvl, %bb.akt ], [ %i.bwn, %bb.alf ], [ %i.bxu, %bb.amd ], [ %i.byl, %bb.amp ], [ %i.bzy, %bb.ano ], [ %i.cas, %bb.aod ], [ %i.cbp, %bb.aon ], [ %i.cee, %bb.apy ], [ %i.cev, %bb.aqi ], [ %i.cev, %bb.aqj ] ; 2 uses
  %.sroa.0513.02330 = phi i1 [ true, %.critedge969.thread2743 ], [ %.sroa.0513.1.ph, %.critedge969.thread2752 ], [ true, %.critedge969.thread2335 ], [ true, %.critedge969.thread2343 ], [ true, %.critedge969.thread2351 ], [ true, %.critedge969.thread2359 ], [ true, %.critedge969.thread2367 ], [ true, %.critedge969.thread2375 ], [ true, %.critedge969.thread2383 ], [ true, %.critedge969.thread2391 ], [ true, %.critedge969.thread2399 ], [ true, %.critedge969.thread2407 ], [ true, %.critedge969.thread2415 ], [ true, %.critedge969.thread2423 ], [ true, %.critedge969.thread2431 ], [ true, %.critedge969.thread2439 ], [ true, %.critedge969.thread2447 ], [ true, %.critedge969.thread2455 ], [ true, %.critedge969.thread2463 ], [ true, %.critedge969.thread2471 ], [ true, %.critedge969.thread2479 ], [ true, %.critedge969.thread2487 ], [ true, %.critedge969.thread2495 ], [ true, %.critedge969.thread2503 ], [ true, %.critedge969.thread2511 ], [ true, %.critedge969.thread2519 ], [ true, %.critedge969.thread2527 ], [ true, %.critedge969.thread2535 ], [ true, %.critedge969.thread2543 ], [ true, %.critedge969.thread2551 ], [ true, %.critedge969.thread2559 ], [ true, %.critedge969.thread2567 ], [ true, %.critedge969.thread2575 ], [ true, %.critedge969.thread2583 ], [ true, %.critedge969.thread2591 ], [ true, %.critedge969.thread2599 ], [ true, %.critedge969.thread2607 ], [ true, %.critedge969.thread2615 ], [ true, %.critedge969.thread2623 ], [ true, %.critedge969.thread2631 ], [ true, %.critedge969.thread2639 ], [ true, %.critedge969.thread2647 ], [ true, %.critedge969.thread2655 ], [ true, %.critedge969.thread2663 ], [ true, %.critedge969.thread2671 ], [ true, %.critedge969.thread2679 ], [ true, %.critedge969.thread2687 ], [ true, %.critedge969.thread2695 ], [ true, %.critedge969.thread2703 ], [ true, %.critedge969.thread2711 ], [ true, %.critedge969.thread2719 ], [ true, %.critedge969.thread2727 ], [ true, %.critedge969.thread2735 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2924 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3261 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3207 ], [ true, %bb.aii ], [ true, %.thread3183 ], [ true, %bb.adj ], [ true, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3122 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit1707" ], [ true, %.thread2924.thread ], [ true, %.thread3045 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2992 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2985 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2978 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2971 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ false, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2866 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0516.02328 = phi i8 [ 0, %.critedge969.thread2743 ], [ %.sroa.0516.1.ph, %.critedge969.thread2752 ], [ 0, %.critedge969.thread2335 ], [ 0, %.critedge969.thread2343 ], [ 0, %.critedge969.thread2351 ], [ 0, %.critedge969.thread2359 ], [ 0, %.critedge969.thread2367 ], [ 1, %.critedge969.thread2375 ], [ 0, %.critedge969.thread2383 ], [ 0, %.critedge969.thread2391 ], [ 1, %.critedge969.thread2399 ], [ 0, %.critedge969.thread2407 ], [ 0, %.critedge969.thread2415 ], [ 1, %.critedge969.thread2423 ], [ 0, %.critedge969.thread2431 ], [ 1, %.critedge969.thread2439 ], [ 0, %.critedge969.thread2447 ], [ 0, %.critedge969.thread2455 ], [ 0, %.critedge969.thread2463 ], [ 0, %.critedge969.thread2471 ], [ 0, %.critedge969.thread2479 ], [ 0, %.critedge969.thread2487 ], [ 0, %.critedge969.thread2495 ], [ 0, %.critedge969.thread2503 ], [ 0, %.critedge969.thread2511 ], [ 0, %.critedge969.thread2519 ], [ 0, %.critedge969.thread2527 ], [ 1, %.critedge969.thread2535 ], [ 0, %.critedge969.thread2543 ], [ 1, %.critedge969.thread2551 ], [ 0, %.critedge969.thread2559 ], [ 1, %.critedge969.thread2567 ], [ 1, %.critedge969.thread2575 ], [ 1, %.critedge969.thread2583 ], [ 0, %.critedge969.thread2591 ], [ 0, %.critedge969.thread2599 ], [ 0, %.critedge969.thread2607 ], [ 0, %.critedge969.thread2615 ], [ 0, %.critedge969.thread2623 ], [ 0, %.critedge969.thread2631 ], [ 1, %.critedge969.thread2639 ], [ 1, %.critedge969.thread2647 ], [ 1, %.critedge969.thread2655 ], [ 1, %.critedge969.thread2663 ], [ 1, %.critedge969.thread2671 ], [ 1, %.critedge969.thread2679 ], [ 0, %.critedge969.thread2687 ], [ 0, %.critedge969.thread2695 ], [ 0, %.critedge969.thread2703 ], [ 1, %.critedge969.thread2711 ], [ 0, %.critedge969.thread2719 ], [ 1, %.critedge969.thread2727 ], [ 1, %.critedge969.thread2735 ], [ 1, %bb.ajl ], [ 1, %bb.jn ], [ 1, %.thread2924 ], [ 1, %bb.si ], [ 1, %bb.fw ], [ 1, %bb.apd ], [ %.sroa.0516.423267, %.thread3261 ], [ 1, %bb.aoe ], [ 1, %bb.anp ], [ 1, %bb.amq ], [ 1, %bb.anf ], [ 1, %bb.anm ], [ 1, %bb.ame ], [ 1, %bb.alg ], [ 1, %bb.aly ], [ 1, %bb.amb ], [ 1, %bb.aku ], [ 1, %bb.ajt ], [ 1, %bb.akh ], [ 1, %bb.ajp ], [ 1, %bb.aho ], [ 1, %bb.ahq ], [ 1, %bb.ain ], [ 1, %bb.ais ], [ 1, %bb.ahp ], [ 1, %bb.aiv ], [ 1, %bb.aja ], [ 1, %.thread3207 ], [ 1, %bb.aii ], [ 1, %.thread3183 ], [ 1, %bb.adj ], [ %.sroa.0516.35, %.body1123 ], [ %.sroa.0516.32, %.body1126 ], [ %.sroa.0516.29, %.body1129 ], [ 1, %bb.acs ], [ 1, %bb.acb ], [ 1, %bb.abk ], [ 1, %bb.aax ], [ 1, %bb.aaa ], [ 1, %bb.zl ], [ 1, %bb.yy ], [ 1, %bb.yl ], [ 1, %bb.xy ], [ 1, %bb.xl ], [ 1, %bb.wo ], [ 1, %.thread3122 ], [ 1, %bb.xh ], [ 1, %bb.rw ], [ %.sroa.0516.263083, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit1707" ], [ 1, %.thread2924.thread ], [ 1, %.thread3045 ], [ %.sroa.0516.233042, %bb.tq ], [ 1, %bb.pt ], [ 1, %bb.pe ], [ 1, %.thread2992 ], [ 1, %bb.pq ], [ 1, %bb.op ], [ 1, %.thread2985 ], [ 1, %bb.pb ], [ 1, %bb.oa ], [ 1, %.thread2978 ], [ 1, %bb.om ], [ 1, %bb.nl ], [ 1, %.thread2971 ], [ 1, %bb.nx ], [ 1, %bb.my ], [ 1, %bb.iw ], [ 0, %bb.arg ], [ 0, %bb.md ], [ 1, %bb.ix ], [ %.sroa.0516.192913, %bb.mo ], [ 1, %bb.apz ], [ %.sroa.0516.222963, %bb.ml ], [ 1, %.thread2866 ], [ %.sroa.0516.162863, %bb.kl ], [ 1, %bb.fm ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit" ], [ 1, %bb.hp ], [ 1, %bb.im ], [ 1, %bb.jc ], [ 1, %bb.fn ], [ %.sroa.0516.112807, %bb.hj ], [ 1, %bb.aoo ], [ %.sroa.0516.14.ph, %bb.hf ], [ 1, %bb.fb ], [ 1, %bb.el ], [ 1, %bb.eu ], [ 1, %bb.cb ], [ %.sroa.0516.6, %.body1485 ], [ %.sroa.0516.3, %.body1497 ], [ 1, %bb.bx ], [ 1, %bb.bo ], [ 1, %bb.ca ], [ 1, %bb.ek ], [ 1, %bb.fa ], [ 1, %bb.ho ], [ 1, %bb.mx ], [ 1, %bb.nk ], [ 1, %bb.nz ], [ 1, %bb.oo ], [ 1, %bb.pd ], [ 1, %bb.ps ], [ 1, %bb.rv ], [ 1, %bb.wn ], [ 1, %bb.xk ], [ 1, %bb.xx ], [ 1, %bb.yk ], [ 1, %bb.yx ], [ 1, %bb.zk ], [ 1, %bb.zz ], [ 1, %bb.aaw ], [ 1, %bb.abj ], [ 1, %bb.aca ], [ 1, %bb.acr ], [ 1, %bb.adi ], [ 1, %bb.ajq ], [ 1, %bb.ajo ], [ 1, %bb.ajs ], [ 1, %bb.akt ], [ 1, %bb.alf ], [ 1, %bb.amd ], [ 1, %bb.amp ], [ 1, %bb.ano ], [ 1, %bb.aod ], [ 1, %bb.aon ], [ 1, %bb.apy ], [ 1, %bb.aqi ], [ 1, %bb.aqj ] ; 2 uses
  %.sroa.0552.02326 = phi i1 [ true, %.critedge969.thread2743 ], [ %.sroa.0552.1.ph, %.critedge969.thread2752 ], [ true, %.critedge969.thread2335 ], [ true, %.critedge969.thread2343 ], [ true, %.critedge969.thread2351 ], [ true, %.critedge969.thread2359 ], [ true, %.critedge969.thread2367 ], [ true, %.critedge969.thread2375 ], [ true, %.critedge969.thread2383 ], [ true, %.critedge969.thread2391 ], [ true, %.critedge969.thread2399 ], [ true, %.critedge969.thread2407 ], [ true, %.critedge969.thread2415 ], [ true, %.critedge969.thread2423 ], [ true, %.critedge969.thread2431 ], [ true, %.critedge969.thread2439 ], [ true, %.critedge969.thread2447 ], [ true, %.critedge969.thread2455 ], [ true, %.critedge969.thread2463 ], [ true, %.critedge969.thread2471 ], [ true, %.critedge969.thread2479 ], [ true, %.critedge969.thread2487 ], [ true, %.critedge969.thread2495 ], [ true, %.critedge969.thread2503 ], [ true, %.critedge969.thread2511 ], [ true, %.critedge969.thread2519 ], [ true, %.critedge969.thread2527 ], [ true, %.critedge969.thread2535 ], [ true, %.critedge969.thread2543 ], [ true, %.critedge969.thread2551 ], [ true, %.critedge969.thread2559 ], [ true, %.critedge969.thread2567 ], [ true, %.critedge969.thread2575 ], [ true, %.critedge969.thread2583 ], [ true, %.critedge969.thread2591 ], [ true, %.critedge969.thread2599 ], [ true, %.critedge969.thread2607 ], [ true, %.critedge969.thread2615 ], [ true, %.critedge969.thread2623 ], [ true, %.critedge969.thread2631 ], [ true, %.critedge969.thread2639 ], [ true, %.critedge969.thread2647 ], [ true, %.critedge969.thread2655 ], [ true, %.critedge969.thread2663 ], [ true, %.critedge969.thread2671 ], [ true, %.critedge969.thread2679 ], [ true, %.critedge969.thread2687 ], [ true, %.critedge969.thread2695 ], [ true, %.critedge969.thread2703 ], [ true, %.critedge969.thread2711 ], [ true, %.critedge969.thread2719 ], [ true, %.critedge969.thread2727 ], [ true, %.critedge969.thread2735 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2924 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3261 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3207 ], [ true, %bb.aii ], [ true, %.thread3183 ], [ true, %bb.adj ], [ true, %.body1123 ], [ true, %.body1126 ], [ false, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3122 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit1707" ], [ true, %.thread2924.thread ], [ true, %.thread3045 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2992 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2985 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2978 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2971 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2866 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0553.02325 = phi i1 [ true, %.critedge969.thread2743 ], [ %.sroa.0553.1.ph, %.critedge969.thread2752 ], [ true, %.critedge969.thread2335 ], [ true, %.critedge969.thread2343 ], [ true, %.critedge969.thread2351 ], [ true, %.critedge969.thread2359 ], [ true, %.critedge969.thread2367 ], [ true, %.critedge969.thread2375 ], [ true, %.critedge969.thread2383 ], [ true, %.critedge969.thread2391 ], [ true, %.critedge969.thread2399 ], [ true, %.critedge969.thread2407 ], [ true, %.critedge969.thread2415 ], [ true, %.critedge969.thread2423 ], [ true, %.critedge969.thread2431 ], [ true, %.critedge969.thread2439 ], [ true, %.critedge969.thread2447 ], [ true, %.critedge969.thread2455 ], [ true, %.critedge969.thread2463 ], [ true, %.critedge969.thread2471 ], [ true, %.critedge969.thread2479 ], [ true, %.critedge969.thread2487 ], [ true, %.critedge969.thread2495 ], [ true, %.critedge969.thread2503 ], [ true, %.critedge969.thread2511 ], [ true, %.critedge969.thread2519 ], [ true, %.critedge969.thread2527 ], [ true, %.critedge969.thread2535 ], [ true, %.critedge969.thread2543 ], [ true, %.critedge969.thread2551 ], [ true, %.critedge969.thread2559 ], [ true, %.critedge969.thread2567 ], [ true, %.critedge969.thread2575 ], [ true, %.critedge969.thread2583 ], [ true, %.critedge969.thread2591 ], [ true, %.critedge969.thread2599 ], [ true, %.critedge969.thread2607 ], [ true, %.critedge969.thread2615 ], [ true, %.critedge969.thread2623 ], [ true, %.critedge969.thread2631 ], [ true, %.critedge969.thread2639 ], [ true, %.critedge969.thread2647 ], [ true, %.critedge969.thread2655 ], [ true, %.critedge969.thread2663 ], [ true, %.critedge969.thread2671 ], [ true, %.critedge969.thread2679 ], [ true, %.critedge969.thread2687 ], [ true, %.critedge969.thread2695 ], [ true, %.critedge969.thread2703 ], [ true, %.critedge969.thread2711 ], [ true, %.critedge969.thread2719 ], [ true, %.critedge969.thread2727 ], [ true, %.critedge969.thread2735 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2924 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3261 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3207 ], [ true, %bb.aii ], [ true, %.thread3183 ], [ true, %bb.adj ], [ true, %.body1123 ], [ false, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3122 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit1707" ], [ true, %.thread2924.thread ], [ true, %.thread3045 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2992 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2985 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2978 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2971 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2866 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0554.02324 = phi i1 [ true, %.critedge969.thread2743 ], [ %.sroa.0554.1.ph, %.critedge969.thread2752 ], [ true, %.critedge969.thread2335 ], [ true, %.critedge969.thread2343 ], [ true, %.critedge969.thread2351 ], [ true, %.critedge969.thread2359 ], [ true, %.critedge969.thread2367 ], [ true, %.critedge969.thread2375 ], [ true, %.critedge969.thread2383 ], [ true, %.critedge969.thread2391 ], [ true, %.critedge969.thread2399 ], [ true, %.critedge969.thread2407 ], [ true, %.critedge969.thread2415 ], [ true, %.critedge969.thread2423 ], [ true, %.critedge969.thread2431 ], [ true, %.critedge969.thread2439 ], [ true, %.critedge969.thread2447 ], [ true, %.critedge969.thread2455 ], [ true, %.critedge969.thread2463 ], [ true, %.critedge969.thread2471 ], [ true, %.critedge969.thread2479 ], [ true, %.critedge969.thread2487 ], [ true, %.critedge969.thread2495 ], [ true, %.critedge969.thread2503 ], [ true, %.critedge969.thread2511 ], [ true, %.critedge969.thread2519 ], [ true, %.critedge969.thread2527 ], [ true, %.critedge969.thread2535 ], [ true, %.critedge969.thread2543 ], [ true, %.critedge969.thread2551 ], [ true, %.critedge969.thread2559 ], [ true, %.critedge969.thread2567 ], [ true, %.critedge969.thread2575 ], [ true, %.critedge969.thread2583 ], [ true, %.critedge969.thread2591 ], [ true, %.critedge969.thread2599 ], [ true, %.critedge969.thread2607 ], [ true, %.critedge969.thread2615 ], [ true, %.critedge969.thread2623 ], [ true, %.critedge969.thread2631 ], [ true, %.critedge969.thread2639 ], [ true, %.critedge969.thread2647 ], [ true, %.critedge969.thread2655 ], [ true, %.critedge969.thread2663 ], [ true, %.critedge969.thread2671 ], [ true, %.critedge969.thread2679 ], [ true, %.critedge969.thread2687 ], [ true, %.critedge969.thread2695 ], [ true, %.critedge969.thread2703 ], [ true, %.critedge969.thread2711 ], [ true, %.critedge969.thread2719 ], [ true, %.critedge969.thread2727 ], [ true, %.critedge969.thread2735 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2924 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3261 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3207 ], [ true, %bb.aii ], [ true, %.thread3183 ], [ true, %bb.adj ], [ false, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3122 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit1707" ], [ true, %.thread2924.thread ], [ true, %.thread3045 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2992 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2985 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2978 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2971 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2866 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %i.cib = load i8, ptr %i.pv, align 8, !range !52, !noundef !16
  switch i8 %i.cib, label %bb.asb [
    i8 36, label %bb.asc
    i8 37, label %bb.asd
    i8 38, label %bb.ase
  ]

bb.asc:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0552.02326, label %.invoke3496, label %bb.asb

bb.asd:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0553.02325, label %.invoke3496, label %bb.asb

bb.ase:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0554.02324, label %.invoke3496, label %bb.asb

.invoke3496:                                      ; preds = %bb.ase, %bb.asd, %bb.asc
  %i.cic = getelementptr inbounds nuw i8, ptr %i.pv, i64 8
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h53b8d4e804571518E"(ptr noalias noundef align 8 dereferenceable(32) %i.cic) #46
          to label %bb.asb unwind label %bb.by

bb.asf:                                           ; preds = %bb.asb
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E"(ptr noalias noundef align 8 dereferenceable(16) %i.pw) #46
          to label %bb.aqw unwind label %bb.by

bb.asg:                                           ; preds = %.thread3325, %bb.ash, %bb.aqw
  %.sroa.226.273330 = phi i32 [ %i.qm, %.thread3325 ], [ %.sroa.226.27, %bb.ash ], [ %.sroa.226.27, %bb.aqw ]
  %.sroa.0782.273329 = phi ptr [ %i.ql, %.thread3325 ], [ %.sroa.0782.27, %bb.ash ], [ %.sroa.0782.27, %bb.aqw ]
  %i.cid = insertvalue { ptr, i32 } poison, ptr %.sroa.0782.273329, 0
  %i.cie = insertvalue { ptr, i32 } %i.cid, i32 %.sroa.226.273330, 1
  resume { ptr, i32 } %i.cie

bb.ash:                                           ; preds = %bb.aqw
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.px) #46
          to label %bb.asg unwind label %bb.by
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h052beb678b3542a0E"(ptr %.8.val, i64 %.16.val, i32 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  store ptr %.8.val, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.16.val, ptr %i.f, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2b056abe50bdec6cE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9435
  store ptr @208, ptr %i.a, align 8, !noalias !9436
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !9436
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !9436
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !9436
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9436
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !9437
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.h, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9438
  %i.i = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !9438 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h18f9c58fbcc13899E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9456
  store i64 0, ptr %i.c, align 8, !noalias !9456
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9456
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9456
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9456
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !9456
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !9456
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !9456
  store ptr %i.c, ptr %i.b, align 8, !noalias !9456
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @455, ptr %i.f, align 8, !noalias !9456
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !9457

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9458)
  call void @llvm.experimental.noalias.scope.decl(metadata !9459)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !40, !alias.scope !9460, !noalias !9456, !noundef !16 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !9460, !noalias !9456, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9461
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !9457

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !33, !noundef !16 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9462
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9456
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9463
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !9463 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !19

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !16 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9464
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h3671be4e27a4e03cE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [392 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %0, align 8, !nonnull !16, !align !23, !noundef !16
  call void @"_ZN16nickel_lang_core4eval5value63Container$LT$$RF$nickel_lang_core..term..record..RecordData$GT$11field_names17h703dc6207979630eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !align !23, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 20, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9473
  %i.i = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #44, !noalias !9473 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9473
  store ptr @135, ptr %i.a, align 8, !noalias !9473
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !9473
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.l, align 8, !noalias !9473
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !9473
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.n, align 8, !noalias !9473
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.c unwind label %.body.i, !noalias !9473

bb.c:                                             ; preds = %bb.b
  unreachable

.body.i:                                          ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.p, %bb.d ], [ %i.o, %.body.i ] ; 2 uses
  %.val = load i64, ptr %i.c, align 8             ; 2 uses
  %i.q = icmp eq i64 %.val, 0
  br i1 %i.q, label %common.resume, label %bb.e

bb.e:                                             ; preds = %.body
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1 = load ptr, ptr %i.r, align 8, !nonnull !16, !noundef !16
  %i.s = mul nuw i64 %.val, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #44
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.i, align 8, !noalias !9473
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -1, ptr %i.t, align 8, !noalias !9473
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.u, align 8, !noalias !9474
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !16, !align !34, !noundef !16
  %i.x = load i32, ptr %i.w, align 4, !noundef !16
  %i.y = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.i, i32 noundef %i.x)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !16, !align !34, !noundef !16
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.ab, ptr %i.ae, align 8
  store i64 36, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9475
  %i.af = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !9475 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %eh.lpad-body, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.af, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h5122d0e29d85b9ddE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 %.0.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = tail call { ptr, i64 } @_ZN16nickel_lang_core4eval5value11NickelValue7type_of17hc677b7a5c04dea94E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2b056abe50bdec6cE", ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9484
  store ptr @212, ptr %i.a, align 8, !noalias !9485
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !9485
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !9485
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !9485
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9485
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !9486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.k, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9487
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !9487 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #46
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.l

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @209) #45
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17ha9e06bf17ad528a1E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9505
  store i64 0, ptr %i.c, align 8, !noalias !9505
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9505
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9505
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9505
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !9505
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !9505
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !9505
  store ptr %i.c, ptr %i.b, align 8, !noalias !9505
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @455, ptr %i.f, align 8, !noalias !9505
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !9506

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9507)
  call void @llvm.experimental.noalias.scope.decl(metadata !9508)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !40, !alias.scope !9509, !noalias !9505, !noundef !16 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !9509, !noalias !9505, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9510
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !9506

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !33, !noundef !16 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9511
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9505
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9505
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9512
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !9512 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !19

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !16 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9513
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hae42b9fed4f065e3E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9531
  store i64 0, ptr %i.c, align 8, !noalias !9531
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9531
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9531
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9531
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !9531
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !9531
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !9531
  store ptr %i.c, ptr %i.b, align 8, !noalias !9531
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @455, ptr %i.f, align 8, !noalias !9531
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !9532

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9533)
  call void @llvm.experimental.noalias.scope.decl(metadata !9534)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !40, !alias.scope !9535, !noalias !9531, !noundef !16 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !9535, !noalias !9531, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9536
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !9532

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !33, !noundef !16 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9537
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9531
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !9538
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !9538 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !19

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !16 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !9539
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hb6d65e4d2fc21adbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr %.24.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  %.not = icmp eq ptr %.24.val, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.24.val to i64
  %i.f = and i64 %i.e, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !21

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %.24.val, align 8, !noundef !16 ; 3 uses
  %i.h = and i64 %i.g, 72057594037927935          ; 3 uses
  %i.i = icmp ne i64 %i.h, 0
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  %i.k = and i64 %i.g, 1080863910568919040
  %i.l = icmp ult i64 %i.g, 864691128455135232
  tail call void @llvm.assume(i1 %i.l)
  %i.m = or i64 %i.j, %i.k
  store i64 %i.m, ptr %.24.val, align 8
  %i.n = icmp eq i64 %i.h, 72057594037927935
  br i1 %i.n, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !22

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @604, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.r, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @215, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #45
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr239drop_in_place$LT$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$17h53fd21aec0a0a584E"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #46
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.d, %bb.b
  store ptr %.24.val, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.u, align 8
  ret void

bb.i:                                             ; preds = %bb.g
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.j:                                             ; preds = %bb.g
end_hunk_4
begin_hunk_5_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op217hefa738f7631a8bfcE":bb.a
.noexc3332:                                       ; preds = %bb.csd
  unreachable

bb.cse:                                           ; preds = %bb.csc
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i3330" unwind label %bb.cql

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i3330": ; preds = %bb.cse, %bb.csc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13410
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit3334"

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit3343": ; preds = %bb.csk, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i3335", %bb.csl, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit3334"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.abv)
  %i.hyi = trunc nuw i8 %.sroa.0627.340444807 to i1
  br i1 %i.hyi, label %bb.csn, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit3350"

bb.csf:                                           ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit3334"
  call void @llvm.experimental.noalias.scope.decl(metadata !13412)
  call void @llvm.experimental.noalias.scope.decl(metadata !13413)
  call void @llvm.experimental.noalias.scope.decl(metadata !13414)
  %i.hyj = load ptr, ptr %i.abv, align 16, !alias.scope !13415, !nonnull !16, !noundef !16 ; 2 uses
  %i.hyk = load i64, ptr %i.hyj, align 8, !noalias !13415, !noundef !16
  %i.hyl = add i64 %i.hyk, -1                     ; 2 uses
  store i64 %i.hyl, ptr %i.hyj, align 8, !noalias !13415
  %i.hym = icmp eq i64 %i.hyl, 0
  br i1 %i.hym, label %bb.csg, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i3335"

bb.csg:                                           ; preds = %bb.csf
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.abv)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i3335" unwind label %bb.csh

bb.csh:                                           ; preds = %bb.csg
  %i.hyn = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13416)
  %i.hyo = load ptr, ptr %i.acb, align 8, !alias.scope !13417, !noundef !16 ; 3 uses
  %i.hyp = icmp eq ptr %i.hyo, null
  br i1 %i.hyp, label %.body3301, label %bb.csi

bb.csi:                                           ; preds = %bb.csh
  %i.hyq = load i64, ptr %i.hyo, align 8, !noalias !13418, !noundef !16
  %i.hyr = add i64 %i.hyq, -1                     ; 2 uses
  store i64 %i.hyr, ptr %i.hyo, align 8, !noalias !13418
  %i.hys = icmp eq i64 %i.hyr, 0
  br i1 %i.hys, label %bb.csj, label %.body3301

bb.csj:                                           ; preds = %bb.csi
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acb)
          to label %.body3301 unwind label %bb.csm

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i3335": ; preds = %bb.csg, %bb.csf
  call void @llvm.experimental.noalias.scope.decl(metadata !13419)
  %i.hyt = load ptr, ptr %i.acb, align 8, !alias.scope !13420, !noundef !16 ; 3 uses
  %i.hyu = icmp eq ptr %i.hyt, null
  br i1 %i.hyu, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit3343", label %bb.csk

bb.csk:                                           ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h92be9b797ea16ba4E.exit.i3335"
  %i.hyv = load i64, ptr %i.hyt, align 8, !noalias !13421, !noundef !16
  %i.hyw = add i64 %i.hyv, -1                     ; 2 uses
  store i64 %i.hyw, ptr %i.hyt, align 8, !noalias !13421
  %i.hyx = icmp eq i64 %i.hyw, 0
  br i1 %i.hyx, label %bb.csl, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit3343"

bb.csl:                                           ; preds = %bb.csk
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.acb)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit3343" unwind label %bb.cqv

bb.csm:                                           ; preds = %bb.csj
  %i.hyy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.csn:                                           ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E.exit3343"
  call void @llvm.experimental.noalias.scope.decl(metadata !13422)
  %.val.i3344 = load ptr, ptr %i.abw, align 8, !alias.scope !13422, !nonnull !16, !noundef !16 ; 4 uses
  %i.hyz = ptrtoint ptr %.val.i3344 to i64
  %i.hza = and i64 %i.hyz, 3
  %..i.i3345 = call i64 @llvm.umin.i64(i64 %i.hza, i64 2)
  switch i64 %..i.i3345, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit3350" [
    i64 2, label %bb.cso
    i64 0, label %bb.csp
  ], !prof !21

bb.cso:                                           ; preds = %bb.csn
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc3347 unwind label %.split

.noexc3347:                                       ; preds = %bb.cso
  unreachable

bb.csp:                                           ; preds = %bb.csn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13422
  store ptr %.val.i3344, ptr %i.c, align 8, !noalias !13422
  %i.hzb = load i64, ptr %.val.i3344, align 8, !noalias !13423, !noundef !16 ; 3 uses
  %i.hzc = and i64 %i.hzb, 72057594037927935
  %i.hzd = add nsw i64 %i.hzc, -1                 ; 3 uses
  %i.hze = and i64 %i.hzb, 1080863910568919040
  %i.hzf = icmp ult i64 %i.hzb, 864691128455135232
  call void @llvm.assume(i1 %i.hzf)
  %i.hzg = or i64 %i.hzd, %i.hze
  store i64 %i.hzg, ptr %.val.i3344, align 8, !noalias !13423
  %i.hzh = icmp ugt i64 %i.hzd, 72057594037927935
  br i1 %i.hzh, label %bb.csr, label %bb.csq, !prof !22

bb.csq:                                           ; preds = %bb.csp
  %i.hzi = icmp eq i64 %i.hzd, 0
  br i1 %i.hzi, label %bb.css, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i3346"

bb.csr:                                           ; preds = %bb.csp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13423
  store ptr @604, ptr %i.b, align 8, !noalias !13423
  %i.hzj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.hzj, align 8, !noalias !13423
  %i.hzk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.hzk, align 8, !noalias !13423
  %i.hzl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.hzl, align 8, !noalias !13423
  %i.hzm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.hzm, align 8, !noalias !13423
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc3348 unwind label %.split

.noexc3348:                                       ; preds = %bb.csr
  unreachable

bb.css:                                           ; preds = %bb.csq
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i3346" unwind label %.split

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i3346": ; preds = %bb.css, %bb.csq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13422
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit3350"

.critedge1247.thread:                             ; preds = %.split5303, %.critedge1247.thread5288, %.critedge1247.thread5273, %bb.bma, %bb.bsn, %.thread4411, %.thread4402, %.thread4552, %bb.brh, %.thread4818, %bb.crm, %bb.crl, %bb.crf, %bb.cre, %bb.cph, %bb.cpg, %bb.cpa, %bb.coz, %bb.cna, %bb.cmz, %bb.cmt, %bb.cms, %.thread4685, %bb.cif, %bb.cie, %bb.chy, %bb.chx, %bb.chp, %bb.chd, %bb.chc, %bb.cgd, %bb.cgc, %bb.cbh, %bb.cbg, %bb.byy, %bb.byx, %bb.bxq, %bb.bxp, %bb.bxj, %bb.bxi, %bb.bvz, %bb.bvy, %bb.bvs, %bb.bvr, %bb.bvm, %bb.bvl, %bb.bvn, %bb.bvb, %.thread4602, %bb.buw, %bb.buv, %bb.bux, %.thread4598, %bb.btw, %bb.btv, %bb.btp, %bb.bto, %bb.btk, %bb.btj, %bb.btl, %bb.bsy, %bb.bru, %bb.brt, %bb.brn, %bb.brm, %bb.bpc, %bb.bpb, %bb.bov, %bb.bou, %bb.bof, %bb.boe, %bb.bny, %bb.bnx, %bb.bnf, %bb.bne, %bb.bmy, %bb.bmx, %bb.bmk, %bb.bmj, %bb.blc, %bb.blb, %bb.bfv, %bb.bfu, %bb.bfo, %bb.bfn, %bb.bff, %bb.bev, %bb.beu, %bb.bbt, %bb.bbs, %bb.bbq, %.noexc2981, %bb.ayw, %bb.bbl, %bb.bbk, %bb.axd, %bb.axc, %bb.aww, %bb.awv, %bb.awi, %bb.awh, %bb.awb, %bb.awa, %bb.ave, %bb.avd, %bb.aux, %bb.auw, %bb.atz, %bb.aty, %bb.ats, %bb.atr, %bb.asz, %bb.asy, %bb.ass, %bb.asr, %bb.aru, %bb.art, %bb.arn, %bb.arm, %bb.cnf, %bb.cng, %.body1358, %bb.clm, %bb.ckb, %bb.chv, %bb.bzf, %bb.bpo, %bb.brj, %bb.brk, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit3044", %bb.bmp, %bb.bfl, %.body1735, %bb.bel
  %.sroa.288.03983 = phi i32 [ %.sroa.288.05296, %.critedge1247.thread5288 ], [ %.sroa.288.8, %bb.bbl ], [ %i.hrp, %bb.cph ], [ %i.hqy, %bb.cpa ], [ %i.hnn, %bb.cna ], [ %i.hof, %bb.cnf ], [ %i.hok, %bb.cng ], [ %.sroa.288.42, %.body1358 ], [ %i.hmw, %bb.cmt ], [ %i.hfp, %bb.cif ], [ %.sroa.288.41, %bb.clm ], [ %.sroa.288.38, %.thread4685 ], [ %.sroa.288.384712, %bb.ckb ], [ %i.hey, %bb.chy ], [ %i.hdu, %bb.chd ], [ %i.hep, %bb.chp ], [ %i.hev, %bb.chv ], [ %i.hbp, %bb.cgd ], [ %i.gpr, %bb.cbh ], [ %i.gkq, %bb.byy ], [ %.sroa.288.35, %bb.bzf ], [ %i.ghp, %bb.bxq ], [ %i.ggy, %bb.bxj ], [ %i.gej, %bb.bvz ], [ %i.gds, %bb.bvs ], [ %.sroa.288.344614, %bb.bvm ], [ %i.gca, %.thread4598 ], [ %i.gab, %bb.btw ], [ %.sroa.288.34, %bb.bvb ], [ %.sroa.288.344605, %.thread4602 ], [ %i.fzk, %bb.btp ], [ %.sroa.288.334567, %bb.btk ], [ %.sroa.288.33, %bb.bsy ], [ %i.fwa, %bb.bru ], [ %.sroa.288.32, %bb.bsn ], [ %i.fvj, %bb.brn ], [ %.sroa.288.34823, %.thread4818 ], [ %.sroa.288.23, %bb.bpo ], [ %.sroa.288.2444914549, %bb.brj ], [ %.sroa.288.2444914549, %bb.brk ], [ %i.fqu, %bb.bov ], [ %i.fpu, %bb.bof ], [ %i.fpd, %bb.bny ], [ %i.fny, %bb.bnf ], [ %i.fnk, %bb.bmy ], [ %i.fmb, %bb.bmk ], [ %i.fmx, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit3044" ], [ %i.fka, %bb.blc ], [ %.sroa.288.22, %bb.bma ], [ %i.fmr, %bb.bmp ], [ %i.fbr, %bb.bfv ], [ %i.fba, %bb.bfo ], [ %i.fac, %bb.bev ], [ %i.fau, %bb.bff ], [ %i.fax, %bb.bfl ], [ %i.ewd, %bb.bbt ], [ %.sroa.288.9, %.body1735 ], [ %.sroa.288.94253, %bb.bel ], [ %.sroa.288.34156, %bb.bbq ], [ %.sroa.288.3, %bb.ayw ], [ %.sroa.288.8, %bb.bbk ], [ %i.emm, %bb.axd ], [ %i.emm, %bb.axc ], [ %i.hvw, %bb.crf ], [ %i.elv, %bb.aww ], [ %i.ela, %bb.awi ], [ %i.ekj, %bb.awb ], [ %i.eiw, %bb.ave ], [ %i.eif, %bb.aux ], [ %i.egd, %bb.atz ], [ %.sroa.288.244556, %.thread4552 ], [ %i.efm, %bb.ats ], [ %i.eee, %bb.asz ], [ %i.edn, %bb.ass ], [ %i.ecn, %bb.aru ], [ %.sroa.288.174415, %.thread4411 ], [ %i.ebw, %bb.arn ], [ %.sroa.288.174409, %.thread4402 ], [ %i.ebw, %bb.arm ], [ %i.ecn, %bb.art ], [ %i.edn, %bb.asr ], [ %i.eee, %bb.asy ], [ %i.efm, %bb.atr ], [ %i.egd, %bb.aty ], [ %i.eif, %bb.auw ], [ %i.eiw, %bb.avd ], [ %i.ekj, %bb.awa ], [ %i.ela, %bb.awh ], [ %i.elv, %bb.awv ], [ %.sroa.288.34156, %.noexc2981 ], [ %i.ewd, %bb.bbs ], [ %i.fac, %bb.beu ], [ %i.fba, %bb.bfn ], [ %i.fbr, %bb.bfu ], [ %i.fka, %bb.blb ], [ %i.fmb, %bb.bmj ], [ %i.fnk, %bb.bmx ], [ %i.fny, %bb.bne ], [ %i.fpd, %bb.bnx ], [ %i.fpu, %bb.boe ], [ %i.fqu, %bb.bou ], [ %i.frl, %bb.bpb ], [ %i.frl, %bb.bpc ], [ %i.fvj, %bb.brm ], [ %i.fwa, %bb.brt ], [ %.sroa.288.334567, %bb.btl ], [ %.sroa.288.334567, %bb.btj ], [ %i.fzk, %bb.bto ], [ %i.gab, %bb.btv ], [ %i.gcf, %bb.bux ], [ %i.gcf, %bb.buv ], [ %i.gcf, %bb.buw ], [ %.sroa.288.344614, %bb.bvn ], [ %.sroa.288.344614, %bb.bvl ], [ %i.gds, %bb.bvr ], [ %i.gej, %bb.bvy ], [ %i.ggy, %bb.bxi ], [ %i.ghp, %bb.bxp ], [ %i.gkq, %bb.byx ], [ %i.gpr, %bb.cbg ], [ %i.hbp, %bb.cgc ], [ %i.hdu, %bb.chc ], [ %i.hey, %bb.chx ], [ %i.hfp, %bb.cie ], [ %i.hmw, %bb.cms ], [ %i.hnn, %bb.cmz ], [ %i.hqy, %bb.coz ], [ %i.hrp, %bb.cpg ], [ %i.hvw, %bb.cre ], [ %i.hwn, %bb.crl ], [ %i.hwn, %bb.crm ], [ %.sroa.288.24, %bb.brh ], [ %.sroa.288.05281, %.critedge1247.thread5273 ], [ %.sroa.288.95304, %.split5303 ]
  %.sroa.0922.03982 = phi ptr [ %.sroa.0922.05297, %.critedge1247.thread5288 ], [ %.sroa.0922.8, %bb.bbl ], [ %i.hro, %bb.cph ], [ %i.hqx, %bb.cpa ], [ %i.hnm, %bb.cna ], [ %i.hoe, %bb.cnf ], [ %i.hoj, %bb.cng ], [ %.sroa.0922.42, %.body1358 ], [ %i.hmv, %bb.cmt ], [ %i.hfo, %bb.cif ], [ %.sroa.0922.41, %bb.clm ], [ %.sroa.0922.38, %.thread4685 ], [ %.sroa.0922.384713, %bb.ckb ], [ %i.hex, %bb.chy ], [ %i.hdt, %bb.chd ], [ %i.heo, %bb.chp ], [ %i.heu, %bb.chv ], [ %i.hbo, %bb.cgd ], [ %i.gpq, %bb.cbh ], [ %i.gkp, %bb.byy ], [ %.sroa.0922.35, %bb.bzf ], [ %i.gho, %bb.bxq ], [ %i.ggx, %bb.bxj ], [ %i.gei, %bb.bvz ], [ %i.gdr, %bb.bvs ], [ %.sroa.0922.344615, %bb.bvm ], [ %i.gbz, %.thread4598 ], [ %i.gaa, %bb.btw ], [ %.sroa.0922.34, %bb.bvb ], [ %.sroa.0922.344606, %.thread4602 ], [ %i.fzj, %bb.btp ], [ %.sroa.0922.334568, %bb.btk ], [ %.sroa.0922.33, %bb.bsy ], [ %i.fvz, %bb.bru ], [ %.sroa.0922.32, %bb.bsn ], [ %i.fvi, %bb.brn ], [ %.sroa.0922.34824, %.thread4818 ], [ %.sroa.0922.23, %bb.bpo ], [ %.sroa.0922.2444934547, %bb.brj ], [ %.sroa.0922.2444934547, %bb.brk ], [ %i.fqt, %bb.bov ], [ %i.fpt, %bb.bof ], [ %i.fpc, %bb.bny ], [ %i.fnx, %bb.bnf ], [ %i.fnj, %bb.bmy ], [ %i.fma, %bb.bmk ], [ %i.fmw, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit3044" ], [ %i.fjz, %bb.blc ], [ %.sroa.0922.22, %bb.bma ], [ %i.fmq, %bb.bmp ], [ %i.fbq, %bb.bfv ], [ %i.faz, %bb.bfo ], [ %i.fab, %bb.bev ], [ %i.fat, %bb.bff ], [ %i.faw, %bb.bfl ], [ %i.ewc, %bb.bbt ], [ %.sroa.0922.9, %.body1735 ], [ %.sroa.0922.94254, %bb.bel ], [ %.sroa.0922.34158, %bb.bbq ], [ %.sroa.0922.3, %bb.ayw ], [ %.sroa.0922.8, %bb.bbk ], [ %i.eml, %bb.axd ], [ %i.eml, %bb.axc ], [ %i.hvv, %bb.crf ], [ %i.elu, %bb.aww ], [ %i.ekz, %bb.awi ], [ %i.eki, %bb.awb ], [ %i.eiv, %bb.ave ], [ %i.eie, %bb.aux ], [ %i.egc, %bb.atz ], [ %.sroa.0922.244557, %.thread4552 ], [ %i.efl, %bb.ats ], [ %i.eed, %bb.asz ], [ %i.edm, %bb.ass ], [ %i.ecm, %bb.aru ], [ %.sroa.0922.174416, %.thread4411 ], [ %i.ebv, %bb.arn ], [ %.sroa.0922.174410, %.thread4402 ], [ %i.ebv, %bb.arm ], [ %i.ecm, %bb.art ], [ %i.edm, %bb.asr ], [ %i.eed, %bb.asy ], [ %i.efl, %bb.atr ], [ %i.egc, %bb.aty ], [ %i.eie, %bb.auw ], [ %i.eiv, %bb.avd ], [ %i.eki, %bb.awa ], [ %i.ekz, %bb.awh ], [ %i.elu, %bb.awv ], [ %.sroa.0922.34158, %.noexc2981 ], [ %i.ewc, %bb.bbs ], [ %i.fab, %bb.beu ], [ %i.faz, %bb.bfn ], [ %i.fbq, %bb.bfu ], [ %i.fjz, %bb.blb ], [ %i.fma, %bb.bmj ], [ %i.fnj, %bb.bmx ], [ %i.fnx, %bb.bne ], [ %i.fpc, %bb.bnx ], [ %i.fpt, %bb.boe ], [ %i.fqt, %bb.bou ], [ %i.frk, %bb.bpb ], [ %i.frk, %bb.bpc ], [ %i.fvi, %bb.brm ], [ %i.fvz, %bb.brt ], [ %.sroa.0922.334568, %bb.btl ], [ %.sroa.0922.334568, %bb.btj ], [ %i.fzj, %bb.bto ], [ %i.gaa, %bb.btv ], [ %i.gce, %bb.bux ], [ %i.gce, %bb.buv ], [ %i.gce, %bb.buw ], [ %.sroa.0922.344615, %bb.bvn ], [ %.sroa.0922.344615, %bb.bvl ], [ %i.gdr, %bb.bvr ], [ %i.gei, %bb.bvy ], [ %i.ggx, %bb.bxi ], [ %i.gho, %bb.bxp ], [ %i.gkp, %bb.byx ], [ %i.gpq, %bb.cbg ], [ %i.hbo, %bb.cgc ], [ %i.hdt, %bb.chc ], [ %i.hex, %bb.chx ], [ %i.hfo, %bb.cie ], [ %i.hmv, %bb.cms ], [ %i.hnm, %bb.cmz ], [ %i.hqx, %bb.coz ], [ %i.hro, %bb.cpg ], [ %i.hvv, %bb.cre ], [ %i.hwm, %bb.crl ], [ %i.hwm, %bb.crm ], [ %.sroa.0922.24, %bb.brh ], [ %.sroa.0922.05282, %.critedge1247.thread5273 ], [ %.sroa.0922.95305, %.split5303 ]
  %.sroa.0621.03981 = phi i8 [ %.sroa.0621.1.ph, %.critedge1247.thread5288 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ %.sroa.0621.27, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ %.sroa.0621.24, %bb.clm ], [ 1, %.thread4685 ], [ %.sroa.0621.21.ph, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 0, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4598 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4602 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ 1, %.thread4818 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit3044" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ %.sroa.0621.44252, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4552 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 0, %.thread4411 ], [ 1, %bb.arn ], [ 0, %.thread4402 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2981 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0621.0.ph, %.critedge1247.thread5273 ], [ 1, %.split5303 ]
  %.sroa.0624.03980 = phi i8 [ 1, %.critedge1247.thread5288 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ 1, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ 1, %bb.clm ], [ 1, %.thread4685 ], [ 1, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4598 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4602 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ %.sroa.0624.54830, %.thread4818 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit3044" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ 1, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4552 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4411 ], [ 1, %bb.arn ], [ 1, %.thread4402 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2981 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ 1, %.critedge1247.thread5273 ], [ 1, %.split5303 ]
  %.sroa.0627.03979 = phi i8 [ %.sroa.0627.1.ph, %.critedge1247.thread5288 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ %.sroa.0627.23, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ %.sroa.0627.20, %bb.clm ], [ 1, %.thread4685 ], [ %.sroa.0627.17.ph, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4598 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4602 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ %.sroa.0627.54829, %.thread4818 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit3044" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 0, %.body1735 ], [ 0, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4552 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4411 ], [ 1, %bb.arn ], [ 1, %.thread4402 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2981 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0627.0.ph5271, %.critedge1247.thread5273 ], [ 0, %.split5303 ]
  %.sroa.0674.03977 = phi i8 [ %.sroa.0674.1.ph, %.critedge1247.thread5288 ], [ 1, %bb.bbl ], [ 1, %bb.cph ], [ 1, %bb.cpa ], [ 1, %bb.cna ], [ 1, %bb.cnf ], [ 1, %bb.cng ], [ 1, %.body1358 ], [ 1, %bb.cmt ], [ 1, %bb.cif ], [ 1, %bb.clm ], [ 1, %.thread4685 ], [ 1, %bb.ckb ], [ 1, %bb.chy ], [ 1, %bb.chd ], [ 1, %bb.chp ], [ 1, %bb.chv ], [ 1, %bb.cgd ], [ 1, %bb.cbh ], [ 1, %bb.byy ], [ 1, %bb.bzf ], [ 1, %bb.bxq ], [ 1, %bb.bxj ], [ 1, %bb.bvz ], [ 1, %bb.bvs ], [ 1, %bb.bvm ], [ 1, %.thread4598 ], [ 1, %bb.btw ], [ 1, %bb.bvb ], [ 1, %.thread4602 ], [ 1, %bb.btp ], [ 1, %bb.btk ], [ 1, %bb.bsy ], [ 1, %bb.bru ], [ 1, %bb.bsn ], [ 1, %bb.brn ], [ 1, %.thread4818 ], [ 1, %bb.bpo ], [ 1, %bb.brj ], [ 1, %bb.brk ], [ 1, %bb.bov ], [ 1, %bb.bof ], [ 1, %bb.bny ], [ 1, %bb.bnf ], [ 1, %bb.bmy ], [ 1, %bb.bmk ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17h13fa0e6d350761a8E.exit3044" ], [ 1, %bb.blc ], [ 1, %bb.bma ], [ 1, %bb.bmp ], [ 1, %bb.bfv ], [ 1, %bb.bfo ], [ 1, %bb.bev ], [ 1, %bb.bff ], [ 1, %bb.bfl ], [ 1, %bb.bbt ], [ 1, %.body1735 ], [ 1, %bb.bel ], [ 1, %bb.bbq ], [ 1, %bb.ayw ], [ 1, %bb.bbk ], [ 1, %bb.axd ], [ 1, %bb.axc ], [ 1, %bb.crf ], [ 1, %bb.aww ], [ 1, %bb.awi ], [ 1, %bb.awb ], [ 1, %bb.ave ], [ 1, %bb.aux ], [ 1, %bb.atz ], [ 1, %.thread4552 ], [ 1, %bb.ats ], [ 1, %bb.asz ], [ 1, %bb.ass ], [ 1, %bb.aru ], [ 1, %.thread4411 ], [ 1, %bb.arn ], [ 1, %.thread4402 ], [ 1, %bb.arm ], [ 1, %bb.art ], [ 1, %bb.asr ], [ 1, %bb.asy ], [ 1, %bb.atr ], [ 1, %bb.aty ], [ 1, %bb.auw ], [ 1, %bb.avd ], [ 1, %bb.awa ], [ 1, %bb.awh ], [ 1, %bb.awv ], [ 1, %.noexc2981 ], [ 1, %bb.bbs ], [ 1, %bb.beu ], [ 1, %bb.bfn ], [ 1, %bb.bfu ], [ 1, %bb.blb ], [ 1, %bb.bmj ], [ 1, %bb.bmx ], [ 1, %bb.bne ], [ 1, %bb.bnx ], [ 1, %bb.boe ], [ 1, %bb.bou ], [ 1, %bb.bpb ], [ 1, %bb.bpc ], [ 1, %bb.brm ], [ 1, %bb.brt ], [ 1, %bb.btl ], [ 1, %bb.btj ], [ 1, %bb.bto ], [ 1, %bb.btv ], [ 1, %bb.bux ], [ 1, %bb.buv ], [ 1, %bb.buw ], [ 1, %bb.bvn ], [ 1, %bb.bvl ], [ 1, %bb.bvr ], [ 1, %bb.bvy ], [ 1, %bb.bxi ], [ 1, %bb.bxp ], [ 1, %bb.byx ], [ 1, %bb.cbg ], [ 1, %bb.cgc ], [ 1, %bb.chc ], [ 1, %bb.chx ], [ 1, %bb.cie ], [ 1, %bb.cms ], [ 1, %bb.cmz ], [ 1, %bb.coz ], [ 1, %bb.cpg ], [ 1, %bb.cre ], [ 1, %bb.crl ], [ 1, %bb.crm ], [ 1, %bb.brh ], [ %.sroa.0674.0.ph5270, %.critedge1247.thread5273 ], [ 1, %.split5303 ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E"(ptr noalias noundef align 8 dereferenceable(16) %i.abt) #46
          to label %bb.cqd unwind label %bb.ark

bb.cst:                                           ; preds = %bb.cqd
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abu) #46
          to label %.thread5336 unwind label %bb.ark

bb.csu:                                           ; preds = %.thread5336
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h9eef28aa5c9c6006E"(ptr noalias noundef align 8 dereferenceable(16) %i.abv) #46
          to label %bb.cqu unwind label %bb.ark

bb.csv:                                           ; preds = %bb.cqu
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.abw) #46
          to label %bb.crc unwind label %bb.ark

bb.csw:                                           ; preds = %.split, %.noexc3351, %.thread4790, %bb.crc
  %.sroa.288.464798 = phi i32 [ %.sroa.288.464799, %.noexc3351 ], [ %i.hvt, %.split ], [ %.sroa.288.464799, %.thread4790 ], [ %.sroa.288.45, %bb.crc ]
  %.sroa.0922.464796 = phi ptr [ %.sroa.0922.464797, %.noexc3351 ], [ %i.hvs, %.split ], [ %.sroa.0922.464797, %.thread4790 ], [ %.sroa.0922.45, %bb.crc ]
  %i.hzn = insertvalue { ptr, i32 } poison, ptr %.sroa.0922.464796, 0
  %i.hzo = insertvalue { ptr, i32 } %i.hzn, i32 %.sroa.288.464798, 1
  resume { ptr, i32 } %i.hzo

.thread4790:                                      ; preds = %.critedge1245, %.thread4138, %.critedge1245.thread, %bb.ayd, %bb.axx, %bb.ayj, %.split, %bb.crc
  %.sroa.288.464799 = phi i32 [ %i.hvt, %.split ], [ %.sroa.288.45, %bb.crc ], [ %i.eow, %bb.ayj ], [ %.sroa.288.1, %.critedge1245 ], [ %.sroa.288.14121, %bb.ayd ], [ %i.eoo, %.thread4138 ], [ %i.eog, %bb.axx ], [ %.sroa.288.14121, %.critedge1245.thread ] ; 2 uses
  %.sroa.0922.464797 = phi ptr [ %i.hvs, %.split ], [ %.sroa.0922.45, %bb.crc ], [ %i.eox, %bb.ayj ], [ %.sroa.0922.1, %.critedge1245 ], [ %.sroa.0922.14122, %bb.ayd ], [ %i.eon, %.thread4138 ], [ %i.eoh, %bb.axx ], [ %.sroa.0922.14122, %.critedge1245.thread ] ; 2 uses
  %.sroa.0674.104795 = phi i8 [ %.sroa.0674.11, %.split ], [ %.sroa.0674.8, %bb.crc ], [ 1, %bb.ayj ], [ 1, %.critedge1245 ], [ 1, %bb.ayd ], [ 1, %.thread4138 ], [ 1, %bb.axx ], [ 1, %.critedge1245.thread ]
  %i.hzp = load i64, ptr %i.abx, align 8, !range !59, !noundef !16 ; 2 uses
  %i.hzq = icmp ne i64 %i.hzp, -9223372036854775789
  call void @llvm.assume(i1 %i.hzq)
  %i.hzr = icmp slt i64 %i.hzp, 0
  %cond = icmp eq i8 %.sroa.0674.104795, 0
  %or.cond1328 = or i1 %cond, %i.hzr
  br i1 %or.cond1328, label %bb.csw, label %bb.csx

bb.csx:                                           ; preds = %.thread4790
  %i.hzs = getelementptr inbounds nuw i8, ptr %i.abx, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13424)
  call void @llvm.experimental.noalias.scope.decl(metadata !13425)
  %i.hzt = load ptr, ptr %i.hzs, align 8, !alias.scope !13426, !noundef !16 ; 3 uses
  %i.hzu = icmp eq ptr %i.hzt, null
  br i1 %i.hzu, label %.noexc3351, label %bb.csy

bb.csy:                                           ; preds = %bb.csx
  %i.hzv = load i64, ptr %i.hzt, align 8, !noalias !13427, !noundef !16
  %i.hzw = add i64 %i.hzv, -1                     ; 2 uses
  store i64 %i.hzw, ptr %i.hzt, align 8, !noalias !13427
  %i.hzx = icmp eq i64 %i.hzw, 0
  br i1 %i.hzx, label %bb.csz, label %.noexc3351

bb.csz:                                           ; preds = %bb.csy
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17he282a80f62f516eeE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hzs)
          to label %.noexc3351 unwind label %bb.ark

.noexc3351:                                       ; preds = %bb.csz, %bb.csx, %bb.csy
  invoke fastcc void @"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..term..RuntimeContract$GT$$GT$17hdb11d97e49309902E"(ptr noalias noundef align 8 dereferenceable(24) %i.abx) #46
          to label %bb.csw unwind label %bb.ark
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h09d9d8660e9d01fbE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !16, !align !23, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !align !23, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !align !23, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17haad633201ded5316E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17haad633201ded5316E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13436
  store ptr @253, ptr %i.a, align 8, !noalias !13437
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13437
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !13437
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !13437
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @147, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !13437
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !13437
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !16, !align !34, !noundef !16
  %i.n = load i32, ptr %i.m, align 4, !noundef !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13439
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !13439 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h2acb4b9baf10e3cbE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !16, !align !23, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !align !23, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !align !23, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17haad633201ded5316E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17haad633201ded5316E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13448
  store ptr @256, ptr %i.a, align 8, !noalias !13449
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13449
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !13449
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !13449
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @147, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !13449
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !13449
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !16, !align !34, !noundef !16
  %i.n = load i32, ptr %i.m, align 4, !noundef !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13451
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !13451 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h3c7cbe89727a5809E"(i32 %.0.val, ptr noalias noundef nonnull align 8 %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13475
  %i.f = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #44, !noalias !13475 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"
  %.pn = phi { ptr, i32 } [ %i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit" ], [ %i.h, %bb.c ], [ %i.o, %bb.g ]
  %.val7 = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h76a4ebbc4b688667E"(ptr nonnull %.val7) #46
          to label %common.resume unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1852797802, ptr %i.f, align 1, !noalias !13476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hced9439fef8da4a9E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13477
  store ptr @34, ptr %i.a, align 8, !noalias !13478
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13478
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !13478
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !13478
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !13478
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit": ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13479
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.j, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0.val, ptr %i.l, align 8
  store i64 32, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13480
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !13480 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.i, !prof !19

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.e, align 8, !nonnull !16, !noundef !16 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13481)
  call void @llvm.experimental.noalias.scope.decl(metadata !13482)
  %i.q = load i64, ptr %.val, align 8, !range !60, !alias.scope !13483, !noundef !16
  switch i64 %i.q, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h76a4ebbc4b688667E.exit" [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !13483, !noundef !16 ; 2 uses
  %i.s = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h76a4ebbc4b688667E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !13483, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef 1) #44, !noalias !13483
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h76a4ebbc4b688667E.exit"

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !13483, !nonnull !16, !noundef !16
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h89d62c0ecd4b1cc0E"(ptr nonnull %.val.i.i.i.i)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h76a4ebbc4b688667E.exit" unwind label %bb.l

common.resume:                                    ; preds = %.body, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #44
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h76a4ebbc4b688667E.exit": ; preds = %bb.i, %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #44
  ret ptr %i.m

bb.m:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h6334073f2d1db3b4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !16, !align !23, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13508
  store i64 0, ptr %i.d, align 8, !noalias !13508
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13508
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13508
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13508
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !13508
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !13508
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !13508
  store ptr %i.d, ptr %i.c, align 8, !noalias !13508
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @455, ptr %i.h, align 8, !noalias !13508
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !13509

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13510)
  call void @llvm.experimental.noalias.scope.decl(metadata !13511)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !40, !alias.scope !13512, !noalias !13508, !noundef !16 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !13512, !noalias !13508, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13513
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit", !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !13509

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7" ]
end_hunk_5
begin_hunk_6_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h8fd49de784aed5e3E":bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !16, !align !23, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13658
  store i64 0, ptr %i.d, align 8, !noalias !13658
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13658
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13658
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !13658
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !13658
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !13658
  store ptr %i.d, ptr %i.c, align 8, !noalias !13658
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @455, ptr %i.h, align 8, !noalias !13658
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !13659

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13660)
  call void @llvm.experimental.noalias.scope.decl(metadata !13661)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !40, !alias.scope !13662, !noalias !13658, !noundef !16 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !13662, !noalias !13658, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13663
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit", !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !13659

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !13664 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13664 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13658
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13665
  %i.l = call noundef dereferenceable_or_null(35) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 35, i64 noundef range(i64 1, 9) 1) #44, !noalias !13665 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 35, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13666
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.l, ptr noundef nonnull align 1 dereferenceable(35) @259, i64 35, i1 false), !noalias !13667
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !align !34, !noundef !16
  %i.r = load i32, ptr %i.q, align 4, !noundef !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !16, !align !23, !noundef !16
  %.val = load ptr, ptr %i.t, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !21

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !16 ; 3 uses
  %i.x = and i64 %i.w, 72057594037927935          ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  %i.aa = and i64 %i.w, 1080863910568919040
  %i.ab = icmp ult i64 %i.w, 864691128455135232
  call void @llvm.assume(i1 %i.ab)
  %i.ac = or i64 %i.z, %i.aa
  store i64 %i.ac, ptr %.val, align 8
  %i.ad = icmp eq i64 %i.x, 72057594037927935
  br i1 %i.ad, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !22

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @604, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ah, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc4 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7"

.noexc4:                                          ; preds = %bb.m
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7": ; preds = %bb.m, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 35, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13668
  br label %bb.g

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !16, !align !34, !noundef !16
  %i.al = load i32, ptr %i.ak, align 4, !noundef !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 35, ptr %i.an, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.l, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 35, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.r, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.al, ptr %i.ar, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13669
  %i.as = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !13669 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #46
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.as, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h9b2ef2257cf81209E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13689
  %i.e = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #44, !noalias !13689 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"
  %.pn = phi { ptr, i32 } [ %i.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit" ], [ %i.g, %bb.c ], [ %i.n, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hde4ee8c98865ab72E"(ptr noalias noundef align 8 dereferenceable(88) %0) #46
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1819111284, ptr %i.e, align 1, !noalias !13690
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN61_$LT$toml..de..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h194125f2afffaa47E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13691
  store ptr @34, ptr %i.a, align 8, !noalias !13692
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13692
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !13692
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !13692
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !13692
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit": ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13693
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13691
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 4, ptr %i.i, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.e, ptr %.sroa.5.0..sroa_idx2, align 8
  %.sroa.6.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 4, ptr %.sroa.6.0..sroa_idx4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store i32 %.0.val, ptr %i.k, align 8
  store i64 32, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13694
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !13694 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.i, !prof !19

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hde4ee8c98865ab72E"(ptr noalias noundef align 8 dereferenceable(88) %0)
  ret ptr %i.l

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17ha6bbdf4b2b8f3251E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !16, !align !23, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13719
  store i64 0, ptr %i.d, align 8, !noalias !13719
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13719
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13719
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13719
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !13719
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !13719
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !13719
  store ptr %i.d, ptr %i.c, align 8, !noalias !13719
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @455, ptr %i.h, align 8, !noalias !13719
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !13720

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13721)
  call void @llvm.experimental.noalias.scope.decl(metadata !13722)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !40, !alias.scope !13723, !noalias !13719, !noundef !16 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !13723, !noalias !13719, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13724
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit", !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !13720

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !13725 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13725 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13725
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13719
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13719
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13726
  %i.l = call noundef dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 1) #44, !noalias !13726 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13727
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h2c20eb2c4f221c46E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.l, ptr noundef nonnull align 1 dereferenceable(48) @260, i64 48, i1 false), !noalias !13728
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !16, !align !34, !noundef !16
  %i.r = load i32, ptr %i.q, align 4, !noundef !16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !16, !align !23, !noundef !16
  %.val = load ptr, ptr %i.t, align 8, !nonnull !16, !noundef !16 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !21

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !16 ; 3 uses
  %i.x = and i64 %i.w, 72057594037927935          ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  call void @llvm.assume(i1 %i.y)
  %i.z = add nuw nsw i64 %i.x, 1
  %i.aa = and i64 %i.w, 1080863910568919040
  %i.ab = icmp ult i64 %i.w, 864691128455135232
  call void @llvm.assume(i1 %i.ab)
  %i.ac = or i64 %i.z, %i.aa
  store i64 %i.ac, ptr %.val, align 8
  %i.ad = icmp eq i64 %i.x, 72057594037927935
  br i1 %i.ad, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !22

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @604, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ah, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc4 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7"

.noexc4:                                          ; preds = %bb.m
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hcb2b0d71fab09eacE.exit7": ; preds = %bb.m, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13729
  br label %bb.g

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !16, !align !34, !noundef !16
  %i.al = load i32, ptr %i.ak, align 4, !noundef !16
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.am, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 48, ptr %i.an, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %i.l, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 48, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.r, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.al, ptr %i.ar, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13730
  %i.as = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !13730 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #46
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.as, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17he7dd32b024fcf345E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !16, !align !23, !noundef !16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !16, !align !23, !noundef !16
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !align !23, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17haad633201ded5316E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17haad633201ded5316E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13739
  store ptr @263, ptr %i.a, align 8, !noalias !13740
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13740
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !13740
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !13740
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @147, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !13740
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !13740
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !16, !align !34, !noundef !16
  %i.n = load i32, ptr %i.m, align 4, !noundef !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !13742
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !13742 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17he87f0c2f237c34aeE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = load i8, ptr %.0.val, align 1, !range !17, !noundef !16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = load i8, ptr %.8.val, align 1, !range !17, !noundef !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.g, align 8
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 %i.e, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  store i8 %i.f, ptr %i.i, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13752
  store i64 0, ptr %i.c, align 8, !noalias !13752
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13752
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !13752
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.j, align 8, !noalias !13752
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !13752
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !13752
  store ptr %i.c, ptr %i.b, align 8, !noalias !13752
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @455, ptr %i.k, align 8, !noalias !13752
  %i.l = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !13753

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !13754)
  call void @llvm.experimental.noalias.scope.decl(metadata !13755)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !40, !alias.scope !13756, !noalias !13752, !noundef !16 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !13756, !noalias !13752, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !13757
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e3213b47747514dE.exit.i", !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !13753

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hcfdc86dbe9e1683aE"(ptr noalias noundef align 8 dereferenceable(40) %i.d) #46
          to label %common.resume unwind label %bb.g

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e3213b47747514dE.exit.i": ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !13758
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !13752
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13752
  call void @llvm.experimental.noalias.scope.decl(metadata !13759)
  %.val2.i = load i64, ptr %i.d, align 8, !range !40, !alias.scope !13759, !noundef !16 ; 2 uses
  %i.o = icmp eq i64 %.val2.i, 0
  br i1 %i.o, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hcfdc86dbe9e1683aE.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e3213b47747514dE.exit.i"
  %i.p = mul nuw i64 %.val2.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull inttoptr (i64 8 to ptr), i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !13759
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hcfdc86dbe9e1683aE.exit"

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %i.m

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17hcfdc86dbe9e1683aE.exit": ; preds = %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0e3213b47747514dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hed700bd0adb1d3a3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !16, !align !23, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13784
  store i64 0, ptr %i.d, align 8, !noalias !13784
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13784
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13784
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !13784
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !13784
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !13784
end_hunk_6
begin_hunk_7_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn17h9d2ad322c07a2099E":bb.a
    i64 0, label %bb.us
  ], !prof !21

bb.ur:                                            ; preds = %bb.uq
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc1073 unwind label %bb.si

.noexc1073:                                       ; preds = %bb.ur
  unreachable

bb.us:                                            ; preds = %bb.uq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14926
  store ptr %.val.i1070, ptr %i.g, align 8, !noalias !14926
  %i.baa = load i64, ptr %.val.i1070, align 8, !noalias !14927, !noundef !16 ; 3 uses
  %i.bab = and i64 %i.baa, 72057594037927935
  %i.bac = add nsw i64 %i.bab, -1                 ; 3 uses
  %i.bad = and i64 %i.baa, 1080863910568919040
  %i.bae = icmp ult i64 %i.baa, 864691128455135232
  call void @llvm.assume(i1 %i.bae)
  %i.baf = or i64 %i.bac, %i.bad
  store i64 %i.baf, ptr %.val.i1070, align 8, !noalias !14927
  %i.bag = icmp ugt i64 %i.bac, 72057594037927935
  br i1 %i.bag, label %bb.uu, label %bb.ut, !prof !22

bb.ut:                                            ; preds = %bb.us
  %i.bah = icmp eq i64 %i.bac, 0
  br i1 %i.bah, label %bb.uv, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1072"

bb.uu:                                            ; preds = %bb.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14927
  store ptr @604, ptr %i.f, align 8, !noalias !14927
  %i.bai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bai, align 8, !noalias !14927
  %i.baj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.baj, align 8, !noalias !14927
  %i.bak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bak, align 8, !noalias !14927
  %i.bal = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.bal, align 8, !noalias !14927
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc1074 unwind label %bb.si

.noexc1074:                                       ; preds = %bb.uu
  unreachable

bb.uv:                                            ; preds = %bb.ut
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1072" unwind label %bb.si

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1072": ; preds = %bb.uv, %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14926
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1076"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1083": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1079", %bb.uw, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1076"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.bam = trunc nuw i8 %.sroa.0253.6 to i1
  br i1 %i.bam, label %bb.vc, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1090"

bb.uw:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1076"
  %i.ban = ptrtoint ptr %.sroa.0106.0.copyload107 to i64
  %i.bao = and i64 %i.ban, 3
  %..i.i1078 = call i64 @llvm.umin.i64(i64 %i.bao, i64 2)
  switch i64 %..i.i1078, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1083" [
    i64 2, label %bb.ux
    i64 0, label %bb.uy
  ], !prof !21

bb.ux:                                            ; preds = %bb.uw
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc1080 unwind label %bb.rz

.noexc1080:                                       ; preds = %bb.ux
  unreachable

bb.uy:                                            ; preds = %bb.uw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14928
  store ptr %.sroa.0106.0.copyload107, ptr %i.e, align 8, !noalias !14928
  %i.bap = load i64, ptr %.sroa.0106.0.copyload107, align 8, !noalias !14929, !noundef !16 ; 3 uses
  %i.baq = and i64 %i.bap, 72057594037927935
  %i.bar = add nsw i64 %i.baq, -1                 ; 3 uses
  %i.bas = and i64 %i.bap, 1080863910568919040
  %i.bat = icmp ult i64 %i.bap, 864691128455135232
  call void @llvm.assume(i1 %i.bat)
  %i.bau = or i64 %i.bar, %i.bas
  store i64 %i.bau, ptr %.sroa.0106.0.copyload107, align 8, !noalias !14929
  %i.bav = icmp ugt i64 %i.bar, 72057594037927935
  br i1 %i.bav, label %bb.va, label %bb.uz, !prof !22

bb.uz:                                            ; preds = %bb.uy
  %i.baw = icmp eq i64 %i.bar, 0
  br i1 %i.baw, label %bb.vb, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1079"

bb.va:                                            ; preds = %bb.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14929
  store ptr @604, ptr %i.d, align 8, !noalias !14929
  %i.bax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bax, align 8, !noalias !14929
  %i.bay = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.bay, align 8, !noalias !14929
  %i.baz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.baz, align 8, !noalias !14929
  %i.bba = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.bba, align 8, !noalias !14929
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc1081 unwind label %bb.rz

.noexc1081:                                       ; preds = %bb.va
  unreachable

bb.vb:                                            ; preds = %bb.uz
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1079" unwind label %bb.rz

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1079": ; preds = %bb.vb, %bb.uz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14928
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1083"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1090": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1086", %bb.vc, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1083"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call fastcc void @"_ZN4core3ptr136drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$GT$17h8dfe1636412de949E"(ptr noalias noundef align 8 dereferenceable(32) %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.tu

bb.vc:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1083"
  switch i64 %..i1024, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1090" [
    i64 2, label %bb.vd
    i64 0, label %bb.ve
  ], !prof !21

bb.vd:                                            ; preds = %bb.vc
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc1087 unwind label %bb.rq

.noexc1087:                                       ; preds = %bb.vd
  unreachable

bb.ve:                                            ; preds = %bb.vc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14930
  store ptr %.sroa.0103.0.copyload104, ptr %i.c, align 8, !noalias !14930
  %i.bbb = load i64, ptr %.sroa.0103.0.copyload104, align 8, !noalias !14931, !noundef !16 ; 3 uses
  %i.bbc = and i64 %i.bbb, 72057594037927935
  %i.bbd = add nsw i64 %i.bbc, -1                 ; 3 uses
  %i.bbe = and i64 %i.bbb, 1080863910568919040
  %i.bbf = icmp ult i64 %i.bbb, 864691128455135232
  call void @llvm.assume(i1 %i.bbf)
  %i.bbg = or i64 %i.bbd, %i.bbe
  store i64 %i.bbg, ptr %.sroa.0103.0.copyload104, align 8, !noalias !14931
  %i.bbh = icmp ugt i64 %i.bbd, 72057594037927935
  br i1 %i.bbh, label %bb.vg, label %bb.vf, !prof !22

bb.vf:                                            ; preds = %bb.ve
  %i.bbi = icmp eq i64 %i.bbd, 0
  br i1 %i.bbi, label %bb.vh, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1086"

bb.vg:                                            ; preds = %bb.ve
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14931
  store ptr @604, ptr %i.b, align 8, !noalias !14931
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bbj, align 8, !noalias !14931
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bbk, align 8, !noalias !14931
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bbl, align 8, !noalias !14931
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bbm, align 8, !noalias !14931
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc1088 unwind label %bb.rq

.noexc1088:                                       ; preds = %bb.vg
  unreachable

bb.vh:                                            ; preds = %bb.vf
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1086" unwind label %bb.rq

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h2558b0a157641858E.exit.i.i1086": ; preds = %bb.vh, %bb.vf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14930
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E.exit1090"

bb.vi:                                            ; preds = %.body1067
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cz) #46
          to label %.body1020 unwind label %bb.bw

.body1020.thread:                                 ; preds = %bb.sc, %bb.sd, %bb.se, %.body1020
  %.pn387635 = phi { ptr, i32 } [ %.pn387, %.body1020 ], [ %i.auj, %bb.se ], [ %i.auj, %bb.sd ], [ %i.auj, %bb.sc ]
  %.sroa.0253.2634 = phi i8 [ %.sroa.0253.2, %.body1020 ], [ 1, %bb.se ], [ 1, %bb.sd ], [ 1, %bb.sc ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db) #46
          to label %.body1013 unwind label %bb.bw

.body1013.thread:                                 ; preds = %bb.rt, %bb.ru, %bb.rv, %.body1013
  %.pn389630 = phi { ptr, i32 } [ %.pn389, %.body1013 ], [ %i.atl, %bb.rv ], [ %i.atl, %bb.ru ], [ %i.atl, %bb.rt ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dd) #46
          to label %bb.rp unwind label %bb.bw

"_ZN4core3ptr395drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_opn..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc8f769d74718b804E.exit": ; preds = %.body684, %.body610, %bb.fo, %bb.id, %bb.mh, %bb.pg, %bb.rp
  %.pn492 = phi { ptr, i32 } [ %.pn391, %bb.rp ], [ %.pn402, %bb.pg ], [ %.pn490, %.body610 ], [ %.pn456, %bb.fo ], [ %.pn443, %bb.id ], [ %.pn420, %bb.mh ], [ %.pn473, %.body684 ]
  resume { ptr, i32 } %.pn492
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h0015fb4806b98712E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN85_$LT$nickel_lang_core..term..string..SubstringError$u20$as$u20$core..fmt..Display$GT$3fmt17h1ed75060094802ffE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14940
  store ptr @34, ptr %i.a, align 8, !noalias !14941
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !14941
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !14941
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !14941
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !14941
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.j, %bb.e ]
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17hbb81bf2a46bf4c24E"(ptr noalias noundef align 8 dereferenceable(120) %0) #46
  resume { ptr, i32 } %eh.lpad-body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14940
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.g, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !14942
  %i.h = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !14942 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !19

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17hbb81bf2a46bf4c24E"(ptr noalias noundef align 8 dereferenceable(120) %0)
  ret ptr %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h039914195ead42e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val1 = load ptr, ptr %i.c, align 8, !noundef !16
  %i.d = tail call fastcc noundef ptr @_ZN16nickel_lang_core5label5Label17get_evaluated_arg17ha8853d7684222859E(ptr %.val1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hc0b97110f6229294E"(ptr %i.d) #46
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.d, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.g, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  store i64 19, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !14945
  %i.h = tail call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !14945 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit", !prof !19

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.b) #46
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.e ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h87240603d67d4e18E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(392) %i.b, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.h

bb.g:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h7df2f35da23628c5E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14963
  store i64 0, ptr %i.c, align 8, !noalias !14963
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14963
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !14963
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14963
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !14963
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !14963
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !14963
  store ptr %i.c, ptr %i.b, align 8, !noalias !14963
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @455, ptr %i.f, align 8, !noalias !14963
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !14964

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14965)
  call void @llvm.experimental.noalias.scope.decl(metadata !14966)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !40, !alias.scope !14967, !noalias !14963, !noundef !16 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !14967, !noalias !14963, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !14968
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !14964

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !33, !noundef !16 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !14969
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14963
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !14970
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !14970 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !19

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !33, !noundef !16 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !14971
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h69980f4dff2c0e24E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hc4aa44f71a56b2a8E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull captures(address, read_provenance) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 5, 11) %2, i64 noundef range(i64 1, 5) %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 15 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %5, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14992
  store i64 0, ptr %i.c, align 8, !noalias !14992
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14992
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !14992
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14992
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.f, align 8, !noalias !14992
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !14992
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !14992
  store ptr %i.c, ptr %i.b, align 8, !noalias !14992
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @455, ptr %i.g, align 8, !noalias !14992
  %i.h = invoke noundef zeroext i1 @"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !14993

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14994)
  call void @llvm.experimental.noalias.scope.decl(metadata !14995)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !40, !alias.scope !14996, !noalias !14992, !noundef !16 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %.thread15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !14996, !noalias !14992, !nonnull !16, !noundef !16
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !14997
  br label %.thread15

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %bb.f, !prof !22

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @456, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @465, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @458) #45
          to label %.noexc.i unwind label %bb.b, !noalias !14993

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload1 = load i64, ptr %i.c, align 8, !noalias !14998 ; 3 uses
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14998 ; 3 uses
  %.sroa.6.0.copyload5 = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !14998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14992
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !14999
  %i.k = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #44, !noalias !14999 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @614) #45
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %.sroa.0.0.copyload1, 0
  br i1 %i.n, label %.thread15, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload3) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3, i64 noundef %.sroa.0.0.copyload1, i64 noundef range(i64 1, -9223372036854775807) 1) #44, !noalias !15000
  br label %.thread15

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %2, i1 false), !noalias !15001
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = load i32, ptr %.8.val, align 4, !noundef !16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
end_hunk_7
begin_hunk_8_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hc4aa44f71a56b2a8E":bb.a
  store i64 %.sroa.6.0.copyload5, ptr %.sroa.6.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %2, ptr %i.q, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.k, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %2, ptr %.sroa.510.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i64 %3, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %4, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  store ptr %5, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  store i32 %i.o, ptr %i.u, align 4
  store i64 23, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !15002
  %i.v = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !15002 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.n, !prof !19

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #45
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h761b4bac0e07d805E"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #46
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.n:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.v, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.z, align 8
  store ptr null, ptr %0, align 8
  ret void

bb.o:                                             ; preds = %.thread15
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.p:                                             ; preds = %bb.l, %.thread15
  %.pn13 = phi { ptr, i32 } [ %.pn14, %.thread15 ], [ %i.x, %bb.l ]
  resume { ptr, i32 } %.pn13

.thread15:                                        ; preds = %bb.h, %bb.i, %bb.b, %bb.c
  %.pn14 = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.m, %bb.h ], [ %i.i, %bb.c ], [ %i.m, %bb.i ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #46
          to label %bb.p unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17hd8424252342daac9E(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [168 x i8], align 8               ; 5 uses
  %i.g = icmp eq ptr %1, %2
  br i1 %i.g, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hda12212defd8941cE.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 160
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  br label %bb.c

bb.c:                                             ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hfba1135a6afe431fE.exit.i.i.i", %bb.b
  %i.m = phi ptr [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hfba1135a6afe431fE.exit.i.i.i" ], [ %0, %bb.b ] ; 3 uses
  %.sroa.07.0.i.i = phi i64 [ %i.ag, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hfba1135a6afe431fE.exit.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %.sroa.07.0.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15013)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15014
  store ptr %i.m, ptr %i.e, align 8, !noalias !15014
  call void @llvm.experimental.noalias.scope.decl(metadata !15015)
  call void @llvm.experimental.noalias.scope.decl(metadata !15016)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15017
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !15018, !noalias !15019, !nonnull !16, !noundef !16 ; 5 uses
  %i.p = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.q = and i64 %i.p, 3
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 2)
  switch i64 %..i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i" [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !21

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @470, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @475, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #45
          to label %.noexc.i.i.i unwind label %.body.thread5.i.i.i, !noalias !15014

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !15017, !noundef !16 ; 3 uses
  %i.s = and i64 %i.r, 72057594037927935          ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  %i.v = and i64 %i.r, 1080863910568919040
  %i.w = icmp ult i64 %i.r, 864691128455135232
  call void @llvm.assume(i1 %i.w)
  %i.x = or i64 %i.u, %i.v
  store i64 %i.x, ptr %.val.i.i.i.i.i, align 8, !noalias !15017
  %i.y = icmp eq i64 %i.s, 72057594037927935
  br i1 %i.y, label %bb.f, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i", !prof !22

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15017
  store ptr @604, ptr %i.b, align 8, !noalias !15017
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.z, align 8, !noalias !15017
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aa, align 8, !noalias !15017
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !15017
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ac, align 8, !noalias !15017
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @605) #45
          to label %.noexc2.i.i.i unwind label %.body.thread5.i.i.i, !noalias !15014

.noexc2.i.i.i:                                    ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i": ; preds = %bb.e, %bb.c
  store ptr %.val.i.i.i.i.i, ptr %i.d, align 8, !noalias !15017
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15017
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.n)
          to label %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hfba1135a6afe431fE.exit.i.i.i" unwind label %bb.g, !noalias !15019

bb.g:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #46
          to label %.body.thread.i.i.i unwind label %bb.h, !noalias !15019

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15019
  unreachable

.body.thread5.i.i.i:                              ; preds = %bb.f, %bb.d
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hfba1135a6afe431fE.exit.i.i.i": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15017
  store ptr %i.m, ptr %i.f, align 8, !noalias !15014
  store ptr %.val.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !15014
  %i.af = call noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract5apply17h979b649f88f8a7a6E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l, ptr noundef nonnull %i.m, i32 noundef %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15014
  %i.ag = add nuw i64 %.sroa.07.0.i.i, 1          ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.k
  br i1 %i.ah, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hda12212defd8941cE.exit", label %bb.c

.body.thread.i.i.i:                               ; preds = %.body.thread5.i.i.i, %bb.g
  %eh.lpad-body4.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread5.i.i.i ], [ %i.ad, %bb.g ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #46
          to label %.body unwind label %bb.i, !noalias !15020

bb.i:                                             ; preds = %.body.thread.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15020
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17hda12212defd8941cE.exit": ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hfba1135a6afe431fE.exit.i.i.i", %bb.a
  %.sroa.04.0.i.i = phi ptr [ %0, %bb.a ], [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hfba1135a6afe431fE.exit.i.i.i" ]
  ret ptr %.sroa.04.0.i.i

.body:                                            ; preds = %.body.thread.i.i.i
  resume { ptr, i32 } %eh.lpad-body4.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_ZN16nickel_lang_core4term4make12enum_variant17h57e4139936d7409cE(ptr noundef nonnull %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @125, i64 noundef 5)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h24ec8daf228dc89dE.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h24ec8daf228dc89dE.exit": ; preds = %bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !15027
  %i.d = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #44, !noalias !15027 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !22

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h166821a95c5c2f52E"(ptr nonnull %0) #46
          to label %.body unwind label %bb.e, !noalias !15027

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h24ec8daf228dc89dE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15027
  store ptr @135, ptr %i.a, align 8, !noalias !15027
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !15027
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !15027
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !15027
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !15027
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @136) #45
          to label %bb.d unwind label %bb.b, !noalias !15027

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !15027
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h24ec8daf228dc89dE.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !15027
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.l, align 8, !noalias !15027
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %0, ptr %i.m, align 8, !noalias !15028
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %i.d

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body3 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body3

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf0d8cbfb0a4765b9E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #46
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term4make7builder6Record4path17hcb67cdb5f50888d3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(416) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.0.0.copyload.i = load i64, ptr %2, align 8, !alias.scope !15055, !noalias !15056 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !15055, !noalias !15056, !nonnull !16, !noundef !16 ; 4 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !15055, !noalias !15056 ; 4 uses
  %i.d = icmp ult i64 %.sroa.5.0.copyload.i, 461168601842738791
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i.i.i.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr66drop_in_place$LT$nickel_lang_core..term..make..builder..Record$GT$17hfe4e0189b2e7e5b0E"(ptr noalias noundef align 8 dereferenceable(32) %1) #46
          to label %bb.e unwind label %bb.d

bb.b:                                             ; preds = %bb.c
  %i.e = mul nuw i64 %.sroa.0.0.copyload.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload.i, i64 noundef %i.e, i64 noundef range(i64 1, -9223372036854775807) 4) #44, !noalias !15057
  br label %.body

bb.c:                                             ; preds = %.noexc12.i.i.i.i.i, %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h837f87348004c71dE.exit.i.i.i.i.i.i.i", %.noexc.i.i.i.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.g, label %.body, label %bb.b

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.a, %.noexc13.i.i.i.i.i
  %.sroa.0.01.i.i.i.i.i.i = phi i64 [ %i.p, %.noexc13.i.i.i.i.i ], [ 0, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15058
  %i.h = getelementptr inbounds nuw [20 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.h, i64 20, i1 false), !noalias !15058
  %i.i = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128) acquire, align 8, !noalias !15059
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h837f87348004c71dE.exit.i.i.i.i.i.i.i", label %.noexc.i.i.i.i.i.i, !prof !18

.noexc.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15059
  store ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, ptr %i.b, align 8, !noalias !15059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15059
  store ptr %i.b, ptr %i.a, align 8, !noalias !15059
  invoke void @_ZN3std3sys4sync4once5futex4Once4call17h74b07ece06e25f35E(ptr noundef nonnull align 4 getelementptr inbounds nuw (i8, ptr @_ZN18nickel_lang_parser10identifier8INTERNER17hc0447100e2e2068fE, i64 128), i1 noundef zeroext true, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @450, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @449)
          to label %.noexc.i.i.i.i.i unwind label %bb.c, !noalias !15060

.noexc.i.i.i.i.i:                                 ; preds = %.noexc.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15059
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15059
  br label %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h837f87348004c71dE.exit.i.i.i.i.i.i.i"

"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h837f87348004c71dE.exit.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.k = invoke { ptr, i64 } @"_ZN92_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..AsRef$LT$str$GT$$GT$6as_ref17ha8e0a3be93011bbfE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.c)
          to label %.noexc12.i.i.i.i.i unwind label %bb.c, !noalias !15060 ; 2 uses

.noexc12.i.i.i.i.i:                               ; preds = %"_ZN16nickel_lang_core4term4make7builder6Record4path28_$u7b$$u7b$closure$u7d$$u7d$17h837f87348004c71dE.exit.i.i.i.i.i.i.i"
  %i.l = extractvalue { ptr, i64 } %i.k, 0
  %i.m = extractvalue { ptr, i64 } %i.k, 1
  %i.n = invoke fastcc noundef i32 @_ZN18nickel_lang_parser10identifier8interner8Interner13get_or_intern17hc40db94b318c2270E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.l, i64 noundef %i.m)
          to label %.noexc13.i.i.i.i.i unwind label %bb.c, !noalias !15060

.noexc13.i.i.i.i.i:                               ; preds = %.noexc12.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15058
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.sroa.4.0.copyload.i, i64 %.sroa.0.01.i.i.i.i.i.i
  %i.p = add nuw nsw i64 %.sroa.0.01.i.i.i.i.i.i, 1 ; 2 uses
  store i32 %i.n, ptr %i.o, align 4, !noalias !15060
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.p, %.sroa.5.0.copyload.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i.i

.loopexit:                                        ; preds = %.noexc13.i.i.i.i.i, %bb.a
  %i.q = mul nuw i64 %.sroa.0.0.copyload.i, 5
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 392
  store i64 %i.q, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400
  store ptr %.sroa.4.0.copyload.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 408
  store i64 %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx17, align 8
  store i64 18, ptr %0, align 8
  %.sroa.0.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.0.sroa.0.sroa.5.sroa.4.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 272
  store i64 0, ptr %.sroa.0.sroa.0.sroa.5.sroa.5.0..sroa.0.sroa.0.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i64 -9223372036854775806, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr null, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i8 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 353
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 1
  ret void

bb.d:                                             ; preds = %.body
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

bb.e:                                             ; preds = %.body
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData10map_values17h0fdbdc83740860eaE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %.sroa.058 = alloca [48 x i8], align 8          ; 5 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 13 uses
  %i.h = alloca [40 x i8], align 8                ; 12 uses
  %i.i = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.i, align 8
  %.sroa.021.sroa.0.0.copyload = load i64, ptr %1, align 8
  %.sroa.021.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.021.sroa.4.0.copyload = load ptr, ptr %.sroa.021.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.021.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.021.sroa.5.0.copyload = load i64, ptr %.sroa.021.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
end_hunk_8
begin_hunk_9_@_ZN4core4iter6traits8iterator8Iterator5unzip17h20ebf16f8ff370a2E:bb.a
  %i.e = alloca [144 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22572)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !17, !noalias !22573, !noundef !16
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i", !prof !18

._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !22574
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !22574
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.j = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i"
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !22575
  store i8 1, ptr %i.g, align 8, !noalias !22575
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i
  %.pre1.i.i.i.i9.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i ], [ %i.l, %.noexc ] ; 2 uses
  %i.n = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17hb79dade94bd0f8e9E.exit_crit_edge.i.i.i.i.i ], [ %i.k, %.noexc ] ; 3 uses
  %i.o = add i64 %i.n, 1
  %i.p = add i64 %i.n, 2
  store i64 %i.p, ptr %i.f, align 8, !noalias !22576
  store i64 0, ptr %i.e, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %i.n, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.pre1.i.i.i.i9.i, ptr %.sroa.8.0..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 72 ; 2 uses
  store i64 0, ptr %i.q, align 8, !alias.scope !22572
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !22572
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22572
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.412.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store i64 %i.o, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !22572
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i64 %.pre1.i.i.i.i9.i, ptr %.sroa.614.0..sroa_idx.i, align 8, !alias.scope !22572
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !22578
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22579)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !22580, !noalias !22581, !nonnull !16, !noundef !16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !22580, !noalias !22581 ; 2 uses
  %i.u = icmp eq ptr %.promoted.i.i.i.i, %i.s
  br i1 %i.u, label %_ZN4core4iter6traits7collect22default_extend_tuple_b17hf906efd4a2240a31E.exit.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.lr.ph.i.i.i.i": ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i.i": ; preds = %bb.g, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.lr.ph.i.i.i.i"
  %i.x = phi ptr [ %.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.lr.ph.i.i.i.i" ], [ %i.y, %bb.g ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22582)
  call void @llvm.experimental.noalias.scope.decl(metadata !22583)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !22584 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17hf9c0da29ef66dd76E.exit.loopexit.i.i.i, label %bb.d

bb.c:                                             ; preds = %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17h3e250e52e965f28eE.exit.i.i.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.t, align 8, !alias.scope !22580, !noalias !22581
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.ac, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17hd2cb4849240b079eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #46
          to label %.body unwind label %bb.h, !noalias !22585

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i.i"
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22586
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i.i, i64 32, i1 false), !noalias !22587
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !22587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.aa, i64 20, i1 false), !noalias !22587
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.aa, i64 20, i1 false), !noalias !22587
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !22588
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !22588
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22589
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !22588
  invoke fastcc void @_ZN4core4iter6traits7collect6Extend10extend_one17hf1ed971da7466113E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %i.c)
          to label %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17h3e250e52e965f28eE.exit.i.i.i.i.i" unwind label %bb.e, !noalias !22590

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.t, align 8, !alias.scope !22580, !noalias !22581
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17hd6967b05622b50ebE"(ptr noalias noundef align 8 dereferenceable(40) %i.ad)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !22591

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !22591
  unreachable

"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17h3e250e52e965f28eE.exit.i.i.i.i.i": ; preds = %bb.d
  invoke fastcc void @_ZN4core4iter6traits7collect6Extend10extend_one17hf1ed971da7466113E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.w)
          to label %bb.g unwind label %bb.c, !noalias !22587

bb.g:                                             ; preds = %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17h3e250e52e965f28eE.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22586
  %i.af = icmp eq ptr %i.y, %i.s
  br i1 %i.af, label %_ZN4core4iter6traits8iterator8Iterator4fold17hf9c0da29ef66dd76E.exit.loopexit.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i.i"

bb.h:                                             ; preds = %.body.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !22587
  unreachable

_ZN4core4iter6traits8iterator8Iterator4fold17hf9c0da29ef66dd76E.exit.loopexit.i.i.i: ; preds = %bb.g, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hea148c1ee3bb8a5cE.exit.i.i.i.i.i"
  store ptr %i.y, ptr %i.t, align 8, !alias.scope !22580, !noalias !22581
  br label %_ZN4core4iter6traits7collect22default_extend_tuple_b17hf906efd4a2240a31E.exit.i

_ZN4core4iter6traits7collect22default_extend_tuple_b17hf906efd4a2240a31E.exit.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17hf9c0da29ef66dd76E.exit.loopexit.i.i.i, %bb.b
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17hd2cb4849240b079eE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_ZN4core4iter6traits7collect22default_extend_tuple_b17hf906efd4a2240a31E.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr254drop_in_place$LT$$LP$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$C$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$RP$$GT$17he32ff4d5f4300712E"(ptr noalias noundef align 8 dereferenceable(144) %i.e) #46
          to label %"_ZN4core3ptr445drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hfc3b057940ae1254E.exit" unwind label %bb.k

bb.j:                                             ; preds = %_ZN4core4iter6traits7collect22default_extend_tuple_b17hf906efd4a2240a31E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22577
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.e, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %bb.l, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43
  unreachable

"_ZN4core3ptr445drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hfc3b057940ae1254E.exit": ; preds = %bb.l, %.body
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aj, %bb.l ]
  resume { ptr, i32 } %.pn7

bb.l:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17hfd4eb6fbd8a22789E.exit.i.i.i.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17hd2cb4849240b079eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr445drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hfc3b057940ae1254E.exit" unwind label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h09b3b67457309449E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22626)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22627
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22628)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !22627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22629
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22630)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !22631, !noalias !22632
  store i64 0, ptr %i.b, align 8, !alias.scope !22633, !noalias !22634
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.h = invoke fastcc noalias noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf52cb00736a4b5d7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.i.i.i.i, !noalias !22629 ; 2 uses

.body.i.i.i.i:                                    ; preds = %bb.e, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.m, %bb.e ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf06f93a95db3f43dE"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #46
          to label %.body.i.i.i unwind label %bb.u, !noalias !22635

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.k, %bb.h
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.l, %bb.a
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !alias.scope !22636, !noalias !22637
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !22636, !noalias !22637
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22629
  store i64 1, ptr %i.a, align 8, !noalias !22629
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !22629
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !22629
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !22629
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !22638
  %i.k = tail call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #44, !noalias !22638 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hdaa23d875710de63E.exit.i.i.i.i", !prof !19

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #45
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !22629

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h73f9256d6a0b4975E"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !22629

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !22629
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hdaa23d875710de63E.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !22629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !22629
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !22628, !noalias !22635
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17hdaa23d875710de63E.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = phi i64 [ 1, %.preheader ], [ %.be, %.backedge ]
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noalias noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf52cb00736a4b5d7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !22635 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !22639, !noalias !22640
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !22639, !noalias !22640
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !22629
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !22628, !noalias !22635, !noundef !16
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !22

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hf06f93a95db3f43dE"(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he5c91ac669d0a681E.exit" unwind label %bb.v, !noalias !22627

bb.k:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17hd77c38f99ee34a96E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.i.i.i.i, !noalias !22635 ; 4 uses

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #45
          to label %bb.m unwind label %.loopexit.split-lp.i.i.i.i, !noalias !22635

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.t, align 8, !range !15, !noalias !22635, !noundef !16
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !22628, !noalias !22635, !noundef !16
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h6275fe3e0032e18bE"(ptr noalias noundef align 8 dereferenceable(56) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.r unwind label %.loopexit.i.i.i.i, !noalias !22635

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !22635, !noundef !16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !22635, !noundef !16
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sub i64 32, %i.ad
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h63106780afaac034E"(ptr noalias noundef align 8 dereferenceable(272) %i.w, ptr noalias noundef align 8 dereferenceable(56) %i.b, i64 noundef %i.ae)
          to label %bb.q unwind label %.loopexit.i.i.i.i, !noalias !22635

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.z, align 8, !noalias !22635, !noundef !16
  %i.ag = load i64, ptr %i.ab, align 8, !noalias !22635, !noundef !16
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ai, %bb.q ], [ %i.y, %bb.o ]
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !22628, !noalias !22635, !noundef !16
  %i.ak = add i64 %i.aj, %.sroa.03.0.i.i.i.i
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !22628, !noalias !22635
  %i.al = load i64, ptr %i.b, align 8, !range !15, !alias.scope !22641, !noalias !22642, !noundef !16
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17thread-pre-split.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke fastcc noalias noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf52cb00736a4b5d7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc16.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !22635 ; 2 uses

.noexc16.i.i.i.i:                                 ; preds = %bb.s
  store i64 1, ptr %i.b, align 8, !alias.scope !22641, !noalias !22642
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !22641, !noalias !22642
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17thread-pre-split.i.i.i.i": ; preds = %bb.r
  %.pr18.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !22629
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17thread-pre-split.i.i.i.i", %.noexc16.i.i.i.i
  %i.ao = phi ptr [ %.pr18.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17thread-pre-split.i.i.i.i" ], [ %i.an, %.noexc16.i.i.i.i ]
  %.not9.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17hfbb310a33e3baf1eE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !22635

._crit_edge.i.i.i.i:                              ; preds = %bb.t
  %.pre.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !15, !alias.scope !22639, !noalias !22640
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17.i.i.i.i"
  %.be = phi i64 [ %.pre.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h72c813c8cf1393faE.exit17.i.i.i.i" ]
  br label %bb.g

bb.u:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !22635
  unreachable

bb.v:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !22643)
  call void @llvm.experimental.noalias.scope.decl(metadata !22644)
  %i.ar = load ptr, ptr %i.c, align 16, !alias.scope !22645, !noalias !22627, !noundef !16 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8cce1a54b1e21462E.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.body.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !noalias !22646, !noundef !16
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8, !noalias !22646
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.x, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8cce1a54b1e21462E.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8cce1a54b1e21462E.exit.i.i.i" unwind label %bb.y, !noalias !22627

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !22627
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17h8cce1a54b1e21462E.exit.i.i.i": ; preds = %bb.x, %bb.w, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17he5c91ac669d0a681E.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !22629
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !22647
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !22647
  %i.ax = load <2 x i64>, ptr %i.c, align 16, !noalias !22647
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22627
  store <2 x i64> %i.ax, ptr %0, align 8, !alias.scope !22626, !noalias !22648
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !22626, !noalias !22648
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ay, align 8, !alias.scope !22626, !noalias !22648
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.az, align 8, !alias.scope !22626, !noalias !22648
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h0d34919da74168c0E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [128 x i8], align 8               ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [128 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22674)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !22675
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(128) %1, i64 128, i1 false), !alias.scope !22676, !noalias !22674
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22677)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22678)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22679)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !22680
  %i.f = invoke fastcc { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h67dd5ef1b31db1c1E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.e)
          to label %bb.c unwind label %bb.b, !noalias !22681 ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, ptr } %i.f, 0        ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !22682, !noalias !22683
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !22682, !noalias !22683
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8, !alias.scope !22682, !noalias !22683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !22680
  call fastcc void @"_ZN4core3ptr575drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$GT$$C$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..eq$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb1df29c7d2b9a0f8E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.e), !noalias !22681
  br label %"_ZN95_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h0510da7f24ee41ffE.exit"

bb.e:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr116drop_in_place$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$17heb9f5b76883cd498E"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #46
          to label %bb.t unwind label %bb.r, !noalias !22681

bb.f:                                             ; preds = %bb.c
  %i.l = extractvalue { ptr, ptr } %i.f, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22680
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  store ptr %i.h, ptr %i.c, align 8, !noalias !22680
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.l, ptr %i.m, align 8, !noalias !22680
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44, !noalias !22684
  %i.n = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #44, !noalias !22684 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 64, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #45
          to label %.noexc.i.i.i.i unwind label %bb.e, !noalias !22681

.noexc.i.i.i.i:                                   ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  store ptr %i.h, ptr %i.n, align 8, !noalias !22681
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %i.l, ptr %i.p, align 8, !noalias !22681
  store i64 4, ptr %i.d, align 8, !noalias !22680
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.n, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !22680
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !22680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22680
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i64 128, i1 false), !noalias !22681
  call void @llvm.experimental.noalias.scope.decl(metadata !22685)
  call void @llvm.experimental.noalias.scope.decl(metadata !22686)
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6e4a37052a2f30d1E.exit.i.i.i.i.i.i", %bb.h
  %i.r = phi ptr [ %i.aa, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6e4a37052a2f30d1E.exit.i.i.i.i.i.i" ], [ %i.n, %bb.h ]
  %i.s = phi i64 [ %i.ad, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6e4a37052a2f30d1E.exit.i.i.i.i.i.i" ], [ 1, %bb.h ] ; 5 uses
  %i.t = invoke fastcc { ptr, ptr } @"_ZN102_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h67dd5ef1b31db1c1E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %bb.l unwind label %bb.k, !noalias !22687 ; 2 uses

bb.j:                                             ; preds = %bb.n, %bb.k
  %.pn.i.i.i.i.i.i = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.u, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr575drop_in_place$LT$core..iter..adapters..zip..Zip$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$GT$$C$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_core..eval..operation..eq$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17hb1df29c7d2b9a0f8E"(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.b) #46
          to label %.body.i.i.i.i unwind label %bb.p, !noalias !22687

bb.k:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.v = extractvalue { ptr, ptr } %i.t, 0        ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16extend_desugared17ha715cea12476441aE.exit.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = extractvalue { ptr, ptr } %i.t, 1        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !22688
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  store ptr %i.v, ptr %i.a, align 8, !noalias !22688
  store ptr %i.w, ptr %i.q, align 8, !noalias !22688
  %i.x = icmp samesign ult i64 %i.s, 576460752303423488
  call void @llvm.assume(i1 %i.x)
  %i.y = load i64, ptr %i.d, align 8, !range !40, !alias.scope !22689, !noalias !22690, !noundef !16
  %i.z = icmp eq i64 %i.s, %i.y
  br i1 %i.z, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6e4a37052a2f30d1E.exit.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6e4a37052a2f30d1E.exit.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6e4a37052a2f30d1E.exit.i.i_crit_edge.i.i.i.i", %bb.m
  %i.aa = phi ptr [ %.pre.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6e4a37052a2f30d1E.exit.i.i_crit_edge.i.i.i.i" ], [ %i.r, %bb.m ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.aa, i64 %i.s ; 2 uses
  store ptr %i.v, ptr %i.ab, align 8, !noalias !22687
end_hunk_9
begin_hunk_10_@"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h867f7eae026643fcE":bb.a
  store i64 %i.f, ptr %0, align 8, !alias.scope !24855, !noalias !24856
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.bg, align 8, !alias.scope !24855, !noalias !24856
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.bh, align 8, !alias.scope !24855, !noalias !24856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !24871
  tail call fastcc void @"_ZN4core3ptr150drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17hf47ee53d4cbd38d1E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !24855
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17he8604306a5f5f7bbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24894)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24895)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !24895, !noalias !24894, !noundef !16 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !24895, !noalias !24894, !nonnull !16, !noundef !16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24896)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !24896, !noalias !24897, !nonnull !16, !noundef !16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.g, align 8, !alias.scope !24896, !noalias !24897 ; 3 uses
  %.not.i38 = icmp eq ptr %.promoted, %i.f
  br i1 %.not.i38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !align !23
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !16, !align !28
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !16, !align !23
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !16, !align !23
  br label %bb.b

.body2:                                           ; preds = %.body.i, %.body
  %.pn.i = phi { ptr, i32 } [ %i.an, %.body ], [ %i.u, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr298drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$C$nickel_lang_core..eval..subst$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hada4ca7dc3cc94dbE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1) #46
          to label %bb.j unwind label %bb.i, !noalias !24894, !inline_history !24880

bb.b:                                             ; preds = %.lr.ph, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i"
  %.sroa.6.039 = phi ptr [ %i.d, %.lr.ph ], [ %i.t, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i" ] ; 5 uses
  %i.p = phi ptr [ %.promoted, %.lr.ph ], [ %i.q, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i" ] ; 4 uses
  %.sroa.025.0.copyload = load i64, ptr %i.p, align 8, !noalias !24896 ; 2 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.426.0.copyload = load ptr, ptr %.sroa.426.0..sroa_idx, align 8, !noalias !24896 ; 3 uses
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.527.0.copyload = load i64, ptr %.sroa.527.0..sroa_idx, align 8, !noalias !24896
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !24896, !noalias !24897
  %i.r = icmp eq i64 %.sroa.025.0.copyload, -9223372036854775808
  br i1 %i.r, label %bb.c, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.426.0.copyload) ]
  %i.s = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h354e9df9e305227aE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.k, ptr noundef nonnull %.sroa.426.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i" unwind label %.body.i, !noalias !24898, !inline_history !24888

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i": ; preds = %bb.c, %bb.b
  %.sroa.515.0 = phi ptr [ %.sroa.426.0.copyload, %bb.b ], [ %i.s, %bb.c ]
  store i64 %.sroa.025.0.copyload, ptr %.sroa.6.039, align 8, !noalias !24899
  %.sroa.411.sroa.4.0..sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.039, i64 8
  store ptr %.sroa.515.0, ptr %.sroa.411.sroa.4.0..sroa.5.8..sroa_idx, align 8, !noalias !24899
  %.sroa.411.sroa.5.0..sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.039, i64 16
  store i64 %.sroa.527.0.copyload, ptr %.sroa.411.sroa.5.0..sroa.5.8..sroa_idx, align 8, !noalias !24899
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.6.039, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i, label %._crit_edge, label %bb.b

.body.i:                                          ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17ha86cc149e8624d06E"(ptr nonnull %i.d, ptr nonnull %.sroa.6.039) #46
          to label %.body2 unwind label %bb.d, !noalias !24899, !inline_history !24889

bb.d:                                             ; preds = %.body.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !24899, !inline_history !24889
  unreachable

._crit_edge:                                      ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i", %bb.a
  %.sroa.6.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.t, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i" ]
  %.lcssa31 = phi ptr [ %.promoted, %bb.a ], [ %i.q, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hd664b50e9f5d2dbcE.exit.i" ] ; 4 uses
  %i.w = ptrtoint ptr %.sroa.6.0.lcssa to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24900
  store ptr %i.d, ptr %i.a, align 8, !noalias !24900
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !24900
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.ab, align 8, !noalias !24900
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24901)
  %i.ac = ptrtoint ptr %i.f to i64
  %i.ad = ptrtoint ptr %.lcssa31 to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = udiv exact i64 %i.ae, 24                ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !24901, !noalias !24894
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !24901, !noalias !24894
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !24901, !noalias !24894
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !24901, !noalias !24894
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24902), !noalias !24894
  %i.ag = icmp eq ptr %i.f, %.lcssa31
  br i1 %i.ag, label %_ZN5alloc3vec16in_place_collect18from_iter_in_place17h322898f79dd94220E.exit, label %.lr.ph58

bb.e:                                             ; preds = %.lr.ph58
  %i.ah = icmp eq i64 %i.aj, %i.af
  br i1 %i.ah, label %_ZN5alloc3vec16in_place_collect18from_iter_in_place17h322898f79dd94220E.exit, label %.lr.ph58

.lr.ph58:                                         ; preds = %._crit_edge, %bb.e
  %.sroa.0.0.i.i57 = phi i64 [ %i.aj, %bb.e ], [ 0, %._crit_edge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.lcssa31, i64 %.sroa.0.0.i.i57 ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.0.0.i.i57, 1     ; 4 uses
  %.val8.i.i = load i64, ptr %i.ai, align 8, !range !33, !alias.scope !24902, !noalias !24903, !noundef !16
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %.val9.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !24902, !noalias !24903
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hcfec7508bfe2eae5E"(i64 %.val8.i.i, ptr %.val9.i.i)
          to label %bb.e unwind label %bb.g, !noalias !24904

bb.f:                                             ; preds = %.lr.ph61
  %i.al = add i64 %.sroa.0.1.i.i59, 1             ; 2 uses
  %i.am = icmp eq i64 %i.al, %i.af
  br i1 %i.am, label %.body, label %.lr.ph61

bb.g:                                             ; preds = %.lr.ph58
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = icmp eq i64 %i.aj, %i.af
  br i1 %i.ao, label %.body, label %.lr.ph61

.lr.ph61:                                         ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i59 = phi i64 [ %i.al, %bb.f ], [ %i.aj, %bb.g ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %.lcssa31, i64 %.sroa.0.1.i.i59 ; 2 uses
  %.val.i.i = load i64, ptr %i.ap, align 8, !range !33, !alias.scope !24902, !noalias !24903, !noundef !16
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %.val7.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !24902, !noalias !24903
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17hcfec7508bfe2eae5E"(i64 %.val.i.i, ptr %.val7.i.i) #46
          to label %bb.f unwind label %bb.h, !noalias !24904

bb.h:                                             ; preds = %.lr.ph61
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !24904
  unreachable

.body:                                            ; preds = %bb.f, %bb.g
  invoke fastcc void @"_ZN4core3ptr255drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17h98b75d73675ac497E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #46
          to label %.body2 unwind label %bb.i, !noalias !24894, !inline_history !24880

bb.i:                                             ; preds = %.body, %.body2
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #43, !noalias !24894, !inline_history !24880
  unreachable

bb.j:                                             ; preds = %.body2
  resume { ptr, i32 } %.pn.i

_ZN5alloc3vec16in_place_collect18from_iter_in_place17h322898f79dd94220E.exit: ; preds = %bb.e, %._crit_edge
  store i64 %i.c, ptr %0, align 8, !alias.scope !24894, !noalias !24895
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.at, align 8, !alias.scope !24894, !noalias !24895
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.au, align 8, !alias.scope !24894, !noalias !24895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24900
  tail call fastcc void @"_ZN4core3ptr298drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$C$nickel_lang_core..eval..subst$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hada4ca7dc3cc94dbE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !24894, !inline_history !24880
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef range(i64 0, 441) %0, i64 noundef range(i64 1, 9) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  br label %bb.c

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit: ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) %1) #44 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %1, i64 noundef %0) #45
  unreachable

bb.c:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  %.sroa.07.0.i4 = phi ptr [ %i.b, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread ], [ %i.c, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit ]
  ret ptr %.sroa.07.0.i4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h0cf757d1d49a490aE"() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noalias noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17ha224ed279ba8dc30E"() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #44 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #45
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17h2216d14831690221E"(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !24908
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %_ZN5alloc5slice11stable_sort17hfca312598d13f475E.exit, label %bb.b, !prof !18

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 21
  br i1 %i.d, label %bb.d, label %bb.c, !prof !18

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort6stable14driftsort_main17h451b088ddf773d1eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5alloc5slice11stable_sort17hfca312598d13f475E.exit

bb.d:                                             ; preds = %bb.b
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17he84fc800b16a0841E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  br label %_ZN5alloc5slice11stable_sort17hfca312598d13f475E.exit

_ZN5alloc5slice11stable_sort17hfca312598d13f475E.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h83b82b15d5862dd0E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !33, !noundef !16 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !16 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #44
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !16, !noundef !16
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #44
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #44
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #44
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5b742177d3f3eb8fE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24913)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 48
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 96076792050570581
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24913
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24913
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h215549b8b95ca5f5E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.g, align 8, !alias.scope !24913, !nonnull !16, !noundef !16
  %i.i = mul nuw nsw i64 %i.c, 48
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !24914, !noalias !24913
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !24914, !noalias !24913
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h215549b8b95ca5f5E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h215549b8b95ca5f5E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.j, align 8, !alias.scope !24914, !noalias !24913
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h83b82b15d5862dd0E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef 8, i64 noundef %i.f, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !24913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24913
  %i.k = load i64, ptr %i.b, align 8, !range !15, !noalias !24913, !noundef !16
  %i.l = trunc nuw i64 %i.k to i1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h215549b8b95ca5f5E.exit.i"
  %i.n = load i64, ptr %i.m, align 8, !range !33, !noalias !24913, !noundef !16
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noalias !24913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24913
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.a ], [ %i.p, %bb.c ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.a ], [ %i.n, %bb.c ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) #45
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h215549b8b95ca5f5E.exit.i"
  %i.q = load ptr, ptr %i.m, align 8, !noalias !24913, !nonnull !16, !noundef !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24913
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !24913
  store i64 %i.e, ptr %0, align 8, !alias.scope !24913
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h8f6fe10c1c3120afE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #17 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i64, ptr %0, align 8, !range !40, !noundef !16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24919)
  %i.d = shl nuw i64 %i.c, 1
  %i.e = tail call i64 @llvm.umax.i64(i64 %i.d, i64 4) ; 2 uses
  %i.f = mul i64 %i.e, 160
  %or.cond.i.i = icmp samesign ugt i64 %i.c, 28823037615171174
  br i1 %or.cond.i.i, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !25

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24919
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24919
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = icmp eq i64 %i.c, 0
  br i1 %i.h, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h215549b8b95ca5f5E.exit.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.g, align 8, !alias.scope !24919, !nonnull !16, !noundef !16
  %i.i = mul nuw nsw i64 %i.c, 160
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !24920, !noalias !24919
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !24920, !noalias !24919
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h215549b8b95ca5f5E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h215549b8b95ca5f5E.exit.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ 8, %bb.b ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
end_hunk_10
