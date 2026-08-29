Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/mdbook-5c818a28b1b0cc85.mdbook.afaaf51857b3248e-cgu.02?download=true
inline.NumInlined: 903
inline.NumDeleted: 326
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN6mdbook8renderer15html_handlebars12hbs_renderer14HtmlHandlebars12post_process17h485d779148bb32a6E:bb.a
._crit_edge.i.i:                                  ; preds = %bb.s
  %.pre.i.i = load i64, ptr %.sroa.461.0..sroa_idx62.i.i, align 8, !range !80, !noalias !985
  br label %bb.u

"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h81352ac0a711ed97E.exit.i.i": ; preds = %.body144.i.i, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.gk, %bb.t ], [ %eh.lpad-body145.i.i, %.body144.i.i ]
  invoke fastcc void @"_ZN4core3ptr155drop_in_place$LT$core..iter..adapters..peekable..Peekable$LT$core..iter..adapters..enumerate..Enumerate$LT$regex..regex..string..CaptureMatches$GT$$GT$$GT$17h4458f7f5bb38f410E"(ptr noalias noundef align 8 dereferenceable(248) %i.dw) #21
          to label %bb.ed unwind label %bb.l, !noalias !1006

bb.t:                                             ; preds = %bb.eb, %bb.s
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h81352ac0a711ed97E.exit.i.i"

bb.u:                                             ; preds = %._crit_edge.i.i, %bb.r
  %i.gl = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %.sroa.461.0.copyload.i.i, %bb.r ]
  %.not81.i.i = icmp eq i64 %i.gl, 2
  br i1 %.not81.i.i, label %bb.ec, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du), !noalias !985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.du, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.461.0..sroa_idx62.i.i, i64 72, i1 false), !noalias !985
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  %i.gm = load i32, ptr %i.fp, align 8, !range !82, !alias.scope !1008, !noalias !1011, !noundef !4
  %i.gn = load i32, ptr %i.fq, align 4, !alias.scope !1008, !noalias !1011
  %i.go = trunc nuw i32 %i.gm to i1
  br i1 %i.go, label %bb.w, label %bb.aj

bb.w:                                             ; preds = %bb.v
  %i.gp = load ptr, ptr %i.fr, align 8, !alias.scope !1008, !noalias !1011, !nonnull !4, !noundef !4
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !1013, !noundef !4 ; 3 uses
  %i.gs = icmp ult i64 %i.gr, 1152921504606846976
  call void @llvm.assume(i1 %i.gs)
  %i.gt = icmp eq i64 %i.gr, 1
  br i1 %i.gt, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gu = zext i32 %i.gn to i64                   ; 2 uses
  %i.gv = icmp samesign ugt i64 %i.gr, %i.gu
  br i1 %i.gv, label %bb.y, label %bb.aj

bb.y:                                             ; preds = %bb.x
  %i.gw = shl nuw nsw i64 %i.gu, 1                ; 2 uses
  %i.gx = or disjoint i64 %i.gw, 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.sroa.056.2.i.i.i = phi i64 [ %i.gw, %bb.y ], [ 0, %bb.w ] ; 2 uses
  %.sroa.058.0.i.i.i = phi i64 [ %i.gx, %bb.y ], [ 1, %bb.w ] ; 2 uses
  %i.gy = load ptr, ptr %i.fs, align 8, !alias.scope !1008, !noalias !1011, !nonnull !4, !noundef !4 ; 2 uses
  %i.gz = load i64, ptr %i.ft, align 8, !alias.scope !1008, !noalias !1011, !noundef !4 ; 2 uses
  %.not68.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i, %i.gz
  br i1 %.not68.i.i.i, label %bb.aa, label %bb.aj

bb.aa:                                            ; preds = %bb.z
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.sroa.056.2.i.i.i
  %i.hb = load i64, ptr %i.ha, align 8, !noalias !1013, !noundef !4 ; 2 uses
  %.not.i123.i.i = icmp ne i64 %i.hb, 0
  %.not69.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i, %i.gz
  %or.cond.i.i.i = select i1 %.not.i123.i.i, i1 %.not69.i.i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.ab, label %bb.aj

bb.ab:                                            ; preds = %bb.aa
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %.sroa.058.0.i.i.i
  %i.hd = load i64, ptr %i.hc, align 8, !noalias !1013, !noundef !4 ; 2 uses
  %.not61.i.i.i = icmp eq i64 %i.hd, 0
  br i1 %.not61.i.i.i, label %bb.aj, label %bb.ac

.loopexit.i.i:                                    ; preds = %bb.bo
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body144.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h076d2e43edfebf96E.exit.i133.i.i", %.noexc146.i.i, %bb.dt, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h1fcee27b8994712dE.exit.i31.i.i.i.i.i", %bb.cb, %.lr.ph.i.i.i.i, %bb.bh, %bb.al, %bb.ak
  %lpad.loopexit42.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body144.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %.invoke.i.i, %.invoke416.i.i, %.loopexit.i.i.i.i, %bb.aj
  %lpad.loopexit.split-lp43.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body144.i.i

.body144.i.i:                                     ; preds = %bb.dy, %bb.dv, %bb.dr, %bb.dp, %bb.dm, %.body.i.i.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %eh.lpad-body145.i.i = phi { ptr, i32 } [ %i.qq, %bb.dv ], [ %i.qs, %bb.dy ], [ %i.qa, %bb.dp ], [ %i.px, %bb.dm ], [ %lpad.phi50.i.i, %bb.dr ], [ %.pn.i.i.i.i.i, %.body.i.i.i.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit42.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp43.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr61drop_in_place$LT$regex_automata..util..captures..Captures$GT$17h4dc5b6107ee8f9b2E"(ptr noalias noundef align 8 dereferenceable(40) %i.fo)
          to label %"_ZN4core3ptr51drop_in_place$LT$regex..regex..string..Captures$GT$17h81352ac0a711ed97E.exit.i.i" unwind label %bb.l, !noalias !1006

bb.ac:                                            ; preds = %bb.ab
  %i.he = add i64 %i.hb, -1                       ; 11 uses
  %i.hf = add i64 %i.hd, -1
  %.not.i125.i.i = icmp ugt i64 %.sroa.019.0.i.i, %i.he
  br i1 %.not.i125.i.i, label %.invoke416.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hg = icmp eq i64 %.sroa.019.0.i.i, 0
  br i1 %i.hg, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not5.i126.i.i = icmp ult i64 %.sroa.019.0.i.i, %i.ei
  br i1 %.not5.i126.i.i, label %bb.ag, label %.split.i127.i.i

bb.af:                                            ; preds = %bb.ag, %.split.i127.i.i, %bb.ad
  %i.hh = icmp eq i64 %i.he, 0
  br i1 %i.hh, label %bb.ak, label %bb.ah

.split.i127.i.i:                                  ; preds = %bb.ae
  %i.hi = icmp eq i64 %.sroa.019.0.i.i, %i.ei
  br i1 %i.hi, label %bb.af, label %.invoke416.i.i

bb.ag:                                            ; preds = %bb.ae
  %i.hj = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.019.0.i.i
  %i.hk = load i8, ptr %i.hj, align 1, !alias.scope !1014, !noalias !1017, !noundef !4
  %i.hl = icmp sgt i8 %i.hk, -65
  br i1 %i.hl, label %bb.af, label %.invoke416.i.i

bb.ah:                                            ; preds = %bb.af
  %.not6.i130.i.i = icmp ult i64 %i.he, %i.ei
  br i1 %.not6.i130.i.i, label %bb.ai, label %.split7.i131.i.i

.split7.i131.i.i:                                 ; preds = %bb.ah
  %i.hm = icmp eq i64 %i.he, %i.ei
  br i1 %i.hm, label %bb.ak, label %.invoke416.i.i

bb.ai:                                            ; preds = %bb.ah
  %i.hn = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.he
  %i.ho = load i8, ptr %i.hn, align 1, !alias.scope !1014, !noalias !1017, !noundef !4
  %i.hp = icmp sgt i8 %i.ho, -65
  br i1 %i.hp, label %bb.ak, label %.invoke416.i.i

bb.aj:                                            ; preds = %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.v
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #20
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1006

bb.ak:                                            ; preds = %bb.ai, %.split7.i131.i.i, %bb.af
  %i.hq = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.sroa.019.0.i.i
  %i.hr = getelementptr inbounds nuw i8, ptr %i.eg, i64 %i.he
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc90346a54c402309E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx, ptr noundef nonnull readonly %i.hq, ptr noundef nonnull readonly %i.hr)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !1006

bb.al:                                            ; preds = %bb.ak
  call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.do), !noalias !1021
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.018.i.i.i.i), !noalias !1021
  %i.hs = invoke { ptr, i64 } @"_ZN87_$LT$regex..regex..string..Captures$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h1057241be658ed4dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.du, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @261)
          to label %.noexc134.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !1006 ; 2 uses

.noexc134.i.i:                                    ; preds = %bb.al
  %i.ht = extractvalue { ptr, i64 } %i.hs, 0      ; 6 uses
  %i.hu = extractvalue { ptr, i64 } %i.hs, 1      ; 6 uses
  switch i64 %i.hu, label %bb.an [
    i64 0, label %.loopexit.i.i.i.i
    i64 1, label %bb.am
  ]

bb.am:                                            ; preds = %.noexc134.i.i
  %i.hv = load i8, ptr %i.ht, align 1, !alias.scope !1028, !noalias !1031, !noundef !4
  switch i8 %i.hv, label %.lr.ph.i.i.i.i.i.preheader [
    i8 43, label %.loopexit.i.i.i.i
    i8 45, label %.loopexit.i.i.i.i
  ]

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.aq, %bb.ao, %bb.am
  %.sroa.0.167.i.i.i.i.i.ph = phi ptr [ %i.hw, %bb.ao ], [ %i.ht, %bb.aq ], [ %i.ht, %bb.am ]
  %.sroa.16.166.i.i.i.i.i.ph = phi i64 [ %i.hx, %bb.ao ], [ %i.hu, %bb.aq ], [ 1, %bb.am ]
  br label %.lr.ph.i.i.i.i.i

bb.an:                                            ; preds = %.noexc134.i.i
  %.pr.i.i.i.i.i = load i8, ptr %i.ht, align 1, !alias.scope !1028, !noalias !1031
  %cond.i.i.i.i.i = icmp eq i8 %.pr.i.i.i.i.i, 43
  br i1 %cond.i.i.i.i.i, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1 ; 2 uses
  %i.hx = add i64 %i.hu, -1                       ; 2 uses
  %i.hy = icmp ult i64 %i.hu, 18
  br i1 %i.hy, label %.lr.ph.i.i.i.i.i.preheader, label %.preheader58.i.i.i.i.i

.preheader58.i.i.i.i.i:                           ; preds = %bb.aq, %bb.ao
  %.sroa.16.0.ph.i.i.i.i.i = phi i64 [ %i.hu, %bb.aq ], [ %i.hx, %bb.ao ] ; 2 uses
  %.sroa.0.0.ph.i.i.i.i.i = phi ptr [ %i.ht, %bb.aq ], [ %i.hw, %bb.ao ]
  %.not54.i.i.i.i.i833 = icmp eq i64 %.sroa.16.0.ph.i.i.i.i.i, 0
  br i1 %.not54.i.i.i.i.i833, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf4aba104c9cb362eE.exit.i.i.i.i", label %.lr.ph

bb.ap:                                            ; preds = %bb.ar
  %i.hz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i836, i64 1
  %i.ia = add i64 %.sroa.16.0.i.i.i.i.i835, -1    ; 2 uses
  %.not54.i.i.i.i.i = icmp eq i64 %i.ia, 0
  br i1 %.not54.i.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf4aba104c9cb362eE.exit.i.i.i.i", label %.lr.ph

bb.aq:                                            ; preds = %bb.an
  %i.ib = icmp ult i64 %i.hu, 17
  br i1 %i.ib, label %.lr.ph.i.i.i.i.i.preheader, label %.preheader58.i.i.i.i.i

.lr.ph:                                           ; preds = %.preheader58.i.i.i.i.i, %bb.ap
  %.sroa.0.0.i.i.i.i.i836 = phi ptr [ %i.hz, %bb.ap ], [ %.sroa.0.0.ph.i.i.i.i.i, %.preheader58.i.i.i.i.i ] ; 2 uses
  %.sroa.16.0.i.i.i.i.i835 = phi i64 [ %i.ia, %bb.ap ], [ %.sroa.16.0.ph.i.i.i.i.i, %.preheader58.i.i.i.i.i ]
  %.sroa.039.0.i.i.i.i.i834 = phi i64 [ %i.ih, %bb.ap ], [ 0, %.preheader58.i.i.i.i.i ] ; 2 uses
  %i.ic = load i8, ptr %.sroa.0.0.i.i.i.i.i836, align 1, !alias.scope !1028, !noalias !1031, !noundef !4
  %i.id = zext i8 %i.ic to i32
  %i.ie = add nsw i32 %i.id, -48                  ; 2 uses
  %i.if = icmp ult i32 %i.ie, 10
  br i1 %i.if, label %bb.ar, label %.loopexit.i.i.i.i

bb.ar:                                            ; preds = %.lr.ph
  %4 = mul nuw i64 %.sroa.039.0.i.i.i.i.i834, 10  ; 2 uses
  %5 = icmp ugt i64 %.sroa.039.0.i.i.i.i.i834, 1844674407370955161
  %i.ig = zext nneg i32 %i.ie to i64
  %i.ih = add i64 %4, %i.ig                       ; 3 uses
  %.not55.i.i.i.i.i = icmp ult i64 %i.ih, %4
  %or.cond.i.i.i.i = select i1 %5, i1 true, i1 %.not55.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.ap

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.as
  %.sroa.0.167.i.i.i.i.i = phi ptr [ %i.io, %bb.as ], [ %.sroa.0.167.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.16.166.i.i.i.i.i = phi i64 [ %i.in, %bb.as ], [ %.sroa.16.166.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ]
  %.sroa.039.165.i.i.i.i.i = phi i64 [ %i.iq, %bb.as ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.ii = load i8, ptr %.sroa.0.167.i.i.i.i.i, align 1, !alias.scope !1028, !noalias !1031, !noundef !4
  %i.ij = zext i8 %i.ii to i32
  %i.ik = add nsw i32 %i.ij, -48                  ; 2 uses
  %i.il = icmp ult i32 %i.ik, 10
  br i1 %i.il, label %bb.as, label %.loopexit.i.i.i.i

bb.as:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.im = mul i64 %.sroa.039.165.i.i.i.i.i, 10
  %i.in = add nsw i64 %.sroa.16.166.i.i.i.i.i, -1 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.sroa.0.167.i.i.i.i.i, i64 1
  %i.ip = zext nneg i32 %i.ik to i64
  %i.iq = add i64 %i.im, %i.ip                    ; 2 uses
  %.not56.i.i.i.i.i = icmp eq i64 %i.in, 0
  br i1 %.not56.i.i.i.i.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf4aba104c9cb362eE.exit.i.i.i.i", label %.lr.ph.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %bb.am, %bb.am, %.noexc134.i.i, %bb.ar, %.lr.ph, %.lr.ph.i.i.i.i.i
  %.sroa.4.0.ph.i.i.i.i = phi i8 [ 1, %.lr.ph ], [ 1, %.lr.ph.i.i.i.i.i ], [ 2, %bb.ar ], [ 0, %.noexc134.i.i ], [ 1, %bb.am ], [ 1, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk), !noalias !1033
  store i8 %.sroa.4.0.ph.i.i.i.i, ptr %i.dk, align 1, !noalias !1033
  invoke void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @262, i64 noundef 49, ptr noundef nonnull align 1 %i.dk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @103, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @263) #20
          to label %.noexc135.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !1006

.noexc135.i.i:                                    ; preds = %.loopexit.i.i.i.i
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf4aba104c9cb362eE.exit.i.i.i.i": ; preds = %bb.ap, %bb.as, %.preheader58.i.i.i.i.i
  %.sroa.111.0.i.i.i.i = phi i64 [ %i.iq, %bb.as ], [ 0, %.preheader58.i.i.i.i.i ], [ %i.ih, %bb.ap ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1036)
  %i.ir = load i32, ptr %i.fp, align 8, !range !82, !alias.scope !1039, !noalias !1040, !noundef !4
  %i.is = load i32, ptr %i.fq, align 4, !alias.scope !1039, !noalias !1040 ; 3 uses
  %i.it = trunc nuw i32 %i.ir to i1               ; 2 uses
  br i1 %i.it, label %bb.at, label %bb.bg

bb.at:                                            ; preds = %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf4aba104c9cb362eE.exit.i.i.i.i"
  %i.iu = load ptr, ptr %i.fr, align 8, !alias.scope !1039, !noalias !1040, !nonnull !4, !noundef !4 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load i64, ptr %i.iv, align 8, !noalias !1042, !noundef !4 ; 3 uses
  %i.ix = icmp ult i64 %i.iw, 1152921504606846976
  call void @llvm.assume(i1 %i.ix)
  %i.iy = icmp eq i64 %i.iw, 1
  br i1 %i.iy, label %bb.aw, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.iz = zext i32 %i.is to i64                   ; 2 uses
  %i.ja = icmp samesign ugt i64 %i.iw, %i.iz
  br i1 %i.ja, label %bb.av, label %bb.bg

bb.av:                                            ; preds = %bb.au
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !1042, !nonnull !4, !noundef !4
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.iz ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4
  %i.jf = load i32, ptr %i.je, align 4, !noalias !1042, !noundef !4
  %i.jg = zext i32 %i.jf to i64
  %i.jh = load i32, ptr %i.jd, align 4, !noalias !1042, !noundef !4
  %i.ji = zext i32 %i.jh to i64                   ; 3 uses
  %i.jj = sub nsw i64 %i.jg, %i.ji
  %.not.i.i.i.i.i.i = icmp ult i64 %i.jj, 6
  br i1 %.not.i.i.i.i.i.i, label %bb.bg, label %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i

_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i: ; preds = %bb.av
  %i.jk = add nuw nsw i64 %i.ji, 4
  %i.jl = add nuw nsw i64 %i.ji, 5
  br label %bb.aw

bb.aw:                                            ; preds = %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i, %bb.at
  %.sroa.056.2.i.i.i.i.i = phi i64 [ %i.jk, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i ], [ 6, %bb.at ] ; 2 uses
  %.sroa.058.0.i.i.i.i.i = phi i64 [ %i.jl, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i.i.i.i.i ], [ 7, %bb.at ] ; 2 uses
  %i.jm = load ptr, ptr %i.fs, align 8, !alias.scope !1039, !noalias !1040, !nonnull !4, !noundef !4 ; 2 uses
  %i.jn = load i64, ptr %i.ft, align 8, !alias.scope !1039, !noalias !1040, !noundef !4 ; 2 uses
  %.not68.i.i.i.i.i = icmp ult i64 %.sroa.056.2.i.i.i.i.i, %i.jn
  br i1 %.not68.i.i.i.i.i, label %bb.ax, label %bb.bg

bb.ax:                                            ; preds = %bb.aw
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.sroa.056.2.i.i.i.i.i
  %i.jp = load i64, ptr %i.jo, align 8, !noalias !1042, !noundef !4 ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.jp, 0
  %.not69.i.i.i.i.i = icmp ult i64 %.sroa.058.0.i.i.i.i.i, %i.jn
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not69.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %bb.ay, label %bb.bg

bb.ay:                                            ; preds = %bb.ax
  %i.jq = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %.sroa.058.0.i.i.i.i.i
  %i.jr = load i64, ptr %i.jq, align 8, !noalias !1042, !noundef !4 ; 3 uses
  %.not61.i.i.i.i.i = icmp eq i64 %i.jr, 0
  br i1 %.not61.i.i.i.i.i, label %bb.bg, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.js = add i64 %i.jp, -1                       ; 11 uses
  %i.jt = add i64 %i.jr, -1                       ; 10 uses
  %i.ju = load ptr, ptr %i.fu, align 8, !alias.scope !1043, !noalias !1044, !nonnull !4, !align !98, !noundef !4 ; 9 uses
  %i.jv = load i64, ptr %i.fv, align 8, !alias.scope !1043, !noalias !1044, !noundef !4 ; 10 uses
  %.not.i51.i.i.i.i = icmp ugt i64 %i.js, %i.jt
  br i1 %.not.i51.i.i.i.i, label %.invoke416.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jw = icmp eq i64 %i.js, 0
  br i1 %i.jw, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %.not5.i.i.i.i.i = icmp ult i64 %i.js, %i.jv
  br i1 %.not5.i.i.i.i.i, label %bb.bd, label %.split.i.i.i.i.i

bb.bc:                                            ; preds = %bb.bd, %.split.i.i.i.i.i, %bb.ba
  %i.jx = icmp eq i64 %i.jt, 0
  br i1 %i.jx, label %.lr.ph.i.i.i.i, label %bb.be

.split.i.i.i.i.i:                                 ; preds = %bb.bb
  %i.jy = icmp eq i64 %i.js, %i.jv
  br i1 %i.jy, label %bb.bc, label %.invoke416.i.i

bb.bd:                                            ; preds = %bb.bb
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.js
  %i.ka = load i8, ptr %i.jz, align 1, !alias.scope !1045, !noalias !1048, !noundef !4
  %i.kb = icmp sgt i8 %i.ka, -65
  br i1 %i.kb, label %bb.bc, label %.invoke416.i.i

bb.be:                                            ; preds = %bb.bc
  %.not6.i.i.i.i.i = icmp ult i64 %i.jt, %i.jv
  br i1 %.not6.i.i.i.i.i, label %bb.bf, label %.split7.i.i.i.i.i

.split7.i.i.i.i.i:                                ; preds = %bb.be
  %i.kc = icmp eq i64 %i.jt, %i.jv
  br i1 %i.kc, label %.lr.ph.i.i.i.i, label %.invoke416.i.i

bb.bf:                                            ; preds = %bb.be
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.jt
  %i.ke = load i8, ptr %i.kd, align 1, !alias.scope !1045, !noalias !1048, !noundef !4
  %i.kf = icmp sgt i8 %i.ke, -65
  br i1 %i.kf, label %.lr.ph.i.i.i.i, label %.invoke416.i.i

bb.bg:                                            ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hf4aba104c9cb362eE.exit.i.i.i.i"
  %i.kg = load ptr, ptr %i.fu, align 8, !alias.scope !1043, !noalias !1044, !nonnull !4, !align !98, !noundef !4
  %i.kh = load i64, ptr %i.fv, align 8, !alias.scope !1043, !noalias !1044, !noundef !4
  br label %bb.bh

bb.bh:                                            ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hd3c5a4b71263df7cE.exit.thread.i.i.i.i", %bb.bg
  %i.ki = phi i64 [ %i.jv, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hd3c5a4b71263df7cE.exit.thread.i.i.i.i" ], [ %i.kh, %bb.bg ] ; 14 uses
  %i.kj = phi ptr [ %i.ju, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17hd3c5a4b71263df7cE.exit.thread.i.i.i.i" ], [ %i.kg, %bb.bg ] ; 12 uses
  %i.kk = invoke { ptr, i64 } @"_ZN87_$LT$regex..regex..string..Captures$u20$as$u20$core..ops..index..Index$LT$usize$GT$$GT$5index17h1057241be658ed4dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.du, i64 noundef 4, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @265)
          to label %.noexc136.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !1006 ; 2 uses

.noexc136.i.i:                                    ; preds = %bb.bh
  %i.kl = extractvalue { ptr, i64 } %i.kk, 0      ; 2 uses
  %i.km = extractvalue { ptr, i64 } %i.kk, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dm), !noalias !1049
  call void @llvm.experimental.noalias.scope.decl(metadata !1050)
  br i1 %i.it, label %bb.bi, label %bb.cd

bb.bi:                                            ; preds = %.noexc136.i.i
  %i.kn = load ptr, ptr %i.fr, align 8, !alias.scope !1053, !noalias !1054, !nonnull !4, !noundef !4 ; 3 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 32 ; 2 uses
  %i.kp = load i64, ptr %i.ko, align 8, !noalias !1056, !noundef !4 ; 4 uses
  %i.kq = icmp ult i64 %i.kp, 1152921504606846976
  call void @llvm.assume(i1 %i.kq)
  %i.kr = icmp eq i64 %i.kp, 1
  br i1 %i.kr, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ks = zext i32 %i.is to i64                   ; 2 uses
  %i.kt = icmp samesign ugt i64 %i.kp, %i.ks
  br i1 %i.kt, label %bb.bk, label %.thread51.i.i.i.i

bb.bk:                                            ; preds = %bb.bj
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !1056, !nonnull !4, !noundef !4
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.kv, i64 %i.ks ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !noalias !1056, !noundef !4
  %i.kz = zext i32 %i.ky to i64
  %i.la = load i32, ptr %i.kw, align 4, !noalias !1056, !noundef !4
  %i.lb = zext i32 %i.la to i64                   ; 3 uses
  %i.lc = sub nsw i64 %i.kz, %i.lb
  %.not.i.i54.i.i.i.i = icmp ult i64 %i.lc, 4
  br i1 %.not.i.i54.i.i.i.i, label %.thread51.i.i.i.i, label %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i55.i.i.i.i

_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i55.i.i.i.i: ; preds = %bb.bk
  %i.ld = add nuw nsw i64 %i.lb, 2
  %i.le = add nuw nsw i64 %i.lb, 3
  br label %bb.bl

bb.bl:                                            ; preds = %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i55.i.i.i.i, %bb.bi
  %.sroa.056.2.i56.i.i.i.i = phi i64 [ %i.ld, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i55.i.i.i.i ], [ 4, %bb.bi ] ; 2 uses
  %.sroa.058.0.i57.i.i.i.i = phi i64 [ %i.le, %_ZN14regex_automata4util8captures9GroupInfo4slot17h0aceb6b4befb3578E.exit.thread.i55.i.i.i.i ], [ 5, %bb.bi ] ; 2 uses
  %i.lf = load ptr, ptr %i.fs, align 8, !alias.scope !1053, !noalias !1054, !nonnull !4, !noundef !4 ; 2 uses
  %i.lg = load i64, ptr %i.ft, align 8, !alias.scope !1053, !noalias !1054, !noundef !4 ; 2 uses
  %.not68.i58.i.i.i.i = icmp ult i64 %.sroa.056.2.i56.i.i.i.i, %i.lg
  br i1 %.not68.i58.i.i.i.i, label %bb.bm, label %.thread51.i.i.i.i

bb.bm:                                            ; preds = %bb.bl
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.sroa.056.2.i56.i.i.i.i
  %i.li = load i64, ptr %i.lh, align 8, !noalias !1056, !noundef !4 ; 3 uses
  %.not.i59.i.i.i.i = icmp ne i64 %i.li, 0
  %.not69.i60.i.i.i.i = icmp ult i64 %.sroa.058.0.i57.i.i.i.i, %i.lg
  %or.cond.i61.i.i.i.i = select i1 %.not.i59.i.i.i.i, i1 %.not69.i60.i.i.i.i, i1 false
  br i1 %or.cond.i61.i.i.i.i, label %bb.bn, label %.thread51.i.i.i.i

bb.bn:                                            ; preds = %bb.bm
  %i.lj = getelementptr inbounds nuw [8 x i8], ptr %i.lf, i64 %.sroa.058.0.i57.i.i.i.i
  %i.lk = load i64, ptr %i.lj, align 8, !noalias !1056, !noundef !4 ; 3 uses
  %.not61.i62.i.i.i.i = icmp eq i64 %i.lk, 0
  br i1 %.not61.i62.i.i.i.i, label %.thread51.i.i.i.i, label %bb.bu

.lr.ph.i.i.i.i:                                   ; preds = %bb.bf, %.split7.i.i.i.i.i, %bb.bc
  %i.ll = sub nuw i64 %i.jr, %i.jp                ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.js
  invoke void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %.sroa.018.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.lm, i64 noundef %i.ll, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @212, i64 noundef 1)
          to label %.noexc137.i.i unwind label %.loopexit.split-lp.loopexit.i.i, !noalias !1006

.noexc137.i.i:                                    ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dn), !noalias !1049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.dn, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.018.i.i.i.i, i64 104, i1 false), !noalias !1049
  store i64 0, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !noalias !1049
  store i64 %i.ll, ptr %.sroa.3.0..sroa_idx.i.i.i.i, align 8, !noalias !1049
  store i8 1, ptr %.sroa.419.0..sroa_idx.i.i.i.i, align 8, !noalias !1049
  store i8 0, ptr %.sroa.520.0..sroa_idx.i.i.i.i, align 1, !noalias !1049
  br label %bb.bo
end_hunk_0
begin_hunk_1_@"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h29744d1a8e4dc91cE":bb.a
  call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.e, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.h, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %i.k, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_map17h0222a0e16a59d27cE(ptr noalias noundef align 8 dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_ZN6mdbook6config6Config11html_config17h4222107619357709E(ptr dead_on_unwind noalias noundef writable sret([488 x i8]) align 8 captures(address) dereferenceable(488), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(224)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN69_$LT$mdbook..config..HtmlConfig$u20$as$u20$core..default..Default$GT$7default17he0932a7a1155ea5bE"(ptr dead_on_unwind noalias noundef writable sret([488 x i8]) align 8 captures(address) dereferenceable(488)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std4path4Path4join17he9e07afd2f2bc114E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std2fs8metadata17ha638efe79dabc058E(ptr dead_on_unwind noalias noundef writable sret([176 x i8]) align 8 captures(address) dereferenceable(176), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN6mdbook5utils2fs18remove_dir_content17h0270743a998a5197E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h40b28d4ce70f1202E"(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3log13__private_api3log17heec515f1ba0d1361E(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), i64 noundef range(i64 1, 6), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN10handlebars8registry8Registry3new17h7d2c47b1b32c66d6E(ptr dead_on_unwind noalias noundef writable sret([216 x i8]) align 8 captures(address) dereferenceable(216)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN3std4path4Path4join17hff71bd3868ad4133E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std4path4Path6is_dir17he79931d066eda63bE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$std..path..Display$u20$as$u20$core..fmt..Display$GT$3fmt17ha5e2872f289af66fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17h62f1883b8325f545E"(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN6mdbook5theme5Theme3new17h22a4daf644cf10caE(ptr dead_on_unwind noalias noundef writable sret([480 x i8]) align 8 captures(address) dereferenceable(480), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he9a3a1765cee89adE"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10handlebars8registry8Registry24register_template_string17hced68f1a7cac6202E(ptr dead_on_unwind noalias noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88), ptr noalias noundef align 8 dereferenceable(216), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN3std2fs14create_dir_all17hdda2410ef9af9c5bE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h7862b890c3a9a3a3E"(ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN6mdbook8renderer15html_handlebars12static_files11StaticFiles3new17h979c9e2313eaa34aE(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(480), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(488), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN65_$LT$mdbook..config..Search$u20$as$u20$core..default..Default$GT$7default17he93dbd221d14e568E"(ptr dead_on_unwind noalias noundef writable sret([64 x i8]) align 8 captures(address) dereferenceable(64)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN6mdbook8renderer15html_handlebars6search12create_files17h2703365ce1c3e977E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64), ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10handlebars8registry8Registry6render17h1aa2f042f9d881c3E(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN6mdbook8renderer15html_handlebars12static_files11StaticFiles11add_builtin17h15f7857e06837d99E(ptr noalias noundef align 8 dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN6mdbook8renderer15html_handlebars12static_files11StaticFiles10hash_files17h6c146a2a8f5243d0E(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN6mdbook8renderer15html_handlebars12static_files11StaticFiles11write_files17h9af75181225c924eE(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$12with_context17h253672bfd145fc90E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10handlebars7helpers9HelperDef10call_inner17h39f92517a25584d6E(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @"_ZN120_$LT$mdbook..renderer..html_handlebars..helpers..resources..ResourceHelper$u20$as$u20$handlebars..helpers..HelperDef$GT$4call17haa353a4ca82f8baaE"(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(address) dereferenceable(72), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(216), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(184), ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN10handlebars8registry8Registry15register_helper17ha0d3cb8829c66b4aE(ptr noalias noundef align 8 dereferenceable(216), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17hb6265bef86c0608eE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10serde_json5value8to_value17h02bf24b83a0f6ec1E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_ZN6mdbook5utils2fs10write_file17hc6b7135391ff6960E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6remove17h21e5f5e45038edecE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hab401a495a37058bE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN6mdbook4book4book4Book4iter17hff6fb7def3e542c0E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef align 8 dereferenceable_or_null(168) ptr @"_ZN88_$LT$mdbook..book..book..BookItems$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7279276318bb0f46E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_ZN10serde_json5value8to_value17hb64e272643c5dff4E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @"_ZN6anyhow7context92_$LT$impl$u20$anyhow..Context$LT$T$C$E$GT$$u20$for$u20$core..result..Result$LT$T$C$E$GT$$GT$7context17hc1e8e7df60adccccE"(ptr noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef ptr @_ZN6mdbook5utils2fs21copy_files_except_ext17hde41716979add801E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i1 noundef zeroext, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24), ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h07d10f2f3ea8900fE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4path4Path11to_path_buf17hde9f3f538e8905cbE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he1a242be3fde4c15E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hf8f66fcab5c6b75dE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17hd53ae10b065e3cffE"(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare void @_ZN14regex_automata4meta5regex5Regex15create_captures17h40a7a26c686e556fE(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #8

; Function Attrs: cold noinline nonlazybind uwtable
declare void @_ZN14regex_automata4util4iter8Searcher30handle_overlapping_empty_match17h303c599bb03bab1bE(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias noundef align 8 dereferenceable(64), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN79_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Display$GT$3fmt17h77c076b8983fdac4E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hacd1e47e81704a8aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden void @"_ZN14regex_automata4util4pool5inner17Pool$LT$T$C$F$GT$8get_slow17h9bc77b66211ca58fE"(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, i64 noundef, i64 noundef) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @"_ZN3std6thread5local17LocalKey$LT$T$GT$4with17hdb15a6181d25bda5E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_rem_by_zero17h287abf2b12774aa9E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$8try_lock17h2f9627d61c1309a3E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking13assert_failed17he316a72c0dc518c0E(i8 noundef range(i8 0, 3), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #12

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN71_$LT$regex_automata..util..search..Span$u20$as$u20$core..fmt..Debug$GT$3fmt17h2be7ed8bf8bcd47aE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2da80fa7a72f6a0bE"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(24)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare hidden noundef ptr @"_ZN3std3sys12thread_local6native4lazy20Storage$LT$T$C$D$GT$16get_or_init_slow17h2cf13e060231596aE"(ptr noundef nonnull align 8, ptr noalias noundef align 8 dereferenceable_or_null(16)) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync4once5futex4Once4call17h2423c0c333975c13E(ptr noundef nonnull align 4, i1 noundef zeroext, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #7

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hd3b173c1eb78750bE() unnamed_addr #9

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN3std4sync9lazy_lock14panic_poisoned17h1ac6056989a39e12E() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h3d9ac109b170882cE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN75_$LT$mdbook..book..summary..SectionNumber$u20$as$u20$core..fmt..Display$GT$3fmt17h19b7fc1d1426f9e8E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN94_$LT$alloc..collections..vec_deque..VecDeque$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfdbb706ae2394b2bE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hceb3a66d3426f614E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17heddb906750a98316E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb7627cd51bab6772E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hdbed32c902ff405eE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hedadc2e0c34d4682E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h852d27749cf51211E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4ec80ef1cfd082fcE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h78a5e4be43677d34E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h00fd392337902a24E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0b87b8d8c8c26abfE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa47986b62aebedbE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h438a4dfdb7d44f28E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h58284ae3c66d69b7E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9710a22a728d2aacE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fc399b7a086bb0aE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN99_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb6f0f0e827880d24E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN99_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h12fa5b02ee1f103fE"(ptr noalias noundef align 8 dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hefc67aee8cf86df0E"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17ha2c6ce00ed65d182E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1dabbf464b05e851E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3fe0a2eade0dd0e9E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h93b4b5a267dc2fabE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf295426a1b13b2b0E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf28655beb9bd08e4E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h04d3ea4fcd278eeeE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc331b54dc5217333E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce9b7c3c394ab4d8E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9794edf9cf3ac3ffE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3383d5b9530f1fb6E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0c5a2ea731923a87E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h215b72b2832b37d0E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3aa3dd15e64425e3E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfaa3b1214a0bce41E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3ea249d5d1555b97E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h51f733852c6e904dE"(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6ab273e131e42822E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h679930ecdfd8e8ceE"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc4b74b642f7edf90E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h3b83ef848a5e28f1E"(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc5fc26b3691feb9bE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hff1be98541214bbcE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h40dde8b63ee0f843E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.cttz.i16(i16, i1 immarg) #12

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17hdd6adcf539425d91E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noundef nonnull, ptr noundef, ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN56_$LT$regex..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hd09f9aa708c8cf5fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN61_$LT$serde_json..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h6756481c5d8e4405E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN88_$LT$regex_automata..util..search..Input$u20$as$u20$core..convert..From$LT$$RF$H$GT$$GT$4from17hc7b022f54a4ff206E"(ptr dead_on_unwind noalias noundef writable sret([48 x i8]) align 8 captures(address) dereferenceable(48), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17hc90346a54c402309E"(ptr noalias noundef align 8 dereferenceable(24), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr dead_on_unwind noalias noundef writable sret([104 x i8]) align 8 captures(address) dereferenceable(104), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17hdb5973f77cffc3deE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h6eeb9904a2cdd6bdE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h88fbfcded4c0f8d7E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h136b40c5cee3fc98E"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13

; Function Attrs: noinline nonlazybind uwtable
declare void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h718c20df8e205d8bE"(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #13
end_hunk_1
