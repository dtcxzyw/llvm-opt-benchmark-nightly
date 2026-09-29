Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang.nickel_lang.dfb3fb7377f01560-cgu.0?download=true
inline.NumInlined: 7487
inline.NumDeleted: 3530
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 23
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c2f9ef9f1271ac2E":bb.a
  %i.tb = icmp ugt i64 %i.sx, 72057594037927935
  br i1 %i.tb, label %bb.fv, label %bb.fu, !prof !17

bb.fu:                                            ; preds = %bb.ft
  %i.tc = icmp eq i64 %i.sx, 0
  br i1 %i.tc, label %bb.fw, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i30.i"

bb.fv:                                            ; preds = %bb.ft
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1058
  store ptr @746, ptr %i.b, align 8, !noalias !1058
  %i.td = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.td, align 8, !noalias !1058
  %i.te = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.te, align 8, !noalias !1058
  %i.tf = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.tf, align 8, !noalias !1058
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.tg, align 8, !noalias !1058
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc32.i unwind label %.body.thread35.i, !noalias !991

.noexc32.i:                                       ; preds = %bb.fv
  unreachable

bb.fw:                                            ; preds = %bb.fu
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i30.i" unwind label %.body.thread35.i, !noalias !991

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i30.i": ; preds = %bb.fw, %bb.fu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1057
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit34.i"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit34.i": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i.i30.i", %bb.fr, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !991
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !991
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.p, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false), !noalias !991
  call fastcc void @_ZN16nickel_lang_core4term6record10RecordData17with_field_values17hd763db91f9c2ed43E(ptr noalias noundef align 8 captures(address) dereferenceable(88) %i.q, ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.p), !noalias !991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !991
  %i.th = call noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue14record_posless17heca82e0fedb09f30E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(88) %i.q), !noalias !991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !991
  %i.ti = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval9operation19closurize_container17h4723a6b0da5ef11dE(ptr noundef nonnull %i.th)
          to label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h1c2cc1d940762ad8E.exit" unwind label %bb.db, !noalias !991

.body.thread.i:                                   ; preds = %bb.fn, %bb.fm, %.body.i.i.i, %bb.dq, %bb.df, %bb.de, %.body.thread35.i
  %eh.lpad-body33.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread35.i ], [ %i.nh, %bb.de ], [ %i.oh, %bb.dq ], [ %i.nh, %bb.df ], [ %eh.lpad-body.i.i.i, %bb.fn ], [ %eh.lpad-body.i.i.i, %bb.fm ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ]
  %.sroa.01.2.lpad-body32.i = phi i8 [ %.sroa.01.2.ph.i, %.body.thread35.i ], [ 1, %bb.de ], [ 1, %bb.dq ], [ 1, %bb.df ], [ 0, %bb.fn ], [ 0, %bb.fm ], [ 0, %.body.i.i.i ]
  %.sroa.02.2.lpad-body31.i = phi i8 [ %.sroa.02.2.ph.i, %.body.thread35.i ], [ 1, %bb.de ], [ 0, %bb.dq ], [ 1, %bb.df ], [ 0, %bb.fn ], [ 0, %bb.fm ], [ 0, %.body.i.i.i ]
  %.sroa.03.2.lpad-body30.i = phi i8 [ %.sroa.03.2.ph.i, %.body.thread35.i ], [ 0, %bb.de ], [ 0, %bb.dq ], [ 0, %bb.df ], [ 0, %bb.fn ], [ 0, %bb.fm ], [ 0, %.body.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h8b2c4f3b7232c8c0E"(ptr noalias noundef align 8 dereferenceable(72) %i.w) #43
          to label %bb.da unwind label %bb.fx, !noalias !991

bb.fx:                                            ; preds = %.body.thread.i
  %i.tj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !991
  unreachable

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit.i": ; preds = %bb.fy, %bb.da
  %i.tk = trunc nuw i8 %.sroa.02.0.i to i1
  br i1 %i.tk, label %bb.ga, label %bb.fz

bb.fy:                                            ; preds = %bb.da
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.mc, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !1059
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit.i"

bb.fz:                                            ; preds = %bb.ga, %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit.i"
  %i.tl = trunc nuw i8 %.sroa.01.0.i to i1
  br i1 %i.tl, label %bb.gb, label %common.resume

bb.ga:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit.i"
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E"(ptr noalias noundef readonly align 8 dereferenceable(56) %.sroa.910.0..sroa_idx) #43
  br label %bb.fz

bb.gb:                                            ; preds = %bb.fz
  call fastcc void @"_ZN4core3ptr116drop_in_place$LT$alloc..vec..Vec$LT$core..option..Option$LT$nickel_lang_core..term..string..NickelString$GT$$GT$$GT$17h04d8b76c84e354c7E"(ptr noalias noundef readonly align 8 dereferenceable(24) %.sroa.67.0..sroa_idx) #43
  br label %common.resume

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h1c2cc1d940762ad8E.exit": ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit34.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  br label %bb.gc

bb.gc:                                            ; preds = %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3f04fd325e59baf7E.exit.thread", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h1c2cc1d940762ad8E.exit"
  %.sroa.0.0 = phi ptr [ %i.ti, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h1c2cc1d940762ad8E.exit" ], [ null, %"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3f04fd325e59baf7E.exit.thread" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3d4124becd9e0740E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1072)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1073)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1072
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = tail call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h1b08a75ca18f1331E(ptr noalias noundef align 8 dereferenceable(64) %i.b) ; 2 uses
  %.not8.i.i = icmp eq ptr %i.c, null
  br i1 %.not8.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.lr.ph.i.i", label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.lr.ph.i.i": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i": ; preds = %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i", %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.lr.ph.i.i"
  %i.g = load i64, ptr %0, align 8, !range !25, !alias.scope !1074, !noalias !1075, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit"

bb.b:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i"
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !1076, !noalias !1077, !align !18, !noundef !11 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !1076, !noalias !1077
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h8eca4124e417ec8fE.exit.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h8eca4124e417ec8fE.exit.i.i": ; preds = %bb.b
  %.val.i.i.i.i = load i32, ptr %i.e, align 8, !alias.scope !1078, !noalias !1077, !noundef !11
  call void @_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts17hdda7f7b11c2ffd80E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, i32 noundef %.val.i.i.i.i)
  %.pr.i.i = load i64, ptr %i.a, align 8, !noalias !1079
  %.not2.i.i = icmp eq i64 %.pr.i.i, -9223372036854775808
  br i1 %.not2.i.i, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h8eca4124e417ec8fE.exit.i.i"
  %.val.i.i = load i64, ptr %i.b, align 8, !range !35, !alias.scope !1079, !noundef !11 ; 2 uses
  %switch.i.i = icmp sgt i64 %.val.i.i, 0
  br i1 %switch.i.i, label %bb.d, label %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i"

bb.d:                                             ; preds = %bb.c
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1079, !nonnull !11, !noundef !11
  %i.j = shl nuw i64 %.val.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #40
  br label %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i"

"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i": ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.k = call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h1b08a75ca18f1331E(ptr noalias noundef align 8 dereferenceable(64) %i.b) ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i", label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread"

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread": ; preds = %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i", %bb.a
  %.sroa.0.0.i.i.ph = phi ptr [ %i.c, %bb.a ], [ %i.k, %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1072
  br label %bb.e

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit": ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i", %bb.b, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h8eca4124e417ec8fE.exit.i.i"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h1b08a75ca18f1331E(ptr noalias noundef align 8 dereferenceable(64) %i.l) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1072
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread", %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit"
  %.sroa.0.0.i.i7 = phi ptr [ %.sroa.0.0.i.i.ph, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread" ], [ %i.m, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit" ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.n, align 8, !nonnull !11, !align !23, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3 = load ptr, ptr %i.o, align 8, !nonnull !11, !align !18, !noundef !11 ; 2 uses
  %.val.i = load ptr, ptr %.val3, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.p = getelementptr i8, ptr %.val3, i64 8
  %.val2.i = load ptr, ptr %i.p, align 8          ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noundef !11 ; 2 uses
  %i.q = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.r, ptr %.val.i, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h34e569b59b8122e6E.exit.i.i, !prof !17

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h34e569b59b8122e6E.exit.i.i: ; preds = %bb.e
  %.not.i.i4 = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i4, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h009bea5e385f6085E.exit", label %bb.g

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h34e569b59b8122e6E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val2.i, align 8, !noundef !11 ; 2 uses
  %i.t = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i2.i.i, 1                  ; 2 uses
  store i64 %i.u, ptr %.val2.i, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h009bea5e385f6085E.exit", !prof !17

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h009bea5e385f6085E.exit": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h34e569b59b8122e6E.exit.i.i, %bb.g
  %i.w = call fastcc noundef nonnull ptr @"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17h254c10ece6235347E"(ptr noundef nonnull %.sroa.0.0.i.i7, ptr noalias noundef nonnull align 1 %.val, ptr noundef nonnull %.val.i, ptr noundef %.val2.i, i64 noundef 0, ptr undef)
  br label %bb.i

bb.i:                                             ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h009bea5e385f6085E.exit"
  %.sroa.0.0 = phi ptr [ %i.w, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h009bea5e385f6085E.exit" ], [ null, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61f09e24ed827509E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 4                ; 4 uses
  %i.c = alloca [20 x i8], align 4                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1098, !noalias !1099, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !1098, !noalias !1099, !nonnull !11, !noundef !11 ; 4 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit": ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  store ptr %i.i, ptr %i.f, align 8, !alias.scope !1098, !noalias !1099
  %.sroa.0.0.copyload1 = load i32, ptr %i.g, align 4, !noalias !1098 ; 2 uses
  %.not = icmp eq i32 %.sroa.0.0.copyload1, 3
  br i1 %.not, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.thread", label %bb.b

bb.b:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit"
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1100
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %i.c, i64 16, i1 false)
  %i.n = call noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1100
  %i.o = icmp slt i64 %i.m, 0
  br i1 %i.o, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.b
  %i.p = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !1101
  %i.q = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #40, !noalias !1101 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.d, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41, !noalias !1102
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.q, %bb.c ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !1103
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !1104
  %i.s = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #40, !noalias !1104 ; 7 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.g, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h7964cdfb1c9f5068E.exit", !prof !17

bb.e:                                             ; preds = %bb.g
  %i.u = landingpad { ptr, i32 }
          cleanup
  br i1 %i.p, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit.i.i", label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !1105
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit.i.i"

bb.g:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1106
  store ptr @130, ptr %i.a, align 8, !noalias !1106
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.v, align 8, !noalias !1106
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.w, align 8, !noalias !1106
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.x, align 8, !noalias !1106
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.y, align 8, !noalias !1106
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.h unwind label %bb.e, !noalias !1104

bb.h:                                             ; preds = %bb.g
  unreachable

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit.i.i": ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.u

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h7964cdfb1c9f5068E.exit": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i"
  store i64 216172782113783809, ptr %i.s, align 8, !noalias !1104
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 %i.n, ptr %i.z, align 8, !noalias !1104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.m, ptr %i.aa, align 8
  %.sroa.5.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.5.0..sroa_idx2.i, align 8
  %.sroa.6.0..sroa_idx4.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx4.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.thread"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.thread": ; preds = %bb.a, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h7964cdfb1c9f5068E.exit"
  %.sroa.0.0 = phi ptr [ %i.s, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h7964cdfb1c9f5068E.exit" ], [ null, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit" ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h75e2a70333c61873E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1119)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1120)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.c = tail call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h1b08a75ca18f1331E(ptr noalias noundef align 8 dereferenceable(64) %i.b) ; 2 uses
  %.not8.i.i = icmp eq ptr %i.c, null
  br i1 %.not8.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.lr.ph.i.i", label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.lr.ph.i.i": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i"

"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i": ; preds = %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i", %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.lr.ph.i.i"
  %i.g = load i64, ptr %0, align 8, !range !25, !alias.scope !1121, !noalias !1122, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit"

bb.b:                                             ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i"
  %i.i = load ptr, ptr %i.d, align 8, !alias.scope !1123, !noalias !1124, !align !18, !noundef !11 ; 2 uses
  store ptr null, ptr %i.d, align 8, !alias.scope !1123, !noalias !1124
  %.not.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit", label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h8eca4124e417ec8fE.exit.i.i"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h8eca4124e417ec8fE.exit.i.i": ; preds = %bb.b
  %.val.i.i.i.i = load i32, ptr %i.e, align 8, !alias.scope !1125, !noalias !1124, !noundef !11
  call void @_ZN16nickel_lang_core4eval5value9ArrayData27iter_with_pending_contracts17hdda7f7b11c2ffd80E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i, i32 noundef %.val.i.i.i.i)
  %.pr.i.i = load i64, ptr %i.a, align 8, !noalias !1126
  %.not2.i.i = icmp eq i64 %.pr.i.i, -9223372036854775808
  br i1 %.not2.i.i, label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h8eca4124e417ec8fE.exit.i.i"
  %.val.i.i = load i64, ptr %i.b, align 8, !range !35, !alias.scope !1126, !noundef !11 ; 2 uses
  %switch.i.i = icmp sgt i64 %.val.i.i, 0
  br i1 %switch.i.i, label %bb.d, label %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i"

bb.d:                                             ; preds = %bb.c
  %.val3.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1126, !nonnull !11, !noundef !11
  %i.j = shl nuw i64 %.val.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.j, i64 noundef range(i64 1, -9223372036854775807) 8) #40
  br label %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i"

"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i": ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.k = call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h1b08a75ca18f1331E(ptr noalias noundef align 8 dereferenceable(64) %i.b) ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i", label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread"

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread": ; preds = %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i", %bb.a
  %.sroa.0.0.i.i.ph = phi ptr [ %i.c, %bb.a ], [ %i.k, %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h20fca64e6e1248c3E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1119
  br label %bb.e

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit": ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE.exit.i.i", %bb.b, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h8eca4124e417ec8fE.exit.i.i"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17h1b08a75ca18f1331E(ptr noalias noundef align 8 dereferenceable(64) %i.l) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1119
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread", %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit"
  %.sroa.0.0.i.i7 = phi ptr [ %.sroa.0.0.i.i.ph, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit.thread" ], [ %i.m, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h07ddecaed46eaf7eE.exit" ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.n, align 8, !nonnull !11, !align !23, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3 = load ptr, ptr %i.o, align 8, !nonnull !11, !align !18, !noundef !11 ; 2 uses
  %.val.i = load ptr, ptr %.val3, align 8, !nonnull !11, !noundef !11 ; 3 uses
  %i.p = getelementptr i8, ptr %.val3, i64 8
  %.val2.i = load ptr, ptr %i.p, align 8          ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noundef !11 ; 2 uses
  %i.q = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.r, ptr %.val.i, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h34e569b59b8122e6E.exit.i.i, !prof !17

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h34e569b59b8122e6E.exit.i.i: ; preds = %bb.e
  %.not.i.i4 = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i4, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hf858bf5066cec3cdE.exit", label %bb.g

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h34e569b59b8122e6E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val2.i, align 8, !noundef !11 ; 2 uses
end_hunk_0
begin_hunk_1_@"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h393f815bcbac411eE":bb.a
  %i.hk = or i64 %i.hh, %i.hi
  store i64 %i.hk, ptr %.val.i.i.i29, align 8, !noalias !2955
  %i.hl = icmp eq i64 %i.hf, 72057594037927935
  br i1 %i.hl, label %bb.bj, label %bb.bk, !prof !17

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2960
  store ptr @746, ptr %i.d, align 8, !noalias !2960
  %i.hm = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.hm, align 8, !noalias !2960
  %i.hn = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.hn, align 8, !noalias !2960
  %i.ho = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ho, align 8, !noalias !2960
  %i.hp = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.hp, align 8, !noalias !2960
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41, !noalias !2955
  unreachable

bb.bk:                                            ; preds = %bb.bi, %bb.bg, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf57f43ae76f91fc9E.exit.i.i.i27", %bb.bf
  %.sroa.0.0.i.i.i31 = phi ptr [ %.val.i.i.i29, %bb.bi ], [ null, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf57f43ae76f91fc9E.exit.i.i.i27" ], [ %.val.i.i.i29, %bb.bg ], [ null, %bb.bf ] ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !2955, !noalias !2956
  store ptr %.sroa.0.0.i.i.i31, ptr %i.v, align 8, !alias.scope !2955, !noalias !2956
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h39541cf34f45f6afE.exit32"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h39541cf34f45f6afE.exit32thread-pre-split": ; preds = %bb.be
  %.pr49 = load ptr, ptr %i.v, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h39541cf34f45f6afE.exit32"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h39541cf34f45f6afE.exit32": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h39541cf34f45f6afE.exit32thread-pre-split", %bb.bk
  %i.hq = phi ptr [ %.pr49, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h39541cf34f45f6afE.exit32thread-pre-split" ], [ %.sroa.0.0.i.i.i31, %bb.bk ]
  %.not20.not = icmp eq ptr %i.hq, null
  br i1 %.not20.not, label %.loopexit, label %bb.bl

bb.bl:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h39541cf34f45f6afE.exit32"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  %i.hr = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h393f815bcbac411eE"(ptr noalias noundef align 8 dereferenceable(64) %0, ptr noalias noundef align 8 dereferenceable(272) %i.k, i8 noundef %.pre-phi)
          to label %bb.bm unwind label %bb.br

bb.bm:                                            ; preds = %bb.bl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.k, i64 272, i1 false)
  store i64 1, ptr %i.i, align 8
  store i64 1, ptr %i.y, align 8
  store i64 1, ptr %i.z, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !2961
  %i.hs = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !2961 ; 3 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.bn, label %bb.bq, !prof !14

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #41
          to label %.noexc33 unwind label %bb.bo

.noexc33:                                         ; preds = %bb.bn
  unreachable

bb.bo:                                            ; preds = %bb.bn
  %i.hu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hb5c02f0cb5ef2e2fE"(ptr noalias noundef align 8 dereferenceable(280) %i.z)
          to label %common.resume unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.hv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.bq:                                            ; preds = %bb.bm
  %i.hw = add i64 %i.hr, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.hs, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h9a4ba4340142624bE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.hs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.bc

bb.br:                                            ; preds = %bb.bl
  %i.hx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h95a9229ec8b5448bE"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #43
          to label %common.resume unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h3f5cd7af58f7b2dbE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.n = load i64, ptr %i.m, align 8, !noundef !11 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !11 ; 2 uses
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
  %i.z = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1aaffa52882a84d0E"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !range !25, !noundef !11
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #41
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 272 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !11
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 264 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !11
  %i.ah = sub i64 %i.ae, %i.ag                    ; 2 uses
  %i.ai = sub i64 32, %i.ah
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17ha236fae1ebc28c4eE"(ptr noalias noundef align 8 dereferenceable(272) %i.ac, ptr noalias noundef align 8 dereferenceable(56) %0, i64 noundef %i.ai)
  %i.aj = load i64, ptr %i.ad, align 8, !noundef !11
  %i.ak = load i64, ptr %i.af, align 8, !noundef !11
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

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h37a554cc5b9a4503E.exit24"
  %.sroa.0.0 = phi i64 [ %i.dv, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h37a554cc5b9a4503E.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.aw = load i64, ptr %i.m, align 8, !noundef !11
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = load i64, ptr %i.o, align 8, !noundef !11
  %i.az = icmp eq i64 %i.ay, 32
  br i1 %i.az, label %.loopexit59, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !3014)
  %i.ba = load i64, ptr %0, align 8, !range !25, !alias.scope !3014, !noalias !3015, !noundef !11
  %i.bb = trunc nuw i64 %i.ba to i1
  br i1 %i.bb, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bc = call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61f09e24ed827509E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ao), !noalias !3014 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !3014, !noalias !3015
  store ptr %i.bc, ptr %i.an, align 8, !alias.scope !3014, !noalias !3015
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exitthread-pre-split": ; preds = %bb.i
  %.pr = load ptr, ptr %i.an, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exitthread-pre-split", %bb.j
  %i.bd = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exitthread-pre-split" ], [ %i.bc, %bb.j ]
  %.not23.not = icmp eq ptr %i.bd, null
  br i1 %.not23.not, label %.loopexit59, label %bb.k

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit"
  call void @llvm.experimental.noalias.scope.decl(metadata !3016)
  call void @llvm.experimental.noalias.scope.decl(metadata !3017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3018
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !noalias !3018
  br label %bb.l

.body.i.i:                                        ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i", %bb.x, %.body38
  %i.be = phi i64 [ %.pre.i.i, %.body38 ], [ 0, %bb.x ], [ 0, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i" ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %eh.lpad-body39, %.body38 ], [ %i.cp, %bb.x ], [ %i.cp, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i" ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.be
  %i.bg = sub i64 %i.bh, %i.be
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17ha9e0e5728520a3b9E"(ptr noalias noundef nonnull readonly align 8 %i.bf, i64 noundef %i.bg)
          to label %common.resume unwind label %bb.ak, !noalias !3018

bb.l:                                             ; preds = %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i", %bb.k
  %i.bh = phi i64 [ 0, %bb.k ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i" ] ; 7 uses
  %.sroa.4.07.i.i = phi i64 [ 32, %bb.k ], [ %i.bi, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i" ]
  %i.bi = add nsw i64 %.sroa.4.07.i.i, -1         ; 2 uses
  %i.bj = load i64, ptr %0, align 8, !range !25, !alias.scope !3019, !noalias !3020, !noundef !11
  %i.bk = load ptr, ptr %i.an, align 8, !alias.scope !3019, !noalias !3020 ; 2 uses
  store i64 0, ptr %0, align 8, !alias.scope !3019, !noalias !3020
  %i.bl = trunc nuw i64 %i.bj to i1
  br i1 %i.bl, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i", label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.experimental.noalias.scope.decl(metadata !3021)
  call void @llvm.experimental.noalias.scope.decl(metadata !3022), !noalias !3023
  %i.bm = load ptr, ptr %i.ar, align 8, !alias.scope !3024, !noalias !3025, !nonnull !11, !noundef !11
  %i.bn = load ptr, ptr %i.as, align 8, !alias.scope !3024, !noalias !3025, !nonnull !11, !noundef !11 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, %i.bm
  br i1 %i.bo, label %_ZN4core4iter6traits8iterator8Iterator7collect17h3dd1562ed1def171E.exit, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.i": ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  store ptr %i.bp, ptr %i.as, align 8, !alias.scope !3024, !noalias !3025
  %.sroa.0.0.copyload1.i = load i32, ptr %i.bn, align 4, !noalias !3026 ; 2 uses
  %.not.i = icmp eq i32 %.sroa.0.0.copyload1.i, 3
  br i1 %.not.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h3dd1562ed1def171E.exit, label %bb.n

bb.n:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.i"
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3027
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !noalias !3027
  store i32 %.sroa.0.0.copyload1.i, ptr %i.d, align 4, !noalias !3027
  %.val.i34 = load ptr, ptr %i.at, align 8, !alias.scope !3021, !noalias !3023 ; 2 uses
  %i.bq = invoke { ptr, i64 } @_ZN18nickel_lang_parser10identifier8LocIdent5label17h23360175f9f53dcbE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(20) %i.d)
          to label %.noexc35 unwind label %.loopexit ; 2 uses

.noexc35:                                         ; preds = %bb.n
  %i.br = extractvalue { ptr, i64 } %i.bq, 0
  %i.bs = extractvalue { ptr, i64 } %i.bq, 1      ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i34) ], !noalias !3023
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %i.d, i64 16, i1 false), !noalias !3027
  %i.bt = invoke noundef i32 @_ZN16nickel_lang_core8position8PosTable4push17he3da8391857f0e75E(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i34, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
          to label %.noexc36 unwind label %.loopexit

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3028
  %i.bu = icmp slt i64 %i.bs, 0
  br i1 %i.bu, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %.noexc36
  %i.bv = icmp eq i64 %i.bs, 0                    ; 2 uses
  br i1 %i.bv, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i.i", label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !3029
  %i.bw = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bs, i64 noundef range(i64 1, 9) 1) #40, !noalias !3029 ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.p, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i.i"

bb.p:                                             ; preds = %bb.o, %.noexc36
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.o ], [ 0, %.noexc36 ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.bs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc37 unwind label %.loopexit.split-lp

.noexc37:                                         ; preds = %bb.p
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i.i": ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bw, %bb.o ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.br, i64 %i.bs, i1 false), !noalias !3030
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !3031
  %i.by = call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #40, !noalias !3031 ; 7 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.s, label %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i.thread45", !prof !17

bb.q:                                             ; preds = %bb.s
  %i.ca = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.bv, label %.body38, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i.i, i64 noundef %i.bs, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !3032
  br label %.body38

bb.s:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3033
  store ptr @130, ptr %i.b, align 8, !noalias !3033
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cb, align 8, !noalias !3033
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cc, align 8, !noalias !3033
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cd, align 8, !noalias !3033
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ce, align 8, !noalias !3033
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.t unwind label %bb.q, !noalias !3031

bb.t:                                             ; preds = %bb.s
  unreachable

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i.thread45": ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h02409fcf6a040589E.exit.i.i"
  store i64 216172782113783809, ptr %i.by, align 8, !noalias !3031
  %i.cf = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i32 %i.bt, ptr %i.cf, align 8, !noalias !3031
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %i.bs, ptr %i.cg, align 8, !noalias !3027
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.5.0..sroa_idx2.i.i, align 8, !noalias !3027
  %.sroa.6.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store i64 %i.bs, ptr %.sroa.6.0..sroa_idx4.i.i, align 8, !noalias !3027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3027
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
  %.pre.i.i = load i64, ptr %i.ap, align 8, !alias.scope !3034, !noalias !3018
  br label %.body.i.i

"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i": ; preds = %bb.l
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17h3dd1562ed1def171E.exit, label %bb.u

bb.u:                                             ; preds = %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i.thread45", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i"
  %.sroa.0.0.i.i.i48 = phi ptr [ %i.by, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i.thread45" ], [ %i.bk, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i" ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3035)
  %i.ch = load i64, ptr %i.ap, align 8, !alias.scope !3035, !noalias !3018, !noundef !11 ; 5 uses
  %i.ci = icmp eq i64 %i.ch, 0
  %i.cj = icmp eq i64 %i.bh, 32                   ; 2 uses
  %or.cond.i.i.i = and i1 %i.cj, %i.ci
  br i1 %or.cond.i.i.i, label %bb.w, label %bb.v, !prof !39

bb.v:                                             ; preds = %bb.u
  %i.ck = icmp eq i64 %i.ch, %i.bh
  br i1 %i.ck, label %bb.ag, label %bb.af

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3036
  store ptr @332, ptr %i.g, align 8, !noalias !3036
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %i.cl, align 8, !noalias !3036
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.cm, align 8, !noalias !3036
  %i.cn = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cn, align 8, !noalias !3036
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.co, align 8, !noalias !3036
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @333) #41
          to label %bb.ad unwind label %bb.x, !noalias !3036

bb.x:                                             ; preds = %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = ptrtoint ptr %.sroa.0.0.i.i.i48 to i64
  %i.cr = and i64 %i.cq, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.cr, i64 2)
  switch i64 %..i.i, label %.body.i.i [
    i64 2, label %bb.y
    i64 0, label %bb.z
  ], !prof !16

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc31 unwind label %bb.ae

.noexc31:                                         ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3037
  store ptr %.sroa.0.0.i.i.i48, ptr %i.f, align 8, !noalias !3037
  %i.cs = load i64, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !3038, !noundef !11 ; 3 uses
  %i.ct = and i64 %i.cs, 72057594037927935
  %i.cu = add nsw i64 %i.ct, -1                   ; 3 uses
  %i.cv = and i64 %i.cs, 1080863910568919040
  %i.cw = icmp ult i64 %i.cs, 864691128455135232
  call void @llvm.assume(i1 %i.cw), !noalias !3036
  %i.cx = or i64 %i.cu, %i.cv
  store i64 %i.cx, ptr %.sroa.0.0.i.i.i48, align 8, !noalias !3038
  %i.cy = icmp ugt i64 %i.cu, 72057594037927935
  br i1 %i.cy, label %bb.ab, label %bb.aa, !prof !17

bb.aa:                                            ; preds = %bb.z
  %i.cz = icmp eq i64 %i.cu, 0
  br i1 %i.cz, label %bb.ac, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i"

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3038
  store ptr @746, ptr %i.e, align 8, !noalias !3038
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.da, align 8, !noalias !3038
  %i.db = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.db, align 8, !noalias !3038
  %i.dc = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.dc, align 8, !noalias !3038
  %i.dd = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 0, ptr %i.dd, align 8, !noalias !3038
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc32 unwind label %bb.ae

.noexc32:                                         ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i" unwind label %bb.ae

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i": ; preds = %bb.ac, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3037
  br label %.body.i.i

bb.ad:                                            ; preds = %bb.w
  unreachable

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.y
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !3036
  unreachable

bb.af:                                            ; preds = %bb.v
  br i1 %i.cj, label %bb.ah, label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i"

bb.ag:                                            ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false), !alias.scope !3035, !noalias !3018
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i"

bb.ah:                                            ; preds = %bb.af
  %.not.i.i.i = icmp eq i64 %i.ch, 32
  br i1 %.not.i.i.i, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.aj, %bb.ah
  %i.df = phi i64 [ %i.dj, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  store i64 %i.df, ptr %i.aq, align 8, !alias.scope !3035, !noalias !3018
  store i64 0, ptr %i.ap, align 8, !alias.scope !3035, !noalias !3018
  br label %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i"

bb.aj:                                            ; preds = %bb.ah
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.ch
  %i.dh = shl i64 %i.ch, 3
  %i.di = sub i64 256, %i.dh
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 dereferenceable(272) %i.h, ptr nonnull align 8 %i.dg, i64 %i.di, i1 false), !alias.scope !3035, !noalias !3018
  %.pre.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !3035, !noalias !3018
  %i.dj = sub i64 32, %.pre.i.i.i
  br label %bb.ai

"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i": ; preds = %bb.ai, %bb.ag, %bb.af
  %i.dk = phi i64 [ %i.df, %bb.ai ], [ %i.bh, %bb.af ], [ 0, %bb.ag ]
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.dk
  store ptr %.sroa.0.0.i.i.i48, ptr %i.dl, align 8, !alias.scope !3035, !noalias !3018
  %i.dm = load i64, ptr %i.aq, align 8, !alias.scope !3035, !noalias !3018, !noundef !11
  %i.dn = add i64 %i.dm, 1                        ; 3 uses
  store i64 %i.dn, ptr %i.aq, align 8, !alias.scope !3035, !noalias !3018
  %i.do = icmp eq i64 %i.bi, 0
  br i1 %i.do, label %_ZN4core4iter6traits8iterator8Iterator7collect17h3dd1562ed1def171E.exit, label %bb.l

bb.ak:                                            ; preds = %.body.i.i
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !3018
  unreachable

common.resume:                                    ; preds = %bb.bb, %bb.ay, %bb.am, %.body.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ds, %bb.am ], [ %.pn.i.i, %.body.i.i ], [ %i.en, %bb.ay ], [ %i.eq, %bb.bb ]
  resume { ptr, i32 } %common.resume.op

_ZN4core4iter6traits8iterator8Iterator7collect17h3dd1562ed1def171E.exit: ; preds = %bb.m, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.i", %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i", %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i"
  %.sroa.3.0.copyload41 = phi i64 [ %i.bh, %bb.m ], [ %i.bh, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8cacf117bc68d246E.exit.i" ], [ %i.bh, %"_ZN100_$LT$core..iter..adapters..take..Take$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h04f0f6fdc832e204E.exit.i.i" ], [ %i.dn, %"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h0a3105b07e06de0fE.exit.i.i" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(256) %i.h, i64 256, i1 false)
  %.sroa.2.0.copyload40 = load i64, ptr %i.ap, align 8, !noalias !3039 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3018
  store i64 1, ptr %i.j, align 8
  store i64 1, ptr %i.au, align 8
  store i64 0, ptr %i.av, align 8
  store i64 %.sroa.2.0.copyload40, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.3.0.copyload41, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !3040
  %i.dq = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !3040 ; 3 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.al, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h37a554cc5b9a4503E.exit24", !prof !14

bb.al:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3dd1562ed1def171E.exit
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #41
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.ds = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hb5c02f0cb5ef2e2fE"(ptr noalias noundef align 8 dereferenceable(280) %i.av)
          to label %common.resume unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h37a554cc5b9a4503E.exit24": ; preds = %_ZN4core4iter6traits8iterator8Iterator7collect17h3dd1562ed1def171E.exit
  %i.du = sub i64 %.sroa.0.0, %.sroa.2.0.copyload40
  %i.dv = add i64 %i.du, %.sroa.3.0.copyload41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.dq, ptr noundef nonnull align 8 dereferenceable(296) %i.j, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h9a4ba4340142624bE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.dq)
  br label %bb.g

.loopexit59:                                      ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26", %bb.as, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit", %bb.h
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit" ], [ %.sroa.0.0, %bb.h ], [ %.sroa.0.2, %bb.as ], [ %.sroa.0.2, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26" ]
  ret i64 %.sroa.0.1

bb.ao:                                            ; preds = %bb.c
  %i.dw = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1aaffa52882a84d0E"(ptr noalias noundef align 8 dereferenceable(8) %i.t) ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !range !25, !noundef !11
  %i.dy = trunc nuw i64 %i.dx to i1
  br i1 %i.dy, label %bb.ap, label %bb.aq, !prof !13

bb.ap:                                            ; preds = %bb.ao
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = add i8 %2, -1                           ; 2 uses
  %i.eb = tail call fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h3f5cd7af58f7b2dbE"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.dz, i8 noundef %i.ea)
  br label %.preheader60

bb.aq:                                            ; preds = %bb.ao
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #41
  unreachable

bb.ar:                                            ; preds = %.preheader60, %bb.ba
  %.sroa.0.2 = phi i64 [ %i.ep, %bb.ba ], [ %.sroa.0.2.ph, %.preheader60 ] ; 3 uses
  %i.ec = load i64, ptr %i.m, align 8, !noundef !11
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ee = load i64, ptr %i.o, align 8, !noundef !11
  %i.ef = icmp eq i64 %i.ee, 32
  br i1 %i.ef, label %.loopexit59, label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  call void @llvm.experimental.noalias.scope.decl(metadata !3041)
  %i.eg = load i64, ptr %0, align 8, !range !25, !alias.scope !3041, !noalias !3042, !noundef !11
  %i.eh = trunc nuw i64 %i.eg to i1
  br i1 %i.eh, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26thread-pre-split", label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ei = call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61f09e24ed827509E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.v), !noalias !3041 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !3041, !noalias !3042
  store ptr %i.ei, ptr %i.u, align 8, !alias.scope !3041, !noalias !3042
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26thread-pre-split": ; preds = %bb.at
  %.pr49 = load ptr, ptr %i.u, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26thread-pre-split", %bb.au
  %i.ej = phi ptr [ %.pr49, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26thread-pre-split" ], [ %i.ei, %bb.au ]
  %.not20.not = icmp eq ptr %i.ej, null
  br i1 %.not20.not, label %.loopexit59, label %bb.av

bb.av:                                            ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit26"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  %i.ek = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h3f5cd7af58f7b2dbE"(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(272) %i.k, i8 noundef %.pre-phi)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %.sroa.413.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(272) %i.k, i64 272, i1 false)
  store i64 1, ptr %i.i, align 8
  store i64 1, ptr %i.x, align 8
  store i64 1, ptr %i.y, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !3043
  %i.el = call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !3043 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ax, label %bb.ba, !prof !14

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #41
          to label %.noexc27 unwind label %bb.ay

.noexc27:                                         ; preds = %bb.ax
  unreachable

bb.ay:                                            ; preds = %bb.ax
  %i.en = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hb5c02f0cb5ef2e2fE"(ptr noalias noundef align 8 dereferenceable(280) %i.y)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.ba:                                            ; preds = %bb.aw
  %i.ep = add i64 %i.ek, %.sroa.0.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.el, ptr noundef nonnull align 8 dereferenceable(296) %i.i, i64 296, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call fastcc void @"_ZN17imbl_sized_chunks11sized_chunk18Chunk$LT$A$C$_$GT$9push_back17h9a4ba4340142624bE"(ptr noalias noundef align 8 dereferenceable(272) %1, ptr noundef nonnull %i.el)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.ar

bb.bb:                                            ; preds = %bb.av
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr191drop_in_place$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$32_usize$GT$$GT$17h95a9229ec8b5448bE"(ptr noalias noundef align 8 dereferenceable(272) %i.k) #43
          to label %common.resume unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h45c5b64870c116f8E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0, ptr noalias noundef nonnull align 8 dereferenceable(272) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [272 x i8], align 8               ; 9 uses
  %i.g = alloca [296 x i8], align 8               ; 7 uses
  %i.h = alloca [296 x i8], align 8               ; 9 uses
  %i.i = alloca [272 x i8], align 8               ; 6 uses
  %i.j = icmp eq i8 %2, 1
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !11 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !noundef !11 ; 2 uses
  %.not21 = icmp eq i64 %i.n, %i.l
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.l
  %i.p = xor i64 %i.l, -1
  %i.q = getelementptr [8 x i8], ptr %i.o, i64 %i.n
  %i.r = getelementptr [8 x i8], ptr %i.q, i64 %i.p ; 3 uses
  %.not2257 = icmp eq ptr %i.r, null
  %.not22 = select i1 %.not21, i1 true, i1 %.not2257 ; 2 uses
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %.not22, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not22, label %..preheader61_crit_edge, label %bb.ao

..preheader61_crit_edge:                          ; preds = %bb.c
  %.pre = add i8 %2, -1
  br label %.preheader61

.preheader61:                                     ; preds = %..preheader61_crit_edge, %bb.ap
  %.pre-phi = phi i8 [ %.pre, %..preheader61_crit_edge ], [ %i.ed, %bb.ap ]
  %.sroa.0.2.ph = phi i64 [ 0, %..preheader61_crit_edge ], [ %i.ee, %bb.ap ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  br label %bb.ar

bb.d:                                             ; preds = %bb.b
  %i.x = tail call fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1aaffa52882a84d0E"(ptr noalias noundef align 8 dereferenceable(8) %i.r) ; 4 uses
  %i.y = load i64, ptr %i.x, align 8, !range !25, !noundef !11
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @8, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @23) #41
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 272 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !11
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 264 ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !noundef !11
  %i.af = sub i64 %i.ac, %i.ae                    ; 2 uses
  %i.ag = sub i64 32, %i.af
  tail call fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17h029936cf3ab2ad97E"(ptr noalias noundef align 8 dereferenceable(272) %i.aa, ptr noalias noundef align 8 dereferenceable(80) %0, i64 noundef %i.ag)
  %i.ah = load i64, ptr %i.ab, align 8, !noundef !11
  %i.ai = load i64, ptr %i.ad, align 8, !noundef !11
  %i.aj = add i64 %i.af, %i.ai
  %i.ak = sub i64 %i.ah, %i.aj
  br label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.b
  %.sroa.0.0.ph = phi i64 [ 0, %bb.b ], [ %i.ak, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 264 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 280
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 288
  br label %bb.g

bb.g:                                             ; preds = %.preheader, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h37a554cc5b9a4503E.exit24"
  %.sroa.0.0 = phi i64 [ %i.dy, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h37a554cc5b9a4503E.exit24" ], [ %.sroa.0.0.ph, %.preheader ] ; 3 uses
  %i.au = load i64, ptr %i.k, align 8, !noundef !11
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = load i64, ptr %i.m, align 8, !noundef !11
  %i.ax = icmp eq i64 %i.aw, 32
  br i1 %i.ax, label %.loopexit60, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3082)
  %i.ay = load i64, ptr %0, align 8, !range !25, !alias.scope !3082, !noalias !3083, !noundef !11
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h28bb3e0fbad742bfE.exitthread-pre-split", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ba = tail call fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hc3973f89987b9ec2E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.al), !noalias !3082 ; 2 uses
  store i64 1, ptr %0, align 8, !alias.scope !3082, !noalias !3083
  store ptr %i.ba, ptr %i.am, align 8, !alias.scope !3082, !noalias !3083
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h28bb3e0fbad742bfE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h28bb3e0fbad742bfE.exitthread-pre-split": ; preds = %bb.i
  %.pr = load ptr, ptr %i.am, align 8
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h28bb3e0fbad742bfE.exit"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h28bb3e0fbad742bfE.exit": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h28bb3e0fbad742bfE.exitthread-pre-split", %bb.j
  %i.bb = phi ptr [ %.pr, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h28bb3e0fbad742bfE.exitthread-pre-split" ], [ %i.ba, %bb.j ]
  %.not23.not = icmp eq ptr %i.bb, null
  br i1 %.not23.not, label %.loopexit60, label %bb.k

bb.k:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h28bb3e0fbad742bfE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3084)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3085)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3086
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, i8 0, i64 16, i1 false), !noalias !3086
  br label %bb.l

.body.i.i:                                        ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i", %bb.x, %bb.u
  %i.bc = phi i64 [ %.pre.i.i, %bb.u ], [ 0, %bb.x ], [ 0, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i" ] ; 2 uses
  %.pn.i.i = phi { ptr, i32 } [ %lpad.phi, %bb.u ], [ %i.cs, %bb.x ], [ %i.cs, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i" ]
end_hunk_1
begin_hunk_2_@_ZN16nickel_lang_core4eval5subst17h128b6cdd3210058dE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  %i.py = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.py, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, i64 32, i1 false)
  store i64 -9223372036854775755, ptr %i.am, align 8
  %i.pz = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h203a76ba3df09da2E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.am, i32 noundef %i.bm)
          to label %bb.ff unwind label %bb.de

bb.ff:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  br label %.thread398.thread

bb.fg:                                            ; preds = %bb.dc
  %i.qa = load ptr, ptr %i.al, align 8, !nonnull !11, !noundef !11
  %i.qb = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h128b6cdd3210058dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fh unwind label %bb.fi

bb.fh:                                            ; preds = %bb.fg
  store ptr %i.qb, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.qc, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false)
  store i64 -9223372036854775754, ptr %i.ak, align 8
  %i.qd = call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h203a76ba3df09da2E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.ak, i32 noundef %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  br label %.thread398.thread

bb.fi:                                            ; preds = %bb.fg
  %i.qe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.al, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7990)
  call void @llvm.experimental.noalias.scope.decl(metadata !7991)
  %i.qg = load ptr, ptr %i.qf, align 8, !alias.scope !7992, !nonnull !11, !noundef !11 ; 2 uses
  %i.qh = load i64, ptr %i.qg, align 8, !noalias !7992, !noundef !11
  %i.qi = add i64 %i.qh, -1                       ; 2 uses
  store i64 %i.qi, ptr %i.qg, align 8, !noalias !7992
  %i.qj = icmp eq i64 %i.qi, 0
  br i1 %i.qj, label %bb.fj, label %.thread

bb.fj:                                            ; preds = %bb.fi
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6a62d9c4eafed149E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qf)
          to label %.thread unwind label %bb.bk

bb.fk:                                            ; preds = %bb.dd
  %i.qk = extractvalue { ptr, ptr } %i.mr, 0      ; 4 uses
  %i.ql = extractvalue { ptr, ptr } %i.mr, 1      ; 2 uses
  store ptr %i.qk, ptr %i.ab, align 8
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %i.ql, ptr %i.qm, align 8
  %i.qn = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h128b6cdd3210058dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.ql, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %bb.fl unwind label %bb.fm

bb.fl:                                            ; preds = %bb.fk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.qo = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.qk, ptr %i.qo, align 8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %i.qn, ptr %i.qp, align 8
  store i64 -9223372036854775753, ptr %i.aa, align 8
  %i.qq = call fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h203a76ba3df09da2E(ptr noalias noundef align 8 captures(address) dereferenceable(56) %i.aa, i32 noundef %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %.thread398.thread

bb.fm:                                            ; preds = %bb.fk
  %i.qr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.qs = load i64, ptr %i.qk, align 8, !noalias !7993, !noundef !11
  %i.qt = add i64 %i.qs, -1                       ; 2 uses
  store i64 %i.qt, ptr %i.qk, align 8, !noalias !7993
  %i.qu = icmp eq i64 %i.qt, 0
  br i1 %i.qu, label %bb.fn, label %.thread

bb.fn:                                            ; preds = %bb.fm
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h11e86ee6dea44245E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.thread unwind label %bb.bk

.thread367:                                       ; preds = %bb.di, %bb.de, %bb.dt
  %.pn57 = phi { ptr, i32 } [ %i.ms, %bb.de ], [ %.pn348, %bb.dt ], [ %lpad.thr_comm.split-lp352, %bb.di ] ; 12 uses
  switch i64 %i.bn, label %bb.fo [
    i64 0, label %.thread309
    i64 2, label %.thread309
    i64 3, label %.thread309
    i64 4, label %.thread309
    i64 5, label %.thread309
    i64 6, label %.thread309
    i64 7, label %.thread309
    i64 8, label %.thread309
    i64 9, label %.thread309
    i64 10, label %.thread309
    i64 11, label %.thread309
  ]

bb.fo:                                            ; preds = %.thread367
  invoke fastcc void @"_ZN4core3ptr69drop_in_place$LT$nickel_lang_core..eval..value..lens..TermContent$GT$17h21f20666427528ceE"(i64 %i.bn, ptr nonnull %.sroa.9.0.copyload) #43
          to label %.thread309 unwind label %bb.bk

bb.fp:                                            ; preds = %bb.i
  %i.qv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.az, ptr noundef nonnull align 8 dereferenceable(20) %i.qv, i64 20, i1 false)
  %i.qw = load ptr, ptr %i.ay, align 8, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  %.not = icmp eq ptr %i.qw, null
  br i1 %.not, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hcb3200d043ed86f3E.exit", label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.qx = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h128b6cdd3210058dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, ptr noundef nonnull %i.qw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %4)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hcb3200d043ed86f3E.exit" unwind label %.thread316, !inline_history !7863

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hcb3200d043ed86f3E.exit": ; preds = %bb.fq, %bb.fp
  %.sroa.06.0 = phi ptr [ null, %bb.fp ], [ %i.qx, %bb.fq ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !7994
  %i.qy = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #40, !noalias !7994 ; 6 uses
  %i.qz = icmp eq ptr %i.qy, null
  br i1 %i.qz, label %bb.fs, label %_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h7ba7ff604df888b3E.exit, !prof !17

bb.fr:                                            ; preds = %bb.fs
  %i.ra = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h28ce6d9b63c63845E"(ptr %.sroa.06.0) #43
          to label %.thread unwind label %bb.fu, !noalias !7994

bb.fs:                                            ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hcb3200d043ed86f3E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !7994
  store ptr @130, ptr %i.t, align 8, !noalias !7994
  %i.rb = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 1, ptr %i.rb, align 8, !noalias !7994
  %i.rc = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr null, ptr %i.rc, align 8, !noalias !7994
  %i.rd = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.rd, align 8, !noalias !7994
  %i.re = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 0, ptr %i.re, align 8, !noalias !7994
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.ft unwind label %bb.fr, !noalias !7994

bb.ft:                                            ; preds = %bb.fs
  unreachable

bb.fu:                                            ; preds = %bb.fr
  %i.rf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !7994
  unreachable

_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h7ba7ff604df888b3E.exit: ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hcb3200d043ed86f3E.exit"
  store i64 504403158265495553, ptr %i.qy, align 8, !noalias !7994
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store i32 %i.bm, ptr %i.rg, align 8, !noalias !7994
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %.sroa.06.0, ptr %i.rh, align 8, !noalias !7995
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
  call fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17hdf88feefe43106d9E"(i64 %i.bn, ptr nonnull %.val73)
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
  invoke fastcc void @"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueContent$GT$17hdf88feefe43106d9E"(i64 %i.bn, ptr %.val71) #43
          to label %.thread unwind label %bb.bk

.thread:                                          ; preds = %bb.cn, %bb.co, %bb.cp, %bb.fr, %.body, %bb.ck, %bb.fm, %bb.fn, %bb.fi, %bb.fj, %bb.eu, %.sink.split.i, %bb.dy, %bb.dz, %bb.fa, %bb.fc, %bb.em, %.thread309, %.thread309, %.thread309, %.thread309, %.thread309, %bb.fw, %bb.fx
  %.pn63292 = phi { ptr, i32 } [ %.pn61302, %bb.fw ], [ %lpad.thr_comm.split-lp, %bb.fx ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %.pn61302, %.thread309 ], [ %lpad.thr_comm359372, %bb.dz ], [ %i.ra, %bb.fr ], [ %lpad.thr_comm379395, %bb.em ], [ %i.lz, %bb.cp ], [ %lpad.thr_comm.split-lp360, %bb.dy ], [ %i.lz, %bb.cn ], [ %lpad.thr_comm404, %bb.fc ], [ %lpad.thr_comm404, %bb.fa ], [ %i.lz, %bb.co ], [ %eh.lpad-body, %.body ], [ %i.qe, %bb.fi ], [ %i.lu, %bb.ck ], [ %i.pl, %.sink.split.i ], [ %i.pl, %bb.eu ], [ %i.qe, %bb.fj ], [ %i.qr, %bb.fn ], [ %i.qr, %bb.fm ]
  resume { ptr, i32 } %.pn63292

bb.fx:                                            ; preds = %bb.a
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bl) #43
          to label %.thread unwind label %bb.bk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h51fd9e31ed0fad8dE"(ptr noalias noundef nonnull readonly align 4 captures(none) dereferenceable(20) %0, i32 %.0.val, ptr noalias noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  store i64 -9223372036854775760, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !7998
  %i.d = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40, !noalias !7998 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h850cadad7311f538E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.b) #43
          to label %.body unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7998
  store ptr @130, ptr %i.a, align 8, !noalias !7998
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !7998
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !7998
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !7998
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !7998
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.d unwind label %bb.b, !noalias !7998

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

.body:                                            ; preds = %bb.b
  invoke fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h533521991b1afc83E"(ptr %1) #43
          to label %common.resume unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  store i64 360287970189639681, ptr %i.d, align 8, !noalias !7998
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.0.val, ptr %i.l, align 8, !noalias !7998
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %1)
          to label %"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h533521991b1afc83E.exit" unwind label %bb.g

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #40
  br label %common.resume

"_ZN4core3ptr84drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..error..EvalErrorKind$GT$$GT$17h533521991b1afc83E.exit": ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %1, i64 noundef 392, i64 noundef 8) #40
  ret ptr %i.d

bb.h:                                             ; preds = %.body
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h5ab57ad8b1b19e13E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noundef nonnull %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !11, !align !23, !noundef !11
  call fastcc void @"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$3get17h703ae53d8d3e4236E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %1)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !11, !align !18, !noundef !11
  %i.e = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !align !18, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.i = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h128b6cdd3210058dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E"(ptr noalias noundef align 8 dereferenceable(16) %i.h) #43
          to label %common.resume unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !8017)
  call void @llvm.experimental.noalias.scope.decl(metadata !8018)
  call void @llvm.experimental.noalias.scope.decl(metadata !8019)
  %i.k = load ptr, ptr %i.h, align 8, !alias.scope !8020, !nonnull !11, !noundef !11 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !noalias !8020, !noundef !11
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %i.k, align 8, !noalias !8020
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.d, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i"

bb.d:                                             ; preds = %bb.c
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i" unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8021)
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !8022, !noundef !11 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !noalias !8023, !noundef !11
  %i.t = add i64 %i.s, -1                         ; 2 uses
  store i64 %i.t, ptr %i.q, align 8, !noalias !8023
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.g, label %common.resume

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.p)
          to label %common.resume unwind label %bb.j

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i": ; preds = %bb.d, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8024)
  %i.w = load ptr, ptr %i.v, align 8, !alias.scope !8025, !noundef !11 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit", label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i"
  %i.y = load i64, ptr %i.w, align 8, !noalias !8026, !noundef !11
  %i.z = add i64 %i.y, -1                         ; 2 uses
  store i64 %i.z, ptr %i.w, align 8, !noalias !8026
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.i, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"

bb.i:                                             ; preds = %bb.h
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v)
  br label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit"

bb.j:                                             ; preds = %bb.g
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.o, %bb.g ], [ %i.o, %bb.f ], [ %i.j, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit": ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i", %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.i

bb.k:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h3f487e94291f2273E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.5 = alloca [20 x i8], align 8            ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e61b9d897ce5c2fE.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e61b9d897ce5c2fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, ptr noundef nonnull align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !8029
  %i.d = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #40, !noalias !8029 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h28ce6d9b63c63845E"(ptr %2) #43
          to label %.body unwind label %bb.e, !noalias !8029

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e61b9d897ce5c2fE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8029
  store ptr @130, ptr %i.a, align 8, !noalias !8029
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !8029
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !8029
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !8029
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !8029
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.d unwind label %bb.b, !noalias !8029

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !8029
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e61b9d897ce5c2fE.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !8029
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %3, ptr %i.l, align 8, !noalias !8029
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %2, ptr %i.m, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret ptr %i.d

.body:                                            ; preds = %bb.b, %bb.g
  %eh.lpad-body4 = phi { ptr, i32 } [ %i.n, %bb.g ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %eh.lpad-body4

bb.g:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #43
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12enum_variant17h7ba7ff604df888b3E(ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(20) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !8032
  %i.b = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #40, !noalias !8032 ; 6 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.f, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h28ce6d9b63c63845E"(ptr %1) #43
          to label %.body unwind label %bb.e, !noalias !8032

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8032
  store ptr @130, ptr %i.a, align 8, !noalias !8032
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8, !noalias !8032
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8, !noalias !8032
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !noalias !8032
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8, !noalias !8032
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.d unwind label %bb.b, !noalias !8032

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !8032
  unreachable

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.b, align 8, !noalias !8032
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.j, align 8, !noalias !8032
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.k, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(20) %0, i64 20, i1 false)
  ret ptr %i.b

.body:                                            ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h0a39f01421e5b401E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !11 ; 2 uses
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
define internal fastcc noundef align 8 dereferenceable_or_null(24) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h363f96092e8a3c8bE(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !11 ; 2 uses
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
define internal fastcc noundef align 8 dereferenceable_or_null(56) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h43410f2f59797f86E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !11 ; 2 uses
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
define internal fastcc noundef align 8 dereferenceable_or_null(64) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17h8886042fdb342e77E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !11 ; 2 uses
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
define internal fastcc noundef align 8 dereferenceable_or_null(152) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hbf6e968b43ef2526E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !11 ; 2 uses
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
define internal fastcc noundef align 8 dereferenceable_or_null(32) ptr @_ZN16nickel_lang_core4eval5value11NickelValue13as_value_data17hdf6dfe81cd9644e2E(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = ptrtoint ptr %.0.val to i64
  %i.c = and i64 %i.b, 3
  %. = tail call i64 @llvm.umin.i64(i64 %i.c, i64 2)
  switch i64 %., label %bb.d [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !16

bb.b:                                             ; preds = %bb.a
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %.0.val, align 8, !noundef !11 ; 2 uses
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
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h203a76ba3df09da2E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$nickel_lang_core..term..Term$GT$17h850cadad7311f538E"(ptr noalias noundef align 8 dereferenceable(56) %0) #43
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @130, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h314cc84dbfa7729dE(ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.c = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #40 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #43
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @130, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h32b76cb3a8b323c1E(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.b = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef 8) #40 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.f, !prof !17

bb.b:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8, !range !34, !alias.scope !8041, !noundef !11 ; 2 uses
  %i.e = icmp eq i64 %.val, 0
  br i1 %i.e, label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.f, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !8042
  br label %"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit"

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @130, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
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

"_ZN4core3ptr65drop_in_place$LT$nickel_lang_core..term..string..NickelString$GT$17h2ed177560cc2c976E.exit": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h3c120577747751c2E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.b = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef 8) #40 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..term..record..RecordData$GT$17h474df5d28fb0b082E"(ptr noalias noundef align 8 dereferenceable(88) %0) #43
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @130, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h8b5642ffe00c07dcE(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h00d05fe7a9e18f37E"(ptr noalias noundef align 8 dereferenceable(56) %0) #43
  resume { ptr, i32 } %i.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @130, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
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
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17h8f66c62211067ccdE(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(152) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.b = tail call noundef align 8 dereferenceable_or_null(168) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 168, i64 noundef 8) #40 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr51drop_in_place$LT$nickel_lang_core..label..Label$GT$17hd3a798455172468eE"(ptr noalias noundef align 8 dereferenceable(152) %0) #43
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @130, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hcf2c49a6c4181de3E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(56) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.b = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #40 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @"_ZN4core3ptr72drop_in_place$LT$nickel_lang_core..eval..cache..lazy..InnerThunkData$GT$17h5f2353f52e4f863bE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.e)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17h9a77c3310329134dE.exit" unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @130, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.i, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN4core3ptr94drop_in_place$LT$core..cell..RefCell$LT$nickel_lang_core..eval..cache..lazy..ThunkData$GT$$GT$17h9a77c3310329134dE.exit": ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5value12ValueBlockRc6encode17hdad52d3e905b6155E(ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(64) %0, i32 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.b = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 80, i64 noundef 8) #40 ; 5 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.e, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$nickel_lang_core..eval..value..ArrayData$GT$17h91c652f2a6211a07E"(ptr noalias noundef align 8 dereferenceable(64) %0) #43
          to label %bb.g unwind label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @130, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.h, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.g:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint11patch_field17h057546ad037ba1f7E(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !11
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !8055 ; 2 uses
  %i.d = extractvalue { i64, ptr } %i.c, 0
  %cond.i = icmp eq i64 %i.d, 6
  br i1 %cond.i, label %bb.c, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit

bb.c:                                             ; preds = %bb.b
  %i.e = extractvalue { i64, ptr } %i.c, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.e) ]
  %.val.i = load ptr, ptr %i.e, align 8, !noalias !8055, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.val.i, i64 16 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !noalias !8056, !noundef !11
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e, !prof !13

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.f, align 8, !noalias !8056
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i" unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #41, !noalias !8056
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.ad, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load i64, ptr %i.f, align 8, !noalias !8057, !noundef !11
  %i.l = add i64 %i.k, 1
  store i64 %i.l, ptr %i.f, align 8, !noalias !8057
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i": ; preds = %bb.d
  %i.m = load i64, ptr %i.f, align 8, !noalias !8057, !noundef !11
  %i.n = add i64 %i.m, 1
  store i64 %i.n, ptr %i.f, align 8, !noalias !8057
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit

_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit: ; preds = %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i", %bb.b, %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !11, !noundef !11 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !11 ; 2 uses
  %.idx = mul nuw nsw i64 %i.r, 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit5
  %.sroa.01.02 = phi ptr [ %i.u, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit5 ], [ %i.p, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 160 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.01.02, i64 152
  %i.w = tail call { i64, ptr } @_ZN16nickel_lang_core4eval5value11NickelValue11content_mut17hf8de15f8b38892b1E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.v), !noalias !8058 ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %cond.i2 = icmp eq i64 %i.x, 6
  br i1 %cond.i2, label %bb.g, label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit5

bb.g:                                             ; preds = %.lr.ph
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ]
  %.val.i3 = load ptr, ptr %i.y, align 8, !noalias !8058, !nonnull !11, !noundef !11 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.val.i3, i64 16 ; 6 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !8059, !noundef !11
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !13

bb.h:                                             ; preds = %bb.g
  store i64 -1, ptr %i.z, align 8, !noalias !8059
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i3, i64 24
  invoke void @_ZN16nickel_lang_core4eval5cache4lazy9ThunkData11init_cached17h40fa763f4840943bE(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.ac, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2)
          to label %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4" unwind label %bb.j

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @96) #41, !noalias !8059
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          cleanup
  %i.ae = load i64, ptr %i.z, align 8, !noalias !8060, !noundef !11
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.z, align 8, !noalias !8060
  br label %common.resume

"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4": ; preds = %bb.h
  %i.ag = load i64, ptr %i.z, align 8, !noalias !8060, !noundef !11
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.z, align 8, !noalias !8060
  br label %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit5

_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit5: ; preds = %.lr.ph, %"_ZN102_$LT$nickel_lang_core..eval..cache..lazy..CBNCache$u20$as$u20$nickel_lang_core..eval..cache..Cache$GT$12build_cached17h9a37d306e7c63d4fE.exit.i4"
  %i.ai = icmp eq ptr %i.u, %i.s
  br i1 %i.ai, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit5, %_ZN16nickel_lang_core4eval8fixpoint11patch_value17h6692a923cac89f10E.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4eval8fixpoint6revert17hc6b9d1705dbc2f7dE(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(56) %0, ptr noalias noundef nonnull align 1 %1, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !11, !noundef !11
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
end_hunk_2
begin_hunk_3_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op117hf04851771323baa8E":bb.a

._crit_edge3485:                                  ; preds = %bb.arf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.do)
  store ptr %i.cha, ptr %0, align 8
  %.sroa.4468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.chb, ptr %.sroa.4468.0..sroa_idx, align 8
  %.sroa.5469.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %.sroa.5469.0..sroa_idx, align 8
  br label %.thread2759

bb.arh:                                           ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dn)
  br label %.thread2759

bb.ari:                                           ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dm)
  br label %.thread2759

bb.arj:                                           ; preds = %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dl)
  br label %.thread2759

bb.ark:                                           ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  br label %.thread2759

bb.arl:                                           ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  br label %.thread2759

bb.arm:                                           ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di)
  br label %.thread2759

"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit1833": ; preds = %bb.ars, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i1827", %bb.art, %.thread2759, %bb.bw
  %.sroa.0516.22755 = phi i8 [ %.sroa.0516.2.ph2758, %.thread2759 ], [ %.sroa.0516.2, %bb.bw ], [ %.sroa.0516.22756, %bb.art ], [ %.sroa.0516.22756, %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i1827" ], [ %.sroa.0516.22756, %bb.ars ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.qf)
  %i.chf = trunc nuw i8 %.sroa.0516.22755 to i1
  br i1 %i.chf, label %bb.arv, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1837"

bb.arn:                                           ; preds = %.thread2752, %bb.bw
  %.sroa.0516.22756 = phi i8 [ %.sroa.0516.2.ph, %.thread2752 ], [ %.sroa.0516.2, %bb.bw ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9832)
  call void @llvm.experimental.noalias.scope.decl(metadata !9833)
  call void @llvm.experimental.noalias.scope.decl(metadata !9834)
  %i.chg = load ptr, ptr %i.qf, align 16, !alias.scope !9835, !nonnull !11, !noundef !11 ; 2 uses
  %i.chh = load i64, ptr %i.chg, align 8, !noalias !9835, !noundef !11
  %i.chi = add i64 %i.chh, -1                     ; 2 uses
  store i64 %i.chi, ptr %i.chg, align 8, !noalias !9835
  %i.chj = icmp eq i64 %i.chi, 0
  br i1 %i.chj, label %bb.aro, label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i1827"

bb.aro:                                           ; preds = %bb.arn
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h48b8dc6e7d4ef80aE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.qf)
          to label %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i1827" unwind label %bb.arp

bb.arp:                                           ; preds = %bb.aro
  %i.chk = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9836)
  %i.chl = load ptr, ptr %i.qm, align 8, !alias.scope !9837, !noundef !11 ; 3 uses
  %i.chm = icmp eq ptr %i.chl, null
  br i1 %i.chm, label %.body1824, label %bb.arq

bb.arq:                                           ; preds = %bb.arp
  %i.chn = load i64, ptr %i.chl, align 8, !noalias !9838, !noundef !11
  %i.cho = add i64 %i.chn, -1                     ; 2 uses
  store i64 %i.cho, ptr %i.chl, align 8, !noalias !9838
  %i.chp = icmp eq i64 %i.cho, 0
  br i1 %i.chp, label %bb.arr, label %.body1824

bb.arr:                                           ; preds = %bb.arq
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qm)
          to label %.body1824 unwind label %bb.aru

"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i1827": ; preds = %bb.aro, %bb.arn
  call void @llvm.experimental.noalias.scope.decl(metadata !9839)
  %i.chq = load ptr, ptr %i.qm, align 8, !alias.scope !9840, !noundef !11 ; 3 uses
  %i.chr = icmp eq ptr %i.chq, null
  br i1 %i.chr, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit1833", label %bb.ars

bb.ars:                                           ; preds = %"_ZN4core3ptr168drop_in_place$LT$alloc..rc..Rc$LT$std..collections..hash..map..HashMap$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$$GT$17h7b259fbba0eaeb1cE.exit.i1827"
  %i.chs = load i64, ptr %i.chq, align 8, !noalias !9841, !noundef !11
  %i.cht = add i64 %i.chs, -1                     ; 2 uses
  store i64 %i.cht, ptr %i.chq, align 8, !noalias !9841
  %i.chu = icmp eq i64 %i.cht, 0
  br i1 %i.chu, label %bb.art, label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit1833"

bb.art:                                           ; preds = %bb.ars
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h6169df1b8028d4bcE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qm)
          to label %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit1833" unwind label %bb.aqx

bb.aru:                                           ; preds = %bb.arr
  %i.chv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.arv:                                           ; preds = %"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E.exit1833"
  %i.chw = ptrtoint ptr %i.qk to i64
  %i.chx = and i64 %i.chw, 3
  %..i.i1835 = call i64 @llvm.umin.i64(i64 %i.chx, i64 2)
  switch i64 %..i.i1835, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1837" [
    i64 2, label %bb.arw
    i64 0, label %bb.arx
  ], !prof !16

bb.arw:                                           ; preds = %bb.arv
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41, !noalias !9842
  unreachable

bb.arx:                                           ; preds = %bb.arv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9842
  store ptr %i.qk, ptr %i.c, align 8, !noalias !9842
  %i.chy = load i64, ptr %i.qk, align 8, !noalias !9843, !noundef !11 ; 3 uses
  %i.chz = and i64 %i.chy, 72057594037927935
  %i.cia = add nsw i64 %i.chz, -1                 ; 3 uses
  %i.cib = and i64 %i.chy, 1080863910568919040
  %i.cic = icmp ult i64 %i.chy, 864691128455135232
  call void @llvm.assume(i1 %i.cic)
  %i.cid = or i64 %i.cia, %i.cib
  store i64 %i.cid, ptr %i.qk, align 8, !noalias !9843
  %i.cie = icmp ugt i64 %i.cia, 72057594037927935
  br i1 %i.cie, label %bb.arz, label %bb.ary, !prof !17

bb.ary:                                           ; preds = %bb.arx
  %i.cif = icmp eq i64 %i.cia, 0
  br i1 %i.cif, label %bb.asa, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1836"

bb.arz:                                           ; preds = %bb.arx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9843
  store ptr @746, ptr %i.b, align 8, !noalias !9843
  %i.cig = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.cig, align 8, !noalias !9843
  %i.cih = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.cih, align 8, !noalias !9843
  %i.cii = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cii, align 8, !noalias !9843
  %i.cij = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.cij, align 8, !noalias !9843
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41, !noalias !9843
  unreachable

bb.asa:                                           ; preds = %bb.ary
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !9842
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1836"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1836": ; preds = %bb.asa, %bb.ary
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9842
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1837"

bb.asb:                                           ; preds = %.invoke3477, %bb.ase, %bb.asd, %bb.asc, %.critedge969.thread
  br i1 %.sroa.0513.02311, label %bb.asf, label %bb.aqw

.critedge969.thread:                              ; preds = %bb.im, %bb.akh, %.thread2905.thread, %bb.bo, %bb.aqj, %bb.aqi, %bb.apz, %bb.apy, %bb.apd, %bb.aoo, %bb.aon, %bb.aoe, %bb.aod, %bb.anp, %bb.ano, %bb.anf, %bb.amq, %bb.amp, %bb.ame, %bb.amd, %bb.aly, %bb.alg, %bb.alf, %bb.aku, %bb.akt, %bb.ajt, %bb.ajs, %bb.ajp, %bb.ajo, %bb.ajq, %bb.ajl, %bb.aiv, %bb.ais, %.thread3188, %bb.ahp, %bb.aho, %bb.ahq, %.thread3164, %bb.adj, %bb.adi, %bb.acs, %bb.acr, %bb.acb, %bb.aca, %bb.abk, %bb.abj, %bb.aax, %bb.aaw, %bb.aaa, %bb.zz, %bb.zl, %bb.zk, %bb.yy, %bb.yx, %bb.yl, %bb.yk, %bb.xy, %bb.xx, %bb.xl, %bb.xk, %.thread3103, %bb.wo, %bb.wn, %bb.si, %.thread3026, %bb.rw, %bb.rv, %bb.pt, %bb.ps, %.thread2973, %bb.pe, %bb.pd, %.thread2966, %bb.op, %bb.oo, %.thread2959, %bb.oa, %bb.nz, %.thread2952, %bb.nl, %bb.nk, %bb.my, %bb.mx, %bb.jn, %.thread2847, %bb.ix, %bb.iw, %bb.hp, %bb.ho, %bb.fn, %bb.fm, %bb.fb, %bb.fa, %bb.el, %bb.ek, %bb.cb, %bb.ca, %.thread2905, %bb.fw, %.thread3242, %bb.anm, %bb.amb, %bb.ain, %bb.aja, %bb.aii, %.body1123, %.body1126, %.body1129, %bb.xh, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit1696", %bb.tq, %bb.pq, %bb.pb, %bb.om, %bb.nx, %bb.arg, %bb.md, %bb.mo, %bb.ml, %bb.kl, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hdb2f8bd7adb3209eE.exit", %bb.jc, %bb.hj, %bb.hf, %bb.eu, %.body1485, %.body1497, %bb.bx, %.critedge969.thread2733, %.critedge969.thread2724, %.critedge969.thread2716, %.critedge969.thread2708, %.critedge969.thread2700, %.critedge969.thread2692, %.critedge969.thread2684, %.critedge969.thread2676, %.critedge969.thread2668, %.critedge969.thread2660, %.critedge969.thread2652, %.critedge969.thread2644, %.critedge969.thread2636, %.critedge969.thread2628, %.critedge969.thread2620, %.critedge969.thread2612, %.critedge969.thread2604, %.critedge969.thread2596, %.critedge969.thread2588, %.critedge969.thread2580, %.critedge969.thread2572, %.critedge969.thread2564, %.critedge969.thread2556, %.critedge969.thread2548, %.critedge969.thread2540, %.critedge969.thread2532, %.critedge969.thread2524, %.critedge969.thread2516, %.critedge969.thread2508, %.critedge969.thread2500, %.critedge969.thread2492, %.critedge969.thread2484, %.critedge969.thread2476, %.critedge969.thread2468, %.critedge969.thread2460, %.critedge969.thread2452, %.critedge969.thread2444, %.critedge969.thread2436, %.critedge969.thread2428, %.critedge969.thread2420, %.critedge969.thread2412, %.critedge969.thread2404, %.critedge969.thread2396, %.critedge969.thread2388, %.critedge969.thread2380, %.critedge969.thread2372, %.critedge969.thread2364, %.critedge969.thread2356, %.critedge969.thread2348, %.critedge969.thread2340, %.critedge969.thread2332, %.critedge969.thread2324, %.critedge969.thread2316
  %.sroa.226.02315 = phi i32 [ %i.uu, %.critedge969.thread2724 ], [ %i.qt, %.critedge969.thread2733 ], [ %i.cfp, %.critedge969.thread2316 ], [ %i.cey, %.critedge969.thread2324 ], [ %i.ccj, %.critedge969.thread2332 ], [ %i.cbm, %.critedge969.thread2340 ], [ %i.cas, %.critedge969.thread2348 ], [ %i.bzr, %.critedge969.thread2356 ], [ %i.bzf, %.critedge969.thread2364 ], [ %i.byo, %.critedge969.thread2372 ], [ %i.bxr, %.critedge969.thread2380 ], [ %i.bxh, %.critedge969.thread2388 ], [ %i.bwf, %.critedge969.thread2396 ], [ %i.bvj, %.critedge969.thread2404 ], [ %i.btx, %.critedge969.thread2412 ], [ %i.bpz, %.critedge969.thread2420 ], [ %i.bkh, %.critedge969.thread2428 ], [ %i.bjd, %.critedge969.thread2436 ], [ %i.bhz, %.critedge969.thread2444 ], [ %i.bgv, %.critedge969.thread2452 ], [ %i.bgf, %.critedge969.thread2460 ], [ %i.bfc, %.critedge969.thread2468 ], [ %i.beb, %.critedge969.thread2476 ], [ %i.bdh, %.critedge969.thread2484 ], [ %i.bcn, %.critedge969.thread2492 ], [ %i.bbv, %.critedge969.thread2500 ], [ %i.bay, %.critedge969.thread2508 ], [ %i.azv, %.critedge969.thread2516 ], [ %i.azc, %.critedge969.thread2524 ], [ %i.ase, %.critedge969.thread2532 ], [ %i.aru, %.critedge969.thread2540 ], [ %i.ara, %.critedge969.thread2548 ], [ %i.aqj, %.critedge969.thread2556 ], [ %i.aov, %.critedge969.thread2564 ], [ %i.aol, %.critedge969.thread2572 ], [ %i.anq, %.critedge969.thread2580 ], [ %i.amv, %.critedge969.thread2588 ], [ %i.ama, %.critedge969.thread2596 ], [ %i.alf, %.critedge969.thread2604 ], [ %i.akl, %.critedge969.thread2612 ], [ %i.agp, %.critedge969.thread2620 ], [ %i.afh, %.critedge969.thread2628 ], [ %i.aer, %.critedge969.thread2636 ], [ %i.adz, %.critedge969.thread2644 ], [ %i.adc, %.critedge969.thread2652 ], [ %i.acs, %.critedge969.thread2660 ], [ %i.acc, %.critedge969.thread2668 ], [ %i.zm, %.critedge969.thread2676 ], [ %i.yv, %.critedge969.thread2684 ], [ %i.yh, %.critedge969.thread2692 ], [ %i.xu, %.critedge969.thread2700 ], [ %i.xe, %.critedge969.thread2708 ], [ %i.wd, %.critedge969.thread2716 ], [ %.sroa.226.24, %bb.ajl ], [ %.sroa.226.6, %bb.jn ], [ %.sroa.226.7, %.thread2905 ], [ %.sroa.226.10, %bb.si ], [ %.sroa.226.3, %bb.fw ], [ %.sroa.226.26, %bb.apd ], [ %.sroa.226.263249, %.thread3242 ], [ %i.cbc, %bb.aoe ], [ %i.cai, %bb.anp ], [ %i.byv, %bb.amq ], [ %i.bzv, %bb.anf ], [ %i.caf, %bb.anm ], [ %i.bye, %bb.ame ], [ %i.bwx, %bb.alg ], [ %i.bxv, %bb.aly ], [ %i.byb, %bb.amb ], [ %i.bvv, %bb.aku ], [ %i.btn, %bb.ajt ], [ %.sroa.226.25, %bb.akh ], [ %.sroa.226.243212, %bb.ajp ], [ %.sroa.226.21, %bb.aho ], [ %.sroa.226.21, %bb.ahq ], [ %i.brn, %bb.ain ], [ %i.bry, %bb.ais ], [ %.sroa.226.21, %bb.ahp ], [ %i.bsd, %bb.aiv ], [ %i.bsl, %bb.aja ], [ %.sroa.226.223191, %.thread3188 ], [ %.sroa.226.22, %bb.aii ], [ %.sroa.226.213167, %.thread3164 ], [ %i.bju, %bb.adj ], [ %.sroa.226.20, %.body1123 ], [ %.sroa.226.18, %.body1126 ], [ %.sroa.226.17, %.body1129 ], [ %i.biq, %bb.acs ], [ %i.bhm, %bb.acb ], [ %i.bgl, %bb.abk ], [ %i.bfv, %bb.aax ], [ %i.bes, %bb.aaa ], [ %i.bdr, %bb.zl ], [ %i.bcx, %bb.yy ], [ %i.bcd, %bb.yl ], [ %i.bbl, %bb.xy ], [ %i.bao, %bb.xl ], [ %i.ays, %bb.wo ], [ %i.bab, %.thread3103 ], [ %i.bak, %bb.xh ], [ %i.ark, %bb.rw ], [ %.sroa.226.113066, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit1696" ], [ %.sroa.226.73286, %.thread2905.thread ], [ %.sroa.226.103030, %.thread3026 ], [ %.sroa.226.103024, %bb.tq ], [ %i.aob, %bb.pt ], [ %i.ang, %bb.pe ], [ %i.anu, %.thread2973 ], [ %i.any, %bb.pq ], [ %i.aml, %bb.op ], [ %i.amz, %.thread2966 ], [ %i.and, %bb.pb ], [ %i.alq, %bb.oa ], [ %i.ame, %.thread2959 ], [ %i.ami, %bb.om ], [ %i.akv, %bb.nl ], [ %i.alj, %.thread2952 ], [ %i.aln, %bb.nx ], [ %i.akb, %bb.my ], [ %i.aed, %bb.iw ], [ %i.che, %bb.arg ], [ %i.aja, %bb.md ], [ %i.aed, %bb.ix ], [ %.sroa.226.72896, %bb.mo ], [ %i.ceo, %bb.apz ], [ %i.ajp, %bb.ml ], [ %.sroa.226.62851, %.thread2847 ], [ %.sroa.226.62845, %bb.kl ], [ %i.zc, %bb.fm ], [ %i.ach, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hdb2f8bd7adb3209eE.exit" ], [ %i.abs, %bb.hp ], [ %.sroa.226.5, %bb.im ], [ %i.aeu, %bb.jc ], [ %i.zc, %bb.fn ], [ %.sroa.226.32790, %bb.hj ], [ %i.cbz, %bb.aoo ], [ %i.abi, %bb.hf ], [ %i.yl, %bb.fb ], [ %i.xk, %bb.el ], [ %i.ya, %bb.eu ], [ %i.uk, %bb.cb ], [ %.sroa.226.2, %.body1485 ], [ %.sroa.226.1, %.body1497 ], [ %i.ug, %bb.bx ], [ %i.uc, %bb.bo ], [ %i.uk, %bb.ca ], [ %i.xk, %bb.ek ], [ %i.yl, %bb.fa ], [ %i.abs, %bb.ho ], [ %i.akb, %bb.mx ], [ %i.akv, %bb.nk ], [ %i.alq, %bb.nz ], [ %i.aml, %bb.oo ], [ %i.ang, %bb.pd ], [ %i.aob, %bb.ps ], [ %i.ark, %bb.rv ], [ %i.ays, %bb.wn ], [ %i.bao, %bb.xk ], [ %i.bbl, %bb.xx ], [ %i.bcd, %bb.yk ], [ %i.bcx, %bb.yx ], [ %i.bdr, %bb.zk ], [ %i.bes, %bb.zz ], [ %i.bfv, %bb.aaw ], [ %i.bgl, %bb.abj ], [ %i.bhm, %bb.aca ], [ %i.biq, %bb.acr ], [ %i.bju, %bb.adi ], [ %.sroa.226.243212, %bb.ajq ], [ %.sroa.226.243212, %bb.ajo ], [ %i.btn, %bb.ajs ], [ %i.bvv, %bb.akt ], [ %i.bwx, %bb.alf ], [ %i.bye, %bb.amd ], [ %i.byv, %bb.amp ], [ %i.cai, %bb.ano ], [ %i.cbc, %bb.aod ], [ %i.cbz, %bb.aon ], [ %i.ceo, %bb.apy ], [ %i.cff, %bb.aqi ], [ %i.cff, %bb.aqj ] ; 2 uses
  %.sroa.0782.02313 = phi ptr [ %i.ut, %.critedge969.thread2724 ], [ %i.qs, %.critedge969.thread2733 ], [ %i.cfo, %.critedge969.thread2316 ], [ %i.cex, %.critedge969.thread2324 ], [ %i.cci, %.critedge969.thread2332 ], [ %i.cbl, %.critedge969.thread2340 ], [ %i.car, %.critedge969.thread2348 ], [ %i.bzq, %.critedge969.thread2356 ], [ %i.bze, %.critedge969.thread2364 ], [ %i.byn, %.critedge969.thread2372 ], [ %i.bxq, %.critedge969.thread2380 ], [ %i.bxg, %.critedge969.thread2388 ], [ %i.bwe, %.critedge969.thread2396 ], [ %i.bvi, %.critedge969.thread2404 ], [ %i.btw, %.critedge969.thread2412 ], [ %i.bpy, %.critedge969.thread2420 ], [ %i.bkg, %.critedge969.thread2428 ], [ %i.bjc, %.critedge969.thread2436 ], [ %i.bhy, %.critedge969.thread2444 ], [ %i.bgu, %.critedge969.thread2452 ], [ %i.bge, %.critedge969.thread2460 ], [ %i.bfb, %.critedge969.thread2468 ], [ %i.bea, %.critedge969.thread2476 ], [ %i.bdg, %.critedge969.thread2484 ], [ %i.bcm, %.critedge969.thread2492 ], [ %i.bbu, %.critedge969.thread2500 ], [ %i.bax, %.critedge969.thread2508 ], [ %i.azu, %.critedge969.thread2516 ], [ %i.azb, %.critedge969.thread2524 ], [ %i.asd, %.critedge969.thread2532 ], [ %i.art, %.critedge969.thread2540 ], [ %i.aqz, %.critedge969.thread2548 ], [ %i.aqi, %.critedge969.thread2556 ], [ %i.aou, %.critedge969.thread2564 ], [ %i.aok, %.critedge969.thread2572 ], [ %i.anp, %.critedge969.thread2580 ], [ %i.amu, %.critedge969.thread2588 ], [ %i.alz, %.critedge969.thread2596 ], [ %i.ale, %.critedge969.thread2604 ], [ %i.akk, %.critedge969.thread2612 ], [ %i.ago, %.critedge969.thread2620 ], [ %i.afg, %.critedge969.thread2628 ], [ %i.aeq, %.critedge969.thread2636 ], [ %i.ady, %.critedge969.thread2644 ], [ %i.adb, %.critedge969.thread2652 ], [ %i.acr, %.critedge969.thread2660 ], [ %i.acb, %.critedge969.thread2668 ], [ %i.zl, %.critedge969.thread2676 ], [ %i.yu, %.critedge969.thread2684 ], [ %i.yg, %.critedge969.thread2692 ], [ %i.xt, %.critedge969.thread2700 ], [ %i.xd, %.critedge969.thread2708 ], [ %i.wc, %.critedge969.thread2716 ], [ %.sroa.0782.24, %bb.ajl ], [ %.sroa.0782.6, %bb.jn ], [ %.sroa.0782.7, %.thread2905 ], [ %.sroa.0782.10, %bb.si ], [ %.sroa.0782.3, %bb.fw ], [ %.sroa.0782.26, %bb.apd ], [ %.sroa.0782.263250, %.thread3242 ], [ %i.cbb, %bb.aoe ], [ %i.cah, %bb.anp ], [ %i.byu, %bb.amq ], [ %i.bzu, %bb.anf ], [ %i.cae, %bb.anm ], [ %i.byd, %bb.ame ], [ %i.bww, %bb.alg ], [ %i.bxu, %bb.aly ], [ %i.bya, %bb.amb ], [ %i.bvu, %bb.aku ], [ %i.btm, %bb.ajt ], [ %.sroa.0782.25, %bb.akh ], [ %.sroa.0782.243213, %bb.ajp ], [ %.sroa.0782.21, %bb.aho ], [ %.sroa.0782.21, %bb.ahq ], [ %i.brm, %bb.ain ], [ %i.brx, %bb.ais ], [ %.sroa.0782.21, %bb.ahp ], [ %i.bsc, %bb.aiv ], [ %i.bsk, %bb.aja ], [ %.sroa.0782.223192, %.thread3188 ], [ %.sroa.0782.22, %bb.aii ], [ %.sroa.0782.213168, %.thread3164 ], [ %i.bjt, %bb.adj ], [ %.sroa.0782.20, %.body1123 ], [ %.sroa.0782.18, %.body1126 ], [ %.sroa.0782.17, %.body1129 ], [ %i.bip, %bb.acs ], [ %i.bhl, %bb.acb ], [ %i.bgk, %bb.abk ], [ %i.bfu, %bb.aax ], [ %i.ber, %bb.aaa ], [ %i.bdq, %bb.zl ], [ %i.bcw, %bb.yy ], [ %i.bcc, %bb.yl ], [ %i.bbk, %bb.xy ], [ %i.ban, %bb.xl ], [ %i.ayr, %bb.wo ], [ %i.baa, %.thread3103 ], [ %i.baj, %bb.xh ], [ %i.arj, %bb.rw ], [ %.sroa.0782.113068, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit1696" ], [ %.sroa.0782.73287, %.thread2905.thread ], [ %.sroa.0782.103031, %.thread3026 ], [ %.sroa.0782.103025, %bb.tq ], [ %i.aoa, %bb.pt ], [ %i.anf, %bb.pe ], [ %i.ant, %.thread2973 ], [ %i.anx, %bb.pq ], [ %i.amk, %bb.op ], [ %i.amy, %.thread2966 ], [ %i.anc, %bb.pb ], [ %i.alp, %bb.oa ], [ %i.amd, %.thread2959 ], [ %i.amh, %bb.om ], [ %i.aku, %bb.nl ], [ %i.ali, %.thread2952 ], [ %i.alm, %bb.nx ], [ %i.aka, %bb.my ], [ %i.aec, %bb.iw ], [ %i.chd, %bb.arg ], [ %i.ajb, %bb.md ], [ %i.aec, %bb.ix ], [ %.sroa.0782.72897, %bb.mo ], [ %i.cen, %bb.apz ], [ %i.ajq, %bb.ml ], [ %.sroa.0782.62852, %.thread2847 ], [ %.sroa.0782.62846, %bb.kl ], [ %i.zb, %bb.fm ], [ %i.acg, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hdb2f8bd7adb3209eE.exit" ], [ %i.abr, %bb.hp ], [ %.sroa.0782.5, %bb.im ], [ %i.aet, %bb.jc ], [ %i.zb, %bb.fn ], [ %.sroa.0782.32791, %bb.hj ], [ %i.cby, %bb.aoo ], [ %i.abj, %bb.hf ], [ %i.yk, %bb.fb ], [ %i.xj, %bb.el ], [ %i.xz, %bb.eu ], [ %i.uj, %bb.cb ], [ %.sroa.0782.2, %.body1485 ], [ %.sroa.0782.1, %.body1497 ], [ %i.uf, %bb.bx ], [ %i.ub, %bb.bo ], [ %i.uj, %bb.ca ], [ %i.xj, %bb.ek ], [ %i.yk, %bb.fa ], [ %i.abr, %bb.ho ], [ %i.aka, %bb.mx ], [ %i.aku, %bb.nk ], [ %i.alp, %bb.nz ], [ %i.amk, %bb.oo ], [ %i.anf, %bb.pd ], [ %i.aoa, %bb.ps ], [ %i.arj, %bb.rv ], [ %i.ayr, %bb.wn ], [ %i.ban, %bb.xk ], [ %i.bbk, %bb.xx ], [ %i.bcc, %bb.yk ], [ %i.bcw, %bb.yx ], [ %i.bdq, %bb.zk ], [ %i.ber, %bb.zz ], [ %i.bfu, %bb.aaw ], [ %i.bgk, %bb.abj ], [ %i.bhl, %bb.aca ], [ %i.bip, %bb.acr ], [ %i.bjt, %bb.adi ], [ %.sroa.0782.243213, %bb.ajq ], [ %.sroa.0782.243213, %bb.ajo ], [ %i.btm, %bb.ajs ], [ %i.bvu, %bb.akt ], [ %i.bww, %bb.alf ], [ %i.byd, %bb.amd ], [ %i.byu, %bb.amp ], [ %i.cah, %bb.ano ], [ %i.cbb, %bb.aod ], [ %i.cby, %bb.aon ], [ %i.cen, %bb.apy ], [ %i.cfe, %bb.aqi ], [ %i.cfe, %bb.aqj ] ; 2 uses
  %.sroa.0513.02311 = phi i1 [ true, %.critedge969.thread2724 ], [ %.sroa.0513.1.ph, %.critedge969.thread2733 ], [ true, %.critedge969.thread2316 ], [ true, %.critedge969.thread2324 ], [ true, %.critedge969.thread2332 ], [ true, %.critedge969.thread2340 ], [ true, %.critedge969.thread2348 ], [ true, %.critedge969.thread2356 ], [ true, %.critedge969.thread2364 ], [ true, %.critedge969.thread2372 ], [ true, %.critedge969.thread2380 ], [ true, %.critedge969.thread2388 ], [ true, %.critedge969.thread2396 ], [ true, %.critedge969.thread2404 ], [ true, %.critedge969.thread2412 ], [ true, %.critedge969.thread2420 ], [ true, %.critedge969.thread2428 ], [ true, %.critedge969.thread2436 ], [ true, %.critedge969.thread2444 ], [ true, %.critedge969.thread2452 ], [ true, %.critedge969.thread2460 ], [ true, %.critedge969.thread2468 ], [ true, %.critedge969.thread2476 ], [ true, %.critedge969.thread2484 ], [ true, %.critedge969.thread2492 ], [ true, %.critedge969.thread2500 ], [ true, %.critedge969.thread2508 ], [ true, %.critedge969.thread2516 ], [ true, %.critedge969.thread2524 ], [ true, %.critedge969.thread2532 ], [ true, %.critedge969.thread2540 ], [ true, %.critedge969.thread2548 ], [ true, %.critedge969.thread2556 ], [ true, %.critedge969.thread2564 ], [ true, %.critedge969.thread2572 ], [ true, %.critedge969.thread2580 ], [ true, %.critedge969.thread2588 ], [ true, %.critedge969.thread2596 ], [ true, %.critedge969.thread2604 ], [ true, %.critedge969.thread2612 ], [ true, %.critedge969.thread2620 ], [ true, %.critedge969.thread2628 ], [ true, %.critedge969.thread2636 ], [ true, %.critedge969.thread2644 ], [ true, %.critedge969.thread2652 ], [ true, %.critedge969.thread2660 ], [ true, %.critedge969.thread2668 ], [ true, %.critedge969.thread2676 ], [ true, %.critedge969.thread2684 ], [ true, %.critedge969.thread2692 ], [ true, %.critedge969.thread2700 ], [ true, %.critedge969.thread2708 ], [ true, %.critedge969.thread2716 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2905 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3242 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3188 ], [ true, %bb.aii ], [ true, %.thread3164 ], [ true, %bb.adj ], [ true, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3103 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit1696" ], [ true, %.thread2905.thread ], [ true, %.thread3026 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2973 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2966 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2959 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2952 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ false, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2847 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hdb2f8bd7adb3209eE.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0516.02309 = phi i8 [ 0, %.critedge969.thread2724 ], [ %.sroa.0516.1.ph, %.critedge969.thread2733 ], [ 0, %.critedge969.thread2316 ], [ 0, %.critedge969.thread2324 ], [ 0, %.critedge969.thread2332 ], [ 0, %.critedge969.thread2340 ], [ 0, %.critedge969.thread2348 ], [ 1, %.critedge969.thread2356 ], [ 0, %.critedge969.thread2364 ], [ 0, %.critedge969.thread2372 ], [ 1, %.critedge969.thread2380 ], [ 0, %.critedge969.thread2388 ], [ 0, %.critedge969.thread2396 ], [ 1, %.critedge969.thread2404 ], [ 0, %.critedge969.thread2412 ], [ 1, %.critedge969.thread2420 ], [ 0, %.critedge969.thread2428 ], [ 0, %.critedge969.thread2436 ], [ 0, %.critedge969.thread2444 ], [ 0, %.critedge969.thread2452 ], [ 0, %.critedge969.thread2460 ], [ 0, %.critedge969.thread2468 ], [ 0, %.critedge969.thread2476 ], [ 0, %.critedge969.thread2484 ], [ 0, %.critedge969.thread2492 ], [ 0, %.critedge969.thread2500 ], [ 0, %.critedge969.thread2508 ], [ 1, %.critedge969.thread2516 ], [ 0, %.critedge969.thread2524 ], [ 1, %.critedge969.thread2532 ], [ 0, %.critedge969.thread2540 ], [ 1, %.critedge969.thread2548 ], [ 1, %.critedge969.thread2556 ], [ 1, %.critedge969.thread2564 ], [ 0, %.critedge969.thread2572 ], [ 0, %.critedge969.thread2580 ], [ 0, %.critedge969.thread2588 ], [ 0, %.critedge969.thread2596 ], [ 0, %.critedge969.thread2604 ], [ 0, %.critedge969.thread2612 ], [ 1, %.critedge969.thread2620 ], [ 1, %.critedge969.thread2628 ], [ 1, %.critedge969.thread2636 ], [ 1, %.critedge969.thread2644 ], [ 1, %.critedge969.thread2652 ], [ 1, %.critedge969.thread2660 ], [ 0, %.critedge969.thread2668 ], [ 0, %.critedge969.thread2676 ], [ 0, %.critedge969.thread2684 ], [ 1, %.critedge969.thread2692 ], [ 0, %.critedge969.thread2700 ], [ 1, %.critedge969.thread2708 ], [ 1, %.critedge969.thread2716 ], [ 1, %bb.ajl ], [ 1, %bb.jn ], [ 1, %.thread2905 ], [ 1, %bb.si ], [ 1, %bb.fw ], [ 1, %bb.apd ], [ %.sroa.0516.423248, %.thread3242 ], [ 1, %bb.aoe ], [ 1, %bb.anp ], [ 1, %bb.amq ], [ 1, %bb.anf ], [ 1, %bb.anm ], [ 1, %bb.ame ], [ 1, %bb.alg ], [ 1, %bb.aly ], [ 1, %bb.amb ], [ 1, %bb.aku ], [ 1, %bb.ajt ], [ 1, %bb.akh ], [ 1, %bb.ajp ], [ 1, %bb.aho ], [ 1, %bb.ahq ], [ 1, %bb.ain ], [ 1, %bb.ais ], [ 1, %bb.ahp ], [ 1, %bb.aiv ], [ 1, %bb.aja ], [ 1, %.thread3188 ], [ 1, %bb.aii ], [ 1, %.thread3164 ], [ 1, %bb.adj ], [ %.sroa.0516.35, %.body1123 ], [ %.sroa.0516.32, %.body1126 ], [ %.sroa.0516.29, %.body1129 ], [ 1, %bb.acs ], [ 1, %bb.acb ], [ 1, %bb.abk ], [ 1, %bb.aax ], [ 1, %bb.aaa ], [ 1, %bb.zl ], [ 1, %bb.yy ], [ 1, %bb.yl ], [ 1, %bb.xy ], [ 1, %bb.xl ], [ 1, %bb.wo ], [ 1, %.thread3103 ], [ 1, %bb.xh ], [ 1, %bb.rw ], [ %.sroa.0516.263064, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit1696" ], [ 1, %.thread2905.thread ], [ 1, %.thread3026 ], [ %.sroa.0516.233023, %bb.tq ], [ 1, %bb.pt ], [ 1, %bb.pe ], [ 1, %.thread2973 ], [ 1, %bb.pq ], [ 1, %bb.op ], [ 1, %.thread2966 ], [ 1, %bb.pb ], [ 1, %bb.oa ], [ 1, %.thread2959 ], [ 1, %bb.om ], [ 1, %bb.nl ], [ 1, %.thread2952 ], [ 1, %bb.nx ], [ 1, %bb.my ], [ 1, %bb.iw ], [ 0, %bb.arg ], [ 0, %bb.md ], [ 1, %bb.ix ], [ %.sroa.0516.192894, %bb.mo ], [ 1, %bb.apz ], [ %.sroa.0516.222944, %bb.ml ], [ 1, %.thread2847 ], [ %.sroa.0516.162844, %bb.kl ], [ 1, %bb.fm ], [ 1, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hdb2f8bd7adb3209eE.exit" ], [ 1, %bb.hp ], [ 1, %bb.im ], [ 1, %bb.jc ], [ 1, %bb.fn ], [ %.sroa.0516.112788, %bb.hj ], [ 1, %bb.aoo ], [ %.sroa.0516.14.ph, %bb.hf ], [ 1, %bb.fb ], [ 1, %bb.el ], [ 1, %bb.eu ], [ 1, %bb.cb ], [ %.sroa.0516.6, %.body1485 ], [ %.sroa.0516.3, %.body1497 ], [ 1, %bb.bx ], [ 1, %bb.bo ], [ 1, %bb.ca ], [ 1, %bb.ek ], [ 1, %bb.fa ], [ 1, %bb.ho ], [ 1, %bb.mx ], [ 1, %bb.nk ], [ 1, %bb.nz ], [ 1, %bb.oo ], [ 1, %bb.pd ], [ 1, %bb.ps ], [ 1, %bb.rv ], [ 1, %bb.wn ], [ 1, %bb.xk ], [ 1, %bb.xx ], [ 1, %bb.yk ], [ 1, %bb.yx ], [ 1, %bb.zk ], [ 1, %bb.zz ], [ 1, %bb.aaw ], [ 1, %bb.abj ], [ 1, %bb.aca ], [ 1, %bb.acr ], [ 1, %bb.adi ], [ 1, %bb.ajq ], [ 1, %bb.ajo ], [ 1, %bb.ajs ], [ 1, %bb.akt ], [ 1, %bb.alf ], [ 1, %bb.amd ], [ 1, %bb.amp ], [ 1, %bb.ano ], [ 1, %bb.aod ], [ 1, %bb.aon ], [ 1, %bb.apy ], [ 1, %bb.aqi ], [ 1, %bb.aqj ] ; 2 uses
  %.sroa.0552.02307 = phi i1 [ true, %.critedge969.thread2724 ], [ %.sroa.0552.1.ph, %.critedge969.thread2733 ], [ true, %.critedge969.thread2316 ], [ true, %.critedge969.thread2324 ], [ true, %.critedge969.thread2332 ], [ true, %.critedge969.thread2340 ], [ true, %.critedge969.thread2348 ], [ true, %.critedge969.thread2356 ], [ true, %.critedge969.thread2364 ], [ true, %.critedge969.thread2372 ], [ true, %.critedge969.thread2380 ], [ true, %.critedge969.thread2388 ], [ true, %.critedge969.thread2396 ], [ true, %.critedge969.thread2404 ], [ true, %.critedge969.thread2412 ], [ true, %.critedge969.thread2420 ], [ true, %.critedge969.thread2428 ], [ true, %.critedge969.thread2436 ], [ true, %.critedge969.thread2444 ], [ true, %.critedge969.thread2452 ], [ true, %.critedge969.thread2460 ], [ true, %.critedge969.thread2468 ], [ true, %.critedge969.thread2476 ], [ true, %.critedge969.thread2484 ], [ true, %.critedge969.thread2492 ], [ true, %.critedge969.thread2500 ], [ true, %.critedge969.thread2508 ], [ true, %.critedge969.thread2516 ], [ true, %.critedge969.thread2524 ], [ true, %.critedge969.thread2532 ], [ true, %.critedge969.thread2540 ], [ true, %.critedge969.thread2548 ], [ true, %.critedge969.thread2556 ], [ true, %.critedge969.thread2564 ], [ true, %.critedge969.thread2572 ], [ true, %.critedge969.thread2580 ], [ true, %.critedge969.thread2588 ], [ true, %.critedge969.thread2596 ], [ true, %.critedge969.thread2604 ], [ true, %.critedge969.thread2612 ], [ true, %.critedge969.thread2620 ], [ true, %.critedge969.thread2628 ], [ true, %.critedge969.thread2636 ], [ true, %.critedge969.thread2644 ], [ true, %.critedge969.thread2652 ], [ true, %.critedge969.thread2660 ], [ true, %.critedge969.thread2668 ], [ true, %.critedge969.thread2676 ], [ true, %.critedge969.thread2684 ], [ true, %.critedge969.thread2692 ], [ true, %.critedge969.thread2700 ], [ true, %.critedge969.thread2708 ], [ true, %.critedge969.thread2716 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2905 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3242 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3188 ], [ true, %bb.aii ], [ true, %.thread3164 ], [ true, %bb.adj ], [ true, %.body1123 ], [ true, %.body1126 ], [ false, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3103 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit1696" ], [ true, %.thread2905.thread ], [ true, %.thread3026 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2973 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2966 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2959 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2952 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2847 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hdb2f8bd7adb3209eE.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0553.02306 = phi i1 [ true, %.critedge969.thread2724 ], [ %.sroa.0553.1.ph, %.critedge969.thread2733 ], [ true, %.critedge969.thread2316 ], [ true, %.critedge969.thread2324 ], [ true, %.critedge969.thread2332 ], [ true, %.critedge969.thread2340 ], [ true, %.critedge969.thread2348 ], [ true, %.critedge969.thread2356 ], [ true, %.critedge969.thread2364 ], [ true, %.critedge969.thread2372 ], [ true, %.critedge969.thread2380 ], [ true, %.critedge969.thread2388 ], [ true, %.critedge969.thread2396 ], [ true, %.critedge969.thread2404 ], [ true, %.critedge969.thread2412 ], [ true, %.critedge969.thread2420 ], [ true, %.critedge969.thread2428 ], [ true, %.critedge969.thread2436 ], [ true, %.critedge969.thread2444 ], [ true, %.critedge969.thread2452 ], [ true, %.critedge969.thread2460 ], [ true, %.critedge969.thread2468 ], [ true, %.critedge969.thread2476 ], [ true, %.critedge969.thread2484 ], [ true, %.critedge969.thread2492 ], [ true, %.critedge969.thread2500 ], [ true, %.critedge969.thread2508 ], [ true, %.critedge969.thread2516 ], [ true, %.critedge969.thread2524 ], [ true, %.critedge969.thread2532 ], [ true, %.critedge969.thread2540 ], [ true, %.critedge969.thread2548 ], [ true, %.critedge969.thread2556 ], [ true, %.critedge969.thread2564 ], [ true, %.critedge969.thread2572 ], [ true, %.critedge969.thread2580 ], [ true, %.critedge969.thread2588 ], [ true, %.critedge969.thread2596 ], [ true, %.critedge969.thread2604 ], [ true, %.critedge969.thread2612 ], [ true, %.critedge969.thread2620 ], [ true, %.critedge969.thread2628 ], [ true, %.critedge969.thread2636 ], [ true, %.critedge969.thread2644 ], [ true, %.critedge969.thread2652 ], [ true, %.critedge969.thread2660 ], [ true, %.critedge969.thread2668 ], [ true, %.critedge969.thread2676 ], [ true, %.critedge969.thread2684 ], [ true, %.critedge969.thread2692 ], [ true, %.critedge969.thread2700 ], [ true, %.critedge969.thread2708 ], [ true, %.critedge969.thread2716 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2905 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3242 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3188 ], [ true, %bb.aii ], [ true, %.thread3164 ], [ true, %bb.adj ], [ true, %.body1123 ], [ false, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3103 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit1696" ], [ true, %.thread2905.thread ], [ true, %.thread3026 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2973 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2966 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2959 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2952 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2847 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hdb2f8bd7adb3209eE.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %.sroa.0554.02305 = phi i1 [ true, %.critedge969.thread2724 ], [ %.sroa.0554.1.ph, %.critedge969.thread2733 ], [ true, %.critedge969.thread2316 ], [ true, %.critedge969.thread2324 ], [ true, %.critedge969.thread2332 ], [ true, %.critedge969.thread2340 ], [ true, %.critedge969.thread2348 ], [ true, %.critedge969.thread2356 ], [ true, %.critedge969.thread2364 ], [ true, %.critedge969.thread2372 ], [ true, %.critedge969.thread2380 ], [ true, %.critedge969.thread2388 ], [ true, %.critedge969.thread2396 ], [ true, %.critedge969.thread2404 ], [ true, %.critedge969.thread2412 ], [ true, %.critedge969.thread2420 ], [ true, %.critedge969.thread2428 ], [ true, %.critedge969.thread2436 ], [ true, %.critedge969.thread2444 ], [ true, %.critedge969.thread2452 ], [ true, %.critedge969.thread2460 ], [ true, %.critedge969.thread2468 ], [ true, %.critedge969.thread2476 ], [ true, %.critedge969.thread2484 ], [ true, %.critedge969.thread2492 ], [ true, %.critedge969.thread2500 ], [ true, %.critedge969.thread2508 ], [ true, %.critedge969.thread2516 ], [ true, %.critedge969.thread2524 ], [ true, %.critedge969.thread2532 ], [ true, %.critedge969.thread2540 ], [ true, %.critedge969.thread2548 ], [ true, %.critedge969.thread2556 ], [ true, %.critedge969.thread2564 ], [ true, %.critedge969.thread2572 ], [ true, %.critedge969.thread2580 ], [ true, %.critedge969.thread2588 ], [ true, %.critedge969.thread2596 ], [ true, %.critedge969.thread2604 ], [ true, %.critedge969.thread2612 ], [ true, %.critedge969.thread2620 ], [ true, %.critedge969.thread2628 ], [ true, %.critedge969.thread2636 ], [ true, %.critedge969.thread2644 ], [ true, %.critedge969.thread2652 ], [ true, %.critedge969.thread2660 ], [ true, %.critedge969.thread2668 ], [ true, %.critedge969.thread2676 ], [ true, %.critedge969.thread2684 ], [ true, %.critedge969.thread2692 ], [ true, %.critedge969.thread2700 ], [ true, %.critedge969.thread2708 ], [ true, %.critedge969.thread2716 ], [ true, %bb.ajl ], [ true, %bb.jn ], [ true, %.thread2905 ], [ true, %bb.si ], [ true, %bb.fw ], [ true, %bb.apd ], [ true, %.thread3242 ], [ true, %bb.aoe ], [ true, %bb.anp ], [ true, %bb.amq ], [ true, %bb.anf ], [ true, %bb.anm ], [ true, %bb.ame ], [ true, %bb.alg ], [ true, %bb.aly ], [ true, %bb.amb ], [ true, %bb.aku ], [ true, %bb.ajt ], [ true, %bb.akh ], [ true, %bb.ajp ], [ true, %bb.aho ], [ true, %bb.ahq ], [ true, %bb.ain ], [ true, %bb.ais ], [ true, %bb.ahp ], [ true, %bb.aiv ], [ true, %bb.aja ], [ true, %.thread3188 ], [ true, %bb.aii ], [ true, %.thread3164 ], [ true, %bb.adj ], [ false, %.body1123 ], [ true, %.body1126 ], [ true, %.body1129 ], [ true, %bb.acs ], [ true, %bb.acb ], [ true, %bb.abk ], [ true, %bb.aax ], [ true, %bb.aaa ], [ true, %bb.zl ], [ true, %bb.yy ], [ true, %bb.yl ], [ true, %bb.xy ], [ true, %bb.xl ], [ true, %bb.wo ], [ true, %.thread3103 ], [ true, %bb.xh ], [ true, %bb.rw ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit1696" ], [ true, %.thread2905.thread ], [ true, %.thread3026 ], [ true, %bb.tq ], [ true, %bb.pt ], [ true, %bb.pe ], [ true, %.thread2973 ], [ true, %bb.pq ], [ true, %bb.op ], [ true, %.thread2966 ], [ true, %bb.pb ], [ true, %bb.oa ], [ true, %.thread2959 ], [ true, %bb.om ], [ true, %bb.nl ], [ true, %.thread2952 ], [ true, %bb.nx ], [ true, %bb.my ], [ true, %bb.iw ], [ true, %bb.arg ], [ true, %bb.md ], [ true, %bb.ix ], [ true, %bb.mo ], [ true, %bb.apz ], [ true, %bb.ml ], [ true, %.thread2847 ], [ true, %bb.kl ], [ true, %bb.fm ], [ true, %"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..identifier..LocIdent$GT$$GT$17hdb2f8bd7adb3209eE.exit" ], [ true, %bb.hp ], [ true, %bb.im ], [ true, %bb.jc ], [ true, %bb.fn ], [ true, %bb.hj ], [ true, %bb.aoo ], [ true, %bb.hf ], [ true, %bb.fb ], [ true, %bb.el ], [ true, %bb.eu ], [ true, %bb.cb ], [ true, %.body1485 ], [ true, %.body1497 ], [ true, %bb.bx ], [ true, %bb.bo ], [ true, %bb.ca ], [ true, %bb.ek ], [ true, %bb.fa ], [ true, %bb.ho ], [ true, %bb.mx ], [ true, %bb.nk ], [ true, %bb.nz ], [ true, %bb.oo ], [ true, %bb.pd ], [ true, %bb.ps ], [ true, %bb.rv ], [ true, %bb.wn ], [ true, %bb.xk ], [ true, %bb.xx ], [ true, %bb.yk ], [ true, %bb.yx ], [ true, %bb.zk ], [ true, %bb.zz ], [ true, %bb.aaw ], [ true, %bb.abj ], [ true, %bb.aca ], [ true, %bb.acr ], [ true, %bb.adi ], [ true, %bb.ajq ], [ true, %bb.ajo ], [ true, %bb.ajs ], [ true, %bb.akt ], [ true, %bb.alf ], [ true, %bb.amd ], [ true, %bb.amp ], [ true, %bb.ano ], [ true, %bb.aod ], [ true, %bb.aon ], [ true, %bb.apy ], [ true, %bb.aqi ], [ true, %bb.aqj ]
  %i.cik = load i8, ptr %i.qe, align 8, !range !47, !noundef !11
  switch i8 %i.cik, label %bb.asb [
    i8 36, label %bb.asc
    i8 37, label %bb.asd
    i8 38, label %bb.ase
  ]

bb.asc:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0552.02307, label %.invoke3477, label %bb.asb

bb.asd:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0553.02306, label %.invoke3477, label %bb.asb

bb.ase:                                           ; preds = %.critedge969.thread
  br i1 %.sroa.0554.02305, label %.invoke3477, label %bb.asb

.invoke3477:                                      ; preds = %bb.ase, %bb.asd, %bb.asc
  %i.cil = getelementptr inbounds nuw i8, ptr %i.qe, i64 8
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..CompiledRegex$GT$17h0c447c6bfa40c6e2E"(ptr noalias noundef align 8 dereferenceable(32) %i.cil) #43
          to label %bb.asb unwind label %bb.by

bb.asf:                                           ; preds = %bb.asb
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$nickel_lang_parser..environment..Environment$LT$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17h09ec90d5457fa031E"(ptr noalias noundef align 8 dereferenceable(16) %i.qf) #43
          to label %bb.aqw unwind label %bb.by

bb.asg:                                           ; preds = %.thread3306, %bb.ash, %bb.aqw
  %.sroa.226.273311 = phi i32 [ %i.qv, %.thread3306 ], [ %.sroa.226.27, %bb.ash ], [ %.sroa.226.27, %bb.aqw ]
  %.sroa.0782.273310 = phi ptr [ %i.qu, %.thread3306 ], [ %.sroa.0782.27, %bb.ash ], [ %.sroa.0782.27, %bb.aqw ]
  %i.cim = insertvalue { ptr, i32 } poison, ptr %.sroa.0782.273310, 0
  %i.cin = insertvalue { ptr, i32 } %i.cim, i32 %.sroa.226.273311, 1
  resume { ptr, i32 } %i.cin

bb.ash:                                           ; preds = %bb.aqw
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.qg) #43
          to label %bb.asg unwind label %bb.by
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h21e532f36442b97aE"(ptr %.8.val, i64 %.16.val, i32 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbcfd344ede62c15aE", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9852
  store ptr @204, ptr %i.a, align 8, !noalias !9853
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !9853
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !9853
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !9853
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9853
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !9854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.h, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !9855
  %i.i = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !9855 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.k

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h3edd553a95884258E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9873
  store i64 0, ptr %i.c, align 8, !noalias !9873
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9873
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9873
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9873
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !9873
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !9873
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !9873
  store ptr %i.c, ptr %i.b, align 8, !noalias !9873
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @393, ptr %i.f, align 8, !noalias !9873
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !9874

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9875)
  call void @llvm.experimental.noalias.scope.decl(metadata !9876)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !34, !alias.scope !9877, !noalias !9873, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !9877, !noalias !9873, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9878
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !9874

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !35, !noundef !11 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9879
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9873
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9873
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !9880
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !9880 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !35, !noundef !11 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9881
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h7ced13d9a2c536d9E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, i32 %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br i1 %.not, label %bb.g, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  store ptr %i.g, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbcfd344ede62c15aE", ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9890
  store ptr @208, ptr %i.a, align 8, !noalias !9891
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !9891
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !9891
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !9891
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !9891
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !9892
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !9890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i32 %.0.val, ptr %i.k, align 8
  store i64 41, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !9893
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !9893 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.c, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #43
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.f:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.n

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret ptr %i.l

bb.g:                                             ; preds = %bb.a
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @205) #41
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h853ebf0a3616f683E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [392 x i8], align 8               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !18, !noundef !11
  call void @"_ZN16nickel_lang_core4eval5value63Container$LT$$RF$nickel_lang_core..term..record..RecordData$GT$11field_names17h703dc6207979630eE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !align !18, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.h, i64 20, i1 false)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !9904
  %i.i = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #40, !noalias !9904 ; 6 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.f, !prof !17

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !9904
  store ptr @130, ptr %i.a, align 8, !noalias !9904
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.k, align 8, !noalias !9904
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.l, align 8, !noalias !9904
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.m, align 8, !noalias !9904
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.n, align 8, !noalias !9904
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.c unwind label %.body.i, !noalias !9904

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
  call void @llvm.experimental.noalias.scope.decl(metadata !9905)
  %.val.i = load i64, ptr %i.c, align 8, !range !34, !alias.scope !9905, !noundef !11 ; 2 uses
  %i.q = icmp eq i64 %.val.i, 0
  br i1 %i.q, label %common.resume, label %bb.e

bb.e:                                             ; preds = %.body
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val1.i = load ptr, ptr %i.r, align 8, !alias.scope !9905, !nonnull !11, !noundef !11
  %i.s = mul nuw i64 %.val.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !9905
  br label %common.resume

bb.f:                                             ; preds = %bb.a
  store i64 504403158265495553, ptr %i.i, align 8, !noalias !9904
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 -1, ptr %i.t, align 8, !noalias !9904
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr null, ptr %i.u, align 8, !noalias !9906
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull readonly align 4 dereferenceable(20) %i.b, i64 20, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !11, !align !36, !noundef !11
  %i.x = load i32, ptr %i.w, align 4, !noundef !11
  %i.y = invoke noundef nonnull ptr @_ZN16nickel_lang_core4eval5value11NickelValue12with_pos_idx17h1fe4efbe682ed1b4E(ptr noundef nonnull %i.i, i32 noundef %i.x)
          to label %bb.g unwind label %bb.d

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !11, !align !36, !noundef !11
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 %i.ab, ptr %i.ae, align 8
  store i64 36, ptr %i.d, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !9907
  %i.af = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !9907 ; 3 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

common.resume:                                    ; preds = %.body, %bb.e, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %eh.lpad-body, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.af, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.af
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17h894d80bbd4228dfdE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9925
  store i64 0, ptr %i.c, align 8, !noalias !9925
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9925
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9925
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9925
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !9925
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !9925
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !9925
  store ptr %i.c, ptr %i.b, align 8, !noalias !9925
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @393, ptr %i.f, align 8, !noalias !9925
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !9926

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9927)
  call void @llvm.experimental.noalias.scope.decl(metadata !9928)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !34, !alias.scope !9929, !noalias !9925, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !9929, !noalias !9925, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9930
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !9926

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !35, !noundef !11 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9931
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9925
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !9932
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !9932 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !35, !noundef !11 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9933
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17he6672114c332f37eE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !9951
  store i64 0, ptr %i.c, align 8, !noalias !9951
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !9951
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !9951
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !9951
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !9951
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !9951
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !9951
  store ptr %i.c, ptr %i.b, align 8, !noalias !9951
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @393, ptr %i.f, align 8, !noalias !9951
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !9952

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9953)
  call void @llvm.experimental.noalias.scope.decl(metadata !9954)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !34, !alias.scope !9955, !noalias !9951, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !9955, !noalias !9951, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9956
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !9952

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !35, !noundef !11 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9957
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !9951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !9951
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !9958
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !9958 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !35, !noundef !11 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !9959
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op128_$u7b$$u7b$closure$u7d$$u7d$17hf3c4fbaa8ec77b68E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2, ptr %.24.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8
  %.not = icmp eq ptr %.24.val, null
  br i1 %.not, label %bb.f, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.24.val to i64
  %i.f = and i64 %i.e, 3
  %..i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !16

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %.24.val, align 8, !noundef !11 ; 3 uses
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
  br i1 %i.n, label %bb.e, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !17

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @746, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.r, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @211, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #41
          to label %bb.h unwind label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr239drop_in_place$LT$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$17hbf6b5a2621140d23E"(ptr noalias noundef align 8 dereferenceable(16) %i.c) #43
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.j:                                             ; preds = %bb.g
end_hunk_3
begin_hunk_4_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h31919c98e8b07593E":bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @393, ptr %i.h, align 8, !noalias !13923
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !13924

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13925)
  call void @llvm.experimental.noalias.scope.decl(metadata !13926)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !34, !alias.scope !13927, !noalias !13923, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !13927, !noalias !13923, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !13928
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit", !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !13924

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7" ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !13929 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13929 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13929
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13923
  %i.l = load ptr, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, align 8, !nonnull !11, !align !23, !noundef !11
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, i64 8), align 8, !noundef !11 ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit"
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !13930
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #40, !noalias !13930 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.f ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7": ; preds = %bb.o, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !13931
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7"

bb.j:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !13932
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11, !align !36, !noundef !11
  %i.v = load i32, ptr %i.u, align 4, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !align !18, !noundef !11
  %.val = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = and i64 %i.y, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !16

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %.val, align 8, !noundef !11 ; 3 uses
  %i.ab = and i64 %i.aa, 72057594037927935        ; 3 uses
  %i.ac = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  %i.ae = and i64 %i.aa, 1080863910568919040
  %i.af = icmp ult i64 %i.aa, 864691128455135232
  call void @llvm.assume(i1 %i.af)
  %i.ag = or i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %.val, align 8
  %i.ah = icmp eq i64 %i.ab, 72057594037927935
  br i1 %i.ah, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !17

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @746, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.al, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !13933
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !11, !align !36, !noundef !11
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.m, ptr %i.ar, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.10.0.i.i, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.m, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.v, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.ap, ptr %i.av, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !13934
  %i.aw = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !13934 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.p:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #43
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.aw, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ba, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h6fb9314d2bbcf256E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !18, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !align !18, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !18, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01ffa151cb715f95E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01ffa151cb715f95E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13943
  store ptr @259, ptr %i.a, align 8, !noalias !13944
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13944
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !13944
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !13944
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @142, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !13944
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !13944
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !13945
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !36, !noundef !11
  %i.n = load i32, ptr %i.m, align 4, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !13946
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !13946 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h8d8772df43cd470cE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !13966
  %i.e = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #40, !noalias !13966 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit"
  %.pn = phi { ptr, i32 } [ %i.h, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit" ], [ %i.g, %bb.c ], [ %i.n, %bb.g ]
  invoke fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hcf323ca8e19e2cd7E"(ptr noalias noundef align 8 dereferenceable(88) %0) #43
          to label %bb.k unwind label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1819111284, ptr %i.e, align 1, !noalias !13967
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN61_$LT$toml..de..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h194125f2afffaa47E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13968
  store ptr @241, ptr %i.a, align 8, !noalias !13969
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !13969
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !13969
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !13969
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !13969
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit": ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !13970
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13968
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
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !13971
  %i.l = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !13971 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.i, !prof !14

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc8 unwind label %bb.g

.noexc8:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.l, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$toml..de..error..Error$GT$17hcf323ca8e19e2cd7E"(ptr noalias noundef align 8 dereferenceable(88) %0)
  ret ptr %i.l

bb.j:                                             ; preds = %.body
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.k:                                             ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h9d18c8a5cf4225fbE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !11, !align !18, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13996
  store i64 0, ptr %i.d, align 8, !noalias !13996
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !13996
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !13996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13996
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !13996
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !13996
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !13996
  store ptr %i.d, ptr %i.c, align 8, !noalias !13996
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @393, ptr %i.h, align 8, !noalias !13996
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !13997

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13998)
  call void @llvm.experimental.noalias.scope.decl(metadata !13999)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !34, !alias.scope !14000, !noalias !13996, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !14000, !noalias !13996, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14001
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit", !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !13997

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !14002 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14002 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !14002
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13996
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13996
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14003
  %i.l = call noundef dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 1) #40, !noalias !14003 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14004
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.l, ptr noundef nonnull align 1 dereferenceable(48) @262, i64 48, i1 false), !noalias !14005
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
end_hunk_4
begin_hunk_5_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17ha9d21d13c13c9b58E":bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @393, ptr %i.h, align 8, !noalias !14032
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !14033

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14034)
  call void @llvm.experimental.noalias.scope.decl(metadata !14035)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !34, !alias.scope !14036, !noalias !14032, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !14036, !noalias !14032, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14037
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit", !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !14033

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7", %bb.h, %bb.q, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.q ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7" ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !14038 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14038 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !14038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14032
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14032
  %i.l = load ptr, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, align 8, !nonnull !11, !align !23, !noundef !11
  %i.m = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN16nickel_lang_core4eval9operation11ENUM_FORMAT17h07fef0ce822f9593E, i64 8), align 8, !noundef !11 ; 8 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit"
  %i.o = icmp eq i64 %i.m, 0                      ; 2 uses
  br i1 %i.o, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14039
  %i.p = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 1) #40, !noalias !14039 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit"
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.f ], [ 0, %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.g
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7": ; preds = %bb.o, %bb.n, %bb.i
  %.pn = phi { ptr, i32 } [ %i.s, %bb.i ], [ %i.am, %bb.n ], [ %i.am, %bb.o ] ; 2 uses
  %i.r = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.r, label %common.resume, label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14040
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7"

bb.j:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.l, i64 %i.m, i1 false), !noalias !14041
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !11, !align !36, !noundef !11
  %i.v = load i32, ptr %i.u, align 4, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !11, !align !18, !noundef !11
  %.val = load ptr, ptr %i.x, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.y = ptrtoint ptr %.val to i64
  %i.z = and i64 %i.y, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.z, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !16

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc3 unwind label %bb.n

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %.val, align 8, !noundef !11 ; 3 uses
  %i.ab = and i64 %i.aa, 72057594037927935        ; 3 uses
  %i.ac = icmp ne i64 %i.ab, 0
  call void @llvm.assume(i1 %i.ac)
  %i.ad = add nuw nsw i64 %i.ab, 1
  %i.ae = and i64 %i.aa, 1080863910568919040
  %i.af = icmp ult i64 %i.aa, 864691128455135232
  call void @llvm.assume(i1 %i.af)
  %i.ag = or i64 %i.ad, %i.ae
  store i64 %i.ag, ptr %.val, align 8
  %i.ah = icmp eq i64 %i.ab, 72057594037927935
  br i1 %i.ah, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !17

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @746, ptr %i.b, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.al, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc4 unwind label %bb.n

.noexc4:                                          ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m, %bb.k
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7", label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14042
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7"

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !11, !align !36, !noundef !11
  %i.ap = load i32, ptr %i.ao, align 4, !noundef !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.014.0.copyload, ptr %i.aq, align 8
  %.sroa.5.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.4.0.copyload, ptr %.sroa.5.0..sroa_idx10, align 8
  %.sroa.6.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.515.0.copyload, ptr %.sroa.6.0..sroa_idx12, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %i.m, ptr %i.ar, align 8
  %.sroa.518.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr %.sroa.10.0.i.i, ptr %.sroa.518.0..sroa_idx19, align 8
  %.sroa.621.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 %i.m, ptr %.sroa.621.0..sroa_idx22, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 1, ptr %i.as, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  store i32 %i.v, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr %.val, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  store i32 %i.ap, ptr %i.av, align 4
  store i64 23, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14043
  %i.aw = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !14043 ; 3 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.p, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.p:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc8 unwind label %bb.q

.noexc8:                                          ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #43
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.aw, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aw, ptr %i.ba, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hb3f7e61257dabacdE"(i32 %.0.val, ptr noalias noundef nonnull align 8 %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 10 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %0, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14067
  %i.f = tail call noundef dereferenceable_or_null(4) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 4, i64 noundef range(i64 1, 9) 1) #40, !noalias !14067 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

.body:                                            ; preds = %bb.g, %bb.c, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit"
  %.pn = phi { ptr, i32 } [ %i.i, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit" ], [ %i.h, %bb.c ], [ %i.o, %bb.g ]
  %.val7 = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h9cfaf24ddb1f370eE"(ptr nonnull %.val7) #43
          to label %common.resume unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i32 1852797802, ptr %i.f, align 1, !noalias !14068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN63_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hced9439fef8da4a9E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14069
  store ptr @241, ptr %i.a, align 8, !noalias !14070
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !14070
  %.sroa.57.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.57.0..sroa_idx, align 8, !noalias !14070
  %.sroa.68.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.68.0..sroa_idx, align 8, !noalias !14070
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !14070
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.e unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit": ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 4, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14071
  br label %.body

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14069
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
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14072
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !14072 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.i, !prof !14

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc9 unwind label %bb.g

.noexc9:                                          ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.i:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load ptr, ptr %i.e, align 8, !nonnull !11, !noundef !11 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14073)
  call void @llvm.experimental.noalias.scope.decl(metadata !14074)
  %i.q = load i64, ptr %.val, align 8, !range !55, !alias.scope !14075, !noundef !11
  switch i64 %i.q, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h9cfaf24ddb1f370eE.exit" [
    i64 0, label %bb.j
    i64 1, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.val2.i.i.i.i = load i64, ptr %i.r, align 8, !alias.scope !14075, !noundef !11 ; 2 uses
  %i.s = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.s, label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h9cfaf24ddb1f370eE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i": ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val1.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !14075, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef 1) #40, !noalias !14075
  br label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h9cfaf24ddb1f370eE.exit"

bb.k:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.u, align 8, !alias.scope !14075, !nonnull !11, !noundef !11
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17hee5745bc1b8415c8E"(ptr nonnull %.val.i.i.i.i)
          to label %"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h9cfaf24ddb1f370eE.exit" unwind label %bb.l

common.resume:                                    ; preds = %.body, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.l ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.l:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #40
  br label %common.resume

"_ZN4core3ptr45drop_in_place$LT$serde_json..error..Error$GT$17h9cfaf24ddb1f370eE.exit": ; preds = %bb.i, %bb.j, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i", %bb.k
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #40
  ret ptr %i.m

bb.m:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hb6e1b45756d3a218E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !18, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !align !18, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !18, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01ffa151cb715f95E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01ffa151cb715f95E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14084
  store ptr @264, ptr %i.a, align 8, !noalias !14085
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !14085
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !14085
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !14085
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @142, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !14085
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !14085
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !14086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14084
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !36, !noundef !11
  %i.n = load i32, ptr %i.m, align 4, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14087
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !14087 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hc60838d9461b0c42E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [40 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.e = load i8, ptr %.0.val, align 1, !range !12, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = load i8, ptr %.8.val, align 1, !range !12, !noundef !11
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14097
  store i64 0, ptr %i.c, align 8, !noalias !14097
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14097
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !14097
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14097
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.j, align 8, !noalias !14097
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !14097
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !14097
  store ptr %i.c, ptr %i.b, align 8, !noalias !14097
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @393, ptr %i.k, align 8, !noalias !14097
  %i.l = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !14098

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !14099)
  call void @llvm.experimental.noalias.scope.decl(metadata !14100)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !34, !alias.scope !14101, !noalias !14097, !noundef !11 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.n, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !14101, !noalias !14097, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14102
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.l, label %bb.e, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i", !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !14098

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.b, %bb.c
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h7e2f6d6e576e3aedE"(ptr noalias noundef align 8 dereferenceable(40) %i.d) #43
          to label %common.resume unwind label %bb.g

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i": ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !14103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14097
  call void @llvm.experimental.noalias.scope.decl(metadata !14104)
  %.val2.i = load i64, ptr %i.d, align 8, !range !34, !alias.scope !14104, !noundef !11 ; 2 uses
  %i.o = icmp eq i64 %.val2.i, 0
  br i1 %i.o, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h7e2f6d6e576e3aedE.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i"
  %i.p = mul nuw i64 %.val2.i, 160
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull inttoptr (i64 8 to ptr), i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !14104
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h7e2f6d6e576e3aedE.exit"

common.resume:                                    ; preds = %.body
  resume { ptr, i32 } %i.m

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_core..term..BinaryOp$GT$17h7e2f6d6e576e3aedE.exit": ; preds = %bb.f, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3a19ffe945a78d11E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hc7a4f8f542f34babE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [392 x i8], align 8               ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = load ptr, ptr %1, align 8, !nonnull !11, !align !18, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14129
  store i64 0, ptr %i.d, align 8, !noalias !14129
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14129
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !14129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14129
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.g, align 8, !noalias !14129
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !14129
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !14129
  store ptr %i.d, ptr %i.c, align 8, !noalias !14129
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @393, ptr %i.h, align 8, !noalias !14129
  %i.i = invoke noundef zeroext i1 @"_ZN71_$LT$nickel_lang_core..term..BinaryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h37adace5b09a7f42E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.d unwind label %bb.b, !noalias !14130

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14131)
  call void @llvm.experimental.noalias.scope.decl(metadata !14132)
  %.val.i.i.i = load i64, ptr %i.d, align 8, !range !34, !alias.scope !14133, !noalias !14129, !noundef !11 ; 2 uses
  %i.k = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.k, label %common.resume, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !14133, !noalias !14129, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14134
  br label %common.resume

bb.d:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.e, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit", !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !14130

.noexc.i:                                         ; preds = %bb.e
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.h, %bb.o, %bb.b, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.au, %bb.o ], [ %i.j, %bb.b ], [ %i.j, %bb.c ], [ %.pn, %bb.h ], [ %.pn, %bb.g ]
  resume { ptr, i32 } %common.resume.op

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit": ; preds = %bb.d
  %.sroa.014.0.copyload = load i64, ptr %i.d, align 8, !noalias !14135 ; 3 uses
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !14135 ; 3 uses
  %.sroa.515.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !14135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14129
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14129
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14136
  %i.l = call noundef dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, 9) 1) #40, !noalias !14136 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.j

bb.f:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit"
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 48, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7", %bb.i
  %.pn = phi { ptr, i32 } [ %i.ai, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7" ], [ %i.o, %bb.i ] ; 2 uses
  %i.n = icmp eq i64 %.sroa.014.0.copyload, 0
  br i1 %i.n, label %common.resume, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %.sroa.014.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14137
  br label %common.resume

bb.i:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

bb.j:                                             ; preds = %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17h7fb81d117b7dba1dE.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(48) %i.l, ptr noundef nonnull align 1 dereferenceable(48) @262, i64 48, i1 false), !noalias !14138
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !11, !align !36, !noundef !11
  %i.r = load i32, ptr %i.q, align 4, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !11, !align !18, !noundef !11
  %.val = load ptr, ptr %i.t, align 8, !nonnull !11, !noundef !11 ; 4 uses
  %i.u = ptrtoint ptr %.val to i64
  %i.v = and i64 %i.u, 3
  %..i = call i64 @llvm.umin.i64(i64 %i.v, i64 2)
  switch i64 %..i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit" [
    i64 2, label %bb.k
    i64 0, label %bb.l
  ], !prof !16

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc3 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7"

.noexc3:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.w = load i64, ptr %.val, align 8, !noundef !11 ; 3 uses
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
  br i1 %i.ad, label %bb.m, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit", !prof !17

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @746, ptr %i.b, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ah, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc4 unwind label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7"

.noexc4:                                          ; preds = %bb.m
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h295b33912dc2a079E.exit7": ; preds = %bb.m, %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14139
  br label %bb.g

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit": ; preds = %bb.l, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !11, !align !36, !noundef !11
  %i.al = load i32, ptr %i.ak, align 4, !noundef !11
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
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14140
  %i.as = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !14140 ; 3 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.n, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.n:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc8 unwind label %bb.o

.noexc8:                                          ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.e) #43
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.as, ptr noundef nonnull align 8 dereferenceable(392) %i.e, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.as, ptr %i.aw, align 8
  store ptr null, ptr %0, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hcac2113ad2485ef2E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load ptr, ptr %0, align 8, !nonnull !11, !align !18, !noundef !11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !11, !align !18, !noundef !11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !18, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01ffa151cb715f95E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %i.j, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h01ffa151cb715f95E", ptr %.sroa.46.0..sroa_idx, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.i, ptr %i.k, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @"_ZN4core3fmt5float52_$LT$impl$u20$core..fmt..Display$u20$for$u20$f64$GT$3fmt17hd9bcbe11d7fbf124E", ptr %.sroa.410.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14149
  store ptr @266, ptr %i.a, align 8, !noalias !14150
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !14150
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !14150
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !14150
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @142, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !14150
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 4, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !14150
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !14151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14149
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !36, !noundef !11
  %i.n = load i32, ptr %i.m, align 4, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %i.n, ptr %i.p, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14152
  %i.q = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !14152 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.b, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.s

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.q, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.q
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17hf0bed475d98e321eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dead_on_return dereferenceable(323) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [48 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [40 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [72 x i8], align 8                ; 4 uses
  %i.s = alloca [88 x i8], align 8                ; 4 uses
  %i.t = alloca [20 x i8], align 4                ; 4 uses
  %i.u = alloca [72 x i8], align 8                ; 11 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.v = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !11, !noundef !11
  %i.x = getelementptr inbounds nuw i8, ptr %.0.val, i64 16
  %i.y = load i64, ptr %i.x, align 8, !noundef !11 ; 4 uses
  %i.z = and i64 %i.y, 3                          ; 2 uses
  %i.aa = lshr i64 %i.y, 2
  %i.ab = icmp ne i64 %i.z, 0
  %i.ac = zext i1 %i.ab to i64
  %i.ad = add nuw nsw i64 %i.aa, %i.ac
  %i.ae = mul nuw i64 %i.ad, 3                    ; 12 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  %i.ag = icmp eq i64 %i.y, 0                     ; 5 uses
  br i1 %i.ag, label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !14234
  %i.ah = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14234 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aj = ptrtoint ptr %i.ah to i64
  br label %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i.i"

bb.d:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.ae, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @516) #41, !noalias !14235
  unreachable

"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %.sroa.10.0.i.i.i = phi i64 [ %i.aj, %bb.c ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ] ; 2 uses
  %i.ak = inttoptr i64 %.sroa.10.0.i.i.i to ptr   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14236
  invoke void @"_ZN90_$LT$base64..engine..general_purpose..GeneralPurpose$u20$as$u20$base64..engine..Engine$GT$15internal_decode17h3330e4502b0126caE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(323) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.w, i64 noundef %i.y, ptr noalias noundef nonnull align 1 %i.ak, i64 noundef %i.ae, i64 noundef %i.z, i64 noundef %i.ae)
          to label %bb.g unwind label %bb.e, !noalias !14237

bb.e:                                             ; preds = %bb.i, %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i.i"
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.ag, label %common.resume, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14238
  br label %common.resume

bb.g:                                             ; preds = %"_ZN63_$LT$u8$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h67ac4c8180dd9dfdE.exit.i.i"
  %i.am = load i64, ptr %i.l, align 8, !range !31, !noalias !14236, !noundef !11
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.011.0.copyload.i.i = load i8, ptr %i.ao, align 8, !noalias !14236 ; 2 uses
  %i.ap = icmp eq i8 %.sroa.011.0.copyload.i.i, 4
  br i1 %i.ap, label %bb.i, label %bb.j, !prof !17

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14236
  store ptr @518, ptr %i.j, align 8, !noalias !14236
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hbcfd344ede62c15aE", ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !14236
  store ptr @386, ptr %i.k, align 8, !noalias !14236
  %i.aq = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 1, ptr %i.aq, align 8, !noalias !14236
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %i.ar, align 8, !noalias !14236
  %i.as = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.j, ptr %i.as, align 8, !noalias !14236
  %i.at = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 1, ptr %i.at, align 8, !noalias !14236
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @519) #41
          to label %bb.l unwind label %bb.e, !noalias !14237

bb.j:                                             ; preds = %bb.h
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.3.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !14236
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 9
  %.sroa.3.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.3.0..sroa_idx.i.i, align 1, !noalias !14236
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14236
  %.sroa.030.0.insert.ext.i.i = zext i8 %.sroa.011.0.copyload.i.i to i64
  %.sroa.030.1.insert.ext.i.i = zext i56 %.sroa.3.sroa.0.0.copyload.i.i to i64
  %.sroa.030.1.insert.shift.i.i = shl nuw i64 %.sroa.030.1.insert.ext.i.i, 8
  %.sroa.030.1.insert.insert.i.i = or disjoint i64 %.sroa.030.1.insert.shift.i.i, %.sroa.030.0.insert.ext.i.i
  br i1 %i.ag, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ak, i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !14239
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  unreachable

end_hunk_5
begin_hunk_6_@"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn17h515314caca87f827E":bb.a
    i64 0, label %bb.us
  ], !prof !16

bb.ur:                                            ; preds = %bb.uq
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc1073 unwind label %bb.si

.noexc1073:                                       ; preds = %bb.ur
  unreachable

bb.us:                                            ; preds = %bb.uq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15363
  store ptr %.val.i1070, ptr %i.g, align 8, !noalias !15363
  %i.baa = load i64, ptr %.val.i1070, align 8, !noalias !15364, !noundef !11 ; 3 uses
  %i.bab = and i64 %i.baa, 72057594037927935
  %i.bac = add nsw i64 %i.bab, -1                 ; 3 uses
  %i.bad = and i64 %i.baa, 1080863910568919040
  %i.bae = icmp ult i64 %i.baa, 864691128455135232
  call void @llvm.assume(i1 %i.bae)
  %i.baf = or i64 %i.bac, %i.bad
  store i64 %i.baf, ptr %.val.i1070, align 8, !noalias !15364
  %i.bag = icmp ugt i64 %i.bac, 72057594037927935
  br i1 %i.bag, label %bb.uu, label %bb.ut, !prof !17

bb.ut:                                            ; preds = %bb.us
  %i.bah = icmp eq i64 %i.bac, 0
  br i1 %i.bah, label %bb.uv, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1072"

bb.uu:                                            ; preds = %bb.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15364
  store ptr @746, ptr %i.f, align 8, !noalias !15364
  %i.bai = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 1, ptr %i.bai, align 8, !noalias !15364
  %i.baj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.baj, align 8, !noalias !15364
  %i.bak = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bak, align 8, !noalias !15364
  %i.bal = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 0, ptr %i.bal, align 8, !noalias !15364
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc1074 unwind label %bb.si

.noexc1074:                                       ; preds = %bb.uu
  unreachable

bb.uv:                                            ; preds = %bb.ut
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1072" unwind label %bb.si

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1072": ; preds = %bb.uv, %bb.ut
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15363
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1076"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1083": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1079", %bb.uw, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1076"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  %i.bam = trunc nuw i8 %.sroa.0253.6 to i1
  br i1 %i.bam, label %bb.vc, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1090"

bb.uw:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1076"
  %i.ban = ptrtoint ptr %.sroa.0106.0.copyload107 to i64
  %i.bao = and i64 %i.ban, 3
  %..i.i1078 = call i64 @llvm.umin.i64(i64 %i.bao, i64 2)
  switch i64 %..i.i1078, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1083" [
    i64 2, label %bb.ux
    i64 0, label %bb.uy
  ], !prof !16

bb.ux:                                            ; preds = %bb.uw
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc1080 unwind label %bb.rz

.noexc1080:                                       ; preds = %bb.ux
  unreachable

bb.uy:                                            ; preds = %bb.uw
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15365
  store ptr %.sroa.0106.0.copyload107, ptr %i.e, align 8, !noalias !15365
  %i.bap = load i64, ptr %.sroa.0106.0.copyload107, align 8, !noalias !15366, !noundef !11 ; 3 uses
  %i.baq = and i64 %i.bap, 72057594037927935
  %i.bar = add nsw i64 %i.baq, -1                 ; 3 uses
  %i.bas = and i64 %i.bap, 1080863910568919040
  %i.bat = icmp ult i64 %i.bap, 864691128455135232
  call void @llvm.assume(i1 %i.bat)
  %i.bau = or i64 %i.bar, %i.bas
  store i64 %i.bau, ptr %.sroa.0106.0.copyload107, align 8, !noalias !15366
  %i.bav = icmp ugt i64 %i.bar, 72057594037927935
  br i1 %i.bav, label %bb.va, label %bb.uz, !prof !17

bb.uz:                                            ; preds = %bb.uy
  %i.baw = icmp eq i64 %i.bar, 0
  br i1 %i.baw, label %bb.vb, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1079"

bb.va:                                            ; preds = %bb.uy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15366
  store ptr @746, ptr %i.d, align 8, !noalias !15366
  %i.bax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bax, align 8, !noalias !15366
  %i.bay = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %i.bay, align 8, !noalias !15366
  %i.baz = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.baz, align 8, !noalias !15366
  %i.bba = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.bba, align 8, !noalias !15366
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc1081 unwind label %bb.rz

.noexc1081:                                       ; preds = %bb.va
  unreachable

bb.vb:                                            ; preds = %bb.uz
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1079" unwind label %bb.rz

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1079": ; preds = %bb.vb, %bb.uz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15365
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1083"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1090": ; preds = %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1086", %bb.vc, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1083"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dd)
  call fastcc void @"_ZN4core3ptr136drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$GT$17hef7c718d4524b05fE"(ptr noalias noundef align 8 dereferenceable(32) %i.de)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.de)
  br label %bb.tu

bb.vc:                                            ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1083"
  switch i64 %..i1024, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1090" [
    i64 2, label %bb.vd
    i64 0, label %bb.ve
  ], !prof !16

bb.vd:                                            ; preds = %bb.vc
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc1087 unwind label %bb.rq

.noexc1087:                                       ; preds = %bb.vd
  unreachable

bb.ve:                                            ; preds = %bb.vc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15367
  store ptr %.sroa.0103.0.copyload104, ptr %i.c, align 8, !noalias !15367
  %i.bbb = load i64, ptr %.sroa.0103.0.copyload104, align 8, !noalias !15368, !noundef !11 ; 3 uses
  %i.bbc = and i64 %i.bbb, 72057594037927935
  %i.bbd = add nsw i64 %i.bbc, -1                 ; 3 uses
  %i.bbe = and i64 %i.bbb, 1080863910568919040
  %i.bbf = icmp ult i64 %i.bbb, 864691128455135232
  call void @llvm.assume(i1 %i.bbf)
  %i.bbg = or i64 %i.bbd, %i.bbe
  store i64 %i.bbg, ptr %.sroa.0103.0.copyload104, align 8, !noalias !15368
  %i.bbh = icmp ugt i64 %i.bbd, 72057594037927935
  br i1 %i.bbh, label %bb.vg, label %bb.vf, !prof !17

bb.vf:                                            ; preds = %bb.ve
  %i.bbi = icmp eq i64 %i.bbd, 0
  br i1 %i.bbi, label %bb.vh, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1086"

bb.vg:                                            ; preds = %bb.ve
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15368
  store ptr @746, ptr %i.b, align 8, !noalias !15368
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bbj, align 8, !noalias !15368
  %i.bbk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.bbk, align 8, !noalias !15368
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.bbl, align 8, !noalias !15368
  %i.bbm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.bbm, align 8, !noalias !15368
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc1088 unwind label %bb.rq

.noexc1088:                                       ; preds = %bb.vg
  unreachable

bb.vh:                                            ; preds = %bb.vf
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1086" unwind label %bb.rq

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h241a250d883b9fefE.exit.i.i1086": ; preds = %bb.vh, %bb.vf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15367
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E.exit1090"

bb.vi:                                            ; preds = %.body1067
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cz) #43
          to label %.body1020 unwind label %bb.bw

.body1020.thread:                                 ; preds = %bb.sc, %bb.sd, %bb.se, %.body1020
  %.pn387635 = phi { ptr, i32 } [ %.pn387, %.body1020 ], [ %i.auj, %bb.se ], [ %i.auj, %bb.sd ], [ %i.auj, %bb.sc ]
  %.sroa.0253.2634 = phi i8 [ %.sroa.0253.2, %.body1020 ], [ 1, %bb.se ], [ 1, %bb.sd ], [ 1, %bb.sc ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.db) #43
          to label %.body1013 unwind label %bb.bw

.body1013.thread:                                 ; preds = %bb.rt, %bb.ru, %bb.rv, %.body1013
  %.pn389630 = phi { ptr, i32 } [ %.pn389, %.body1013 ], [ %i.atl, %bb.rv ], [ %i.atl, %bb.ru ], [ %i.atl, %bb.rt ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dd) #43
          to label %bb.rp unwind label %bb.bw

"_ZN4core3ptr395drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..Closure$C$nickel_lang_core..position..PosIdx$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_opn..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5b154f813e6f761cE.exit": ; preds = %.body684, %.body610, %bb.fo, %bb.id, %bb.mh, %bb.pg, %bb.rp
  %.pn492 = phi { ptr, i32 } [ %.pn391, %bb.rp ], [ %.pn402, %bb.pg ], [ %.pn490, %.body610 ], [ %.pn456, %bb.fo ], [ %.pn443, %bb.id ], [ %.pn420, %bb.mh ], [ %.pn473, %.body684 ]
  resume { ptr, i32 } %.pn492
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h164c4c855afd21aaE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val = load ptr, ptr %i.d, align 8, !noundef !11
  %i.e = tail call fastcc noundef ptr @_ZN16nickel_lang_core5label5Label17get_evaluated_arg17h434ff33598c7e8f0E(ptr %.val) ; 2 uses
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h0c9a61c796cceaccE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #43
          to label %common.resume unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  store ptr %i.e, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.h, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  store i64 19, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !15371
  %i.i = tail call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !15371 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit", !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.c) #43
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9ec2b9a922bfd28fE.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.i, ptr noundef nonnull align 8 dereferenceable(392) %i.c, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret ptr %i.i

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h46a617b1ce3084bcE"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15389
  store i64 0, ptr %i.c, align 8, !noalias !15389
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !15389
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !15389
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15389
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !15389
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !15389
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !15389
  store ptr %i.c, ptr %i.b, align 8, !noalias !15389
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @393, ptr %i.f, align 8, !noalias !15389
  %i.g = invoke noundef zeroext i1 @"_ZN58_$LT$regex..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17h9a16c633842f0675E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !15390

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15391)
  call void @llvm.experimental.noalias.scope.decl(metadata !15392)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !34, !alias.scope !15393, !noalias !15389, !noundef !11 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !15393, !noalias !15389, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !15394
  br label %.body

bb.d:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.e, label %bb.g, !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !15390

.noexc.i:                                         ; preds = %bb.e
  unreachable

.body:                                            ; preds = %bb.i, %bb.c, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.o, %bb.i ], [ %i.h, %bb.c ]
  %.val2 = load i64, ptr %0, align 8, !range !35, !noundef !11 ; 2 uses
  %switch = icmp sgt i64 %.val2, 0
  br i1 %switch, label %bb.f, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit"

bb.f:                                             ; preds = %.body
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load ptr, ptr %i.j, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %.val2, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !15395
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit"

bb.g:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15389
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15389
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.l, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !15396
  %i.m = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !15396 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.h, label %bb.k, !prof !14

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.k:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.m, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %0, align 8, !range !35, !noundef !11 ; 2 uses
  %switch1 = icmp sgt i64 %.val, 0
  br i1 %switch1, label %bb.l, label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8"

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.q, align 8, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !15397
  br label %"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8"

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit8": ; preds = %bb.k, %bb.l
  ret ptr %i.m

"_ZN4core3ptr40drop_in_place$LT$regex..error..Error$GT$17h0752f942e54301e0E.exit": ; preds = %.body, %bb.f
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17h8e1b1b5ea37cdb89E"(i32 %.0.val, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(120) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15406
  store ptr @241, ptr %i.a, align 8, !noalias !15407
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !15407
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !15407
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !15407
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !15407
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.j, %bb.e ]
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17he134d9e8b5d59258E"(ptr noalias noundef align 8 dereferenceable(120) %0) #43
  resume { ptr, i32 } %eh.lpad-body

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i32 %.0.val, ptr %i.g, align 8
  store i64 41, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !15408
  %i.h = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !15408 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.g, !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.g:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(392) %i.h, ptr noundef nonnull align 8 dereferenceable(392) %i.d, i64 392, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..term..string..SubstringError$GT$17he134d9e8b5d59258E"(ptr noalias noundef align 8 dereferenceable(120) %0)
  ret ptr %i.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_opn28_$u7b$$u7b$closure$u7d$$u7d$17hbb08a286ed159c0fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nonnull captures(address, read_provenance) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef range(i64 5, 11) %2, i64 noundef range(i64 1, 5) %3, i32 noundef %4, ptr noundef nonnull %5) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [392 x i8], align 8               ; 15 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %5, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15429
  store i64 0, ptr %i.c, align 8, !noalias !15429
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !15429
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !15429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15429
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 -536870880, ptr %i.f, align 8, !noalias !15429
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !15429
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !15429
  store ptr %i.c, ptr %i.b, align 8, !noalias !15429
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @393, ptr %i.g, align 8, !noalias !15429
  %i.h = invoke noundef zeroext i1 @"_ZN69_$LT$nickel_lang_core..term..NAryOp$u20$as$u20$core..fmt..Display$GT$3fmt17h0ac5c99237e1b28fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %.0.val, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.d unwind label %bb.b, !noalias !15430

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15431)
  call void @llvm.experimental.noalias.scope.decl(metadata !15432)
  %.val.i.i.i = load i64, ptr %i.c, align 8, !range !34, !alias.scope !15433, !noalias !15429, !noundef !11 ; 2 uses
  %i.j = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.j, label %.thread15, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val1.i.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !15433, !noalias !15429, !nonnull !11, !noundef !11
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !15434
  br label %.thread15

bb.d:                                             ; preds = %bb.a
  br i1 %i.h, label %bb.e, label %bb.f, !prof !17

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @394, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @413, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @396) #41
          to label %.noexc.i unwind label %bb.b, !noalias !15430

.noexc.i:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  %.sroa.0.0.copyload1 = load i64, ptr %i.c, align 8, !noalias !15435 ; 3 uses
  %.sroa.5.0.copyload3 = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !15435 ; 3 uses
  %.sroa.6.0.copyload5 = load i64, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !15435
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15429
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !15436
  %i.k = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #40, !noalias !15436 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 1, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @795) #41
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
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload3, i64 noundef %.sroa.0.0.copyload1, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !15437
  br label %.thread15

bb.j:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.k, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %2, i1 false), !noalias !15438
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.o = load i32, ptr %.8.val, align 4, !noundef !11
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.0.0.copyload1, ptr %i.p, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.sroa.5.0.copyload3, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
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
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !15439
  %i.v = call noundef align 8 dereferenceable_or_null(392) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 392, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !15439 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.n, !prof !14

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 392) #41
          to label %.noexc6 unwind label %bb.l

.noexc6:                                          ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_core..error..EvalErrorKind$GT$17h61ebff4ad4bbfe5fE"(ptr noalias noundef nonnull align 8 dereferenceable(392) %i.d) #43
          to label %bb.p unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
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
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

bb.p:                                             ; preds = %bb.l, %.thread15
  %.pn13 = phi { ptr, i32 } [ %.pn14, %.thread15 ], [ %i.x, %bb.l ]
  resume { ptr, i32 } %.pn13

.thread15:                                        ; preds = %bb.h, %bb.i, %bb.b, %bb.c
  %.pn14 = phi { ptr, i32 } [ %i.i, %bb.b ], [ %i.m, %bb.h ], [ %i.i, %bb.c ], [ %i.m, %bb.i ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #43
          to label %bb.p unwind label %bb.o
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract9apply_all17h702ec96e9390521eE(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [152 x i8], align 8               ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [168 x i8], align 8               ; 5 uses
  %i.g = icmp eq ptr %1, %2
  br i1 %i.g, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5c13f5f11942d9a6E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %2 to i64
  %i.i = ptrtoint ptr %1 to i64
  %i.j = sub nuw i64 %i.h, %i.i
  %i.k = udiv exact i64 %i.j, 160
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  br label %bb.c

bb.c:                                             ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hb2b38ace987921afE.exit.i.i.i", %bb.b
  %i.m = phi ptr [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hb2b38ace987921afE.exit.i.i.i" ], [ %0, %bb.b ] ; 3 uses
  %.sroa.07.0.i.i = phi i64 [ %i.ag, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hb2b38ace987921afE.exit.i.i.i" ], [ 0, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds nuw [160 x i8], ptr %1, i64 %.sroa.07.0.i.i ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15450)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15451
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15451
  store ptr %i.m, ptr %i.e, align 8, !noalias !15451
  call void @llvm.experimental.noalias.scope.decl(metadata !15452)
  call void @llvm.experimental.noalias.scope.decl(metadata !15453)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15454
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 152
  %.val.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !15455, !noalias !15456, !nonnull !11, !noundef !11 ; 5 uses
  %i.p = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.q = and i64 %i.p, 3
  %..i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.q, i64 2)
  switch i64 %..i.i.i.i.i.i, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i" [
    i64 2, label %bb.d
    i64 0, label %bb.e
  ], !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @417, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @421, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @128) #41
          to label %.noexc.i.i.i unwind label %.body.thread5.i.i.i, !noalias !15451

.noexc.i.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !15454, !noundef !11 ; 3 uses
  %i.s = and i64 %i.r, 72057594037927935          ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add nuw nsw i64 %i.s, 1
  %i.v = and i64 %i.r, 1080863910568919040
  %i.w = icmp ult i64 %i.r, 864691128455135232
  call void @llvm.assume(i1 %i.w)
  %i.x = or i64 %i.u, %i.v
  store i64 %i.x, ptr %.val.i.i.i.i.i, align 8, !noalias !15454
  %i.y = icmp eq i64 %i.s, 72057594037927935
  br i1 %i.y, label %bb.f, label %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i", !prof !17

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15454
  store ptr @746, ptr %i.b, align 8, !noalias !15454
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.z, align 8, !noalias !15454
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.aa, align 8, !noalias !15454
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ab, align 8, !noalias !15454
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.ac, align 8, !noalias !15454
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @747) #41
          to label %.noexc2.i.i.i unwind label %.body.thread5.i.i.i, !noalias !15451

.noexc2.i.i.i:                                    ; preds = %bb.f
  unreachable

"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i": ; preds = %bb.e, %bb.c
  store ptr %.val.i.i.i.i.i, ptr %i.d, align 8, !noalias !15454
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15454
  invoke fastcc void @"_ZN69_$LT$nickel_lang_core..label..Label$u20$as$u20$core..clone..Clone$GT$5clone17h1f0f897958055994E"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.n)
          to label %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hb2b38ace987921afE.exit.i.i.i" unwind label %bb.g, !noalias !15456

bb.g:                                             ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #43
          to label %.body.thread.i.i.i unwind label %bb.h, !noalias !15456

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15456
  unreachable

.body.thread5.i.i.i:                              ; preds = %bb.f, %bb.d
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i.i.i

"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hb2b38ace987921afE.exit.i.i.i": ; preds = %"_ZN81_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$core..clone..Clone$GT$5clone17h7dff85222f529735E.exit.i.i.i.i.i"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.l, ptr noundef nonnull align 8 dereferenceable(152) %i.c, i64 152, i1 false), !noalias !15451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15454
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15454
  store ptr %i.m, ptr %i.f, align 8, !noalias !15451
  store ptr %.val.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !15451
  %i.af = call noundef nonnull ptr @_ZN16nickel_lang_core4term15RuntimeContract5apply17h979b649f88f8a7a6E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(160) %i.l, ptr noundef nonnull %i.m, i32 noundef %3) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15451
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15451
  %i.ag = add nuw i64 %.sroa.07.0.i.i, 1          ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.k
  br i1 %i.ah, label %"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5c13f5f11942d9a6E.exit", label %bb.c

.body.thread.i.i.i:                               ; preds = %.body.thread5.i.i.i, %bb.g
  %eh.lpad-body4.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i, %.body.thread5.i.i.i ], [ %i.ad, %bb.g ]
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #43
          to label %.body unwind label %bb.i, !noalias !15457

bb.i:                                             ; preds = %.body.thread.i.i.i
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15457
  unreachable

"_ZN104_$LT$core..iter..adapters..cloned..Cloned$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold17h5c13f5f11942d9a6E.exit": ; preds = %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hb2b38ace987921afE.exit.i.i.i", %bb.a
  %.sroa.04.0.i.i = phi ptr [ %0, %bb.a ], [ %i.af, %"_ZN16nickel_lang_core4term15RuntimeContract9apply_all28_$u7b$$u7b$closure$u7d$$u7d$17hb2b38ace987921afE.exit.i.i.i" ]
  ret ptr %.sroa.04.0.i.i

.body:                                            ; preds = %.body.thread.i.i.i
  resume { ptr, i32 } %eh.lpad-body4.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN16nickel_lang_core4term4make12enum_variant17hd18d62ea83bebc96E(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN95_$LT$nickel_lang_parser..identifier..LocIdent$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17h0d7c064bb203b457E"(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @121, i64 noundef 5)
          to label %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e61b9d897ce5c2fE.exit" unwind label %bb.g

"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e61b9d897ce5c2fE.exit": ; preds = %bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !15464
  %i.d = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef 8) #40, !noalias !15464 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.f, !prof !17

bb.b:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_core..eval..value..EnumVariantData$GT$17h28ce6d9b63c63845E"(ptr nonnull %0) #43
          to label %.body unwind label %bb.e, !noalias !15464

bb.c:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e61b9d897ce5c2fE.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15464
  store ptr @130, ptr %i.a, align 8, !noalias !15464
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.g, align 8, !noalias !15464
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.h, align 8, !noalias !15464
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !noalias !15464
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.j, align 8, !noalias !15464
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @131) #41
          to label %bb.d unwind label %bb.b, !noalias !15464

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !15464
  unreachable

bb.f:                                             ; preds = %"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h8e61b9d897ce5c2fE.exit"
  store i64 504403158265495553, ptr %i.d, align 8, !noalias !15464
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 -1, ptr %i.l, align 8, !noalias !15464
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %0, ptr %i.m, align 8, !noalias !15465
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
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hd5748964c34e8435E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #43
          to label %.body unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN16nickel_lang_core4term6record10RecordData10map_values17h7c7b115c0ef75281E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(88) %1, ptr noalias noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 4 uses
  %i.j = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %i.j, label %bb.d, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i: ; preds = %bb.a
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.422.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !nonnull !11, !noundef !11
  %or.cond.i.i.i.i.i.i = icmp slt i64 %.sroa.5.0.copyload, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i.i.i.i.i.i)
  %i.k = shl i64 %.sroa.5.0.copyload, 3
  %i.l = and i64 %i.k, -16                        ; 2 uses
  %i.m = add i64 %i.l, 16                         ; 2 uses
  %i.n = add nsw i64 %.sroa.5.0.copyload, 17
  %i.o = add i64 %i.n, %i.m                       ; 3 uses
  %i.p = icmp uge i64 %i.o, %i.m
  tail call void @llvm.assume(i1 %i.p)
  %i.q = icmp ult i64 %i.o, 9223372036854775793
  tail call void @llvm.assume(i1 %i.q)
  %i.r = sub nuw nsw i64 -16, %i.l
  %i.s = getelementptr inbounds i8, ptr %.sroa.422.0.copyload, i64 %i.r
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) 16) #40, !noalias !15547
  br label %bb.d

.body:                                            ; preds = %bb.t, %.body8.thread
  %eh.lpad-body = phi { ptr, i32 } [ %i.cv, %bb.t ], [ %eh.lpad-body973, %.body8.thread ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15548)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !15548, !noundef !11 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17h77d1e655feaa7295E.exit", label %bb.b

bb.b:                                             ; preds = %.body
  %i.w = load i64, ptr %i.u, align 8, !noalias !15549, !noundef !11
  %i.x = add i64 %i.w, -1                         ; 2 uses
  store i64 %i.x, ptr %i.u, align 8, !noalias !15549
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %bb.c, label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17h77d1e655feaa7295E.exit"

bb.c:                                             ; preds = %bb.b
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0635c6dc3356ee1aE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.t)
          to label %"_ZN4core3ptr112drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_core..term..record..SealedTail$GT$$GT$$GT$17h77d1e655feaa7295E.exit" unwind label %bb.v

bb.d:                                             ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17h6f991377d5eca976E.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.021.sroa.4.0.copyload) ]
  %i.z = icmp ult i64 %.sroa.021.sroa.5.0.copyload, 128102389400760776
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %.sroa.021.sroa.4.0.copyload, i64 %.sroa.021.sroa.5.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15550
  store ptr %.sroa.021.sroa.4.0.copyload, ptr %i.h, align 8, !alias.scope !15551, !noalias !15552
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.sroa.021.sroa.4.0.copyload, ptr %.sroa.434.0..sroa_idx, align 8, !alias.scope !15551, !noalias !15552
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.021.sroa.0.0.copyload, ptr %.sroa.535.0..sroa_idx, align 8, !alias.scope !15551, !noalias !15552
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.aa, ptr %.sroa.636.0..sroa_idx, align 8, !alias.scope !15551, !noalias !15552
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr %i.i, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !15551, !noalias !15552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15550
  %i.ab = call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !range !12, !noalias !15553, !noundef !11
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i: ; preds = %bb.d
  %.pre.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !15554
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.pre1.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !noalias !15554
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i": ; preds = %bb.d
  %i.af = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc.i unwind label %bb.t, !noalias !15550, !inline_history !15489 ; 2 uses

.noexc.i:                                         ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i"
  %i.ag = extractvalue { i64, i64 } %i.af, 0
  %i.ah = extractvalue { i64, i64 } %i.af, 1      ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !noalias !15555
  store i8 1, ptr %i.ac, align 8, !noalias !15555
  br label %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"

"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i": ; preds = %.noexc.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i
  %.pre-phi85 = phi i64 [ %i.ah, %.noexc.i ], [ %.pre1.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i ]
  %.pre-phi = phi i64 [ %i.ag, %.noexc.i ], [ %.pre.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i ] ; 2 uses
  %i.aj = add i64 %.pre-phi, 1
  store i64 %i.aj, ptr %i.ab, align 8, !noalias !15554
  invoke fastcc void @"_ZN8indexmap3map25IndexMap$LT$K$C$V$C$S$GT$24with_capacity_and_hasher17h6eba9f1fd1487ff2E"(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.g, i64 noundef %.sroa.021.sroa.5.0.copyload, i64 noundef %.pre-phi, i64 noundef %.pre-phi85)
          to label %bb.e unwind label %bb.t, !noalias !15550, !inline_history !15489

bb.e:                                             ; preds = %"_ZN73_$LT$std..hash..random..RandomState$u20$as$u20$core..default..Default$GT$7default17hee692b4a22bcebefE.exit.i"
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !15550, !nonnull !11, !noundef !11
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.496.0.copyload = load ptr, ptr %.sroa.496.0..sroa_idx, align 8, !noalias !15550, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !15556, !noalias !15557, !noundef !11
  %i.am = icmp eq i64 %i.al, 0
  %i.an = ptrtoint ptr %.sroa.496.0.copyload to i64
  %i.ao = ptrtoint ptr %.sroa.3.0.copyload to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  %i.aq = udiv exact i64 %i.ap, 72                ; 2 uses
  %i.ar = add nuw nsw i64 %i.aq, 1
  %i.as = lshr i64 %i.ar, 1
  %.sroa.0.0.i.i = select i1 %i.am, i64 %i.aq, i64 %i.as ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !alias.scope !15558, !noalias !15559, !noundef !11
end_hunk_6
begin_hunk_7_@_ZN4core4iter6traits8iterator8Iterator5unzip17h0b0967a83e8dc2e0E:bb.a
  %i.e = alloca [144 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21823)
  %i.f = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @"_ZN3std4hash6random11RandomState3new4KEYS29_$u7b$$u7b$constant$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$3VAL17h3d0bd8071983845cE") ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.h = load i8, ptr %i.g, align 8, !range !12, !noalias !21824, !noundef !11
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i, label %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i", !prof !13

._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i: ; preds = %bb.a
  %.pre.i.i.i.i.i = load i64, ptr %i.f, align 8, !noalias !21825
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.pre1.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !noalias !21825
  br label %bb.b

"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i": ; preds = %bb.a
  %i.j = invoke { i64, i64 } @_ZN3std3sys6random5linux19hashmap_random_keys17he133c8f345d0b53aE()
          to label %.noexc unwind label %bb.l     ; 2 uses

.noexc:                                           ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i"
  %i.k = extractvalue { i64, i64 } %i.j, 0
  %i.l = extractvalue { i64, i64 } %i.j, 1        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %i.l, ptr %i.m, align 8, !noalias !21826
  store i8 1, ptr %i.g, align 8, !noalias !21826
  br label %bb.b

bb.b:                                             ; preds = %.noexc, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i
  %.pre1.i.i.i.i9.i = phi i64 [ %.pre1.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i ], [ %i.l, %.noexc ] ; 2 uses
  %i.n = phi i64 [ %.pre.i.i.i.i.i, %._ZN4core3ops8function6FnOnce9call_once17h37feb23ee5aba082E.exit_crit_edge.i.i.i.i.i ], [ %i.k, %.noexc ] ; 3 uses
  %i.o = add i64 %i.n, 1
  %i.p = add i64 %i.n, 2
  store i64 %i.p, ptr %i.f, align 8, !noalias !21827
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
  store i64 0, ptr %i.q, align 8, !alias.scope !21823
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !21823
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !21823
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.412.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @1, i64 32, i1 false)
  %.sroa.513.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store i64 %i.o, ptr %.sroa.513.0..sroa_idx.i, align 8, !alias.scope !21823
  %.sroa.614.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136
  store i64 %.pre1.i.i.i.i9.i, ptr %.sroa.614.0..sroa_idx.i, align 8, !alias.scope !21823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !21828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !21829
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21830)
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !21831, !noalias !21832, !nonnull !11, !noundef !11 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %.promoted.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !21831, !noalias !21832 ; 2 uses
  %i.u = icmp eq ptr %.promoted.i.i.i.i, %i.s
  br i1 %i.u, label %_ZN4core4iter6traits7collect22default_extend_tuple_b17h5377c871c02f7184E.exit.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.lr.ph.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.lr.ph.i.i.i.i": ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.59.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 3 uses
  br label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i.i": ; preds = %bb.g, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.lr.ph.i.i.i.i"
  %i.x = phi ptr [ %.promoted.i.i.i.i, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.lr.ph.i.i.i.i" ], [ %i.y, %bb.g ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21833)
  call void @llvm.experimental.noalias.scope.decl(metadata !21834)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 112 ; 5 uses
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !21835 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h552c1223627b7157E.exit.loopexit.i.i.i, label %bb.d

bb.c:                                             ; preds = %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17h7dd4f6df72a2dff2E.exit.i.i.i.i.i"
  %i.z = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.t, align 8, !alias.scope !21831, !noalias !21832
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.ac, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h325c018e1fa41549E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d) #43
          to label %.body unwind label %bb.h, !noalias !21836

bb.d:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i.i"
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.59.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.0..sroa_idx.i.i.i.i.i, i64 32, i1 false), !noalias !21838
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !noalias !21838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.c, ptr noundef nonnull align 8 dereferenceable(20) %i.aa, i64 20, i1 false), !noalias !21838
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.b, ptr noundef nonnull align 8 dereferenceable(20) %i.aa, i64 20, i1 false), !noalias !21838
  store i64 %.sroa.0.0.copyload.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !21839
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false), !noalias !21839
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21840
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !21839
  invoke fastcc void @_ZN4core4iter6traits7collect6Extend10extend_one17h75cd785017fa6936E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(128) %i.c)
          to label %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17h7dd4f6df72a2dff2E.exit.i.i.i.i.i" unwind label %bb.e, !noalias !21841

bb.e:                                             ; preds = %bb.d
  %i.ac = landingpad { ptr, i32 }
          cleanup
  store ptr %i.y, ptr %i.t, align 8, !alias.scope !21831, !noalias !21832
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h8ed741fe930f1f88E"(ptr noalias noundef align 8 dereferenceable(40) %i.ad)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !21842

bb.f:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !21842
  unreachable

"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17h7dd4f6df72a2dff2E.exit.i.i.i.i.i": ; preds = %bb.d
  invoke fastcc void @_ZN4core4iter6traits7collect6Extend10extend_one17h75cd785017fa6936E(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.q, ptr noalias noundef readonly align 8 captures(address) dereferenceable(64) %i.w)
          to label %bb.g unwind label %bb.c, !noalias !21838

bb.g:                                             ; preds = %"_ZN4core4iter6traits7collect22default_extend_tuple_b6extend28_$u7b$$u7b$closure$u7d$$u7d$17h7dd4f6df72a2dff2E.exit.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21840
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21837
  %i.af = icmp eq ptr %i.y, %i.s
  br i1 %i.af, label %_ZN4core4iter6traits8iterator8Iterator4fold17h552c1223627b7157E.exit.loopexit.i.i.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i.i"

bb.h:                                             ; preds = %.body.i.i.i.i
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !21838
  unreachable

_ZN4core4iter6traits8iterator8Iterator4fold17h552c1223627b7157E.exit.loopexit.i.i.i: ; preds = %bb.g, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h01c2ac3ba9eccfd0E.exit.i.i.i.i.i"
  store ptr %i.y, ptr %i.t, align 8, !alias.scope !21831, !noalias !21832
  br label %_ZN4core4iter6traits7collect22default_extend_tuple_b17h5377c871c02f7184E.exit.i

_ZN4core4iter6traits7collect22default_extend_tuple_b17h5377c871c02f7184E.exit.i: ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h552c1223627b7157E.exit.loopexit.i.i.i, %bb.b
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h325c018e1fa41549E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %_ZN4core4iter6traits7collect22default_extend_tuple_b17h5377c871c02f7184E.exit.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i.i.i.i, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ah, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr254drop_in_place$LT$$LP$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$C$indexmap..map..IndexMap$LT$nickel_lang_parser..identifier..LocIdent$C$nickel_lang_core..term..record..Field$GT$$RP$$GT$17h66f8d77812c2962fE"(ptr noalias noundef align 8 dereferenceable(144) %i.e) #43
          to label %"_ZN4core3ptr445drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd3c25a6496795c81E.exit" unwind label %bb.k

bb.j:                                             ; preds = %_ZN4core4iter6traits7collect22default_extend_tuple_b17h5377c871c02f7184E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !21828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(144) %i.e, i64 144, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.k:                                             ; preds = %bb.l, %.body
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable

"_ZN4core3ptr445drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd3c25a6496795c81E.exit": ; preds = %bb.l, %.body
  %.pn7 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.aj, %bb.l ]
  resume { ptr, i32 } %.pn7

bb.l:                                             ; preds = %"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h8761fc9d300e6fb0E.exit.i.i.i.i.i"
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr186drop_in_place$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h325c018e1fa41549E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %1)
          to label %"_ZN4core3ptr445drop_in_place$LT$core..iter..adapters..map..Map$LT$indexmap..map..iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$C$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op2..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hd3c25a6496795c81E.exit" unwind label %bb.k
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h0aedf42c29b1de7eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [296 x i8], align 8               ; 7 uses
  %i.b = alloca [56 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 16               ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21877)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !21878
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21879)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.c, i8 0, i64 17, i1 false), !noalias !21878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !21880
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21881)
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !21882, !noalias !21883
  store i64 0, ptr %i.b, align 8, !alias.scope !21884, !noalias !21885
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  %i.h = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61f09e24ed827509E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.b unwind label %.loopexit.split-lp.i.i.i.i, !noalias !21880 ; 2 uses

.body.i.i.i.i:                                    ; preds = %bb.e, %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ], [ %i.m, %bb.e ], [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ]
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h1ca3f5d8993e4494E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #43
          to label %.body.i.i.i unwind label %bb.u, !noalias !21886

.loopexit.i.i.i.i:                                ; preds = %bb.t, %bb.s, %bb.p, %bb.o, %bb.k, %bb.h
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.l, %bb.a
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 1, ptr %i.b, align 8, !alias.scope !21887, !noalias !21888
  store ptr %i.h, ptr %i.g, align 8, !alias.scope !21887, !noalias !21888
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21880
  store i64 1, ptr %i.a, align 8, !noalias !21880
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.i, align 8, !noalias !21880
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.j, align 8, !noalias !21880
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !noalias !21880
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !21889
  %i.k = tail call noundef align 8 dereferenceable_or_null(296) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 296, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !21889 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h3b420caf240a080eE.exit.i.i.i.i", !prof !14

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 296) #41
          to label %.noexc11.i.i.i.i unwind label %bb.e, !noalias !21880

.noexc11.i.i.i.i:                                 ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr114drop_in_place$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hb5c02f0cb5ef2e2fE"(ptr noalias noundef align 8 dereferenceable(280) %i.j)
          to label %.body.i.i.i.i unwind label %bb.f, !noalias !21880

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !21880
  unreachable

"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h3b420caf240a080eE.exit.i.i.i.i": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(296) %i.k, ptr noundef nonnull align 8 dereferenceable(296) %i.a, i64 296, i1 false), !noalias !21880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !21880
  store ptr %i.k, ptr %i.c, align 16, !alias.scope !21879, !noalias !21886
  br label %.preheader

.preheader:                                       ; preds = %"_ZN4core3ptr163drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$nickel_lang_vector..vector..Node$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$GT$$GT$17h3b420caf240a080eE.exit.i.i.i.i", %bb.b
  br label %bb.g

bb.g:                                             ; preds = %.backedge, %.preheader
  %i.o = phi i64 [ 1, %.preheader ], [ %.be, %.backedge ]
  %i.p = trunc nuw i64 %i.o to i1
  br i1 %i.p, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15thread-pre-split.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61f09e24ed827509E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc14.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !21886 ; 2 uses

.noexc14.i.i.i.i:                                 ; preds = %bb.h
  store i64 1, ptr %i.b, align 8, !alias.scope !21890, !noalias !21891
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !21890, !noalias !21891
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15thread-pre-split.i.i.i.i": ; preds = %bb.g
  %.pr.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !21880
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15thread-pre-split.i.i.i.i", %.noexc14.i.i.i.i
  %i.r = phi ptr [ %.pr.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15thread-pre-split.i.i.i.i" ], [ %i.q, %.noexc14.i.i.i.i ]
  %.not7.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not7.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15.i.i.i.i"
  %i.s = load ptr, ptr %i.c, align 16, !alias.scope !21879, !noalias !21886, !noundef !11
  %.not8.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not8.i.i.i.i, label %bb.l, label %bb.k, !prof !17

bb.j:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit15.i.i.i.i"
  invoke fastcc void @"_ZN4core3ptr407drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..identifier..LocIdent$GT$$C$nickel_lang_core..eval..operation..$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$nickel_lang_core..cache..CacheHub$C$nickel_lang_core..eval..cache..lazy..CBNCache$GT$$GT$..eval_op1..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h1ca3f5d8993e4494E"(ptr noalias noundef align 8 dereferenceable(56) %i.b)
          to label %"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h82f90d5391c80378E.exit" unwind label %bb.v, !noalias !21878

bb.k:                                             ; preds = %bb.i
  %i.t = invoke fastcc noundef align 8 dereferenceable(280) ptr @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$8make_mut17h1aaffa52882a84d0E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.n unwind label %.loopexit.i.i.i.i, !noalias !21886 ; 4 uses

bb.l:                                             ; preds = %bb.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #41
          to label %bb.m unwind label %.loopexit.split-lp.i.i.i.i, !noalias !21886

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  %i.u = load i64, ptr %i.t, align 8, !range !25, !noalias !21886, !noundef !11
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  br i1 %i.v, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load i8, ptr %i.e, align 16, !alias.scope !21879, !noalias !21886, !noundef !11
  %i.y = invoke fastcc noundef i64 @"_ZN112_$LT$nickel_lang_vector..vector..Vector$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend10extend_rec17h3f5cd7af58f7b2dbE"(ptr noalias noundef align 8 dereferenceable(56) %i.b, ptr noalias noundef align 8 dereferenceable(272) %i.w, i8 noundef %i.x)
          to label %bb.r unwind label %.loopexit.i.i.i.i, !noalias !21886

bb.p:                                             ; preds = %bb.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 272 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !noalias !21886, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 264 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noalias !21886, !noundef !11
  %i.ad = sub i64 %i.aa, %i.ac                    ; 2 uses
  %i.ae = sub i64 32, %i.ad
  invoke fastcc void @"_ZN115_$LT$imbl_sized_chunks..sized_chunk..Chunk$LT$A$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$A$GT$$GT$6extend17ha236fae1ebc28c4eE"(ptr noalias noundef align 8 dereferenceable(272) %i.w, ptr noalias noundef align 8 dereferenceable(56) %i.b, i64 noundef %i.ae)
          to label %bb.q unwind label %.loopexit.i.i.i.i, !noalias !21886

bb.q:                                             ; preds = %bb.p
  %i.af = load i64, ptr %i.z, align 8, !noalias !21886, !noundef !11
  %i.ag = load i64, ptr %i.ab, align 8, !noalias !21886, !noundef !11
  %i.ah = add i64 %i.ad, %i.ag
  %i.ai = sub i64 %i.af, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.sroa.03.0.i.i.i.i = phi i64 [ %i.ai, %bb.q ], [ %i.y, %bb.o ]
  %i.aj = load i64, ptr %i.d, align 8, !alias.scope !21879, !noalias !21886, !noundef !11
  %i.ak = add i64 %i.aj, %.sroa.03.0.i.i.i.i
  store i64 %i.ak, ptr %i.d, align 8, !alias.scope !21879, !noalias !21886
  %i.al = load i64, ptr %i.b, align 8, !range !25, !alias.scope !21892, !noalias !21893, !noundef !11
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17thread-pre-split.i.i.i.i", label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = invoke fastcc noundef ptr @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h61f09e24ed827509E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %.noexc16.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !21886 ; 2 uses

.noexc16.i.i.i.i:                                 ; preds = %bb.s
  store i64 1, ptr %i.b, align 8, !alias.scope !21892, !noalias !21893
  store ptr %i.an, ptr %i.g, align 8, !alias.scope !21892, !noalias !21893
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17thread-pre-split.i.i.i.i": ; preds = %bb.r
  %.pr18.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !21880
  br label %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17.i.i.i.i"

"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17.i.i.i.i": ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17thread-pre-split.i.i.i.i", %.noexc16.i.i.i.i
  %i.ao = phi ptr [ %.pr18.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17thread-pre-split.i.i.i.i" ], [ %i.an, %.noexc16.i.i.i.i ]
  %.not9.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not9.i.i.i.i, label %.backedge, label %bb.t

bb.t:                                             ; preds = %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17.i.i.i.i"
  invoke fastcc void @"_ZN18nickel_lang_vector6vector19Vector$LT$T$C$_$GT$9add_level17h462e0db0c413646fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !21886

._crit_edge.i.i.i.i:                              ; preds = %bb.t
  %.pre.pre.i.i.i.i = load i64, ptr %i.b, align 8, !range !25, !alias.scope !21890, !noalias !21891
  br label %.backedge

.backedge:                                        ; preds = %._crit_edge.i.i.i.i, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17.i.i.i.i"
  %.be = phi i64 [ %.pre.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ 1, %"_ZN4core6option15Option$LT$T$GT$18get_or_insert_with17h3c8b9ac29b6331fdE.exit17.i.i.i.i" ]
  br label %bb.g

bb.u:                                             ; preds = %.body.i.i.i.i
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !21886
  unreachable

bb.v:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.v, %.body.i.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %.pn.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !21894)
  call void @llvm.experimental.noalias.scope.decl(metadata !21895)
  %i.ar = load ptr, ptr %i.c, align 16, !alias.scope !21896, !noalias !21878, !noundef !11 ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hb32320bae2f3595fE.exit.i.i.i", label %bb.w

bb.w:                                             ; preds = %.body.i.i.i
  %i.at = load i64, ptr %i.ar, align 8, !noalias !21897, !noundef !11
  %i.au = add i64 %i.at, -1                       ; 2 uses
  store i64 %i.au, ptr %i.ar, align 8, !noalias !21897
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.x, label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hb32320bae2f3595fE.exit.i.i.i"

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h0a6c46dc2ab971ccE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hb32320bae2f3595fE.exit.i.i.i" unwind label %bb.y, !noalias !21878

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !21878
  unreachable

"_ZN4core3ptr116drop_in_place$LT$nickel_lang_vector..vector..Vector$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$17hb32320bae2f3595fE.exit.i.i.i": ; preds = %bb.x, %bb.w, %.body.i.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i.i

"_ZN116_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$T$GT$$GT$9from_iter17h82f90d5391c80378E.exit": ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !21880
  %.sroa.3.0.copyload5.i = load i64, ptr %i.e, align 16, !noalias !21898
  %.sroa.2.0.copyload3.i = load i64, ptr %i.d, align 8, !noalias !21898
  %i.ax = load <2 x i64>, ptr %i.c, align 16, !noalias !21898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !21878
  store <2 x i64> %i.ax, ptr %0, align 8, !alias.scope !21877, !noalias !21899
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.3.0.copyload5.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !21877, !noalias !21899
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.ay, align 8, !alias.scope !21877, !noalias !21899
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.2.0.copyload3.i, ptr %i.az, align 8, !alias.scope !21877, !noalias !21899
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h17aeece8ad9edb68E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.713.i.i = alloca i64, align 8            ; 4 uses
  %.sroa.11.i.i = alloca i64, align 8             ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !21933
  store i64 0, ptr %i.a, align 8, !noalias !21933
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !21933
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !21933
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21934)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.713.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11.i.i)
  %.not.i.i.i = icmp eq i32 %.sroa.6.0.copyload, 1114113
  %i.b = trunc nuw i32 %.sroa.0.0.copyload to i1  ; 3 uses
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne i32 %.sroa.6.0.copyload, 1114112
  %i.d = zext i1 %i.c to i64                      ; 3 uses
  br i1 %i.b, label %bb.e, label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf4ffd703fdb42775E.exit.i.i"

bb.c:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %_ZN4core4iter6traits8iterator8Iterator4fold17h59c32ee1c7b8f1b1E.exit.i.i.thread.i.i

bb.d:                                             ; preds = %bb.c
  %narrow.i.i.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.0.copyload, i32 %.sroa.4.0.copyload)
  %.sink1.i.i.i.i.i = zext i32 %narrow.i.i.i.i.i to i64
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf4ffd703fdb42775E.exit.i.i"

_ZN4core4iter6traits8iterator8Iterator4fold17h59c32ee1c7b8f1b1E.exit.i.i.thread.i.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  br label %"_ZN95_$LT$alloc..string..String$u20$as$u20$core..iter..traits..collect..FromIterator$LT$char$GT$$GT$9from_iter17h40bf19c534757c63E.exit"

bb.e:                                             ; preds = %bb.b
  %narrow.i.i13.i.i.i = tail call i32 @llvm.usub.sat.i32(i32 %.sroa.5.0.copyload, i32 %.sroa.4.0.copyload)
  %.sink1.i.i14.i.i.i = zext i32 %narrow.i.i13.i.i.i to i64
  %i.e = add nuw nsw i64 %i.d, %.sink1.i.i14.i.i.i ; 2 uses
  br label %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf4ffd703fdb42775E.exit.i.i"

"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf4ffd703fdb42775E.exit.i.i": ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.012.0.i.i = phi i64 [ %.sink1.i.i.i.i.i, %bb.d ], [ %i.e, %bb.e ], [ %i.d, %bb.b ] ; 2 uses
  %.sink19.i.sroa.phi.i.i = phi ptr [ %.sroa.713.i.i, %bb.d ], [ %.sroa.11.i.i, %bb.e ], [ %.sroa.11.i.i, %bb.b ]
  %.sink.i.i.i = phi i64 [ 1, %bb.d ], [ %i.e, %bb.e ], [ %i.d, %bb.b ]
  store i64 %.sink.i.i.i, ptr %.sink19.i.sroa.phi.i.i, align 8, !alias.scope !21935, !noalias !21936
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.713.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i)
  %.not.i = icmp eq i64 %.sroa.012.0.i.i, 0
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit.i.i", label %bb.f, !prof !21937

bb.f:                                             ; preds = %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf4ffd703fdb42775E.exit.i.i"
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h279fd94cb63c36d9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0, i64 noundef %.sroa.012.0.i.i, i64 noundef 1, i64 noundef 1)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit.i.i" unwind label %.loopexit.split-lp.i, !noalias !21933

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit.i.i": ; preds = %bb.f, %"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17hf4ffd703fdb42775E.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21939)
  %i.f = and i32 %.sroa.6.0.copyload, 2097150
  %switch.i.i.i.i = icmp eq i32 %i.f, 1114112
  br i1 %switch.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h59c32ee1c7b8f1b1E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit.i.i"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21940)
  %i.g = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21941, !noalias !21942, !noundef !11 ; 5 uses
  %i.h = icmp sgt i64 %i.g, -1
  tail call void @llvm.assume(i1 %i.h)
  %i.i = icmp samesign ult i32 %.sroa.6.0.copyload, 128 ; 2 uses
  br i1 %i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.j = icmp samesign ult i32 %.sroa.6.0.copyload, 2048
  br i1 %i.j, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = icmp samesign ult i32 %.sroa.6.0.copyload, 65536
  %..i.i.i.i.i.i.i.i.i = select i1 %i.k, i64 3, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i64 [ 2, %bb.g ], [ %..i.i.i.i.i.i.i.i.i, %bb.h ], [ 1, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.l = load i64, ptr %i.a, align 8, !range !34, !alias.scope !21943, !noalias !21942, !noundef !11
  %i.m = sub nsw i64 %i.l, %i.g
  %i.n = icmp ugt i64 %.sroa.0.0.i.i.i.i.i.i.i.i.i, %i.m
  br i1 %i.n, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit.i.i.i.i.i.i.i.i.i", !prof !17

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h279fd94cb63c36d9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.g, i64 noundef %.sroa.0.0.i.i.i.i.i.i.i.i.i, i64 noundef 1, i64 noundef 1)
          to label %.noexc3.i unwind label %.loopexit.split-lp.i, !noalias !21933

.noexc3.i:                                        ; preds = %bb.j
  %.pre.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !21941, !noalias !21942
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit.i.i.i.i.i.i.i.i.i": ; preds = %.noexc3.i, %bb.i
  %i.o = phi i64 [ %i.g, %bb.i ], [ %.pre.i.i.i.i.i.i.i.i.i, %.noexc3.i ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !21941, !noalias !21942, !nonnull !11, !noundef !11
  %i.q = icmp sgt i64 %i.o, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.o ; 10 uses
  br i1 %i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h6f56e181bbec896fE.exit.i.i.i.i.i.i.i.i.i"
  %i.s = icmp samesign ult i32 %.sroa.6.0.copyload, 2048
  %i.t = trunc i32 %.sroa.6.0.copyload to i8
  %i.u = and i8 %i.t, 63
  %i.v = or disjoint i8 %i.u, -128                ; 3 uses
  %i.w = lshr i32 %.sroa.6.0.copyload, 6
end_hunk_7
begin_hunk_8_@"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h81f279a462c2cd37E":bb.a
  store i64 %i.f, ptr %0, align 8, !alias.scope !23968, !noalias !23969
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.bg, align 8, !alias.scope !23968, !noalias !23969
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ao, ptr %i.bh, align 8, !alias.scope !23968, !noalias !23969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23984
  tail call fastcc void @"_ZN4core3ptr150drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h802a99f312894498E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %1), !noalias !23968
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17ha4e024efa6940d4cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24007)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24008)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !24008, !noalias !24007, !noundef !11 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !24008, !noalias !24007, !nonnull !11, !noundef !11 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24009)
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !24009, !noalias !24010, !nonnull !11, !noundef !11 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.g, align 8, !alias.scope !24009, !noalias !24010 ; 3 uses
  %.not.i38 = icmp eq ptr %.promoted, %i.f
  br i1 %.not.i38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !11, !align !18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !11, !align !23
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !11, !align !18
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.o = load ptr, ptr %i.n, align 8, !nonnull !11, !align !18
  br label %bb.b

.body2:                                           ; preds = %.body.i, %.body
  %.pn.i = phi { ptr, i32 } [ %i.an, %.body ], [ %i.u, %.body.i ]
  invoke fastcc void @"_ZN4core3ptr298drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$C$nickel_lang_core..eval..subst$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb3dfa5977ca9cef9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1) #43
          to label %bb.j unwind label %bb.i, !noalias !24007, !inline_history !23993

bb.b:                                             ; preds = %.lr.ph, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i"
  %.sroa.6.039 = phi ptr [ %i.d, %.lr.ph ], [ %i.t, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i" ] ; 5 uses
  %i.p = phi ptr [ %.promoted, %.lr.ph ], [ %i.q, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i" ] ; 4 uses
  %.sroa.025.0.copyload = load i64, ptr %i.p, align 8, !noalias !24009 ; 2 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.426.0.copyload = load ptr, ptr %.sroa.426.0..sroa_idx, align 8, !noalias !24009 ; 3 uses
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.527.0.copyload = load i64, ptr %.sroa.527.0..sroa_idx, align 8, !noalias !24009
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 4 uses
  store ptr %i.q, ptr %i.g, align 8, !alias.scope !24009, !noalias !24010
  %i.r = icmp eq i64 %.sroa.025.0.copyload, -9223372036854775808
  br i1 %i.r, label %bb.c, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i"

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.426.0.copyload) ]
  %i.s = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h128b6cdd3210058dE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.k, ptr noundef nonnull %.sroa.426.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.o)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i" unwind label %.body.i, !noalias !24011, !inline_history !24001

"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i": ; preds = %bb.c, %bb.b
  %.sroa.515.0 = phi ptr [ %.sroa.426.0.copyload, %bb.b ], [ %i.s, %bb.c ]
  store i64 %.sroa.025.0.copyload, ptr %.sroa.6.039, align 8, !noalias !24012
  %.sroa.411.sroa.4.0..sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.039, i64 8
  store ptr %.sroa.515.0, ptr %.sroa.411.sroa.4.0..sroa.5.8..sroa_idx, align 8, !noalias !24012
  %.sroa.411.sroa.5.0..sroa.5.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6.039, i64 16
  store i64 %.sroa.527.0.copyload, ptr %.sroa.411.sroa.5.0..sroa.5.8..sroa_idx, align 8, !noalias !24012
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.6.039, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %i.f
  br i1 %.not.i, label %._crit_edge, label %bb.b

.body.i:                                          ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr153drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDrop$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17h0501165593d202fdE"(ptr nonnull %i.d, ptr nonnull %.sroa.6.039) #43
          to label %.body2 unwind label %bb.d, !noalias !24012, !inline_history !24002

bb.d:                                             ; preds = %.body.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !24012, !inline_history !24002
  unreachable

._crit_edge:                                      ; preds = %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i", %bb.a
  %.sroa.6.0.lcssa = phi ptr [ %i.d, %bb.a ], [ %i.t, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i" ]
  %.lcssa31 = phi ptr [ %.promoted, %bb.a ], [ %i.q, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17hae232cb92c990a2cE.exit.i" ] ; 4 uses
  %i.w = ptrtoint ptr %.sroa.6.0.lcssa to i64
  %i.x = ptrtoint ptr %i.d to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = udiv exact i64 %i.y, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24013
  store ptr %i.d, ptr %i.a, align 8, !noalias !24013
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !noalias !24013
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.ab, align 8, !noalias !24013
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24014)
  %i.ac = ptrtoint ptr %i.f to i64
  %i.ad = ptrtoint ptr %.lcssa31 to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = udiv exact i64 %i.ae, 24                ; 3 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !24014, !noalias !24007
  store ptr inttoptr (i64 8 to ptr), ptr %1, align 8, !alias.scope !24014, !noalias !24007
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8, !alias.scope !24014, !noalias !24007
  store ptr inttoptr (i64 8 to ptr), ptr %i.e, align 8, !alias.scope !24014, !noalias !24007
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24015), !noalias !24007
  %i.ag = icmp eq ptr %i.f, %.lcssa31
  br i1 %i.ag, label %_ZN5alloc3vec16in_place_collect18from_iter_in_place17hd8abc8d829f10f32E.exit, label %.lr.ph58

bb.e:                                             ; preds = %.lr.ph58
  %i.ah = icmp eq i64 %i.aj, %i.af
  br i1 %i.ah, label %_ZN5alloc3vec16in_place_collect18from_iter_in_place17hd8abc8d829f10f32E.exit, label %.lr.ph58

.lr.ph58:                                         ; preds = %._crit_edge, %bb.e
  %.sroa.0.0.i.i57 = phi i64 [ %i.aj, %bb.e ], [ 0, %._crit_edge ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %.lcssa31, i64 %.sroa.0.0.i.i57 ; 2 uses
  %i.aj = add nuw nsw i64 %.sroa.0.0.i.i57, 1     ; 4 uses
  %.val8.i.i = load i64, ptr %i.ai, align 8, !range !35, !alias.scope !24015, !noalias !24016, !noundef !11
  %i.ak = getelementptr i8, ptr %i.ai, i64 8
  %.val9.i.i = load ptr, ptr %i.ak, align 8, !alias.scope !24015, !noalias !24016
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h50144475f3fca707E"(i64 %.val8.i.i, ptr %.val9.i.i)
          to label %bb.e unwind label %bb.g, !noalias !24017

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
  %.val.i.i = load i64, ptr %i.ap, align 8, !range !35, !alias.scope !24015, !noalias !24016, !noundef !11
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  %.val7.i.i = load ptr, ptr %i.aq, align 8, !alias.scope !24015, !noalias !24016
  invoke fastcc void @"_ZN4core3ptr107drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h50144475f3fca707E"(i64 %.val.i.i, ptr %.val7.i.i) #43
          to label %bb.f unwind label %bb.h, !noalias !24017

bb.h:                                             ; preds = %.lr.ph61
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !24017
  unreachable

.body:                                            ; preds = %bb.f, %bb.g
  invoke fastcc void @"_ZN4core3ptr255drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$C$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$GT$17hea1797a8d207c12eE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #43
          to label %.body2 unwind label %bb.i, !noalias !24007, !inline_history !23993

bb.i:                                             ; preds = %.body, %.body2
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !24007, !inline_history !23993
  unreachable

bb.j:                                             ; preds = %.body2
  resume { ptr, i32 } %.pn.i

_ZN5alloc3vec16in_place_collect18from_iter_in_place17hd8abc8d829f10f32E.exit: ; preds = %bb.e, %._crit_edge
  store i64 %i.c, ptr %0, align 8, !alias.scope !24007, !noalias !24008
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.at, align 8, !alias.scope !24007, !noalias !24008
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.z, ptr %i.au, align 8, !alias.scope !24007, !noalias !24008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24013
  tail call fastcc void @"_ZN4core3ptr298drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$$C$nickel_lang_core..eval..subst$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hb3dfa5977ca9cef9E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %1), !noalias !24007, !inline_history !23993
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull ptr @_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E(i64 noundef range(i64 0, 441) %0, i64 noundef range(i64 1, 9) %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, label %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread: ; preds = %bb.a
  %i.b = inttoptr i64 %1 to ptr
  br label %bb.c

_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit: ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %0, i64 noundef range(i64 1, -9223372036854775807) %1) #40 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef %1, i64 noundef %0) #41
  unreachable

bb.c:                                             ; preds = %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit
  %.sroa.07.0.i4 = phi ptr [ %i.b, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit.thread ], [ %i.c, %_ZN5alloc5alloc6Global10alloc_impl17h70ad9792668d145cE.exit ]
  ret ptr %.sroa.07.0.i4
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h325ac397a4c07092E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(104) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 104, i64 noundef range(i64 1, -9223372036854775807) 8) #40 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 104) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @"_ZN5alloc5boxed16Box$LT$T$C$A$GT$13new_uninit_in17h7352311b95aa329aE"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(40) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 40, i64 noundef range(i64 1, -9223372036854775807) 8) #40 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 40) #41
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11sort_by_key17hdca8b784c951cc2aE"(ptr noalias noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.a, ptr %i.b, align 8, !noalias !24021
  %i.c = icmp ult i64 %1, 2
  br i1 %i.c, label %_ZN5alloc5slice11stable_sort17h1035d07d5f59c262E.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %1, 21
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core5slice4sort6stable14driftsort_main17h451b088ddf773d1eE(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %_ZN5alloc5slice11stable_sort17h1035d07d5f59c262E.exit

bb.d:                                             ; preds = %bb.b
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h20a8fdfcaeb68115E(ptr noalias noundef nonnull align 8 %0, i64 noundef %1)
  br label %_ZN5alloc5slice11stable_sort17h1035d07d5f59c262E.exit

_ZN5alloc5slice11stable_sort17h1035d07d5f59c262E.exit: ; preds = %bb.a, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17h6bde5242746755d9E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !35, !noundef !11 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11 ; 3 uses
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
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #40
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !11, !noundef !11
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #40
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #40
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

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h279fd94cb63c36d9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 1, 9) %3, i64 noundef range(i64 1, 161) %4) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24026)
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.b, !prof !17

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !34, !alias.scope !24026, !noundef !11 ; 3 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 range(i64 0, -1) %i.f)
  %i.g = icmp eq i64 %4, 1
  %.sroa.012.0.i = select i1 %i.g, i64 8, i64 4
  %.sroa.0.0.i32.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 range(i64 0, -1) %.sroa.012.0.i) ; 3 uses
  %i.h = add nsw i64 %3, -1
  %i.i = add nuw nsw i64 %i.h, %4
  %i.j = sub nsw i64 0, %3
  %i.k = and i64 %i.i, %i.j
  %i.l = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.k, i64 %.sroa.0.0.i32.i) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  %i.n = extractvalue { i64, i1 } %i.l, 1
  %i.o = sub nuw i64 -9223372036854775808, %3
  %i.p = icmp ugt i64 %i.m, %i.o
  %or.cond.i.i = select i1 %i.n, i1 true, i1 %i.p, !prof !20
  br i1 %or.cond.i.i, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !20

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !24026
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !24026
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = icmp eq i64 %i.e, 0
  br i1 %i.r, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8ccb589337087113E.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.val29.i = load ptr, ptr %i.q, align 8, !alias.scope !24026, !nonnull !11, !noundef !11
  %i.s = mul nuw i64 %i.e, %4
  store ptr %.val29.i, ptr %i.a, align 8, !alias.scope !24027, !noalias !24026
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.s, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !24027, !noalias !24026
  br label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8ccb589337087113E.exit.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8ccb589337087113E.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i
  %.sink.i.i = phi i64 [ %3, %bb.c ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %.sink.i.i, ptr %i.t, align 8, !alias.scope !24027, !noalias !24026
  call fastcc void @_ZN5alloc7raw_vec11finish_grow17h6bde5242746755d9E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i64 noundef range(i64 1, 9) %3, i64 noundef %i.m, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a), !noalias !24026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !24026
  %i.u = load i64, ptr %i.b, align 8, !range !25, !noalias !24026, !noundef !11
  %i.v = trunc nuw i64 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.v, label %bb.d, label %bb.f

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8ccb589337087113E.exit.i"
  %i.x = load i64, ptr %i.w, align 8, !range !35, !noalias !24026, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.z = load i64, ptr %i.y, align 8, !noalias !24026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24026
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b
  %.sroa.6.0.i.ph = phi i64 [ undef, %bb.b ], [ undef, %bb.a ], [ %i.z, %bb.d ]
  %.sroa.04.0.i.ph = phi i64 [ 0, %bb.b ], [ 0, %bb.a ], [ %i.x, %bb.d ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.04.0.i.ph, i64 %.sroa.6.0.i.ph, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @441) #41
  unreachable

bb.f:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$14current_memory17h8ccb589337087113E.exit.i"
  %i.aa = load ptr, ptr %i.w, align 8, !noalias !24026, !nonnull !11, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !24026
  store ptr %i.aa, ptr %i.q, align 8, !alias.scope !24026
  %i.ab = icmp sgt i64 %.sroa.0.0.i32.i, -1
  tail call void @llvm.assume(i1 %i.ab)
  store i64 %.sroa.0.0.i32.i, ptr %0, align 8, !alias.scope !24026
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..fmt..Display$GT$3fmt17h86a528f6a97fe10dE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !11
  %i.e = tail call noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN60_$LT$malachite_q..Rational$u20$as$u20$core..clone..Clone$GT$5clone17hb26a37bf83f480deE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
end_hunk_8
