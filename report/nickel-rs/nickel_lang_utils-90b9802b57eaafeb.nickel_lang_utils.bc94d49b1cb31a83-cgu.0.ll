Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_utils-90b9802b57eaafeb.nickel_lang_utils.bc94d49b1cb31a83-cgu.0?download=true
inline.NumInlined: 8202
inline.NumDeleted: 3888
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 25
begin_hunk_0_@"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$14error_recovery17heb42a96208331f03E":bb.a
  %i.af = icmp ne i64 %i.ae, -9223372036854775807
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = xor i64 %i.ae, -9223372036854775808
  %i.ah = icmp slt i64 %i.ae, 0
  %i.ai = select i1 %i.ah, i64 %i.ag, i64 1
  switch i64 %i.ai, label %bb.d [
    i64 0, label %bb.fx
    i64 1, label %bb.fr
    i64 2, label %bb.fs
    i64 3, label %bb.ft
    i64 4, label %bb.fu
    i64 5, label %bb.fv
    i64 6, label %bb.fw
  ]

bb.fq:                                            ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8, !range !48, !alias.scope !4457, !noalias !4456, !noundef !15 ; 6 uses
  %i.al = icmp ne i64 %i.ak, -9223372036854775807
  tail call void @llvm.assume(i1 %i.al)
  %i.am = xor i64 %i.ak, -9223372036854775808
  %i.an = icmp slt i64 %i.ak, 0
  %i.ao = select i1 %i.an, i64 %i.am, i64 1
  switch i64 %i.ao, label %bb.d [
    i64 0, label %bb.ge
    i64 1, label %bb.fy
    i64 2, label %bb.fz
    i64 3, label %bb.ga
    i64 4, label %bb.gb
    i64 5, label %bb.gc
    i64 6, label %bb.gd
  ]

bb.fr:                                            ; preds = %bb.fp
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ad, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562)
          to label %.noexc105 unwind label %bb.b

.noexc105:                                        ; preds = %bb.fr
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !4454
  br label %bb.fx

bb.fs:                                            ; preds = %bb.fp
  br label %bb.fx

bb.ft:                                            ; preds = %bb.fp
  br label %bb.fx

bb.fu:                                            ; preds = %bb.fp
  %.sroa.10.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.10.0..sroa_idx5.i.i, i64 16, i1 false), !noalias !4456
  br label %bb.fx

bb.fv:                                            ; preds = %bb.fp
  %.sroa.10.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.10.0..sroa_idx6.i.i, i64 16, i1 false), !noalias !4456
  br label %bb.fx

bb.fw:                                            ; preds = %bb.fp
  %.sroa.10.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.10.0..sroa_idx7.i.i, i64 16, i1 false), !noalias !4456
  br label %bb.fx

bb.fx:                                            ; preds = %bb.fw, %bb.fv, %bb.fu, %bb.ft, %bb.fs, %.noexc105, %bb.fp
  %.sroa.0.0.i.i = phi i64 [ %i.ae, %bb.fw ], [ %.sroa.0.0.copyload.i.i, %.noexc105 ], [ -9223372036854775806, %bb.fs ], [ -9223372036854775805, %bb.ft ], [ %i.ae, %bb.fu ], [ %i.ae, %bb.fv ], [ -9223372036854775808, %bb.fp ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !noalias !4457
  br label %bb.gf

bb.fy:                                            ; preds = %bb.fq
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @563)
          to label %.noexc106 unwind label %bb.b

.noexc106:                                        ; preds = %bb.fy
  %.sroa.09.0.copyload.i.i = load i64, ptr %i.e, align 8, !noalias !4454
  br label %bb.ge

bb.fz:                                            ; preds = %bb.fq
  %.sroa.1014.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.1014.0..sroa_idx15.i.i, i64 16, i1 false), !noalias !4456
  br label %bb.ge

bb.ga:                                            ; preds = %bb.fq
  %.sroa.1014.0..sroa_idx16.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.1014.0..sroa_idx16.i.i, i64 16, i1 false), !noalias !4456
  br label %bb.ge

bb.gb:                                            ; preds = %bb.fq
  %.sroa.1014.0..sroa_idx17.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.1014.0..sroa_idx17.i.i, i64 16, i1 false), !noalias !4456
  br label %bb.ge

bb.gc:                                            ; preds = %bb.fq
  br label %bb.ge

bb.gd:                                            ; preds = %bb.fq
  br label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz, %.noexc106, %bb.fq
  %.sroa.09.0.i.i = phi i64 [ -9223372036854775802, %bb.gd ], [ %.sroa.09.0.copyload.i.i, %.noexc106 ], [ %i.ak, %bb.fz ], [ %i.ak, %bb.ga ], [ %i.ak, %bb.gb ], [ -9223372036854775803, %bb.gc ], [ -9223372036854775808, %bb.fq ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !noalias !4457
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.fx, %"_ZN77_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$core..clone..Clone$GT$5clone17hacbb65c2b2a13e9aE.exit.i.i"
  %.sroa.6.0 = phi i64 [ %.sroa.6.8.copyload, %"_ZN77_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$core..clone..Clone$GT$5clone17hacbb65c2b2a13e9aE.exit.i.i" ], [ %.sroa.0.0.i.i, %bb.fx ], [ %.sroa.09.0.i.i, %bb.ge ]
  %.sroa.0140.0 = phi i64 [ %.sroa.0.028.i.i, %"_ZN77_$LT$nickel_lang_parser..lexer..NormalToken$u20$as$u20$core..clone..Clone$GT$5clone17hacbb65c2b2a13e9aE.exit.i.i" ], [ 167, %bb.fx ], [ 168, %bb.ge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !4453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !4453
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !4450, !noalias !4451, !noundef !15
  store i64 %.sroa.0140.0, ptr %i.p, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.11, i64 32, i1 false)
  %.sroa.11141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  store i64 %i.v, ptr %.sroa.11141.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 72
  store i64 %i.aq, ptr %.sroa.12.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !15, !noundef !15
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !noundef !15
  call void @llvm.experimental.noalias.scope.decl(metadata !4458)
  call void @llvm.experimental.noalias.scope.decl(metadata !4459)
  call void @llvm.experimental.noalias.scope.decl(metadata !4460)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !4461
  invoke void @"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$27expected_tokens_from_states17h810f17aa1cc3c6a1E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.as, i64 noundef %i.au)
          to label %bb.gi unwind label %bb.gh, !noalias !4462

bb.gg:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !15, !noundef !15
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !15
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !4463, !noalias !4464, !noundef !15
  %i.bb = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  invoke void @"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$27expected_tokens_from_states17h810f17aa1cc3c6a1E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.r, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) %i.aw, i64 noundef %i.ay)
          to label %.noexc107 unwind label %bb.b

.noexc107:                                        ; preds = %bb.gg
  %i.bc = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  store i64 %i.ba, ptr %i.bc, align 8, !alias.scope !4458, !noalias !4465
  store i64 170, ptr %i.q, align 8, !alias.scope !4458, !noalias !4465
  br label %"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$24unrecognized_token_error17h15fd96f740141197E.exit"

bb.gh:                                            ; preds = %bb.gf
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.p), !noalias !4458
  br label %.thread

bb.gi:                                            ; preds = %bb.gf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.p, i64 80, i1 false), !alias.scope !4462, !noalias !4466
  %i.be = getelementptr inbounds nuw i8, ptr %i.q, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !4465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !4461
  br label %"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$24unrecognized_token_error17h15fd96f740141197E.exit"

"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$24unrecognized_token_error17h15fd96f740141197E.exit": ; preds = %bb.gi, %.noexc107
  %i.bf = phi ptr [ %i.at, %bb.gi ], [ %i.ax, %.noexc107 ] ; 10 uses
  %i.bg = phi ptr [ %i.ar, %bb.gi ], [ %i.av, %.noexc107 ] ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bi, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 7 uses
  store i64 0, ptr %i.bj, align 8
  %i.bk = load i64, ptr %i.bf, align 8, !noundef !15 ; 2 uses
  %.not78285 = icmp eq i64 %i.bk, 0
  br i1 %.not78285, label %._crit_edge, label %.lr.ph, !prof !49

.lr.ph:                                           ; preds = %"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$24unrecognized_token_error17h15fd96f740141197E.exit"
  %. = select i1 %.not, ptr null, ptr %2
  %i.bl = getelementptr inbounds nuw i8, ptr %., i64 64
  %.sroa.05.0 = select i1 %.not, ptr null, ptr %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  br label %bb.gj

._crit_edge:                                      ; preds = %bb.gr, %"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$24unrecognized_token_error17h15fd96f740141197E.exit"
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #41
          to label %bb.gl unwind label %.loopexit.split-lp.loopexit.split-lp

bb.gj:                                            ; preds = %.lr.ph, %bb.gr
  %i.bn = phi i64 [ %i.bk, %.lr.ph ], [ %i.cd, %bb.gr ]
  %i.bo = load ptr, ptr %i.bg, align 8, !nonnull !15, !noundef !15
  %i.bp = getelementptr [2 x i8], ptr %i.bo, i64 %i.bn
  %i.bq = getelementptr i8, ptr %i.bp, i64 -2
  %i.br = load i16, ptr %i.bq, align 2, !noundef !15
  %i.bs = invoke noundef i16 @_ZN18nickel_lang_parser7grammar13__parse__Term8__action17hc5b68c42efa9987aE(i16 noundef %i.br, i64 noundef 171)
          to label %bb.gm unwind label %.loopexit.split-lp.loopexit ; 2 uses

bb.gk:                                            ; preds = %bb.jm
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hbb325c02e41945baE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.j)
  br label %.thread

.loopexit:                                        ; preds = %bb.hm
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread150

.loopexit.split-lp.loopexit:                      ; preds = %bb.gj, %bb.gn
  %lpad.loopexit180 = landingpad { ptr, i32 }
          cleanup
  br label %.thread150

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke, %bb.hq, %bb.hp, %._crit_edge
  %lpad.loopexit.split-lp181 = landingpad { ptr, i32 }
          cleanup
  br label %.thread150

bb.gl:                                            ; preds = %bb.jq, %bb.jk, %bb.jg, %.thread165, %._crit_edge
  unreachable

bb.gm:                                            ; preds = %bb.gj
  %i.bu = icmp slt i16 %i.bs, 0
  br i1 %i.bu, label %bb.gn, label %bb.go

bb.gn:                                            ; preds = %bb.gm
  %i.bv = xor i16 %i.bs, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$6reduce17h7830fef4891d35d5E"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, i16 noundef %i.bv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %.sroa.05.0, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm)
          to label %bb.gp unwind label %.loopexit.split-lp.loopexit

bb.go:                                            ; preds = %bb.gm
  %i.bw = load i64, ptr %i.bf, align 8, !noundef !15 ; 5 uses
  %i.bx = icmp ult i64 %i.bw, 4611686018427387904
  call void @llvm.assume(i1 %i.bx)
  %.not79.not287 = icmp eq i64 %i.bw, 0
  %.sroa.066.1288 = call i64 @llvm.usub.sat.i64(i64 %i.bw, i64 1)
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 10 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 10 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  br label %bb.gu

bb.gp:                                            ; preds = %bb.gn
  %i.cc = load i64, ptr %i.n, align 8, !range !50, !noundef !15
  %.not96 = icmp eq i64 %i.cc, 175
  br i1 %.not96, label %bb.gr, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.n, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.gs

bb.gr:                                            ; preds = %bb.gp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %i.cd = load i64, ptr %i.bf, align 8, !noundef !15 ; 2 uses
  %.not78 = icmp eq i64 %i.cd, 0
  br i1 %.not78, label %._crit_edge, label %bb.gj, !prof !51

bb.gs:                                            ; preds = %bb.hl, %bb.gq
  call void @llvm.experimental.noalias.scope.decl(metadata !4467)
  %.val.i = load ptr, ptr %i.bi, align 8, !alias.scope !4467, !nonnull !15, !noundef !15 ; 2 uses
  %.val1.i = load i64, ptr %i.bj, align 8, !alias.scope !4467, !noundef !15 ; 2 uses
  %i.ce = icmp eq i64 %.val1.i, 0
  br i1 %i.ce, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.gs, %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.cg, %.lr.ph.i.i.i ], [ 0, %bb.gs ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [80 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i
  %i.cg = add nuw i64 %.sroa.0.07.i.i.i, 1        ; 2 uses
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.cf), !noalias !4467
  %i.ch = icmp eq i64 %i.cg, %.val1.i
  br i1 %i.ch, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i": ; preds = %.lr.ph.i.i.i, %bb.gs
  %.val2.i = load i64, ptr %i.o, align 8, !range !39, !alias.scope !4467, !noundef !15 ; 2 uses
  %i.ci = icmp eq i64 %.val2.i, 0
  br i1 %i.ci, label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E.exit", label %bb.gt

bb.gt:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i"
  %i.cj = mul nuw i64 %.val2.i, 80
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4467
  br label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E.exit"

bb.gu:                                            ; preds = %.backedge638, %bb.go
  %.sroa.5.0 = phi i64 [ %4, %bb.go ], [ %.sroa.5.0.be, %.backedge638 ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %3, %bb.go ], [ %.sroa.0.0.be, %.backedge638 ] ; 2 uses
  br i1 %.not79.not287, label %._crit_edge294, label %.lr.ph293

.lr.ph293:                                        ; preds = %bb.gu
  %i.ck = trunc nuw i64 %.sroa.0.0 to i1          ; 3 uses
  br label %bb.gv

bb.gv:                                            ; preds = %.lr.ph293, %.backedge
  %.sroa.066.1291 = phi i64 [ %.sroa.066.1288, %.lr.ph293 ], [ %.sroa.066.1433, %.backedge ]
  %.sroa.066.0289 = phi i64 [ %i.bw, %.lr.ph293 ], [ %.sroa.066.0.be, %.backedge ] ; 12 uses
  %i.cl = add nsw i64 %.sroa.066.0289, -1         ; 19 uses
  %i.cm = load i64, ptr %i.bf, align 8, !noundef !15 ; 2 uses
  %i.cn = icmp ult i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.hm, label %.invoke

._crit_edge294:                                   ; preds = %.backedge, %bb.gu
  %.sroa.013.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  store i64 169, ptr %2, align 8
  %.not80 = icmp eq i64 %.sroa.013.0.copyload, 169
  br i1 %.not80, label %bb.gz, label %bb.gw

bb.gw:                                            ; preds = %._crit_edge294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.517.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx, i64 72, i1 false)
  store i64 %.sroa.013.0.copyload, ptr %i.m, align 8
  %i.co = load i64, ptr %i.bj, align 8, !alias.scope !4468, !noalias !4469, !noundef !15 ; 3 uses
  %i.cp = load i64, ptr %i.o, align 8, !range !39, !alias.scope !4468, !noalias !4469, !noundef !15
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.gx, label %bb.he

bb.gx:                                            ; preds = %bb.gw
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5234777b6279215cE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40)
          to label %bb.he unwind label %bb.gy, !noalias !4469

bb.gy:                                            ; preds = %bb.gx
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.m)
  br label %.thread150

bb.gz:                                            ; preds = %._crit_edge294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4470)
  %.val.i111 = load ptr, ptr %i.bi, align 8, !alias.scope !4470, !nonnull !15, !noundef !15 ; 2 uses
  %.val1.i112 = load i64, ptr %i.bj, align 8, !alias.scope !4470, !noundef !15 ; 2 uses
  %i.cs = icmp eq i64 %.val1.i112, 0
  br i1 %i.cs, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i115", label %.lr.ph.i.i.i113

.lr.ph.i.i.i113:                                  ; preds = %bb.gz, %.lr.ph.i.i.i113
  %.sroa.0.07.i.i.i114 = phi i64 [ %i.cu, %.lr.ph.i.i.i113 ], [ 0, %bb.gz ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [80 x i8], ptr %.val.i111, i64 %.sroa.0.07.i.i.i114
  %i.cu = add nuw i64 %.sroa.0.07.i.i.i114, 1     ; 2 uses
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.ct), !noalias !4470
  %i.cv = icmp eq i64 %i.cu, %.val1.i112
  br i1 %i.cv, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i115", label %.lr.ph.i.i.i113

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i115": ; preds = %.lr.ph.i.i.i113, %bb.gz
  %.val2.i116 = load i64, ptr %i.o, align 8, !range !39, !alias.scope !4470, !noundef !15 ; 2 uses
  %i.cw = icmp eq i64 %.val2.i116, 0
  br i1 %i.cw, label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E.exit117", label %bb.ha

bb.ha:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i115"
  %i.cx = mul nuw i64 %.val2.i116, 80
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i111, i64 noundef %i.cx, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !4470
  br label %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E.exit117"

"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E.exit117": ; preds = %bb.ha, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit.i115"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.hb

bb.hb:                                            ; preds = %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E.exit", %"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E.exit117"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.cy = load i64, ptr %2, align 8, !range !47, !alias.scope !4471, !noundef !15
  %i.cz = icmp eq i64 %i.cy, 169
  br i1 %i.cz, label %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit", label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %2)
  br label %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit"

bb.hd:                                            ; preds = %bb.he
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.thread150

bb.he:                                            ; preds = %bb.gx, %bb.gw
  %i.db = load ptr, ptr %i.bi, align 8, !alias.scope !4468, !noalias !4469, !nonnull !15, !noundef !15
  %i.dc = getelementptr inbounds nuw [80 x i8], ptr %i.db, i64 %i.co
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dc, ptr noundef nonnull readonly align 8 dereferenceable(80) %i.m, i64 80, i1 false)
  %i.dd = add i64 %i.co, 1
  store i64 %i.dd, ptr %i.bj, align 8, !alias.scope !4468, !noalias !4469
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  invoke fastcc void @"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$10next_token17h86a4548707f29a9fE"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.l, ptr noalias noundef align 8 dereferenceable(208) %1)
          to label %bb.hf unwind label %bb.hd

bb.hf:                                            ; preds = %bb.he
  %i.de = load i64, ptr %i.l, align 8, !range !52, !noundef !15 ; 2 uses
  %i.df = add nsw i64 %i.de, -175
  %i.dg = icmp samesign ugt i64 %i.de, 174
  %i.dh = select i1 %i.dg, i64 %i.df, i64 2
  switch i64 %i.dh, label %bb.hg [
    i64 0, label %bb.hh
    i64 1, label %bb.hj
    i64 2, label %bb.hl
  ]

bb.hg:                                            ; preds = %bb.hf
  unreachable

bb.hh:                                            ; preds = %bb.hf
  %i.di = load i64, ptr %i.cb, align 8, !noundef !15
end_hunk_0
begin_hunk_1_@"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$14error_recovery17heb42a96208331f03E":bb.a
  %i.ga = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !4474, !noundef !15 ; 2 uses
  %i.gb = icmp ugt i64 %i.fz, %i.ga
  br i1 %i.gb, label %bb.if, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  store i64 %i.fz, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !4474
  br label %bb.if

bb.if:                                            ; preds = %bb.ie, %bb.id
  %i.gc = phi i64 [ %i.ga, %bb.id ], [ %i.fz, %bb.ie ] ; 2 uses
  %i.gd = add i64 %i.fz, -1                       ; 3 uses
  %i.ge = icmp ult i64 %i.gd, %i.gc
  br i1 %i.ge, label %bb.ig, label %.split55.us.invoke.i

bb.ig:                                            ; preds = %bb.if
  %i.gf = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4474, !nonnull !15, !noundef !15
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.gf, i64 %i.gd
  %i.gh = load i16, ptr %i.gg, align 2, !noalias !4481, !noundef !15
  %i.gi = invoke noundef i16 @_ZN18nickel_lang_parser7grammar13__parse__Term6__goto17hcd6bc49cfc3d92dcE(i16 noundef %i.gh, i64 noundef %i.fy)
          to label %"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$4goto17he41f697f46f94bd5E.exit.i" unwind label %.loopexit.split.i, !noalias !4481

"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$4goto17he41f697f46f94bd5E.exit.i": ; preds = %bb.ig
  %i.gj = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !4482, !noalias !4483, !noundef !15 ; 5 uses
  %i.gk = load i64, ptr %i.b, align 8, !range !39, !alias.scope !4482, !noalias !4483, !noundef !15
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.ih, label %bb.ii

bb.ih:                                            ; preds = %"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$4goto17he41f697f46f94bd5E.exit.i"
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5188dca885b2e5d5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @58)
          to label %bb.ii unwind label %.loopexit.split.i, !noalias !4481

bb.ii:                                            ; preds = %bb.ih, %"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$4goto17he41f697f46f94bd5E.exit.i"
  %i.gm = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !4482, !noalias !4483, !nonnull !15, !noundef !15
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gm, i64 %i.gj
  store i16 %i.gi, ptr %i.gn, align 2, !noalias !4481
  %i.go = add nsw i64 %i.gj, 1                    ; 3 uses
  store i64 %i.go, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !4482, !noalias !4483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4474
  %i.gp = icmp slt i64 %i.gj, 4611686018427387903
  call void @llvm.assume(i1 %i.gp)
  %.not.i125 = icmp eq i64 %i.go, 0
  br i1 %.not.i125, label %.split55.us.invoke.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hf5c77784cd640596E.exit.split.i"

.loopexit29.i:                                    ; preds = %"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$10eof_action17h76680474fc5158f7E.exit.i", %bb.hr
  %.us-phi48.i = phi i16 [ %i.eh, %bb.hr ], [ %i.fs, %"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$10eof_action17h76680474fc5158f7E.exit.i" ]
  %i.gq = icmp ne i16 %.us-phi48.i, 0
  br label %bb.ij

bb.ij:                                            ; preds = %.loopexit29.i, %.split.us.i
  %i.gr = phi i1 [ %i.gq, %.loopexit29.i ], [ true, %.split.us.i ]
  %.val.i124 = load i64, ptr %i.b, align 8, !noalias !4474 ; 2 uses
  %i.gs = icmp eq i64 %.val.i124, 0
  br i1 %i.gs, label %bb.il, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %.val20.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !4474, !nonnull !15, !noundef !15
  %i.gt = shl nuw i64 %.val.i124, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val20.i, i64 noundef %i.gt, i64 noundef range(i64 1, -9223372036854775807) 2) #40, !noalias !4481
  br label %bb.il

bb.il:                                            ; preds = %bb.ik, %bb.ij
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4474
  br i1 %i.gr, label %bb.im, label %.backedge

bb.im:                                            ; preds = %bb.il
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 5 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 4 uses
  %i.gw = load i64, ptr %i.gv, align 8, !noundef !15 ; 8 uses
  %i.gx = icmp ult i64 %i.cl, %i.gw
  br i1 %i.gx, label %bb.io, label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.gy = load i64, ptr %i.bj, align 8, !noundef !15 ; 2 uses
  %.not82 = icmp eq i64 %i.gy, 0
  br i1 %.not82, label %bb.iq, label %bb.ir

bb.io:                                            ; preds = %bb.im
  %i.gz = load ptr, ptr %i.gu, align 8, !nonnull !15, !noundef !15
  %i.ha = getelementptr inbounds nuw [304 x i8], ptr %i.gz, i64 %i.cl
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 288
  %.pre = load i64, ptr %i.bj, align 8
  br label %bb.ip

bb.ip:                                            ; preds = %bb.ir, %bb.io
  %i.hc = phi i64 [ %.pre, %bb.io ], [ %i.gy, %bb.ir ] ; 2 uses
  %.sroa.0.0144.in = phi ptr [ %i.hb, %bb.io ], [ %i.hh, %bb.ir ]
  %.sroa.0.0144 = load i64, ptr %.sroa.0.0144.in, align 8, !noundef !15 ; 2 uses
  %.not85 = icmp eq i64 %i.hc, 0
  %i.hd = load ptr, ptr %i.bi, align 8, !nonnull !15
  %i.he = getelementptr [80 x i8], ptr %i.hd, i64 %i.hc ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 -80
  %.not86168 = icmp eq ptr %i.hf, null
  %.not86 = select i1 %.not85, i1 true, i1 %.not86168
  br i1 %.not86, label %.thread426, label %bb.iu

bb.iq:                                            ; preds = %bb.in
  %.not84 = icmp eq i64 %i.cl, 0
  br i1 %.not84, label %.thread426, label %bb.is

bb.ir:                                            ; preds = %bb.in
  %i.hg = load ptr, ptr %i.bi, align 8, !nonnull !15
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 64
  br label %bb.ip

bb.is:                                            ; preds = %bb.iq
  %i.hi = add nsw i64 %.sroa.066.0289, -2         ; 3 uses
  %i.hj = icmp ult i64 %i.hi, %i.gw
  br i1 %i.hj, label %bb.it, label %.invoke

.invoke:                                          ; preds = %bb.gv, %bb.is
  %i.hk = phi i64 [ %i.hi, %bb.is ], [ %i.cl, %bb.gv ]
  %i.hl = phi i64 [ %i.gw, %bb.is ], [ %i.cm, %bb.gv ]
  %i.hm = phi ptr [ @43, %bb.is ], [ @41, %bb.gv ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.hk, i64 noundef %i.hl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hm) #41
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.it:                                            ; preds = %bb.is
  %i.hn = load ptr, ptr %i.gu, align 8, !nonnull !15, !noundef !15
  %i.ho = getelementptr inbounds nuw [304 x i8], ptr %i.hn, i64 %i.hi
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 296
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !4484, !noundef !15
  br label %.thread426

bb.iu:                                            ; preds = %bb.ip
  %i.hr = getelementptr i8, ptr %i.he, i64 -8
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !4485, !noundef !15
  br label %bb.iw

.thread426:                                       ; preds = %bb.iq, %bb.it, %bb.ip
  %.sroa.0.0144432 = phi i64 [ %.sroa.0.0144, %bb.ip ], [ 0, %bb.iq ], [ %i.hq, %bb.it ] ; 4 uses
  %i.ht = add nsw i64 %i.bw, -1
  %i.hu = icmp ugt i64 %i.ht, %i.cl
  br i1 %i.hu, label %bb.iy, label %bb.ix

bb.iv:                                            ; preds = %.thread165
  %i.hv = landingpad { ptr, i32 }
          cleanup
  br label %.thread150

bb.iw:                                            ; preds = %bb.ix, %bb.iu, %bb.iz, %bb.jb
  %.sroa.0.0144431 = phi i64 [ %.sroa.0.0144, %bb.iu ], [ %.sroa.0.0144432, %bb.jb ], [ %.sroa.0.0144432, %bb.iz ], [ %.sroa.0.0144432, %bb.ix ]
  %.sroa.022.0 = phi i64 [ %i.hs, %bb.iu ], [ %i.ie, %bb.jb ], [ %i.hz, %bb.iz ], [ %.sroa.0.0144432, %bb.ix ]
  %i.hw = load i64, ptr %i.bf, align 8, !noundef !15 ; 2 uses
  %.not91 = icmp ult i64 %i.cl, %i.hw
  br i1 %.not91, label %bb.jc, label %bb.jd

bb.ix:                                            ; preds = %.thread426
  %i.hx = load i64, ptr %2, align 8, !range !47, !noundef !15
  %.not87 = icmp eq i64 %i.hx, 169
  br i1 %.not87, label %bb.iw, label %bb.iz

bb.iy:                                            ; preds = %.thread426
  %.not89 = icmp eq i64 %i.gw, 0
  br i1 %.not89, label %.thread165, label %bb.ja

bb.iz:                                            ; preds = %bb.ix
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.hz = load i64, ptr %i.hy, align 8, !alias.scope !4486, !noundef !15
  br label %bb.iw

bb.ja:                                            ; preds = %bb.iy
  %i.ia = load ptr, ptr %i.gu, align 8, !nonnull !15, !noundef !15
  %i.ib = getelementptr [304 x i8], ptr %i.ia, i64 %i.gw ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 -304
  %.not90 = icmp eq ptr %i.ic, null
  br i1 %.not90, label %.thread165, label %bb.jb, !prof !30

bb.jb:                                            ; preds = %bb.ja
  %i.id = getelementptr i8, ptr %i.ib, i64 -8
  %i.ie = load i64, ptr %i.id, align 8, !alias.scope !4487, !noundef !15
  br label %bb.iw

.thread165:                                       ; preds = %bb.iy, %bb.ja
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @44) #41
          to label %bb.gl unwind label %bb.iv

bb.jc:                                            ; preds = %bb.iw
  store i64 %.sroa.066.0289, ptr %i.bf, align 8
  br label %bb.jd

bb.jd:                                            ; preds = %bb.iw, %bb.jc
  %i.if = phi i64 [ %i.hw, %bb.iw ], [ %.sroa.066.0289, %bb.jc ] ; 2 uses
  %i.ig = icmp ugt i64 %i.cl, %i.gw
  br i1 %i.ig, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit", label %bb.je

bb.je:                                            ; preds = %bb.jd
  %i.ih = sub nuw i64 %i.gw, %i.cl
  %i.ii = load ptr, ptr %i.gu, align 8, !nonnull !15, !noundef !15
  %i.ij = getelementptr inbounds nuw [304 x i8], ptr %i.ii, i64 %i.cl
  store i64 %i.cl, ptr %i.gv, align 8
  %i.ik = icmp eq i64 %i.gw, %i.cl
  br i1 %i.ik, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.je, %.lr.ph.i
  %.sroa.0.07.i = phi i64 [ %i.im, %.lr.ph.i ], [ 0, %bb.je ] ; 2 uses
  %i.il = getelementptr inbounds nuw [304 x i8], ptr %i.ij, i64 %.sroa.0.07.i
  %i.im = add nuw i64 %.sroa.0.07.i, 1            ; 2 uses
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hbb325c02e41945baE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.il)
  %i.in = icmp eq i64 %i.im, %i.ih
  br i1 %i.in, label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit.loopexit", label %.lr.ph.i

.thread155:                                       ; preds = %bb.jg, %bb.jk, %bb.jf, %bb.jj
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %.thread150

"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit.loopexit": ; preds = %.lr.ph.i
  %.pre393 = load i64, ptr %i.bf, align 8
  br label %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit"

"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit": ; preds = %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit.loopexit", %bb.je, %bb.jd
  %i.ip = phi i64 [ %.pre393, %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit.loopexit" ], [ %i.if, %bb.je ], [ %i.if, %bb.jd ] ; 2 uses
  %i.iq = icmp ult i64 %i.cl, %i.ip
  br i1 %i.iq, label %bb.jf, label %bb.jg

bb.jf:                                            ; preds = %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit"
  %i.ir = load ptr, ptr %i.bg, align 8, !nonnull !15, !noundef !15
  %i.is = getelementptr inbounds nuw [2 x i8], ptr %i.ir, i64 %i.cl
  %i.it = load i16, ptr %i.is, align 2, !noundef !15
  %i.iu = invoke noundef i16 @_ZN18nickel_lang_parser7grammar13__parse__Term8__action17hc5b68c42efa9987aE(i16 noundef %i.it, i64 noundef 171)
          to label %bb.jh unwind label %.thread155 ; 2 uses

bb.jg:                                            ; preds = %"_ZN4core3ptr107drop_in_place$LT$$u5b$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$u5d$$GT$17h78793caccc51f185E.exit"
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cl, i64 noundef %i.ip, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #41
          to label %bb.gl unwind label %.thread155

bb.jh:                                            ; preds = %bb.jf
  %i.iv = icmp sgt i16 %i.iu, 0
  %i.iw = add nsw i16 %i.iu, -1
  br i1 %i.iv, label %bb.ji, label %bb.jk, !prof !17

bb.ji:                                            ; preds = %bb.jh
  %i.ix = load i64, ptr %i.bf, align 8, !alias.scope !4488, !noalias !4489, !noundef !15 ; 3 uses
  %i.iy = load i64, ptr %i.bh, align 8, !range !39, !alias.scope !4488, !noalias !4489, !noundef !15
  %i.iz = icmp eq i64 %i.ix, %i.iy
  br i1 %i.iz, label %bb.jj, label %bb.jl

bb.jj:                                            ; preds = %bb.ji
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5188dca885b2e5d5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @47)
          to label %bb.jl unwind label %.thread155

bb.jk:                                            ; preds = %bb.jh
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @46) #41
          to label %bb.gl unwind label %.thread155

bb.jl:                                            ; preds = %bb.jj, %bb.ji
  %i.ja = load ptr, ptr %i.bg, align 8, !alias.scope !4488, !noalias !4489, !nonnull !15, !noundef !15
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ja, i64 %i.ix
  store i16 %i.iw, ptr %i.jb, align 2
  %i.jc = add i64 %i.ix, 1
  store i64 %i.jc, ptr %i.bf, align 8, !alias.scope !4488, !noalias !4489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.k, ptr noundef nonnull align 8 dereferenceable(104) %i.q, i64 104, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jd, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %.sroa.2139.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.2139, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %.sroa.2139.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(128) %i.k, i64 128, i1 false), !alias.scope !4490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.je = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  store i64 %.sroa.0.0144431, ptr %i.je, align 8
  store i8 7, ptr %i.j, align 8
  %.sroa.2139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(135) %.sroa.2139.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(135) %.sroa.2139, i64 135, i1 false)
  %i.jf = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  store i64 %.sroa.022.0, ptr %i.jf, align 8
  %i.jg = load i64, ptr %i.gv, align 8, !alias.scope !4491, !noalias !4492, !noundef !15 ; 3 uses
  %i.jh = load i64, ptr %i.bm, align 8, !range !39, !alias.scope !4491, !noalias !4492, !noundef !15
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he4b7bc1f5b680c7fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @48)
          to label %bb.jn unwind label %bb.gk, !noalias !4493

bb.jn:                                            ; preds = %bb.jm, %bb.jl
  %i.jj = load ptr, ptr %i.gu, align 8, !alias.scope !4491, !noalias !4492, !nonnull !15, !noundef !15
  %i.jk = getelementptr inbounds nuw [304 x i8], ptr %i.jj, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.jk, ptr noundef nonnull readonly align 8 dereferenceable(304) %i.j, i64 304, i1 false)
  %i.jl = add i64 %i.jg, 1
  store i64 %i.jl, ptr %i.gv, align 8, !alias.scope !4491, !noalias !4492
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.sroa.031.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.not92 = icmp eq i64 %.sroa.031.0.copyload, 169
  br i1 %.not92, label %bb.jp, label %bb.jo

bb.jo:                                            ; preds = %bb.jn
  br i1 %i.ck, label %bb.js, label %bb.jq, !prof !17

bb.jp:                                            ; preds = %bb.jn
  br i1 %i.ck, label %bb.jq, label %bb.jr, !prof !21

bb.jq:                                            ; preds = %bb.jp, %bb.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i64 %.sroa.031.0.copyload, ptr %i.i, align 8
  %.sroa.434.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.434.0..sroa_idx35, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.0.0, ptr %i.h, align 8
  %i.jm = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.5.0, ptr %i.jm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.i, ptr %i.f, align 8
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hb253bce4c6a01cd3E", ptr %.sroa.461.0..sroa_idx, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.jn, align 8
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h76dc2bc4497baa97E", ptr %.sroa.465.0..sroa_idx, align 8
  store ptr @51, ptr %i.g, align 8
  %i.jo = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 2, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr null, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.f, ptr %i.jq, align 8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 2, ptr %i.jr, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @52) #41
          to label %bb.gl unwind label %bb.jt

bb.jr:                                            ; preds = %bb.jp, %bb.js
  %storemerge = phi i64 [ 175, %bb.js ], [ 176, %bb.jp ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit"

bb.js:                                            ; preds = %bb.jo
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx, i64 72, i1 false)
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.031.0.copyload, ptr %i.js, align 8
  %i.jt = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.5.0, ptr %i.jt, align 8
  br label %bb.jr

bb.jt:                                            ; preds = %bb.jq
  %i.ju = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jv = load i64, ptr %i.i, align 8, !range !47, !alias.scope !4494, !noundef !15
  %i.jw = icmp eq i64 %i.jv, 169
  br i1 %i.jw, label %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137", label %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137.sink.split"

.thread150:                                       ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit.i, %bb.ia, %bb.hd, %bb.gy, %bb.iv, %.thread155
  %.pn154 = phi { ptr, i32 } [ %i.io, %.thread155 ], [ %i.cr, %bb.gy ], [ %lpad.phi.i, %bb.ia ], [ %lpad.phi.i, %.loopexit.i ], [ %i.hv, %bb.iv ], [ %i.da, %bb.hd ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit180, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp181, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E"(ptr noalias noundef align 8 dereferenceable(24) %i.o) #43
  call fastcc void @"_ZN4core3ptr138drop_in_place$LT$lalrpop_util..ParseError$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17hc9c8c06aa338a541E"(ptr noalias noundef align 8 dereferenceable(104) %i.q) #43
  br label %.thread

"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137.sink.split": ; preds = %bb.jt, %.thread
  %.sink = phi ptr [ %2, %.thread ], [ %i.i, %bb.jt ]
  %.pn99147.ph = phi { ptr, i32 } [ %.pn99.ph, %.thread ], [ %i.ju, %bb.jt ]
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %.sink)
  br label %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137"

"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137": ; preds = %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137.sink.split", %.thread, %bb.jt
  %.pn99147 = phi { ptr, i32 } [ %i.ju, %bb.jt ], [ %.pn99.ph, %.thread ], [ %.pn99147.ph, %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137.sink.split" ]
  resume { ptr, i32 } %.pn99147

.thread:                                          ; preds = %.thread150, %bb.gk, %bb.b, %bb.gh
  %.pn99.ph = phi { ptr, i32 } [ %i.bd, %bb.gh ], [ %.pn154, %.thread150 ], [ %i.t, %bb.b ], [ %i.bt, %bb.gk ] ; 2 uses
  %i.jx = load i64, ptr %2, align 8, !range !47, !alias.scope !4495, !noundef !15
  %i.jy = icmp eq i64 %i.jx, 169
  br i1 %i.jy, label %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137", label %"_ZN4core3ptr105drop_in_place$LT$core..option..Option$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17hcda16c3fc2eb6082E.exit137.sink.split"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$9parse_eof17h9ad515585216a0aaE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(104) %0, ptr noalias noundef nonnull align 8 dereferenceable(208) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [80 x i8], align 8                ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 8 uses
  %i.d = alloca [104 x i8], align 8               ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not17 = icmp eq i64 %i.g, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph, !prof !49

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %bb.b

._crit_edge:                                      ; preds = %.backedge, %bb.a
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #41
  unreachable

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %i.k = phi i64 [ %i.g, %.lr.ph ], [ %i.aa, %.backedge ]
  %i.l = load ptr, ptr %i.h, align 8, !nonnull !15, !noundef !15
  %i.m = getelementptr [2 x i8], ptr %i.l, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 -2
  %i.o = load i16, ptr %i.n, align 2, !noundef !15 ; 2 uses
  %i.p = sext i16 %i.o to i64                     ; 2 uses
  %i.q = icmp ult i16 %i.o, 2622
  br i1 %i.q, label %"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$10eof_action17h76680474fc5158f7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.p, i64 noundef 2622, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #41
  unreachable

"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$10eof_action17h76680474fc5158f7E.exit": ; preds = %bb.b
  %i.r = getelementptr inbounds nuw [2 x i8], ptr @33, i64 %i.p
  %i.s = load i16, ptr %i.r, align 2, !noundef !15 ; 2 uses
  %i.t = icmp slt i16 %i.s, 0
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$10eof_action17h76680474fc5158f7E.exit"
  %i.u = xor i16 %i.s, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$6reduce17h7830fef4891d35d5E"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i, i16 noundef %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  %i.v = load i64, ptr %i.d, align 8, !range !50, !noundef !15
  %.not5 = icmp eq i64 %i.v, 175
  br i1 %.not5, label %bb.g, label %bb.f

bb.e:                                             ; preds = %"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$10eof_action17h76680474fc5158f7E.exit"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 169, ptr %i.b, align 8
  call fastcc void @"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$14error_recovery17heb42a96208331f03E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef align 8 dereferenceable(208) %1, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.b, i64 noundef 0, i64 undef)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.w = load i64, ptr %i.c, align 8, !range !52, !noundef !15 ; 4 uses
  %i.x = add nsw i64 %i.w, -175
  %i.y = icmp samesign ugt i64 %i.w, 174
  %i.z = select i1 %i.y, i64 %i.x, i64 2
  switch i64 %i.z, label %bb.i [
    i64 0, label %bb.j
    i64 1, label %"_ZN4core3ptr125drop_in_place$LT$lalrpop_util..state_machine..NextToken$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$GT$$GT$17he502190104b11487E.exit"
    i64 2, label %bb.k
  ], !prof !4496

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.d, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %"_ZN4core3ptr125drop_in_place$LT$lalrpop_util..state_machine..NextToken$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$GT$$GT$17he502190104b11487E.exit"
  %i.aa = load i64, ptr %i.f, align 8, !noundef !15 ; 2 uses
  %.not = icmp eq i64 %i.aa, 0
  br i1 %.not, label %._crit_edge, label %bb.b, !prof !51

bb.h:                                             ; preds = %"_ZN4core3ptr125drop_in_place$LT$lalrpop_util..state_machine..NextToken$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$GT$$GT$17he502190104b11487E.exit6", %bb.f
  ret void

bb.i:                                             ; preds = %bb.e
  unreachable

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @60, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.ae, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @61) #41
          to label %bb.m unwind label %bb.l

bb.k:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %i.c, i64 104, i1 false)
  %or.cond = icmp eq i64 %i.w, 175
  br i1 %or.cond, label %bb.p, label %"_ZN4core3ptr125drop_in_place$LT$lalrpop_util..state_machine..NextToken$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$GT$$GT$17he502190104b11487E.exit6"

bb.l:                                             ; preds = %bb.j
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = icmp samesign ult i64 %i.w, 175
  br i1 %i.ag, label %bb.n, label %bb.o
end_hunk_1
begin_hunk_2_@_ZN17nickel_lang_utils12test_program18parse_bytecode_ast17hec7848d7263b7932E:bb.a

bb.g:                                             ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.y, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !16539
  store i64 %3, ptr %i.t, align 8
  %.sroa.4.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %.sroa.10.0.i.i, ptr %.sroa.4.0..sroa_idx22, align 8
  %.sroa.5.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %3, ptr %.sroa.5.0..sroa_idx23, align 8
  %i.ag = invoke fastcc noundef i32 @_ZN18nickel_lang_parser5files5Files3add17h0e1473a0cb8c411cE(ptr noalias noundef align 8 dereferenceable(32) %i.u, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.t)
          to label %bb.h unwind label %bb.d       ; 12 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !16540)
  call void @llvm.experimental.noalias.scope.decl(metadata !16541)
  call void @llvm.experimental.noalias.scope.decl(metadata !16542)
  %i.ah = load ptr, ptr %i.u, align 8, !alias.scope !16543, !noundef !15 ; 3 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h4b598519a99405a5E.exit20", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = load i64, ptr %i.ah, align 8, !noalias !16544, !noundef !15
  %i.ak = add i64 %i.aj, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.ah, align 8, !noalias !16544
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.j, label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h4b598519a99405a5E.exit20"

bb.j:                                             ; preds = %bb.i
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17ha3d18f83ba1e1015E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
  br label %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h4b598519a99405a5E.exit20"

"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h4b598519a99405a5E.exit20": ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store i64 -9223372036854775800, ptr %i.am, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store ptr %2, ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  store i64 %3, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx, align 8
  %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  store i64 0, ptr %i.r, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.46.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx, i8 0, i64 24, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store i64 0, ptr %.sroa.515.0..sroa_idx, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !16545)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16546
  store i64 0, ptr %i.o, align 8, !noalias !16546
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.an, align 8, !noalias !16546
  %i.ao = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 0, ptr %i.ao, align 8, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16546
  store i64 0, ptr %i.n, align 8, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16546
  call void @llvm.experimental.noalias.scope.decl(metadata !16547)
  call void @llvm.experimental.noalias.scope.decl(metadata !16548)
  call void @llvm.experimental.noalias.scope.decl(metadata !16549)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16550
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !16550
  %i.ap = call noundef align 2 dereferenceable_or_null(2) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 2, i64 noundef 2) #40, !noalias !16550 ; 3 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.l, label %bb.m, !prof !21

bb.k:                                             ; preds = %bb.l
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr906drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5d7e72b836f89acbE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(120) %i.r) #43, !noalias !16551
  br label %.thread.i.i.i.i.i

bb.l:                                             ; preds = %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h4b598519a99405a5E.exit20"
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 2, i64 noundef 2) #41
          to label %bb.ak unwind label %bb.k, !noalias !16552

bb.m:                                             ; preds = %"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..files..Files$GT$17h4b598519a99405a5E.exit20"
  store i16 0, ptr %i.ap, align 2, !noalias !16552
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 168 ; 3 uses
  store ptr %1, ptr %i.as, align 8, !noalias !16553
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  store ptr %i.o, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !16553
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !16553
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 192
  store i32 %i.ag, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !16553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(120) %i.r, i64 120, i1 false), !noalias !16554
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 120 ; 4 uses
  store i64 1, ptr %i.at, align 8, !noalias !16550
  %.sroa.4.0..sroa_idx13.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 3 uses
  store ptr %i.ap, ptr %.sroa.4.0..sroa_idx13.i.i.i.i.i, align 8, !noalias !16550
  %.sroa.5.0..sroa_idx14.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 136 ; 6 uses
  store i64 1, ptr %.sroa.5.0..sroa_idx14.i.i.i.i.i, align 8, !noalias !16550
  %i.au = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 4 uses
  store i64 0, ptr %i.au, align 8, !noalias !16550
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 152 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16550
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 160 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !noalias !16550
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 200
  store i64 0, ptr %i.av, align 8, !noalias !16550
  call void @llvm.experimental.noalias.scope.decl(metadata !16555)
  call void @llvm.experimental.noalias.scope.decl(metadata !16556)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !16550
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  br label %bb.n

bb.n:                                             ; preds = %bb.y, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !16557
  invoke fastcc void @"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$10next_token17h86a4548707f29a9fE"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.i)
          to label %.noexc.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !16552

.noexc.i.i.i.i.i:                                 ; preds = %bb.n
  %i.bc = load i64, ptr %i.g, align 8, !range !52, !noalias !16557, !noundef !15 ; 2 uses
  %i.bd = add nsw i64 %i.bc, -175
  %i.be = icmp samesign ugt i64 %i.bc, 174
  %i.bf = select i1 %i.be, i64 %i.bd, i64 2
  switch i64 %i.bf, label %.loopexit36.i.i.i.i.i.i [
    i64 0, label %bb.o
    i64 1, label %bb.p
    i64 2, label %bb.q
  ]

.loopexit36.i.i.i.i.i.i:                          ; preds = %.noexc.i.i.i.i.i, %.noexc11.i.i.i.i.i
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !16557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.aw, i64 80, i1 false), !noalias !16557
  %i.bg = load i64, ptr %i.ax, align 8, !noalias !16557, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16557
  %i.bh = load i64, ptr %.sroa.5.0..sroa_idx14.i.i.i.i.i, align 8, !alias.scope !16556, !noalias !16558, !noundef !15 ; 2 uses
  %.not5556.i.i.i.i.i.i = icmp eq i64 %i.bh, 0
  br i1 %.not5556.i.i.i.i.i.i, label %.outer._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !49

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o, %.outer.i.i.i.i.i.i
  %i.bi = phi i64 [ %i.cp, %.outer.i.i.i.i.i.i ], [ %i.bh, %bb.o ]
  %.sroa.0.0.ph57.i.i.i.i.i.i = phi i64 [ %i.co, %.outer.i.i.i.i.i.i ], [ %i.bg, %bb.o ] ; 3 uses
  br label %bb.r

bb.p:                                             ; preds = %.noexc.i.i.i.i.i
  invoke fastcc void @"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$9parse_eof17h9ad515585216a0aaE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.i)
          to label %.noexc9.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !16559

bb.q:                                             ; preds = %.noexc.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull align 8 dereferenceable(104) %i.g, i64 104, i1 false), !noalias !16560
  br label %.noexc9.i.i.i.i.i

.outer._crit_edge.i.i.i.i.i.i:                    ; preds = %bb.o, %.outer.i.i.i.i.i.i, %bb.ae
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #41
          to label %bb.s unwind label %.loopexit.split-lp.i.i.i.i.i.i, !noalias !16561

bb.r:                                             ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i
  %i.bj = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i.i ], [ %i.cn, %bb.ae ]
  %i.bk = load ptr, ptr %.sroa.4.0..sroa_idx13.i.i.i.i.i, align 8, !alias.scope !16556, !noalias !16558, !nonnull !15, !noundef !15
  %i.bl = getelementptr [2 x i8], ptr %i.bk, i64 %i.bj
  %i.bm = getelementptr i8, ptr %i.bl, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !noalias !16561, !noundef !15
  %i.bo = invoke noundef i16 @_ZN18nickel_lang_parser7grammar13__parse__Term8__action17hc5b68c42efa9987aE(i16 noundef %i.bn, i64 noundef %.sroa.0.0.ph57.i.i.i.i.i.i)
          to label %bb.t unwind label %.loopexit.i.i.i.i.i.i, !noalias !16561 ; 4 uses

bb.s:                                             ; preds = %.outer._crit_edge.i.i.i.i.i.i
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bp = icmp sgt i16 %i.bo, 0
  br i1 %i.bp, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  %i.bq = add nsw i16 %i.bo, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !16557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !16557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false), !noalias !16557
  invoke void @"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$15token_to_symbol17hae4bc3700c5dafd6E"(ptr noalias noundef nonnull sret([288 x i8]) align 8 captures(address) dereferenceable(288) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.as, i64 noundef %.sroa.0.0.ph57.i.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
          to label %.noexc10.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i.i.i.i.i, !noalias !16552

.noexc10.i.i.i.i.i:                               ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !16557
  %i.br = load i64, ptr %.sroa.5.0..sroa_idx14.i.i.i.i.i, align 8, !alias.scope !16562, !noalias !16563, !noundef !15 ; 3 uses
  %i.bs = load i64, ptr %i.at, align 8, !range !39, !alias.scope !16562, !noalias !16563, !noundef !15
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.noexc10.i.i.i.i.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5188dca885b2e5d5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @53)
          to label %bb.w unwind label %bb.z, !noalias !16561

.body.i.i.i.i.i.i:                                ; preds = %bb.x
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hbb325c02e41945baE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.d), !noalias !16561
  br label %.body.i.i.i.i.i

bb.w:                                             ; preds = %bb.v, %.noexc10.i.i.i.i.i
  %i.bv = load ptr, ptr %.sroa.4.0..sroa_idx13.i.i.i.i.i, align 8, !alias.scope !16562, !noalias !16563, !nonnull !15, !noundef !15
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.br
  store i16 %i.bq, ptr %i.bw, align 2, !noalias !16561
  %i.bx = add i64 %i.br, 1
  store i64 %i.bx, ptr %.sroa.5.0..sroa_idx14.i.i.i.i.i, align 8, !alias.scope !16562, !noalias !16563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !16557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %i.d, ptr noundef nonnull align 8 dereferenceable(288) %i.f, i64 288, i1 false), !noalias !16557
  %i.by = load <2 x i64>, ptr %i.ay, align 8, !noalias !16557
  store <2 x i64> %i.by, ptr %i.bb, align 8, !noalias !16557
  %i.bz = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !16564, !noalias !16565, !noundef !15 ; 3 uses
  %i.ca = load i64, ptr %i.au, align 8, !range !39, !alias.scope !16564, !noalias !16565, !noundef !15
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he4b7bc1f5b680c7fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @54)
          to label %bb.y unwind label %.body.i.i.i.i.i.i, !noalias !16566

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !16564, !noalias !16565, !nonnull !15, !noundef !15
  %i.cd = getelementptr inbounds nuw [304 x i8], ptr %i.cc, i64 %i.bz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(304) %i.cd, ptr noundef nonnull readonly align 8 dereferenceable(304) %i.d, i64 304, i1 false), !noalias !16561
  %i.ce = add i64 %i.bz, 1
  store i64 %i.ce, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !16564, !noalias !16565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !16557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !16557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16557
  br label %bb.n

bb.z:                                             ; preds = %bb.v
  %i.cf = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hbb325c02e41945baE"(ptr noalias noundef align 8 dereferenceable(288) %i.f) #43, !noalias !16561
  br label %.body.i.i.i.i.i

bb.aa:                                            ; preds = %bb.t
  %i.cg = icmp slt i16 %i.bo, 0
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ch = xor i16 %i.bo, -1
  invoke void @"_ZN124_$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$u20$as$u20$lalrpop_util..state_machine..ParserDefinition$GT$6reduce17h7830fef4891d35d5E"(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.as, i16 noundef %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.ay, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.ad unwind label %.loopexit.i.i.i.i.i.i, !noalias !16561

bb.ac:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !16557
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !16557
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !16557
  invoke fastcc void @"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$14error_recovery17heb42a96208331f03E"(ptr noalias noundef align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.i, ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, i64 noundef 1, i64 %.sroa.0.0.ph57.i.i.i.i.i.i)
          to label %.noexc11.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i, !noalias !16552

.noexc11.i.i.i.i.i:                               ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !16557
  %i.ci = load i64, ptr %i.b, align 8, !range !52, !noalias !16557, !noundef !15 ; 2 uses
  %i.cj = add nsw i64 %i.ci, -175
  %i.ck = icmp samesign ugt i64 %i.ci, 174
  %i.cl = select i1 %i.ck, i64 %i.cj, i64 2
  switch i64 %i.cl, label %.loopexit36.i.i.i.i.i.i [
    i64 0, label %.outer.i.i.i.i.i.i
    i64 1, label %bb.ag
    i64 2, label %bb.ah
  ]

bb.ad:                                            ; preds = %bb.ab
  %i.cm = load i64, ptr %i.c, align 8, !range !50, !noalias !16557, !noundef !15 ; 2 uses
  %trunc.i.i.i.i.i = trunc nuw i64 %i.cm to i8
  switch i8 %trunc.i.i.i.i.i, label %bb.ai [
    i8 -81, label %bb.ae
    i8 -82, label %bb.af
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.cn = load i64, ptr %.sroa.5.0..sroa_idx14.i.i.i.i.i, align 8, !alias.scope !16556, !noalias !16558, !noundef !15 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i.i.i, label %.outer._crit_edge.i.i.i.i.i.i, label %bb.r, !prof !51

bb.af:                                            ; preds = %bb.ad
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.4.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false), !noalias !16560
  store i64 172, ptr %i.l, align 8, !alias.scope !16567, !noalias !16560
  br label %.critedge.i.i.i.i.i.i

.outer.i.i.i.i.i.i:                               ; preds = %.noexc11.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.h, ptr noundef nonnull align 8 dereferenceable(80) %i.az, i64 80, i1 false), !noalias !16557
  %i.co = load i64, ptr %i.ba, align 8, !noalias !16557, !noundef !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16557
  %i.cp = load i64, ptr %.sroa.5.0..sroa_idx14.i.i.i.i.i, align 8, !alias.scope !16556, !noalias !16558, !noundef !15 ; 2 uses
  %.not55.i.i.i.i.i.i = icmp eq i64 %i.cp, 0
  br i1 %.not55.i.i.i.i.i.i, label %.outer._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !prof !16568

bb.ag:                                            ; preds = %.noexc11.i.i.i.i.i
  invoke fastcc void @"_ZN12lalrpop_util13state_machine19Parser$LT$D$C$I$GT$9parse_eof17h9ad515585216a0aaE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(104) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(208) %i.i)
          to label %.noexc12.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, !noalias !16559

.noexc12.i.i.i.i.i:                               ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16557
  br label %.critedge.i.i.i.i.i.i

bb.ah:                                            ; preds = %.noexc11.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, ptr noundef nonnull align 8 dereferenceable(104) %i.b, i64 104, i1 false), !noalias !16560
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !16557
  br label %.critedge.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ad
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.2.0..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx.i.i.i.i.i.i, i64 96, i1 false), !noalias !16560
  store i64 %i.cm, ptr %i.l, align 8, !alias.scope !16567, !noalias !16560
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef align 8 dereferenceable(64) %i.h), !noalias !16561
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %bb.ai, %bb.ah, %.noexc12.i.i.i.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !16557
  br label %bb.al

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.ab, %bb.r
  %lpad.loopexit.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

.loopexit.split-lp.i.i.i.i.i.i:                   ; preds = %.outer._crit_edge.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef align 8 dereferenceable(64) %i.h) #43, !noalias !16561
  br label %.body.i.i.i.i.i

.noexc9.i.i.i.i.i:                                ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !16557
  br label %bb.al

.loopexit.i.i.i.i.i:                              ; preds = %bb.ac
  %lpad.loopexit.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.loopexit.i.i.i.i.i:            ; preds = %bb.u, %bb.n
  %lpad.loopexit19.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i:   ; preds = %bb.ag, %bb.p
  %lpad.loopexit.split-lp20.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i, %bb.aj, %bb.z, %.body.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i = phi { ptr, i32 } [ %i.bu, %.body.i.i.i.i.i.i ], [ %lpad.phi.i.i.i.i.i.i, %bb.aj ], [ %i.cf, %bb.z ], [ %lpad.loopexit.i.i.i.i.i, %.loopexit.i.i.i.i.i ], [ %lpad.loopexit19.i.i.i.i.i, %.loopexit.split-lp.loopexit.i.i.i.i.i ], [ %lpad.loopexit.split-lp20.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i.i.i.i ]
  call fastcc void @"_ZN4core3ptr1010drop_in_place$LT$lalrpop_util..state_machine..Parser$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$C$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h9e9aca7fe1c0717aE"(ptr noalias noundef align 8 dereferenceable(208) %i.i) #43, !noalias !16552
  br label %.thread.i.i.i.i.i

bb.ak:                                            ; preds = %bb.l
  unreachable

bb.al:                                            ; preds = %.noexc9.i.i.i.i.i, %.critedge.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !16550
  call fastcc void @"_ZN4core3ptr1010drop_in_place$LT$lalrpop_util..state_machine..Parser$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$C$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h9e9aca7fe1c0717aE"(ptr noalias noundef align 8 dereferenceable(208) %i.i), !noalias !16552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !16550
  %i.cq = load i64, ptr %i.l, align 8, !range !16569, !noalias !16546, !noundef !15 ; 4 uses
  %.not.i.i = icmp eq i64 %i.cq, 174              ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  br i1 %.not.i.i, label %bb.bc, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.42.0.copyload.i = load i64, ptr %i.cr, align 8, !noalias !16546 ; 2 uses
  %.sroa.42.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.42.0.copyload.i to i32 ; 5 uses
  %.sroa.42.sroa.6.0.extract.shift.i = lshr i64 %.sroa.42.0.copyload.i, 32
  %.sroa.42.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.42.sroa.6.0.extract.shift.i to i32 ; 2 uses
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !16546 ; 3 uses
  %.sroa.9.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.9.0.copyload.i to i32 ; 2 uses
  %.sroa.9.sroa.6.0.extract.shift.i = lshr i64 %.sroa.9.0.copyload.i, 32 ; 2 uses
  %.sroa.9.sroa.6.0.extract.trunc.i = trunc nuw i64 %.sroa.9.sroa.6.0.extract.shift.i to i32
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !16546 ; 3 uses
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.16.0.copyload.i = load i64, ptr %.sroa.16.0..sroa_idx.i, align 8, !noalias !16546 ; 4 uses
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.18.0.copyload.i = load i64, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !16546 ; 2 uses
  %.sroa.20.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  %.sroa.20.0.copyload.i = load i64, ptr %.sroa.20.0..sroa_idx.i, align 8, !noalias !16546
  %.sroa.215.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.215.0.copyload.i = load i64, ptr %.sroa.215.0..sroa_idx.i, align 8, !noalias !16546
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !noalias !16546 ; 2 uses
  %.sroa.24.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.sroa.24.0.copyload.i = load i64, ptr %.sroa.24.0..sroa_idx.i, align 8, !noalias !16546 ; 3 uses
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.26.0.copyload.i = load ptr, ptr %.sroa.26.0..sroa_idx.i, align 8, !noalias !16546
  %.sroa.27.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %.sroa.27.0.copyload.i = load i64, ptr %.sroa.27.0..sroa_idx.i, align 8, !noalias !16546
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.47.i.i)
  %i.cs = icmp ne i64 %i.cq, 171
  call void @llvm.assume(i1 %i.cs)
  %i.ct = add nsw i64 %i.cq, -169
  %i.cu = icmp samesign ugt i64 %i.cq, 168
  %i.cv = select i1 %i.cu, i64 %i.ct, i64 2
  switch i64 %i.cv, label %bb.an [
    i64 0, label %bb.ao
    i64 1, label %bb.ap
    i64 2, label %bb.bb
    i64 3, label %bb.aq
    i64 4, label %bb.ar
  ]

bb.an:                                            ; preds = %bb.am
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.cw = add i32 %.sroa.42.sroa.0.0.extract.trunc.i, 1
  br label %bb.ba

bb.ap:                                            ; preds = %bb.am
  %i.cx = inttoptr i64 %.sroa.13.0.copyload.i to ptr
  br label %_ZN18nickel_lang_parser5error10ParseError12from_lalrpop17h87cd0103df148363E.exit.i.i

bb.aq:                                            ; preds = %bb.am
  %i.cy = trunc i64 %.sroa.22.0.copyload.i to i32
  %i.cz = trunc i64 %.sroa.24.0.copyload.i to i32
end_hunk_2
begin_hunk_3_@_ZN17nickel_lang_utils12test_program18parse_bytecode_ast17hec7848d7263b7932E:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.es = icmp eq i32 %.pr, 3
  br i1 %i.es, label %bb.bp, label %bb.bv

bb.bp:                                            ; preds = %"_ZN70_$LT$P$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$T$GT$$GT$12parse_strict17hfe3234274320d09aE.exit.thread", %"_ZN70_$LT$P$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$T$GT$$GT$12parse_strict17hfe3234274320d09aE.exit"
  %i.et = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.et, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.not.i = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i, label %bb.bq, label %bb.br, !prof !21

bb.bq:                                            ; preds = %bb.bp
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @382) #41
          to label %bb.bt unwind label %bb.bs, !noalias !16586

bb.br:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  invoke fastcc void @"_ZN76_$LT$nickel_lang_parser..error..ParseError$u20$as$u20$core..clone..Clone$GT$5clone17h3e614a7f7db1bc7cE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.4.0.copyload)
          to label %.lr.ph.i.i.i.i.i unwind label %bb.bs, !noalias !16587

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.eu = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..error..ParseErrors$GT$17h21de925b098f8681E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(24) %i.et) #43
  br label %common.resume

bb.bt:                                            ; preds = %bb.bq
  unreachable

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.br, %.lr.ph.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i = phi i64 [ %i.ew, %.lr.ph.i.i.i.i.i ], [ 0, %bb.br ] ; 2 uses
  %i.ev = getelementptr inbounds nuw [72 x i8], ptr %.sroa.4.0.copyload, i64 %.sroa.0.07.i.i.i.i.i
  %i.ew = add nuw i64 %.sroa.0.07.i.i.i.i.i, 1    ; 2 uses
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_parser..error..ParseError$GT$17h0904c2fb103823bcE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.ev), !noalias !16588
  %i.ex = icmp eq i64 %i.ew, %.sroa.5.0.copyload
  br i1 %i.ex, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h060455cd0877ee1eE.exit.i.i.i21", label %.lr.ph.i.i.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h060455cd0877ee1eE.exit.i.i.i21": ; preds = %.lr.ph.i.i.i.i.i
  %i.ey = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %i.ey, label %"_ZN17nickel_lang_utils12test_program18parse_bytecode_ast28_$u7b$$u7b$closure$u7d$$u7d$17h2549f78b7a5c95b7E.exit", label %bb.bu

bb.bu:                                            ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h060455cd0877ee1eE.exit.i.i.i21"
  %i.ez = mul nuw i64 %.sroa.0.0.copyload, 72
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.ez, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !16588
  br label %"_ZN17nickel_lang_utils12test_program18parse_bytecode_ast28_$u7b$$u7b$closure$u7d$$u7d$17h2549f78b7a5c95b7E.exit"

"_ZN17nickel_lang_utils12test_program18parse_bytecode_ast28_$u7b$$u7b$closure$u7d$$u7d$17h2549f78b7a5c95b7E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h060455cd0877ee1eE.exit.i.i.i21", %bb.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.q, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bw

bb.bv:                                            ; preds = %"_ZN70_$LT$P$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$T$GT$$GT$12parse_strict17hfe3234274320d09aE.exit"
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.fa, ptr noundef nonnull align 8 dereferenceable(48) %i.s, i64 48, i1 false)
  store i32 25, ptr %0, align 8
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %"_ZN17nickel_lang_utils12test_program18parse_bytecode_ast28_$u7b$$u7b$closure$u7d$$u7d$17h2549f78b7a5c95b7E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  ret void

bb.bx:                                            ; preds = %bb.f
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN17nickel_lang_utils12test_program25program_from_test_fixture17hf4eb0e2c87da3f3dE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(792) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [176 x i8], align 8               ; 7 uses
  %i.e = alloca [176 x i8], align 8               ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [632 x i8], align 8               ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %.sroa.8354 = alloca [592 x i8], align 8        ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 8 uses
  %i.k = alloca [96 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [32 x i8], align 8                ; 8 uses
  %i.o = alloca [48 x i8], align 8                ; 7 uses
  %i.p = alloca [632 x i8], align 8               ; 20 uses
  %i.q = alloca [96 x i8], align 8                ; 10 uses
  %i.r = alloca [24 x i8], align 8                ; 11 uses
  %i.s = alloca [24 x i8], align 8                ; 7 uses
  %i.t = alloca [48 x i8], align 8                ; 8 uses
  %i.u = alloca [48 x i8], align 8                ; 8 uses
  %i.v = alloca [32 x i8], align 8                ; 6 uses
  %i.w = alloca [264 x i8], align 8               ; 28 uses
  %.sroa.25.sroa.0 = alloca [592 x i8], align 8   ; 4 uses
  %.sroa.25.sroa.14 = alloca [24 x i8], align 8   ; 4 uses
  %.sroa.28 = alloca [24 x i8], align 8           ; 4 uses
  %i.x = alloca [16 x i8], align 8                ; 5 uses
  %i.y = alloca [24 x i8], align 8                ; 8 uses
  %i.z = alloca [16 x i8], align 8                ; 3 uses
  store ptr %1, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 %2, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  store ptr %i.z, ptr %i.x, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfcc9f1ba23c312c5E", ptr %.sroa.42.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !16815
  store ptr @384, ptr %i.u, align 8, !noalias !16816
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 1, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !16816
  %.sroa.5.0..sroa_idx101 = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.x, ptr %.sroa.5.0..sroa_idx101, align 8, !noalias !16816
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 1, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !16816
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 8, !noalias !16816
  call void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.y, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !16815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.25.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.28)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  store i64 0, ptr %i.w, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.46.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 3 uses
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 3 uses
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.59.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 3 uses
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.529.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.411.0..sroa_idx, align 8
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 96 ; 3 uses
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 104 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.512.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 112 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 120 ; 3 uses
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 128 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.515.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 136 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 168 ; 6 uses
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 144 ; 4 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 152 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.518.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.422.0..sroa_idx, align 8
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 160 ; 3 uses
  store i64 0, ptr %.sroa.523.0..sroa_idx, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.ai, align 8, !alias.scope !16817, !noalias !16818, !nonnull !15, !noundef !15
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val32 = load i64, ptr %i.aj, align 8, !alias.scope !16817, !noalias !16818, !noundef !15 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16819)
  call void @llvm.experimental.noalias.scope.decl(metadata !16820)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !16821
  %i.ak = icmp slt i64 %.val32, 0
  br i1 %i.ak, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !24

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.al = icmp eq i64 %.val32, 0
  br i1 %i.al, label %bb.z, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !16822
  %i.am = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val32, i64 noundef range(i64 1, 9) 1) #40, !noalias !16822 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.c, label %bb.z

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %.val32, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @847) #41
          to label %.noexc.i unwind label %bb.d, !noalias !16821

.noexc.i:                                         ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %..body.i_crit_edge, %bb.d
  %.val1.i90 = phi i64 [ 0, %bb.d ], [ %.val1.i90.pre, %..body.i_crit_edge ] ; 4 uses
  %.val.i89 = phi ptr [ inttoptr (i64 8 to ptr), %bb.d ], [ %.val.i89.pre, %..body.i_crit_edge ] ; 4 uses
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ao, %bb.d ], [ %i.cj, %..body.i_crit_edge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16823)
  call void @llvm.experimental.noalias.scope.decl(metadata !16824)
  %i.ap = icmp eq i64 %.val1.i90, 0
  br i1 %i.ap, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731cb1ff9a52bde9E.exit.i96", label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.aq = icmp eq i64 %i.as, %.val1.i90
  br i1 %i.aq, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731cb1ff9a52bde9E.exit.i96", label %.lr.ph

.lr.ph:                                           ; preds = %.body.i, %bb.e
  %.sroa.0.0.i.i.i91492 = phi i64 [ %i.as, %bb.e ], [ 0, %.body.i ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %.val.i89, i64 %.sroa.0.0.i.i.i91492
  %i.as = add i64 %.sroa.0.0.i.i.i91492, 1        ; 4 uses
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderInput$GT$17h3c2ae2bbbf48e324E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.ar)
          to label %bb.e unwind label %bb.g, !noalias !16825

bb.f:                                             ; preds = %.lr.ph494
  %i.at = add i64 %.sroa.0.1.i.i.i92493, 1        ; 2 uses
  %i.au = icmp eq i64 %i.at, %.val1.i90
  br i1 %i.au, label %.body.i93, label %.lr.ph494

bb.g:                                             ; preds = %.lr.ph
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.aw = icmp eq i64 %i.as, %.val1.i90
  br i1 %i.aw, label %.body.i93, label %.lr.ph494

.lr.ph494:                                        ; preds = %bb.g, %bb.f
  %.sroa.0.1.i.i.i92493 = phi i64 [ %i.at, %bb.f ], [ %i.as, %bb.g ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [48 x i8], ptr %.val.i89, i64 %.sroa.0.1.i.i.i92493
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderInput$GT$17h3c2ae2bbbf48e324E"(ptr noalias noundef readonly align 8 dereferenceable(48) %i.ax) #43
          to label %bb.f unwind label %bb.h, !noalias !16825

bb.h:                                             ; preds = %.lr.ph494
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !16826
  unreachable

.body.i93:                                        ; preds = %bb.f, %bb.g
  %.val4.i94 = load i64, ptr %i.w, align 8, !range !39, !alias.scope !16824, !noalias !16819, !noundef !15 ; 2 uses
  %i.az = icmp eq i64 %.val4.i94, 0
  br i1 %i.az, label %.body98, label %bb.i

bb.i:                                             ; preds = %.body.i93
  %i.ba = mul nuw i64 %.val4.i94, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i89, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !16825
  br label %.body98

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731cb1ff9a52bde9E.exit.i96": ; preds = %bb.e, %.body.i
  %.val2.i97 = load i64, ptr %i.w, align 8, !range !39, !alias.scope !16824, !noalias !16819, !noundef !15 ; 2 uses
  %i.bb = icmp eq i64 %.val2.i97, 0
  br i1 %i.bb, label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17h41a63e2058bc3a37E.exit100", label %bb.j

bb.j:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731cb1ff9a52bde9E.exit.i96"
  %i.bc = mul nuw i64 %.val2.i97, 48
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i89, i64 noundef %i.bc, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !16825
  br label %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17h41a63e2058bc3a37E.exit100"

.body98:                                          ; preds = %.body.i93, %bb.i
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..FieldOverride$GT$$GT$17h741af551c2ac36d1E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ab) #43, !noalias !16819
  %.val13.i = load i64, ptr %i.ac, align 8, !alias.scope !16823, !noalias !16819 ; 2 uses
  %i.bd = icmp eq i64 %.val13.i, 0
  br i1 %i.bd, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit.i42", label %bb.k

"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17h41a63e2058bc3a37E.exit100": ; preds = %bb.j, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731cb1ff9a52bde9E.exit.i96"
  call fastcc void @"_ZN4core3ptr84drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..FieldOverride$GT$$GT$17h741af551c2ac36d1E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ab), !noalias !16819
  %.val.i = load i64, ptr %i.ac, align 8, !alias.scope !16823, !noalias !16819 ; 2 uses
  %i.be = icmp eq i64 %.val.i, 0
  br i1 %i.be, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit15.i", label %bb.l

bb.k:                                             ; preds = %.body98
  %.val14.i = load ptr, ptr %.sroa.428.0..sroa_idx, align 8, !alias.scope !16823, !noalias !16819, !nonnull !15, !noundef !15
  %i.bf = mul nuw i64 %.val13.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val14.i, i64 noundef %i.bf, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !16827
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit.i42"

bb.l:                                             ; preds = %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17h41a63e2058bc3a37E.exit100"
  %.val12.i = load ptr, ptr %.sroa.428.0..sroa_idx, align 8, !alias.scope !16823, !noalias !16819, !nonnull !15, !noundef !15
  %i.bg = mul nuw i64 %.val.i, 20
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val12.i, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 4) #40, !noalias !16827
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit15.i"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit.i42": ; preds = %bb.k, %.body98
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..ProgramContract$GT$$GT$17hb360901aae007337E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ad) #43
          to label %bb.m unwind label %bb.y, !noalias !16819

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit15.i": ; preds = %bb.l, %"_ZN4core3ptr83drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17h41a63e2058bc3a37E.exit100"
  invoke fastcc void @"_ZN4core3ptr86drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_core..program..ProgramContract$GT$$GT$17hb360901aae007337E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ad)
          to label %bb.o unwind label %bb.n, !noalias !16819

bb.m:                                             ; preds = %bb.n, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit.i42"
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h29e40ea570e3cd93E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ae) #43, !noalias !16819
  call fastcc void @"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17hfb610dbed5fdcb92E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.af) #43, !noalias !16819
  %i.bh = load ptr, ptr %i.ag, align 8, !alias.scope !16828, !noalias !16819, !noundef !15
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit.i", label %bb.t

bb.n:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit15.i"
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %bb.m

bb.o:                                             ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit15.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !16829), !noalias !16819
  %.val.i.i45 = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !alias.scope !16830, !noalias !16819, !nonnull !15, !noundef !15 ; 2 uses
  %.val1.i.i46 = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !16830, !noalias !16819, !noundef !15 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16831), !noalias !16819
  %i.bk = icmp eq i64 %.val1.i.i46, 0
  br i1 %i.bk, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80998740c06cbd9fE.exit.i.i52", label %.lr.ph.i.i.i.i47

.lr.ph.i.i.i.i47:                                 ; preds = %bb.o, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3cc0ca0f40a9fdcbE.exit.i.i.i.i51"
  %.sroa.0.011.i.i.i.i48 = phi i64 [ %i.bm, %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3cc0ca0f40a9fdcbE.exit.i.i.i.i51" ], [ 0, %bb.o ] ; 2 uses
  %i.bl = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i45, i64 %.sroa.0.011.i.i.i.i48 ; 2 uses
  %i.bm = add nuw i64 %.sroa.0.011.i.i.i.i48, 1   ; 2 uses
  %.val8.i.i.i.i49 = load i64, ptr %i.bl, align 8, !range !39, !alias.scope !16832, !noalias !16833, !noundef !15 ; 2 uses
  %i.bn = icmp eq i64 %.val8.i.i.i.i49, 0
  br i1 %i.bn, label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3cc0ca0f40a9fdcbE.exit.i.i.i.i51", label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i.i47
  %i.bo = getelementptr i8, ptr %i.bl, i64 8
  %.val9.i.i.i.i50 = load ptr, ptr %i.bo, align 8, !alias.scope !16831, !noalias !16833, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i50, i64 noundef %.val8.i.i.i.i49, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !16834
  br label %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3cc0ca0f40a9fdcbE.exit.i.i.i.i51"

"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3cc0ca0f40a9fdcbE.exit.i.i.i.i51": ; preds = %bb.p, %.lr.ph.i.i.i.i47
  %i.bp = icmp eq i64 %i.bm, %.val1.i.i46
  br i1 %i.bp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80998740c06cbd9fE.exit.i.i52", label %.lr.ph.i.i.i.i47

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80998740c06cbd9fE.exit.i.i52": ; preds = %"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h3cc0ca0f40a9fdcbE.exit.i.i.i.i51", %bb.o
  %.val2.i.i53 = load i64, ptr %i.ae, align 8, !range !39, !alias.scope !16830, !noalias !16819, !noundef !15 ; 2 uses
  %i.bq = icmp eq i64 %.val2.i.i53, 0
  br i1 %i.bq, label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h29e40ea570e3cd93E.exit.i54", label %bb.q

bb.q:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80998740c06cbd9fE.exit.i.i52"
  %i.br = mul nuw i64 %.val2.i.i53, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i45, i64 noundef %i.br, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !16833
  br label %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h29e40ea570e3cd93E.exit.i54"

"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h29e40ea570e3cd93E.exit.i54": ; preds = %bb.q, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h80998740c06cbd9fE.exit.i.i52"
  call void @llvm.experimental.noalias.scope.decl(metadata !16835), !noalias !16819
  %.val.i16.i = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !16836, !noalias !16819, !nonnull !15, !noundef !15 ; 2 uses
  %.val1.i17.i = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !16836, !noalias !16819, !noundef !15 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !16837), !noalias !16819
  %i.bs = icmp eq i64 %.val1.i17.i, 0
  br i1 %i.bs, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6d71c3ef4ee1a775E.exit.i.i56", label %.lr.ph.i.i.i18.i

.lr.ph.i.i.i18.i:                                 ; preds = %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h29e40ea570e3cd93E.exit.i54", %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h86ec88567e16a003E.exit.i.i.i.i55"
  %.sroa.0.011.i.i.i19.i = phi i64 [ %i.bu, %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h86ec88567e16a003E.exit.i.i.i.i55" ], [ 0, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h29e40ea570e3cd93E.exit.i54" ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %.val.i16.i, i64 %.sroa.0.011.i.i.i19.i ; 2 uses
  %i.bu = add nuw i64 %.sroa.0.011.i.i.i19.i, 1   ; 2 uses
  %.val8.i.i.i20.i = load i64, ptr %i.bt, align 8, !range !39, !alias.scope !16838, !noalias !16839, !noundef !15 ; 2 uses
  %i.bv = icmp eq i64 %.val8.i.i.i20.i, 0
  br i1 %i.bv, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h86ec88567e16a003E.exit.i.i.i.i55", label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i.i18.i
  %i.bw = getelementptr i8, ptr %i.bt, i64 8
  %.val9.i.i.i21.i = load ptr, ptr %i.bw, align 8, !alias.scope !16837, !noalias !16839, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i21.i, i64 noundef %.val8.i.i.i20.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !16840
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h86ec88567e16a003E.exit.i.i.i.i55"

"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h86ec88567e16a003E.exit.i.i.i.i55": ; preds = %bb.r, %.lr.ph.i.i.i18.i
  %i.bx = icmp eq i64 %i.bu, %.val1.i17.i
  br i1 %i.bx, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6d71c3ef4ee1a775E.exit.i.i56", label %.lr.ph.i.i.i18.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6d71c3ef4ee1a775E.exit.i.i56": ; preds = %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17h86ec88567e16a003E.exit.i.i.i.i55", %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h29e40ea570e3cd93E.exit.i54"
  %.val2.i22.i = load i64, ptr %i.af, align 8, !range !39, !alias.scope !16836, !noalias !16819, !noundef !15 ; 2 uses
  %i.by = icmp eq i64 %.val2.i22.i, 0
  br i1 %i.by, label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17hfb610dbed5fdcb92E.exit.i", label %bb.s

bb.s:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6d71c3ef4ee1a775E.exit.i.i56"
  %i.bz = mul nuw i64 %.val2.i22.i, 24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i16.i, i64 noundef %i.bz, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !16839
  br label %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17hfb610dbed5fdcb92E.exit.i"

bb.t:                                             ; preds = %bb.m
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..package..PackageMap$GT$17h95f7602b514d04f6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.ag), !noalias !16819
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit.i"

"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17hfb610dbed5fdcb92E.exit.i": ; preds = %bb.s, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6d71c3ef4ee1a775E.exit.i.i56"
  %i.ca = load ptr, ptr %i.ag, align 8, !alias.scope !16841, !noalias !16819, !noundef !15
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit23.i", label %bb.u

bb.u:                                             ; preds = %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17hfb610dbed5fdcb92E.exit.i"
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..package..PackageMap$GT$17h95f7602b514d04f6E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(96) %i.ag), !noalias !16819
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit23.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit.i": ; preds = %bb.t, %bb.m
  invoke fastcc void @"_ZN4core3ptr134drop_in_place$LT$alloc..vec..Vec$LT$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$GT$$GT$17h84ac5ad3036d65a3E"(ptr noalias noundef readonly align 8 dereferenceable(24) %i.ah) #43
          to label %.body59 unwind label %bb.y, !noalias !16819

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit23.i": ; preds = %bb.u, %"_ZN4core3ptr62drop_in_place$LT$alloc..vec..Vec$LT$std..path..PathBuf$GT$$GT$17hfb610dbed5fdcb92E.exit.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !16842), !noalias !16819
  %.val.i24.i = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !alias.scope !16843, !noalias !16819, !nonnull !15, !noundef !15 ; 3 uses
  %.val1.i25.i = load i64, ptr %.sroa.523.0..sroa_idx, align 8, !alias.scope !16843, !noalias !16819, !noundef !15
  invoke fastcc void @"_ZN4core3ptr121drop_in_place$LT$$u5b$$LP$nickel_lang_parser..identifier..Ident$C$nickel_lang_core..eval..value..NickelValue$RP$$u5d$$GT$17hc44768426496af10E"(ptr noalias noundef nonnull readonly align 8 %.val.i24.i, i64 noundef %.val1.i25.i)
          to label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4dbd4f3c5ca7780E.exit.i.i57" unwind label %bb.v, !noalias !16844

bb.v:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit23.i"
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %.val4.i.i = load i64, ptr %i.ah, align 8, !range !39, !alias.scope !16843, !noalias !16819, !noundef !15 ; 2 uses
  %i.cd = icmp eq i64 %.val4.i.i, 0
  br i1 %i.cd, label %.body59, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ce = shl nuw i64 %.val4.i.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24.i, i64 noundef %i.ce, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !16844
  br label %.body59

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4dbd4f3c5ca7780E.exit.i.i57": ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit23.i"
  %.val2.i26.i = load i64, ptr %i.ah, align 8, !range !39, !alias.scope !16843, !noalias !16819, !noundef !15 ; 2 uses
  %i.cf = icmp eq i64 %.val2.i26.i, 0
  br i1 %i.cf, label %.body, label %bb.x

bb.x:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4dbd4f3c5ca7780E.exit.i.i57"
  %i.cg = shl nuw i64 %.val2.i26.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24.i, i64 noundef %i.cg, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !16844
  br label %.body

bb.y:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit.i", %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit.i42"
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !16827
  unreachable

bb.z:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, %bb.b
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.am, %bb.b ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val, i64 %.val32, i1 false), !noalias !16845
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.val32, ptr %i.ci, align 8, !noalias !16821
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !16821
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 %.val32, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !16821
  store i64 -9223372036854775808, ptr %i.t, align 8, !noalias !16821
  call void @llvm.experimental.noalias.scope.decl(metadata !16846)
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h956b4f905ebe7930E"(ptr noalias noundef nonnull align 8 dereferenceable(264) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @368)
          to label %bb.ae unwind label %bb.aa, !noalias !16847

bb.aa:                                            ; preds = %bb.z
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderInput$GT$17h3c2ae2bbbf48e324E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(48) %i.t) #43
          to label %..body.i_crit_edge unwind label %bb.ab, !noalias !16848

..body.i_crit_edge:                               ; preds = %bb.aa
  %.val.i89.pre = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !16824, !noalias !16819
  %.val1.i90.pre = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !16824, !noalias !16819
  br label %.body.i

bb.ab:                                            ; preds = %bb.aa
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !16849
  unreachable

.body59:                                          ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_core..package..PackageMap$GT$$GT$17h87921b11e42f99abE.exit.i", %bb.v, %bb.w
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !16821
  unreachable

bb.ac:                                            ; preds = %bb.dq
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.do, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731cb1ff9a52bde9E.exit.i", %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit.i", %bb.ac, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4dbd4f3c5ca7780E.exit.i.i57", %bb.x
  %eh.lpad-body = phi { ptr, i32 } [ %eh.lpad-body.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf4dbd4f3c5ca7780E.exit.i.i57" ], [ %eh.lpad-body.i, %bb.x ], [ %i.cl, %bb.ac ], [ %.pn151.i, %bb.do ], [ %.pn151.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h731cb1ff9a52bde9E.exit.i" ], [ %.pn151.i, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_core..program..FieldPath$GT$17h71acc661da5b75b9E.exit.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !16850)
  call void @llvm.experimental.noalias.scope.decl(metadata !16851)
  %.val.i.i = load i64, ptr %i.y, align 8, !range !39, !alias.scope !16852, !noundef !15 ; 2 uses
  %i.cm = icmp eq i64 %.val.i.i, 0
  br i1 %i.cm, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit", label %bb.ad

bb.ad:                                            ; preds = %.body
  %.val1.i.i = load ptr, ptr %i.ai, align 8, !alias.scope !16852, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !16852
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.ae:                                            ; preds = %bb.z
  %i.cn = load ptr, ptr %.sroa.46.0..sroa_idx, align 8, !alias.scope !16853, !noalias !16847, !nonnull !15, !noundef !15 ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cn, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.t, i64 48, i1 false), !noalias !16848
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !16853, !noalias !16847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !16821
  %.sroa.0136.0.copyload = load i64, ptr %i.w, align 8, !alias.scope !16821 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !16854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  %.sroa.7140.sroa.0.0.copyload = load i64, ptr %i.ac, align 8, !alias.scope !16821 ; 5 uses
  %.sroa.7140.sroa.4.0.copyload = load ptr, ptr %.sroa.428.0..sroa_idx, align 8, !alias.scope !16821 ; 5 uses
  %.sroa.7140.sroa.5.0.copyload = load i64, ptr %.sroa.529.0..sroa_idx, align 8, !alias.scope !16821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !16854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  %.sroa.9142.sroa.0.0.copyload = load i64, ptr %i.ae, align 8, !alias.scope !16821 ; 10 uses
  %.sroa.9142.sroa.4.0.copyload = load ptr, ptr %.sroa.414.0..sroa_idx, align 8, !alias.scope !16821 ; 13 uses
  %.sroa.9142.sroa.5.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8, !alias.scope !16821 ; 7 uses
  %.sroa.10143.sroa.0.0.copyload = load i64, ptr %i.af, align 8, !alias.scope !16821 ; 7 uses
  %.sroa.10143.sroa.4.0.copyload = load ptr, ptr %.sroa.417.0..sroa_idx, align 8, !alias.scope !16821 ; 12 uses
  %.sroa.10143.sroa.5.0.copyload = load i64, ptr %.sroa.518.0..sroa_idx, align 8, !alias.scope !16821 ; 9 uses
  %.sroa.11.sroa.0.0.copyload = load i64, ptr %i.ah, align 8, !alias.scope !16821 ; 8 uses
  %.sroa.11.sroa.4.0.copyload = load ptr, ptr %.sroa.422.0..sroa_idx, align 8, !alias.scope !16821 ; 8 uses
  %.sroa.11.sroa.5.0.copyload = load i64, ptr %.sroa.523.0..sroa_idx, align 8, !alias.scope !16821 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !16854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.q, ptr noundef nonnull align 8 dereferenceable(96) %i.ag, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !16854
  invoke void @_ZN16nickel_lang_core5cache8CacheHub3new17hdc05759c239edb18E(ptr noalias noundef nonnull sret([632 x i8]) align 8 captures(address) dereferenceable(632) %i.p)
          to label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4560c10839652e36E.exit.i" unwind label %bb.af, !noalias !16854

bb.af:                                            ; preds = %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h35a846c4bb4de8a9E.exit231.i", %bb.ae
  %.sroa.055.0.i = phi i1 [ false, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h35a846c4bb4de8a9E.exit231.i" ], [ true, %bb.ae ]
  %.sroa.051.0.i = phi i8 [ %.sroa.051.3.i, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h35a846c4bb4de8a9E.exit231.i" ], [ 1, %bb.ae ] ; 2 uses
  %.sroa.049.0.i = phi i8 [ %.sroa.049.4.i, %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h35a846c4bb4de8a9E.exit231.i" ], [ 1, %bb.ae ]
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.thread359.i:                                     ; preds = %bb.as
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4560c10839652e36E.exit.i": ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !16854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !16854
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 48 ; 2 uses
  store ptr %i.cn, ptr %i.n, align 8, !alias.scope !16855, !noalias !16856
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.0136.0.copyload, ptr %i.cr, align 8, !alias.scope !16855, !noalias !16856
  %i.cs = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.cq, ptr %i.ct, align 8, !alias.scope !16855, !noalias !16856
  call void @llvm.experimental.noalias.scope.decl(metadata !16857)
  store ptr %i.cq, ptr %i.cs, align 8, !alias.scope !16857, !noalias !16858
  %.sroa.0267.0.copyload268.i = load i64, ptr %i.cn, align 8, !noalias !16859 ; 2 uses
  %.not131.i = icmp eq i64 %.sroa.0267.0.copyload268.i, -9223372036854775807
  br i1 %.not131.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4560c10839652e36E.exit.thread.i", label %bb.ah, !prof !30

bb.ag:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4560c10839652e36E.exit.thread.i"
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17h50233d50c2f55f55E"(ptr noalias noundef align 8 dereferenceable(32) %i.n) #43
          to label %.thread.i unwind label %bb.ao, !noalias !16854

bb.ah:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4560c10839652e36E.exit.i"
  %.sroa.6.0..sroa_idx269.i = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i64 %.sroa.0267.0.copyload268.i, ptr %i.o, align 8, !noalias !16854
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx269.i, i64 40, i1 false), !noalias !16854
  invoke fastcc void @"_ZN4core3ptr99drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_core..program..BuilderInput$GT$$GT$17h50233d50c2f55f55E"(ptr noalias noundef align 8 dereferenceable(32) %i.n)
          to label %bb.ak unwind label %bb.an, !noalias !16854

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4560c10839652e36E.exit.thread.i": ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4560c10839652e36E.exit.i"
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @365, i64 noundef 8, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @366) #41
          to label %bb.ai unwind label %bb.ag, !noalias !16854

bb.ai:                                            ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h4560c10839652e36E.exit.thread.i"
  unreachable

bb.aj:                                            ; preds = %bb.ak
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.ak:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !16854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !16854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !16854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.o, i64 48, i1 false), !noalias !16854
  invoke void @_ZN16nickel_lang_core7program21register_single_input17hf4dd6af48e466d2dE(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(632) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.al unwind label %bb.aj, !noalias !16854

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !16854
  %i.cw = load i64, ptr %i.m, align 8, !range !71, !noalias !16854, !noundef !15 ; 2 uses
  %.not132.i = icmp eq i64 %i.cw, -9223372036854775806
  %i.cx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cy = load i32, ptr %i.cx, align 8, !noalias !16854 ; 2 uses
  br i1 %.not132.i, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.sroa.668.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.sroa.16.sroa.9.4.copyload = load i32, ptr %.sroa.668.0..sroa_idx.i, align 4, !noalias !16860
  %.sroa.21.20..sroa.668.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.21.20.copyload = load i64, ptr %.sroa.21.20..sroa.668.0..sroa_idx.i.sroa_idx, align 8, !noalias !16860
  %.sroa.24.20..sroa.668.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.24.20.copyload = load ptr, ptr %.sroa.24.20..sroa.668.0..sroa_idx.i.sroa_idx, align 8, !noalias !16860
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16854
  %i.cz = zext i32 %.sroa.16.sroa.9.4.copyload to i64
  br label %"_ZN4core3ptr86drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$std..ffi..os_str..OsString$GT$$GT$17h35a846c4bb4de8a9E.exit231.i"

bb.an:                                            ; preds = %bb.ah
  %i.da = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr60drop_in_place$LT$nickel_lang_core..program..BuilderInput$GT$17h3c2ae2bbbf48e324E"(ptr noalias noundef align 8 dereferenceable(48) %i.o) #43
          to label %.thread.i unwind label %bb.ao, !noalias !16854

bb.ao:                                            ; preds = %.thread.i, %"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..os_str..OsString$GT$$GT$17h29e40ea570e3cd93E.exit", %bb.an, %bb.ag
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body64

.body64:                                          ; preds = %.body.i63, %bb.dn, %bb.de, %bb.df, %bb.ao
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42, !noalias !16854
  unreachable

bb.ap:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !16854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !16854
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10143.sroa.4.0.copyload) ]
  %i.dc = icmp ult i64 %.sroa.10143.sroa.5.0.copyload, 384307168202282326
  call void @llvm.assume(i1 %i.dc)
  %.idx428.i = mul nuw nsw i64 %.sroa.10143.sroa.5.0.copyload, 24
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.10143.sroa.4.0.copyload, i64 %.idx428.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !16854
  store ptr %.sroa.10143.sroa.4.0.copyload, ptr %i.i, align 8, !noalias !16854
  %.sroa.4289.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %.sroa.10143.sroa.4.0.copyload, ptr %.sroa.4289.0..sroa_idx.i, align 8, !noalias !16854
  %.sroa.5290.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 %.sroa.10143.sroa.0.0.copyload, ptr %.sroa.5290.0..sroa_idx.i, align 8, !noalias !16854
  %.sroa.6291.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.dd, ptr %.sroa.6291.0..sroa_idx.i, align 8, !noalias !16854
  call void @llvm.experimental.noalias.scope.decl(metadata !16861)
  %i.de = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !16862, !noalias !16863, !noundef !15 ; 4 uses
  %i.dg = load i64, ptr %i.p, align 8, !range !39, !alias.scope !16862, !noalias !16863, !noundef !15
  %i.dh = sub i64 %i.dg, %i.df
  %i.di = icmp ugt i64 %.sroa.10143.sroa.5.0.copyload, %i.dh
  br i1 %i.di, label %bb.aq, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.i", !prof !21

bb.aq:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hb9b8d757c4430a9fE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, i64 noundef %i.df, i64 noundef %.sroa.10143.sroa.5.0.copyload, i64 noundef 8, i64 noundef 24)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.thread.i" unwind label %.thread345.i, !noalias !16863

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.thread.i": ; preds = %bb.aq
  %.pre.i.i = load i64, ptr %i.de, align 8, !alias.scope !16861, !noalias !16863
  %i.dj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8, !alias.scope !16861, !noalias !16863, !nonnull !15, !noundef !15
  br label %.lr.ph.i.i.i.i.preheader.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.i": ; preds = %bb.ap
  %i.dl = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !16861, !noalias !16863, !nonnull !15, !noundef !15
  %.not7.i.i.i.i.i = icmp eq i64 %.sroa.10143.sroa.5.0.copyload, 0
  br i1 %.not7.i.i.i.i.i, label %"_ZN4core3ptr49drop_in_place$LT$$u5b$std..path..PathBuf$u5d$$GT$17h473f0c61672ba7fdE.exit.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.thread.i"
  %i.dn = phi ptr [ %i.dk, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.thread.i" ], [ %i.dm, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.i" ]
  %i.do = phi i64 [ %.pre.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.thread.i" ], [ %i.df, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hf8e61bfdbba0d553E.exit.i.i" ]
end_hunk_3
begin_hunk_4_@"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h177268169a0e2b8dE":bb.a
  unreachable

_ZN4core3ops8function6FnOnce9call_once17ha1618273c7b8c570E.exit: ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !noalias !18831, !nonnull !15, !noundef !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18831
  call void %i.f(ptr noalias noundef nonnull sret([128 x i8]) align 8 captures(address) dereferenceable(128) %i.a), !noalias !18831, !inline_history !18828
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.c, ptr noundef nonnull align 8 dereferenceable(128) %i.a, i64 128, i1 false), !noalias !18831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !18831
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h1b336c9225e5c37aE"(ptr nofree noundef readonly captures(none) %0, ptr noalias noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18856)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8, !noalias !18856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18857)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18858)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18859)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !18858, !noalias !18860, !noundef !15
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %"_ZN16nickel_lang_core4eval5cache4lazy5Thunk8saturate28_$u7b$$u7b$closure$u7d$$u7d$17hd178ba5f50854138E.exit.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !18858, !noalias !18860, !noundef !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.val5.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !18858, !noalias !18860, !noundef !15
  %i.i = tail call fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h574b63fb3d3dc548E(i64 %.val.i.i.i, i64 %.val5.i.i.i, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %1), !noalias !18861 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18863)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18864)
  %i.j = lshr i64 %i.i, 57
  %i.k = trunc nuw nsw i64 %i.j to i8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !18865, !noalias !18866, !noundef !15 ; 2 uses
  %i.n = load ptr, ptr %i.f, align 8, !alias.scope !18865, !noalias !18866, !nonnull !15, !noundef !15 ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i.i.i = insertelement <16 x i8> poison, i8 %i.k, i64 0
  %.sroa.0.15.vec.insert.i.i.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i.i.i.i = load i32, ptr %1, align 4, !alias.scope !18867, !noalias !18868
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ae, %bb.e ]
  %.pn.i.i.i.i = phi i64 [ %i.i, %bb.b ], [ %i.af, %bb.e ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i.i = load <16 x i8>, ptr %i.o, align 1, !noalias !18869 ; 2 uses
  %i.p = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, %.sroa.0.15.vec.insert.i.i.i.i.i
  %i.q = bitcast <16 x i1> %i.p to i16            ; 2 uses
  %.not.i.not32.i.i.i.i = icmp eq i16 %i.q, 0
  br i1 %.not.i.not32.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.d
  %.sroa.06.0.i33.i.i.i.i = phi i16 [ %i.ad, %bb.d ], [ %i.q, %bb.c ] ; 3 uses
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = add i64 %.sroa.01.0.i.i.i.i.i, %i.s
  %i.u = and i64 %i.t, %i.m
  %i.v = sub nsw i64 0, %i.u
  %i.w = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 -4
  %.val3.i.i.i.i.i = load i32, ptr %i.x, align 4, !noalias !18870, !noundef !15
  %i.y = icmp eq i32 %.val.i.i.i.i.i.i, %.val3.i.i.i.i.i
  br i1 %i.y, label %"_ZN16nickel_lang_core4eval5cache4lazy5Thunk8saturate28_$u7b$$u7b$closure$u7d$$u7d$17hd178ba5f50854138E.exit.i", label %bb.d, !prof !17

._crit_edge.i.i.i.i:                              ; preds = %bb.d, %bb.c
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i.i, splat (i8 -1)
  %i.aa = bitcast <16 x i1> %i.z to i16
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.e, label %"_ZN16nickel_lang_core4eval5cache4lazy5Thunk8saturate28_$u7b$$u7b$closure$u7d$$u7d$17hd178ba5f50854138E.exit.i", !prof !21

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.ac = add i16 %.sroa.06.0.i33.i.i.i.i, -1
  %i.ad = and i16 %i.ac, %.sroa.06.0.i33.i.i.i.i  ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.ad, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add i64 %.sroa.9.0.i.i.i.i.i, 16        ; 2 uses
  %i.af = add i64 %.sroa.01.0.i.i.i.i.i, %i.ae
  br label %bb.c

"_ZN16nickel_lang_core4eval5cache4lazy5Thunk8saturate28_$u7b$$u7b$closure$u7d$$u7d$17hd178ba5f50854138E.exit.i": ; preds = %._crit_edge.i.i.i.i, %.lr.ph.i.i.i.i, %bb.a
  %.sroa.0.0.i.i.i = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i.i.i.i ], [ false, %._crit_edge.i.i.i.i ]
  %i.ag = load i64, ptr %i.b, align 8, !noalias !18871, !noundef !15
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.b, align 8, !noalias !18871
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.f, label %_ZN4core3ops8function6FnOnce9call_once17hbb107edf45976aa9E.exit

bb.f:                                             ; preds = %"_ZN16nickel_lang_core4eval5cache4lazy5Thunk8saturate28_$u7b$$u7b$closure$u7d$$u7d$17hd178ba5f50854138E.exit.i"
  call void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h264b9366d212b2acE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a), !noalias !18856
  br label %_ZN4core3ops8function6FnOnce9call_once17hbb107edf45976aa9E.exit

_ZN4core3ops8function6FnOnce9call_once17hbb107edf45976aa9E.exit: ; preds = %"_ZN16nickel_lang_core4eval5cache4lazy5Thunk8saturate28_$u7b$$u7b$closure$u7d$$u7d$17hd178ba5f50854138E.exit.i", %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h61ddc3630ae99c95E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !15, !noundef !15 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load i64, ptr %i.b, align 8, !noundef !15 ; 2 uses
  %i.c = icmp eq i64 %.val1, 0
  br i1 %i.c, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %i.e, %.lr.ph.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %.sroa.0.07.i.i
  %i.e = add nuw i64 %.sroa.0.07.i.i, 1           ; 2 uses
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(80) %i.d)
  %i.f = icmp eq i64 %i.e, %.val1
  br i1 %i.f, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit", label %.lr.ph.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit": ; preds = %.lr.ph.i.i, %bb.a
  %.val2 = load i64, ptr %0, align 8, !range !39, !noundef !15 ; 2 uses
  %i.g = icmp eq i64 %.val2, 0
  br i1 %i.g, label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h560da837cc47cfbeE.exit6", label %bb.b

bb.b:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit"
  %i.h = mul nuw i64 %.val2, 80
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 8) #40
  br label %"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h560da837cc47cfbeE.exit6"

"_ZN4core3ptr107drop_in_place$LT$alloc..raw_vec..RawVec$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$GT$$GT$17h560da837cc47cfbeE.exit6": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h31e56edc96f0f0acE.exit", %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr1010drop_in_place$LT$lalrpop_util..state_machine..Parser$LT$nickel_lang_parser..grammar..__parse__Term..__StateMachine$C$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h9e9aca7fe1c0717aE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18884)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18885)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18886)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i.i.i = load i64, ptr %i.a, align 8, !range !74, !alias.scope !18887, !noundef !15 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val1.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !18887 ; 2 uses
  %i.c = icmp ugt i64 %.val.i.i.i, -9223372036854775802
  br i1 %i.c, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..lexer..ModalLexer$GT$$GT$17hee536ea423be0b99E.exit.i.i.i", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ne i64 %.val.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.d)
  %or.cond.i.i.i.i.i.i.i.i = icmp slt i64 %.val.i.i.i, 1
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..lexer..ModalLexer$GT$$GT$17hee536ea423be0b99E.exit.i.i.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !18888
  br label %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..lexer..ModalLexer$GT$$GT$17hee536ea423be0b99E.exit.i.i.i"

"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..lexer..ModalLexer$GT$$GT$17hee536ea423be0b99E.exit.i.i.i": ; preds = %bb.c, %bb.b, %bb.a
  %.val2.i.i.i = load i64, ptr %0, align 8, !alias.scope !18887 ; 2 uses
  %i.e = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.e, label %"_ZN4core3ptr906drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5d7e72b836f89acbE.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..lexer..ModalLexer$GT$$GT$17hee536ea423be0b99E.exit.i.i.i"
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !18887, !nonnull !15, !noundef !15
  %i.g = shl nuw i64 %.val2.i.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !18887
  br label %"_ZN4core3ptr906drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5d7e72b836f89acbE.exit"

"_ZN4core3ptr906drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5d7e72b836f89acbE.exit": ; preds = %bb.d, %"_ZN4core3ptr86drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..lexer..ModalLexer$GT$$GT$17hee536ea423be0b99E.exit.i.i.i"
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val = load i64, ptr %i.h, align 8             ; 2 uses
  %i.i = icmp eq i64 %.val, 0
  br i1 %i.i, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h4517b63e800ae7f6E.exit5", label %bb.e

bb.e:                                             ; preds = %"_ZN4core3ptr906drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5d7e72b836f89acbE.exit"
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val2 = load ptr, ptr %i.j, align 8, !nonnull !15, !noundef !15
  %i.k = shl nuw i64 %.val, 1
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.k, i64 noundef range(i64 1, -9223372036854775807) 2) #40
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h4517b63e800ae7f6E.exit5"

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h4517b63e800ae7f6E.exit5": ; preds = %bb.e, %"_ZN4core3ptr906drop_in_place$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$nickel_lang_parser..grammar..__parse__Term..TermParser..parse$LT$core..result..Result$LT$$LP$usize$C$nickel_lang_parser..lexer..Token$C$usize$RP$$C$nickel_lang_parser..error..ParseOrLexError$GT$$C$core..iter..adapters..map..Map$LT$nickel_lang_parser..lexer..Lexer$C$$LT$nickel_lang_parser..grammar..__parse__Term..TermParser$u20$as$u20$nickel_lang_parser..ErrorTolerantParser$LT$nickel_lang_parser..ast..Ast$GT$$GT$..parse_tolerant$LT$nickel_lang_parser..lexer..Lexer$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5d7e72b836f89acbE.exit"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 144
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18889)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val.i = load ptr, ptr %i.m, align 8, !alias.scope !18889, !nonnull !15, !noundef !15 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val1.i = load i64, ptr %i.n, align 8, !alias.scope !18889, !noundef !15 ; 2 uses
  %i.o = icmp eq i64 %.val1.i, 0
  br i1 %i.o, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc6e445a8ba85791E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h4517b63e800ae7f6E.exit5", %.lr.ph.i.i.i
  %.sroa.0.07.i.i.i = phi i64 [ %i.q, %.lr.ph.i.i.i ], [ 0, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h4517b63e800ae7f6E.exit5" ] ; 2 uses
  %i.p = getelementptr inbounds nuw [304 x i8], ptr %.val.i, i64 %.sroa.0.07.i.i.i
  %i.q = add nuw i64 %.sroa.0.07.i.i.i, 1         ; 2 uses
  tail call fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hbb325c02e41945baE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(304) %i.p), !noalias !18889
  %i.r = icmp eq i64 %i.q, %.val1.i
  br i1 %i.r, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc6e445a8ba85791E.exit.i", label %.lr.ph.i.i.i

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc6e445a8ba85791E.exit.i": ; preds = %.lr.ph.i.i.i, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h4517b63e800ae7f6E.exit5"
  %.val2.i = load i64, ptr %i.l, align 8, !range !39, !alias.scope !18889, !noundef !15 ; 2 uses
  %i.s = icmp eq i64 %.val2.i, 0
  br i1 %i.s, label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$GT$$GT$17hbc629f09472be603E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc6e445a8ba85791E.exit.i"
  %i.t = mul nuw i64 %.val2.i, 304
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !18889
  br label %"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$GT$$GT$17hbc629f09472be603E.exit"

"_ZN4core3ptr120drop_in_place$LT$alloc..vec..Vec$LT$$LP$usize$C$nickel_lang_parser..grammar..__parse__Term..__Symbol$C$usize$RP$$GT$$GT$17hbc629f09472be603E.exit": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbc6e445a8ba85791E.exit.i", %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr102drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$$GT$17hdef1f1b348c03dd0E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18892)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18892, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !18892, !nonnull !15, !noundef !15
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..cache..lazy..Thunk$u5d$$GT$17h090ae1de404352e1E"(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.g)
          to label %bb.d unwind label %bb.b, !noalias !18892

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18892, !noundef !15 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr196drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$nickel_lang_core..eval..cache..lazy..Thunk$C$alloc..alloc..Global$GT$$GT$17h4e4819e5e96a664dE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !alias.scope !18892, !nonnull !15, !noundef !15
  %i.m = shl nuw i64 %i.j, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !18892
  br label %"_ZN4core3ptr196drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$nickel_lang_core..eval..cache..lazy..Thunk$C$alloc..alloc..Global$GT$$GT$17h4e4819e5e96a664dE.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !18892, !noundef !15 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6e40573860f02492E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !alias.scope !18892, !nonnull !15, !noundef !15
  %i.r = shl nuw i64 %i.o, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !18892
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6e40573860f02492E.exit"

"_ZN4core3ptr196drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$nickel_lang_core..eval..cache..lazy..Thunk$C$alloc..alloc..Global$GT$$GT$17h4e4819e5e96a664dE.exit.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.h

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6e40573860f02492E.exit": ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr102drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h4d67b0b1c055491bE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18895)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !18895, !nonnull !15, !noundef !15 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i = load ptr, ptr %i.c, align 8, !alias.scope !18895, !nonnull !15, !noundef !15
  %i.d = ptrtoint ptr %.val2.i to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  invoke fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17hb8e69da4985e54d3E"(ptr noalias noundef nonnull align 8 %i.b, i64 noundef %i.g)
          to label %bb.d unwind label %bb.b, !noalias !18895

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !18895, !noundef !15 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %"_ZN4core3ptr196drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$nickel_lang_core..eval..value..NickelValue$C$alloc..alloc..Global$GT$$GT$17h0ca96a41927d8cbcE.exit.i", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %0, align 8, !alias.scope !18895, !nonnull !15, !noundef !15
  %i.m = shl nuw i64 %i.j, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef %i.m, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !18895
  br label %"_ZN4core3ptr196drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$nickel_lang_core..eval..value..NickelValue$C$alloc..alloc..Global$GT$$GT$17h0ca96a41927d8cbcE.exit.i"

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !18895, !noundef !15 ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6281b75ab8e4843fE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr %0, align 8, !alias.scope !18895, !nonnull !15, !noundef !15
  %i.r = shl nuw i64 %i.o, 3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.q, i64 noundef %i.r, i64 noundef range(i64 1, -9223372036854775807) 8) #40, !noalias !18895
  br label %"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6281b75ab8e4843fE.exit"

"_ZN4core3ptr196drop_in_place$LT$$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$nickel_lang_core..eval..value..NickelValue$C$alloc..alloc..Global$GT$$GT$17h0ca96a41927d8cbcE.exit.i": ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.h

"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6281b75ab8e4843fE.exit": ; preds = %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr102drop_in_place$LT$core..iter..sources..once..Once$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h4738f7a225c1bbf7E"(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = icmp eq ptr %.0.val, null
  br i1 %i.d, label %"_ZN4core3ptr93drop_in_place$LT$core..option..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h5a2cb197e403aaf2E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %.0.val to i64
  %i.f = and i64 %i.e, 3
  %..i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 2)
  switch i64 %..i.i.i.i.i, label %"_ZN4core3ptr93drop_in_place$LT$core..option..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h5a2cb197e403aaf2E.exit" [
    i64 2, label %bb.c
    i64 0, label %bb.d
  ], !prof !20

bb.c:                                             ; preds = %bb.b
  call void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41, !noalias !18902
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !18902
  store ptr %.0.val, ptr %i.c, align 8, !noalias !18902
  %i.g = load i64, ptr %.0.val, align 8, !noalias !18903, !noundef !15 ; 3 uses
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = add nsw i64 %i.h, -1                     ; 3 uses
  %i.j = and i64 %i.g, 1080863910568919040
  %i.k = icmp ult i64 %i.g, 864691128455135232
  tail call void @llvm.assume(i1 %i.k)
  %i.l = or i64 %i.i, %i.j
  store i64 %i.l, ptr %.0.val, align 8, !noalias !18903
  %i.m = icmp ugt i64 %i.i, 72057594037927935
  br i1 %i.m, label %bb.f, label %bb.e, !prof !21

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.i, 0
  br i1 %i.n, label %bb.g, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i.i"

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18903
  store ptr @825, ptr %i.b, align 8, !noalias !18903
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8, !noalias !18903
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8, !noalias !18903
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8, !noalias !18903
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.r, align 8, !noalias !18903
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41, !noalias !18903
  unreachable

bb.g:                                             ; preds = %bb.e
  call void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !18902
  br label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i.i"

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i.i": ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !18902
  br label %"_ZN4core3ptr93drop_in_place$LT$core..option..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h5a2cb197e403aaf2E.exit"

"_ZN4core3ptr93drop_in_place$LT$core..option..IntoIter$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h5a2cb197e403aaf2E.exit": ; preds = %bb.a, %bb.b, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i.i.i"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr106drop_in_place$LT$$LP$nickel_lang_core..term..record..Field$C$nickel_lang_core..term..record..Field$RP$$GT$17hd378b76afe5a4306E"(ptr noalias noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef align 8 dereferenceable(40) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef align 8 dereferenceable(40) %i.b) #43
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call fastcc void @"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..term..record..Field$GT$17h1cbcc237ebec1198E"(ptr noalias noundef align 8 dereferenceable(40) %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_4
begin_hunk_5_@"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..cache..lazy..Thunk$u5d$$GT$17h090ae1de404352e1E":bb.a
  store i64 1, ptr %i.q, align 8, !noalias !22660
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.r, align 8, !noalias !22660
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !22660
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !22660
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc8 unwind label %.loopexit.split-lp

.noexc8:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i" unwind label %.loopexit

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i": ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22659
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hb3ac892b4628df4cE.exit"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hb3ac892b4628df4cE.exit": ; preds = %.lr.ph, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i.i"
  %i.u = icmp eq i64 %i.f, %1
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hb3ac892b4628df4cE.exit", %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph26
  %i.v = add i64 %.sroa.0.124, 1                  ; 2 uses
  %i.w = icmp eq i64 %i.v, %1
  br i1 %i.w, label %._crit_edge27, label %.lr.ph26

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.b, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = icmp eq i64 %i.f, %1
  br i1 %i.x, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.124 = phi i64 [ %i.v, %bb.g ], [ %i.f, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.124
  %.val = load ptr, ptr %i.y, align 8, !alias.scope !57, !nonnull !15, !noundef !15
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..cache..lazy..Thunk$GT$17hb3ac892b4628df4cE"(ptr nonnull %.val) #43
          to label %bb.g unwind label %bb.i

._crit_edge27:                                    ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi

bb.i:                                             ; preds = %.lr.ph26
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr73drop_in_place$LT$$u5b$nickel_lang_core..eval..value..NickelValue$u5d$$GT$17hb8e69da4985e54d3E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = icmp eq i64 %1, 0
  br i1 %i.d, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit"
  %.sroa.0.011 = phi i64 [ %i.f, %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit" ], [ 0, %bb.a ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.011
  %i.f = add nuw i64 %.sroa.0.011, 1              ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !22667)
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !22667, !nonnull !15, !noundef !15 ; 4 uses
  %i.g = ptrtoint ptr %.val.i to i64
  %i.h = and i64 %i.g, 3
  %..i.i = call i64 @llvm.umin.i64(i64 %i.h, i64 2)
  switch i64 %..i.i, label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit" [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ], !prof !20

bb.b:                                             ; preds = %.lr.ph
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @480, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @483, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #41
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !22667
  store ptr %.val.i, ptr %i.c, align 8, !noalias !22667
  %i.i = load i64, ptr %.val.i, align 8, !noalias !22668, !noundef !15 ; 3 uses
  %i.j = and i64 %i.i, 72057594037927935
  %i.k = add nsw i64 %i.j, -1                     ; 3 uses
  %i.l = and i64 %i.i, 1080863910568919040
  %i.m = icmp ult i64 %i.i, 864691128455135232
  call void @llvm.assume(i1 %i.m)
  %i.n = or i64 %i.k, %i.l
  store i64 %i.n, ptr %.val.i, align 8, !noalias !22668
  %i.o = icmp ugt i64 %i.k, 72057594037927935
  br i1 %i.o, label %bb.e, label %bb.d, !prof !21

bb.d:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.k, 0
  br i1 %i.p, label %bb.f, label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i"

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !22668
  store ptr @825, ptr %i.b, align 8, !noalias !22668
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.q, align 8, !noalias !22668
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.r, align 8, !noalias !22668
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.s, align 8, !noalias !22668
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %i.t, align 8, !noalias !22668
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @826) #41
          to label %.noexc7 unwind label %.loopexit.split-lp

.noexc7:                                          ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN16nickel_lang_core4eval5value12ValueBlockRc9drop_slow17ha5a2a8b11d052046E(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i" unwind label %.loopexit

"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i": ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !22667
  br label %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit"

"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit": ; preds = %.lr.ph, %"_ZN4core3ptr64drop_in_place$LT$nickel_lang_core..eval..value..ValueBlockRc$GT$17h796aed01d828a817E.exit.i.i"
  %i.u = icmp eq i64 %i.f, %1
  br i1 %i.u, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E.exit", %bb.a
  ret void

bb.g:                                             ; preds = %.lr.ph25
  %i.v = add i64 %.sroa.0.123, 1                  ; 2 uses
  %i.w = icmp eq i64 %i.v, %1
  br i1 %i.w, label %._crit_edge26, label %.lr.ph25

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.b, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.x = icmp eq i64 %i.f, %1
  br i1 %i.x, label %._crit_edge26, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.h, %bb.g
  %.sroa.0.123 = phi i64 [ %i.v, %bb.g ], [ %i.f, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.123
  invoke void @"_ZN4core3ptr63drop_in_place$LT$nickel_lang_core..eval..value..NickelValue$GT$17hf502e21899cf3c84E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.y) #43
          to label %bb.g unwind label %bb.i

._crit_edge26:                                    ; preds = %bb.g, %bb.h
  resume { ptr, i32 } %lpad.phi

bb.i:                                             ; preds = %.lr.ph25
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr73drop_in_place$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$GT$17hd0e559f32934bfd5E"(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !15, !noundef !15 ; 3 uses
  invoke void @"_ZN4core3ptr226drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typ..Type$GT$$C$nickel_lang_core..typ..RecordRows$C$nickel_lang_core..typ..EnumRows$C$nickel_lang_core..eval..value..NickelValue$GT$$GT$17ha11d023c1f2bdf56E"(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %"_ZN4core3ptr48drop_in_place$LT$nickel_lang_core..typ..Type$GT$17h5057d7b3c84fe1a2E.exit" unwind label %bb.b, !inline_history !0

"_ZN4core3ptr48drop_in_place$LT$nickel_lang_core..typ..Type$GT$17h5057d7b3c84fe1a2E.exit": ; preds = %bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 104, i64 noundef 8) #40
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 104, i64 noundef 8) #40
  resume { ptr, i32 } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr73drop_in_place$LT$nickel_lang_parser..grammar..__parse__Term..__Symbol$GT$17hbb325c02e41945baE"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(288) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !22687, !noundef !15
  switch i8 %i.a, label %bb.b [
    i8 0, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 1, label %bb.c
    i8 2, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 6, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 7, label %bb.g
    i8 8, label %bb.h
    i8 9, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 10, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 11, label %bb.j
    i8 12, label %bb.k
    i8 13, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 14, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 15, label %bb.m
    i8 16, label %bb.o
    i8 17, label %bb.p
    i8 18, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 19, label %bb.q
    i8 20, label %bb.s
    i8 21, label %bb.t
    i8 22, label %bb.u
    i8 23, label %bb.v
    i8 24, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 25, label %bb.w
    i8 26, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 27, label %bb.y
    i8 28, label %bb.aa
    i8 29, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 30, label %bb.ac
    i8 31, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 32, label %bb.ae
    i8 33, label %bb.af
    i8 34, label %bb.ag
    i8 35, label %bb.ah
    i8 36, label %bb.ai
    i8 37, label %bb.aj
    i8 38, label %bb.ak
    i8 39, label %bb.al
    i8 40, label %bb.am
    i8 41, label %bb.an
    i8 42, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 43, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 44, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 45, label %bb.ao
    i8 46, label %bb.aq
    i8 47, label %bb.as
    i8 48, label %bb.at
    i8 49, label %bb.au
    i8 50, label %bb.av
    i8 51, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 52, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 53, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 54, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 55, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 56, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 57, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 58, label %bb.ax
    i8 59, label %bb.az
    i8 60, label %bb.ba
    i8 61, label %bb.bb
    i8 62, label %bb.bd
    i8 63, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 64, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 65, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 66, label %bb.be
    i8 67, label %bb.bf
    i8 68, label %bb.bg
    i8 69, label %bb.bh
    i8 70, label %bb.bi
    i8 71, label %bb.bj
    i8 72, label %bb.bk
    i8 73, label %bb.bm
    i8 74, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 75, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 76, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 77, label %bb.bo
    i8 78, label %bb.bp
    i8 79, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 80, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 81, label %bb.bq
    i8 82, label %bb.br
    i8 83, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
    i8 84, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr59drop_in_place$LT$nickel_lang_parser..uniterm..UniRecord$GT$17h1767ee21b764c0f3E"(ptr noalias noundef align 8 dereferenceable(144) %i.b)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit": ; preds = %bb.aq, %bb.ao, %bb.bs, %bb.br, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bc, %bb.bb, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.ar, %bb.ap, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %bb.h, %bb.d, %bb.c, %bb.bq, %bb.bp, %bb.bo, %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.ba, %bb.az, %bb.au, %bb.at, %bb.as, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.v, %bb.u, %bb.t, %bb.s, %bb.p, %bb.o, %bb.j, %bb.g, %bb.f, %bb.e, %bb.b, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22689)
  %.val.i.i = load i64, ptr %i.c, align 8, !range !39, !alias.scope !22690, !noundef !15 ; 2 uses
  %i.d = icmp eq i64 %.val.i.i, 0
  br i1 %i.d, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i.i = load ptr, ptr %i.e, align 8, !alias.scope !22690, !nonnull !15, !noundef !15
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #40, !noalias !22690
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr42drop_in_place$LT$malachite_q..Rational$GT$17h9737d02f0fb84787E"(ptr noalias noundef align 8 dereferenceable(56) %i.f)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef align 8 dereferenceable(64) %i.g)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.g:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr141drop_in_place$LT$lalrpop_util..ErrorRecovery$LT$usize$C$nickel_lang_parser..lexer..Token$C$nickel_lang_parser..error..ParseOrLexError$GT$$GT$17h87607366f3bd5e08E"(ptr noalias noundef align 8 dereferenceable(128) %i.h)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !47, !alias.scope !22691, !noundef !15
  %i.k = icmp eq i64 %i.j, 169
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %i.i)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.j:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.l)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.k:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !range !47, !alias.scope !22692, !noundef !15
  %i.o = icmp eq i64 %i.n, 169
  br i1 %i.o, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit", label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @"_ZN4core3ptr53drop_in_place$LT$nickel_lang_parser..lexer..Token$GT$17hffea10d64ace0be8E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(104) %i.m)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.m:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.p, align 8            ; 2 uses
  %i.q = icmp eq i64 %.val2, 0
  br i1 %i.q, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.r, align 8, !nonnull !15, !noundef !15
  %i.s = mul nuw i64 %.val2, 20
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) 4) #40
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.o:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr57drop_in_place$LT$nickel_lang_parser..utils..FieldDecl$GT$17h062ad2ffdd2a847eE"(ptr noalias noundef align 8 dereferenceable(280) %i.t)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.p:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr80drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..utils..FieldDecl$GT$$GT$17hb7d3f1c0d5f0704cE"(ptr noalias noundef align 8 dereferenceable(24) %i.u)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.q:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val8 = load i64, ptr %i.v, align 8            ; 2 uses
  %i.w = icmp eq i64 %.val8, 0
  br i1 %i.w, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val9 = load ptr, ptr %i.x, align 8, !nonnull !15, !noundef !15
  %i.y = mul nuw i64 %.val8, 48
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.y, i64 noundef range(i64 1, -9223372036854775807) 8) #40
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.s:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$17h714da67cb1d86b84E"(ptr noalias noundef align 8 dereferenceable(272) %i.z)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.t:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @"_ZN4core3ptr90drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..FieldPattern$GT$$GT$17h9fcf7166ca933a9cE"(ptr noalias noundef align 8 dereferenceable(24) %i.aa)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h00ad3d6cb35a33ccE.exit"

bb.u:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
end_hunk_5
