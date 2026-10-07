Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.13?download=true
inline.NumInlined: 4254
inline.NumDeleted: 1726
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_RINvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13verify_regexpNCNvMs0_B2_NtB2_11ScanContext17handle_atom_match0EB6_:bb.a
  br i1 %i.as, label %.lr.ph.i.us, label %.lr.ph.preheader.i.split

.lr.ph.i.us:                                      ; preds = %.lr.ph.preheader.i, %.backedge469.i.us
  %i.cr = phi i64 [ %i.cx, %.backedge469.i.us ], [ %.us-phi3611797, %.lr.ph.preheader.i ]
  %i.cs = phi i64 [ %i.cy, %.backedge469.i.us ], [ %.promoted, %.lr.ph.preheader.i ]
  %.sroa.093.0594.i.us = phi ptr [ %i.ct, %.backedge469.i.us ], [ %.val273.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.093.0594.i.us, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !3643
  %i.cu = load i64, ptr %.sroa.093.0594.i.us, align 8, !noalias !3642, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !3644)
  store ptr %i.ar, ptr %i.x, align 8, !alias.scope !3645, !noalias !3643
  store ptr %i.be, ptr %.sroa.4.0..sroa_idx317.i, align 8, !alias.scope !3645, !noalias !3643
  store i64 %i.cu, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3645, !noalias !3643
  store i64 1, ptr %.sroa.6.0..sroa_idx318.i, align 8, !alias.scope !3645, !noalias !3643
  store i64 1, ptr %i.bf, align 8, !alias.scope !3646, !noalias !3647
  store i8 1, ptr %i.bg, align 8, !alias.scope !3646, !noalias !3647
  %i.cv = call noundef zeroext i1 @_RINvXs6_NtNtNtCskKLDkoKarTP_4core4iter8adapters7step_byINtB6_6StepByINtNtB8_4skip4SkipINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterhEEEEINtB6_10StepByImplB14_E13spec_try_folduNCINvNvNtNtNtBa_6traits8iterator8Iterator3all5checkRhNCINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3J_6FastVM9try_matchNtB3N_10FwdCodeLocNCINvNtNtB3P_7scanner7context13verify_regexpNCNvMs0_B59_NtB59_11ScanContext17handle_atom_match0E0Es_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB3P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.x), !noalias !3642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !3643
  br i1 %i.cv, label %.backedge469.i.us, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.us
  %i.cw = load i64, ptr %.sroa.093.0594.i.us, align 8, !noalias !3642, !noundef !10 ; 2 uses
  br i1 %.not.i285.i, label %.split.us.loopexit, label %.backedge469.i.us

.backedge469.i.us:                                ; preds = %bb.aa, %.lr.ph.i.us
  %i.cx = phi i64 [ %i.cr, %.lr.ph.i.us ], [ %i.cw, %bb.aa ] ; 2 uses
  %i.cy = phi i64 [ %i.cs, %.lr.ph.i.us ], [ 1, %bb.aa ] ; 3 uses
  %i.cz = icmp eq ptr %i.ct, %i.cq
  br i1 %i.cz, label %.loopexit.i, label %.lr.ph.i.us

.lr.ph.preheader.i.split:                         ; preds = %.lr.ph.preheader.i
  br i1 %.not.i285.i, label %.split, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i.split
  %scevgep = getelementptr i8, ptr %.val273.i, i64 -8
  %scevgep625 = getelementptr i8, ptr %scevgep, i64 %.idx.i
  %i.da = load i64, ptr %scevgep625, align 8, !noalias !3642, !noundef !10
  br label %.loopexit.i

.lr.ph620.i:                                      ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.ca, i64 3 ; 3 uses
  %.val271.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %.idx635.i = shl nuw nsw i64 %.val256624.i, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %.val271.i, i64 %.idx635.i
  %i.dd = shl nuw nsw i64 %i.cd, 1
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cd
  %i.df = shl nuw nsw i64 %i.cd, %i.bi
  br label %bb.ab

.lr.ph617.i:                                      ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ch ; 3 uses
  %i.dh = shl nuw nsw i64 %i.cg, 1                ; 2 uses
  %.val269.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %.idx634.i = shl nuw nsw i64 %.val256624.i, 3
  %i.di = getelementptr inbounds nuw i8, ptr %.val269.i, i64 %.idx634.i
  %i.dj = shl nuw nsw i64 %i.cg, %i.bi
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.cg ; 2 uses
  br label %bb.aj

.split612.i:                                      ; preds = %bb.t
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %i.dn = add i64 %i.cm, %.sroa.0.0623.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !3643
  store ptr %i.dm, ptr %i.w, align 8, !noalias !3643
  store i64 %i.cl, ptr %i.bk, align 8, !noalias !3643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3643
  call void @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast5instrNtB5_11InstrParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w), !noalias !3642
  %i.do = load i16, ptr %i.v, align 8, !range !3648, !noalias !3643, !noundef !10 ; 2 uses
  %.not218613.i = icmp eq i16 %i.do, -1
  br i1 %.not218613.i, label %._crit_edge614.i, label %.split.i

.lr.ph604.i:                                      ; preds = %bb.l
  %.val267.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %.idx632.i = shl nuw nsw i64 %.val256624.i, 3
  %i.dp = getelementptr inbounds nuw i8, ptr %.val267.i, i64 %.idx632.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.sroa.047.0.copyload.i237.i = load i16, ptr %i.dq, align 1, !alias.scope !3638, !noalias !3640
  %i.dr = zext i16 %.sroa.047.0.copyload.i237.i to i64
  %i.ds = shl nuw nsw i64 %i.dr, %i.bi
  br label %bb.bm

.lr.ph596.i:                                      ; preds = %bb.l
  %.val265.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 2 uses
  %.idx628.i = shl nuw nsw i64 %.val256624.i, 3
  %i.dt = getelementptr inbounds nuw i8, ptr %.val265.i, i64 %.idx628.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.sroa.050.0.copyload.i229.i = load i16, ptr %i.du, align 1, !alias.scope !3638, !noalias !3640
  %i.dv = zext i16 %.sroa.050.0.copyload.i229.i to i64
  %i.dw = shl nuw nsw i64 %i.dv, %i.bi            ; 2 uses
  br label %bb.bn

.split:                                           ; preds = %.lr.ph.preheader.i.split
  store i64 %.us-phi3611797, ptr %i.ad, align 8
  store i64 %.us-phi3621820, ptr %i.aa, align 1
  %i.dx = load i64, ptr %.val273.i, align 8, !noalias !3642, !noundef !10
  br label %.split.us

.split.us.loopexit:                               ; preds = %bb.aa
  store i64 %.us-phi3611797, ptr %i.ad, align 8
  store i64 %.us-phi3621820, ptr %i.aa, align 1
  br label %.split.us

.split.us:                                        ; preds = %.split.us.loopexit, %.split
  %.us-phi = phi i64 [ %i.dx, %.split ], [ %i.cw, %.split.us.loopexit ]
  store i64 1, ptr %i.aa, align 8
  store i64 %.us-phi, ptr %i.ad, align 8
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE5clearB6_(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %i.ap) #41, !noalias !3642
  br label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.thread

.loopexit.i.loopexit:                             ; preds = %.backedge457.i
  %i.dy = add i64 %i.ce, %.sroa.0.0623.i
  br label %.loopexit.i

.loopexit.i.loopexit386:                          ; preds = %.backedge459.i
  %i.dz = add i64 %.sroa.0.0623.i, 3
  %i.ea = add i64 %i.dz, %i.dh
  br label %.loopexit.i

.loopexit.i.loopexit387:                          ; preds = %bb.bm
  %i.eb = add i64 %.sroa.0.0623.i, 3
  br label %.loopexit.i

.loopexit.i.loopexit391:                          ; preds = %bb.bq
  %i.ec = add i64 %.sroa.0.0623.i, 3
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.backedge466.i, %.backedge464.i, %.backedge462.i, %.lr.ph.i.preheader, %.backedge469.i.us, %.loopexit.i.loopexit391, %.loopexit.i.loopexit387, %.loopexit.i.loopexit386, %.loopexit.i.loopexit, %._crit_edge614.i
  %.us-phi3621819 = phi i64 [ %.us-phi3621820, %.loopexit.i.loopexit391 ], [ %.us-phi3621820, %.loopexit.i.loopexit ], [ %.us-phi3621820, %.backedge462.i ], [ %i.cy, %.backedge469.i.us ], [ %.us-phi3621820, %.loopexit.i.loopexit386 ], [ %.us-phi3621820, %._crit_edge614.i ], [ %.us-phi3621820, %.backedge464.i ], [ %.us-phi3621820, %.loopexit.i.loopexit387 ], [ 1, %.lr.ph.i.preheader ], [ %.us-phi3621820, %.backedge466.i ] ; 2 uses
  %.us-phi3611796 = phi i64 [ %.us-phi3611797, %.loopexit.i.loopexit391 ], [ %.us-phi3611797, %.loopexit.i.loopexit ], [ %.us-phi3611797, %.backedge462.i ], [ %i.cx, %.backedge469.i.us ], [ %.us-phi3611797, %.loopexit.i.loopexit386 ], [ %.us-phi3611797, %._crit_edge614.i ], [ %.us-phi3611797, %.backedge464.i ], [ %.us-phi3611797, %.loopexit.i.loopexit387 ], [ %i.da, %.lr.ph.i.preheader ], [ %.us-phi3611797, %.backedge466.i ] ; 2 uses
  %.promoted627 = phi i64 [ %.promoted, %.loopexit.i.loopexit391 ], [ %.promoted, %.loopexit.i.loopexit ], [ %.promoted, %.backedge462.i ], [ %i.cy, %.backedge469.i.us ], [ %.promoted, %.loopexit.i.loopexit386 ], [ %.promoted, %._crit_edge614.i ], [ %.promoted, %.backedge464.i ], [ %.promoted, %.loopexit.i.loopexit387 ], [ 1, %.lr.ph.i.preheader ], [ %.promoted, %.backedge466.i ] ; 2 uses
  %i.ed = phi i64 [ %i.ec, %.loopexit.i.loopexit391 ], [ %i.dy, %.loopexit.i.loopexit ], [ %i.kp, %.backedge462.i ], [ %i.cp, %.lr.ph.i.preheader ], [ %i.ea, %.loopexit.i.loopexit386 ], [ %i.dn, %._crit_edge614.i ], [ %i.kp, %.backedge464.i ], [ %i.eb, %.loopexit.i.loopexit387 ], [ %i.cp, %.backedge469.i.us ], [ %i.kp, %.backedge466.i ]
  %i.ee = load <2 x i64>, ptr %i.bj, align 8, !alias.scope !3649, !noalias !3637
  %i.ef = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !3650, !noalias !3637
  store <2 x i64> %i.ee, ptr %i.ap, align 8, !alias.scope !3650, !noalias !3637
  store <2 x i64> %i.ef, ptr %i.bj, align 8, !alias.scope !3649, !noalias !3637
  %i.eg = load <2 x i64>, ptr %i.bl, align 8, !alias.scope !3651, !noalias !3637
  %i.eh = load <2 x i64>, ptr %i.aw, align 8, !alias.scope !3652, !noalias !3637
  store <2 x i64> %i.eg, ptr %i.aw, align 8, !alias.scope !3652, !noalias !3637
  store <2 x i64> %i.eh, ptr %i.bl, align 8, !alias.scope !3651, !noalias !3637
  %i.ei = load <2 x i64>, ptr %i.bn, align 8, !alias.scope !3653, !noalias !3637
  %i.ej = load <2 x i64>, ptr %i.bm, align 8, !alias.scope !3654, !noalias !3637
  store <2 x i64> %i.ei, ptr %i.bm, align 8, !alias.scope !3654, !noalias !3637
  store <2 x i64> %i.ej, ptr %i.bn, align 8, !alias.scope !3653, !noalias !3637
  %i.ek = load <2 x i64>, ptr %i.bp, align 8, !alias.scope !3655, !noalias !3637
  %i.el = load <2 x i64>, ptr %i.bo, align 8, !alias.scope !3656, !noalias !3637
  store <2 x i64> %i.ek, ptr %i.bo, align 8, !alias.scope !3656, !noalias !3637
  store <2 x i64> %i.el, ptr %i.bp, align 8, !alias.scope !3655, !noalias !3637
  %i.em = load <2 x i64>, ptr %i.br, align 8, !alias.scope !3657, !noalias !3637
  %i.en = load <2 x i64>, ptr %i.bq, align 8, !alias.scope !3658, !noalias !3637
  store <2 x i64> %i.em, ptr %i.bq, align 8, !alias.scope !3658, !noalias !3637
  store <2 x i64> %i.en, ptr %i.br, align 8, !alias.scope !3657, !noalias !3637
  %i.eo = load <2 x i64>, ptr %i.bt, align 8, !alias.scope !3659, !noalias !3637
  %i.ep = load <2 x i64>, ptr %i.bs, align 8, !alias.scope !3660, !noalias !3637
  store <2 x i64> %i.eo, ptr %i.bs, align 8, !alias.scope !3660, !noalias !3637
  store <2 x i64> %i.ep, ptr %i.bt, align 8, !alias.scope !3659, !noalias !3637
  call void @llvm.experimental.noalias.scope.decl(metadata !3661)
  call void @llvm.experimental.noalias.scope.decl(metadata !3662)
  %.sroa.0.0.copyload.i.i.i.12.i.i.i = load i64, ptr %i.bu, align 8, !alias.scope !3663, !noalias !3664
  %.sroa.02.0.copyload.i.i.i.12.i.i.i = load i64, ptr %i.bv, align 8, !alias.scope !3665, !noalias !3666
  store i64 %.sroa.02.0.copyload.i.i.i.12.i.i.i, ptr %i.bu, align 8, !alias.scope !3663, !noalias !3664
  store i64 %.sroa.0.0.copyload.i.i.i.12.i.i.i, ptr %i.bv, align 8, !alias.scope !3665, !noalias !3666
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE5clearB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj) #41, !noalias !3642
  %.val256.i = load i64, ptr %i.aw, align 8, !alias.scope !3635, !noalias !3637, !noundef !10 ; 3 uses
  %i.eq = icmp ult i64 %.val256.i, 1152921504606846976
  call void @llvm.assume(i1 %i.eq)
  %i.er = icmp eq i64 %.val256.i, 0
  br i1 %i.er, label %_RINvMNtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB3_6FastVM9try_matchNtB7_10FwdCodeLocNCINvNtNtB9_7scanner7context13verify_regexpNCNvMs0_B1r_NtB1r_11ScanContext17handle_atom_match0E0EB9_.exit.loopexit, label %bb.i

bb.ab:                                            ; preds = %.backedge457.i, %.lr.ph620.i
  %.sroa.098.0618.i = phi ptr [ %.val271.i, %.lr.ph620.i ], [ %i.es, %.backedge457.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.098.0618.i, i64 8 ; 2 uses
  %i.et = load i64, ptr %.sroa.098.0618.i, align 8, !noalias !3642, !noundef !10 ; 4 uses
  %.not221.i = icmp ult i64 %i.et, %..i.i
  br i1 %.not221.i, label %bb.ac, label %.backedge457.i

bb.ac:                                            ; preds = %bb.ab
  %i.eu = sub nuw nsw i64 %..i.i, %i.et           ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.et ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3667)
  call void @llvm.experimental.noalias.scope.decl(metadata !3668)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3643
  br i1 %i.as, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ew = icmp samesign ult i64 %i.eu, %i.cd
  br i1 %i.ew, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.i

bb.ae:                                            ; preds = %bb.ac
  %i.ex = icmp samesign ult i64 %i.eu, %i.dd
  br i1 %i.ex, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ey = lshr i64 %i.eu, 1
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ev, i64 %i.ey
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.q, ptr noundef nonnull readonly %i.ev, ptr noundef nonnull readonly %i.ez, ptr noundef nonnull readonly %i.db, ptr noundef nonnull readonly %i.de), !noalias !3642
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.q, align 8, !noalias !3669 ; 2 uses
  %.sroa.52.0.copyload.i.i = load ptr, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !3669 ; 2 uses
  %.sroa.64.0.copyload.i.i = load i64, ptr %.sroa.64.0..sroa_idx.i.i, align 8, !noalias !3669 ; 3 uses
  %.sroa.8.0.copyload.i.i = load i64, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !noalias !3669 ; 2 uses
  %umax.i.i = call i64 @llvm.umax.i64(i64 %.sroa.64.0.copyload.i.i, i64 %.sroa.8.0.copyload.i.i)
  %exitcond.not.i.i1290.not = icmp ult i64 %.sroa.64.0.copyload.i.i, %.sroa.8.0.copyload.i.i
  br i1 %exitcond.not.i.i1290.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.preheader, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread432.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.preheader: ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i.i) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

bb.ag:                                            ; preds = %bb.ah
  %i.fa = add i64 %.sroa.64.0.i.i1291, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fa, %umax.i.i
  br i1 %exitcond.not.i.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread432.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread432.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3643
  br label %bb.ai

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.preheader, %bb.ag
  %.sroa.64.0.i.i1291 = phi i64 [ %i.fa, %bb.ag ], [ %.sroa.64.0.copyload.i.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i.preheader ] ; 3 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.copyload.i.i, i64 %.sroa.64.0.i.i1291 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload.i.i, i64 %.sroa.64.0.i.i1291
  %i.fd = load i8, ptr %i.fb, align 1, !noalias !3642, !noundef !10
  %i.fe = load i8, ptr %i.fc, align 1, !noalias !3642, !noundef !10
  %.not5.i.i = icmp eq i8 %i.fd, %i.fe
  br i1 %.not5.i.i, label %bb.ah, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i

bb.ah:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !noalias !3642, !noundef !10
  %i.fh = icmp eq i8 %i.fg, 0
  br i1 %i.fh, label %bb.ag, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i: ; preds = %bb.ah, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.i, %bb.ae, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3643
  br label %.backedge457.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.i: ; preds = %bb.ad
  %bcmp.i.i = call i32 @bcmp(ptr nonnull readonly %i.ev, ptr nonnull readonly %i.db, i64 range(i64 0, -9223372036854775808) %i.cd), !alias.scope !3670, !noalias !3642
  %i.fi = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3643
  br i1 %i.fi, label %bb.ai, label %.backedge457.i

.backedge457.i:                                   ; preds = %bb.ai, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread.i, %bb.ab
  %i.fj = icmp eq ptr %i.es, %i.dc
  br i1 %i.fj, label %.loopexit.i.loopexit, label %bb.ab

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit.thread432.i
  %i.fk = add nuw nsw i64 %i.et, %i.df
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.fk) #41
  br label %.backedge457.i

bb.aj:                                            ; preds = %.backedge459.i, %.lr.ph617.i
  %.sroa.0102.0615.i = phi ptr [ %.val269.i, %.lr.ph617.i ], [ %i.fl, %.backedge459.i ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0102.0615.i, i64 8 ; 2 uses
  %i.fm = load i64, ptr %.sroa.0102.0615.i, align 8, !noalias !3642, !noundef !10 ; 4 uses
  %.not220.i = icmp ult i64 %i.fm, %..i.i
  br i1 %.not220.i, label %bb.ak, label %.backedge459.i

bb.ak:                                            ; preds = %bb.aj
  %i.fn = sub nuw nsw i64 %..i.i, %i.fm           ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.fm ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3671)
  br i1 %i.as, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fp = icmp samesign ult i64 %i.fn, %i.cg
  br i1 %i.fp, label %.backedge459.i, label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fq = icmp samesign ult i64 %i.fn, %i.dh
  br i1 %i.fq, label %.backedge459.i, label %bb.ap

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3672
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3673
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.ci, ptr noundef nonnull readonly %i.dk, ptr noundef nonnull readonly %i.dg, ptr noundef nonnull readonly %i.dl), !noalias !3674
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.b, ptr noundef nonnull readonly %i.fo, ptr noundef nonnull readonly %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !3675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3673
  %.sroa.032.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !3672 ; 2 uses
  %.sroa.334.0.copyload.i = load ptr, ptr %.sroa.334.0..sroa_idx.i, align 8, !noalias !3672 ; 2 uses
  %.sroa.536.0.copyload.i = load ptr, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !3672 ; 2 uses
  %.sroa.738.0.copyload.i = load i64, ptr %.sroa.738.0..sroa_idx.i, align 8, !noalias !3672
  %.sroa.940.0.copyload.i = load i64, ptr %.sroa.940.0..sroa_idx.i, align 8, !noalias !3672 ; 3 uses
  %.sroa.1041.0.copyload.i = load i64, ptr %.sroa.1041.0..sroa_idx.i, align 8, !noalias !3672 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3672
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.940.0.copyload.i, i64 %.sroa.1041.0.copyload.i)
  %exitcond.not.i1288.not = icmp ult i64 %.sroa.940.0.copyload.i, %.sroa.1041.0.copyload.i
  br i1 %exitcond.not.i1288.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader: ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.0.copyload.i) ], !noalias !3642
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.334.0.copyload.i) ], !noalias !3642
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.536.0.copyload.i) ], !noalias !3642
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

bb.ao:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i
  %i.fr = add i64 %.sroa.830.0.i1289, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.fr, %umax.i
  br i1 %exitcond.not.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, %bb.ao
  %.sroa.830.0.i1289 = phi i64 [ %i.fr, %bb.ao ], [ %.sroa.940.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.032.0.copyload.i, i64 %.sroa.830.0.i1289
  %i.ft = add i64 %.sroa.830.0.i1289, %.sroa.738.0.copyload.i ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.536.0.copyload.i, i64 %i.ft
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.334.0.copyload.i, i64 %i.ft
  %i.fw = load i8, ptr %i.fs, align 1, !noalias !3642, !noundef !10
  %i.fx = load i8, ptr %i.fu, align 1, !noalias !3642, !noundef !10
  %i.fy = load i8, ptr %i.fv, align 1, !noalias !3642, !noundef !10
  %i.fz = xor i8 %i.fy, %i.fw
  %i.ga = and i8 %i.fz, %i.fx
  %.not15.i = icmp eq i8 %i.ga, 0
  br i1 %.not15.i, label %bb.ao, label %.backedge459.i

bb.ap:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3672
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.ci, ptr noundef nonnull readonly %i.dk, ptr noundef nonnull readonly %i.dg, ptr noundef nonnull readonly %i.dl), !noalias !3674
  %.sroa.01.sroa.0.0.copyload.i = load ptr, ptr %i.c, align 8, !alias.scope !3676, !noalias !3677 ; 2 uses
  %.sroa.01.sroa.5.0.copyload.i = load ptr, ptr %.sroa.01.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3676, !noalias !3677 ; 2 uses
  %.sroa.01.sroa.7.0.copyload.i = load i64, ptr %.sroa.01.sroa.7.0..sroa_idx.i, align 8, !alias.scope !3676, !noalias !3677 ; 2 uses
  %.sroa.01.sroa.8.0.copyload.i = load i64, ptr %.sroa.01.sroa.8.0..sroa_idx.i, align 8, !alias.scope !3676, !noalias !3677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3672
  %i.gb = call i64 @llvm.usub.sat.i64(i64 %.sroa.01.sroa.8.0.copyload.i, i64 %.sroa.01.sroa.7.0.copyload.i)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.at, %bb.ap
  %.sroa.8.0.i = phi i64 [ undef, %bb.ap ], [ %.sroa.8.1.i, %bb.at ] ; 3 uses
  %.sroa.0.051.i = phi i64 [ 0, %bb.ap ], [ %.sroa.0.1.i, %bb.at ] ; 4 uses
  %.sroa.18.0.i = phi i64 [ 0, %bb.ap ], [ %i.gh, %bb.at ] ; 3 uses
  %.sroa.919.0.i = phi ptr [ %i.fo, %bb.ap ], [ %i.gi, %bb.at ] ; 4 uses
  %.sroa.616.0.i = phi i64 [ %.sroa.01.sroa.7.0.copyload.i, %bb.ap ], [ %i.gj, %bb.at ] ; 3 uses
  %i.gc = icmp eq ptr %.sroa.919.0.i, %i.be
  br i1 %i.gc, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.919.0.i, i64 1 ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.be
  br i1 %i.ge, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.gf = load i8, ptr %i.gd, align 1, !alias.scope !3671, !noalias !3678, !noundef !10
  %i.gg = icmp ne i8 %i.gf, 0
  %.not8.i.i.i = icmp eq i64 %.sroa.0.051.i, 0
  %or.cond68.i = select i1 %i.gg, i1 %.not8.i.i.i, i1 false ; 2 uses
  %.sroa.8.1.i = select i1 %or.cond68.i, i64 %.sroa.18.0.i, i64 %.sroa.8.0.i ; 2 uses
  %.sroa.0.1.i = select i1 %or.cond68.i, i64 1, i64 %.sroa.0.051.i ; 2 uses
  %exitcond70.not.i = icmp eq i64 %.sroa.18.0.i, %i.gb
  br i1 %exitcond70.not.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gh = add i64 %.sroa.18.0.i, 1
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.919.0.i, i64 2
  %i.gj = add nuw i64 %.sroa.616.0.i, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.sroa.0.0.copyload.i) ], !noalias !3642
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.0.0.copyload.i, i64 %.sroa.616.0.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.sroa.5.0.copyload.i) ], !noalias !3642
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.5.0.copyload.i, i64 %.sroa.616.0.i
  %i.gm = load i8, ptr %i.gl, align 1, !noalias !3674, !noundef !10
  %i.gn = load i8, ptr %.sroa.919.0.i, align 1, !alias.scope !3671, !noalias !3679, !noundef !10
  %i.go = load i8, ptr %i.gk, align 1, !noalias !3674, !noundef !10
  %i.gp = xor i8 %i.go, %i.gn
  %i.gq = and i8 %i.gp, %i.gm
  %.not17.i = icmp eq i8 %i.gq, 0
  br i1 %.not17.i, label %bb.aq, label %.backedge459.i

bb.au:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %.sroa.8.2.ph.i = phi i64 [ %.sroa.8.1.i, %bb.as ], [ %.sroa.8.0.i, %bb.ar ], [ %.sroa.8.0.i, %bb.aq ]
  %.sroa.0.2.ph.i = phi i64 [ %.sroa.0.1.i, %bb.as ], [ %.sroa.0.051.i, %bb.ar ], [ %.sroa.0.051.i, %bb.aq ]
  %i.gr = trunc nuw i64 %.sroa.0.2.ph.i to i1
  %i.gs = icmp ult i64 %.sroa.8.2.ph.i, %i.cg
  %or.cond.i97 = select i1 %i.gr, i1 %i.gs, i1 false
  br i1 %or.cond.i97, label %.backedge459.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit

.backedge459.i:                                   ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i, %bb.at, %bb.au, %bb.al, %bb.am, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit, %bb.aj
  %i.gt = icmp eq ptr %i.fl, %i.di
  br i1 %i.gt, label %.loopexit.i.loopexit386, label %bb.aj

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit: ; preds = %bb.ao, %bb.an, %bb.au
  %i.gu = add nuw nsw i64 %i.fm, %i.dj
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.gu) #41
  br label %.backedge459.i

.split.i:                                         ; preds = %.split612.i, %._crit_edge.i
  %i.gv = phi i16 [ %i.js, %._crit_edge.i ], [ %i.do, %.split612.i ]
  %.sroa.4108.0.copyload.i = load ptr, ptr %.sroa.4108.0..sroa_idx.i, align 8, !noalias !3643 ; 9 uses
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3643 ; 7 uses
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !3643 ; 5 uses
  %.val263.i = load ptr, ptr %i.bd, align 8, !alias.scope !3635, !noalias !3637, !nonnull !10, !noundef !10 ; 6 uses
  %.val264.i = load i64, ptr %i.aw, align 8, !alias.scope !3635, !noalias !3637, !noundef !10 ; 2 uses
  %.idx633.i = shl nuw nsw i64 %.val264.i, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %.val263.i, i64 %.idx633.i ; 5 uses
  %i.gx = icmp eq i64 %.val264.i, 0
  br i1 %i.gx, label %._crit_edge.i, label %.lr.ph606.i

.lr.ph606.i:                                      ; preds = %.split.i
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !3643
  %i.gy = getelementptr inbounds nuw i8, ptr %.sroa.4108.0.copyload.i, i64 %.sroa.6.0.copyload.i ; 3 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload.i, i64 %.sroa.9.0.copyload.i ; 2 uses
  %i.ha = shl nuw i64 %.sroa.6.0.copyload.i, 1    ; 2 uses
  %i.hb = shl i64 %.sroa.6.0.copyload.i, %i.bi    ; 4 uses
  switch i16 %i.gv, label %.lr.ph606.split.i [
    i16 1, label %.lr.ph606.split.us.i
    i16 2, label %.lr.ph606.split.us607.i.preheader
  ], !prof !50

.lr.ph606.split.us607.i.preheader:                ; preds = %.lr.ph606.i
  br i1 %i.as, label %.lr.ph606.split.us607.i.us, label %.lr.ph606.split.us607.i

.lr.ph606.split.us607.i.us:                       ; preds = %.lr.ph606.split.us607.i.preheader, %.backedge.us611.i.us
  %.sroa.0111.0605.us608.i.us = phi ptr [ %i.hc, %.backedge.us611.i.us ], [ %.val263.i, %.lr.ph606.split.us607.i.preheader ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0111.0605.us608.i.us, i64 8 ; 2 uses
  %i.hd = load i64, ptr %.sroa.0111.0605.us608.i.us, align 8, !noalias !3642, !noundef !10 ; 4 uses
  %.not219.us609.i.us = icmp ult i64 %i.hd, %..i.i
  br i1 %.not219.us609.i.us, label %bb.av, label %.backedge.us611.i.us

bb.av:                                            ; preds = %.lr.ph606.split.us607.i.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4108.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  %i.he = sub nuw nsw i64 %..i.i, %i.hd
  call void @llvm.experimental.noalias.scope.decl(metadata !3680)
  %i.hf = icmp ult i64 %i.he, %i.ha
  br i1 %i.hf, label %.backedge.us611.i.us, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.hd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !3681
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, ptr noundef nonnull readonly %.sroa.4108.0.copyload.i, ptr noundef nonnull readonly %i.gy, ptr noundef nonnull readonly %.sroa.8.0.copyload.i, ptr noundef nonnull readonly %i.gz), !noalias !3682
  %.sroa.01.sroa.0.0.copyload.i.us.i.us = load ptr, ptr %i.o, align 8, !alias.scope !3683, !noalias !3684 ; 2 uses
  %.sroa.01.sroa.5.0.copyload.i.us.i.us = load ptr, ptr %.sroa.01.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3683, !noalias !3684 ; 2 uses
  %.sroa.01.sroa.7.0.copyload.i.us.i.us = load i64, ptr %.sroa.01.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !3683, !noalias !3684 ; 2 uses
  %.sroa.01.sroa.8.0.copyload.i.us.i.us = load i64, ptr %.sroa.01.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !3683, !noalias !3684
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !3681
  %i.hh = call i64 @llvm.usub.sat.i64(i64 %.sroa.01.sroa.8.0.copyload.i.us.i.us, i64 %.sroa.01.sroa.7.0.copyload.i.us.i.us)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ba, %bb.aw
  %.sroa.8.0.i.us.i.us = phi i64 [ undef, %bb.aw ], [ %.sroa.8.1.i.us.i.us, %bb.ba ] ; 3 uses
  %.sroa.0.051.i.us.i.us = phi i64 [ 0, %bb.aw ], [ %.sroa.0.1.i.us.i.us, %bb.ba ] ; 4 uses
  %.sroa.18.0.i.us.i.us = phi i64 [ 0, %bb.aw ], [ %i.hn, %bb.ba ] ; 3 uses
  %.sroa.919.0.i.us.i.us = phi ptr [ %i.hg, %bb.aw ], [ %i.ho, %bb.ba ] ; 4 uses
  %.sroa.616.0.i.us.i.us = phi i64 [ %.sroa.01.sroa.7.0.copyload.i.us.i.us, %bb.aw ], [ %i.hp, %bb.ba ] ; 3 uses
  %i.hi = icmp eq ptr %.sroa.919.0.i.us.i.us, %i.be
  br i1 %i.hi, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.919.0.i.us.i.us, i64 1 ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.be
  br i1 %i.hk, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hl = load i8, ptr %i.hj, align 1, !alias.scope !3685, !noalias !3686, !noundef !10
  %i.hm = icmp ne i8 %i.hl, 0
  %.not8.i.i.i.us.i.us = icmp eq i64 %.sroa.0.051.i.us.i.us, 0
  %or.cond68.i.us.i.us = select i1 %i.hm, i1 %.not8.i.i.i.us.i.us, i1 false ; 2 uses
  %.sroa.8.1.i.us.i.us = select i1 %or.cond68.i.us.i.us, i64 %.sroa.18.0.i.us.i.us, i64 %.sroa.8.0.i.us.i.us ; 2 uses
  %.sroa.0.1.i.us.i.us = select i1 %or.cond68.i.us.i.us, i64 1, i64 %.sroa.0.051.i.us.i.us ; 2 uses
  %exitcond70.not.i.us.i.us = icmp eq i64 %.sroa.18.0.i.us.i.us, %i.hh
  br i1 %exitcond70.not.i.us.i.us, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hn = add i64 %.sroa.18.0.i.us.i.us, 1
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.919.0.i.us.i.us, i64 2
  %i.hp = add nuw i64 %.sroa.616.0.i.us.i.us, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.sroa.0.0.copyload.i.us.i.us) ]
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.0.0.copyload.i.us.i.us, i64 %.sroa.616.0.i.us.i.us
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.sroa.5.0.copyload.i.us.i.us) ]
  %i.hr = getelementptr inbounds nuw i8, ptr %.sroa.01.sroa.5.0.copyload.i.us.i.us, i64 %.sroa.616.0.i.us.i.us
  %i.hs = load i8, ptr %i.hr, align 1, !noalias !3682, !noundef !10
  %i.ht = load i8, ptr %.sroa.919.0.i.us.i.us, align 1, !alias.scope !3685, !noalias !3687, !noundef !10
  %i.hu = load i8, ptr %i.hq, align 1, !noalias !3682, !noundef !10
  %i.hv = xor i8 %i.hu, %i.ht
  %i.hw = and i8 %i.hv, %i.hs
  %.not17.i.us.i.us = icmp eq i8 %i.hw, 0
  br i1 %.not17.i.us.i.us, label %bb.ax, label %.backedge.us611.i.us

bb.bb:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.sroa.8.2.ph.i.us.i.us = phi i64 [ %.sroa.8.1.i.us.i.us, %bb.az ], [ %.sroa.8.0.i.us.i.us, %bb.ay ], [ %.sroa.8.0.i.us.i.us, %bb.ax ]
  %.sroa.0.2.ph.i.us.i.us = phi i64 [ %.sroa.0.1.i.us.i.us, %bb.az ], [ %.sroa.0.051.i.us.i.us, %bb.ay ], [ %.sroa.0.051.i.us.i.us, %bb.ax ]
  %i.hx = trunc nuw i64 %.sroa.0.2.ph.i.us.i.us to i1
  %i.hy = icmp ult i64 %.sroa.8.2.ph.i.us.i.us, %.sroa.6.0.copyload.i
  %or.cond.i.us.i.us = select i1 %i.hx, i1 %i.hy, i1 false
  br i1 %or.cond.i.us.i.us, label %.backedge.us611.i.us, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit.us.i.us

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit.us.i.us: ; preds = %bb.bb
  %i.hz = add i64 %i.hd, %i.hb
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.hz) #41
  br label %.backedge.us611.i.us

.backedge.us611.i.us:                             ; preds = %bb.ba, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit.us.i.us, %bb.bb, %bb.av, %.lr.ph606.split.us607.i.us
  %i.ia = icmp eq ptr %i.hc, %i.gw
  br i1 %i.ia, label %._crit_edge.i, label %.lr.ph606.split.us607.i.us

.lr.ph606.split.us.i:                             ; preds = %.lr.ph606.i
  br i1 %i.as, label %.lr.ph606.split.us.split.us.i, label %.lr.ph606.split.us.split.i

.lr.ph606.split.us.split.us.i:                    ; preds = %.lr.ph606.split.us.i, %.backedge.us.us.i
  %.sroa.0111.0605.us.us.i = phi ptr [ %i.ib, %.backedge.us.us.i ], [ %.val263.i, %.lr.ph606.split.us.i ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %.sroa.0111.0605.us.us.i, i64 8 ; 2 uses
  %i.ic = load i64, ptr %.sroa.0111.0605.us.us.i, align 8, !noalias !3642, !noundef !10 ; 4 uses
  %.not219.us.us.i = icmp ult i64 %i.ic, %..i.i
  br i1 %.not219.us.us.i, label %bb.bc, label %.backedge.us.us.i

bb.bc:                                            ; preds = %.lr.ph606.split.us.split.us.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4108.0.copyload.i) ]
  %i.id = sub nuw nsw i64 %..i.i, %i.ic           ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3688)
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3643
  %i.ie = icmp ult i64 %i.id, %i.ha
  br i1 %i.ie, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread.us.us.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.if = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ic ; 2 uses
  %i.ig = lshr i64 %i.id, 1
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.if, i64 %i.ig
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.p, ptr noundef nonnull readonly %i.if, ptr noundef nonnull readonly %i.ih, ptr noundef nonnull readonly %.sroa.4108.0.copyload.i, ptr noundef nonnull readonly %i.gy), !noalias !3642
  %.sroa.01.0.copyload.i289.us.us.i = load ptr, ptr %i.p, align 8, !noalias !3690 ; 2 uses
  %.sroa.52.0.copyload.i291.us.us.i = load ptr, ptr %.sroa.52.0..sroa_idx.i290.i, align 8, !noalias !3690 ; 2 uses
  %.sroa.64.0.copyload.i293.us.us.i = load i64, ptr %.sroa.64.0..sroa_idx.i292.i, align 8, !noalias !3690 ; 3 uses
  %.sroa.8.0.copyload.i295.us.us.i = load i64, ptr %.sroa.8.0..sroa_idx.i294.i, align 8, !noalias !3690 ; 2 uses
  %umax.i296.us.us.i = call i64 @llvm.umax.i64(i64 %.sroa.64.0.copyload.i293.us.us.i, i64 %.sroa.8.0.copyload.i295.us.us.i)
  %exitcond.not.i298.us.us.i1286.not = icmp ult i64 %.sroa.64.0.copyload.i293.us.us.i, %.sroa.8.0.copyload.i295.us.us.i
  br i1 %exitcond.not.i298.us.us.i1286.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i.preheader, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread435.us.us.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i.preheader: ; preds = %bb.bd
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload.i289.us.us.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.52.0.copyload.i291.us.us.i) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i

bb.be:                                            ; preds = %bb.bf
  %i.ii = add i64 %.sroa.64.0.i297.us.us.i1287, 1 ; 2 uses
  %exitcond.not.i298.us.us.i = icmp eq i64 %i.ii, %umax.i296.us.us.i
  br i1 %exitcond.not.i298.us.us.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread435.us.us.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i.preheader, %bb.be
  %.sroa.64.0.i297.us.us.i1287 = phi i64 [ %i.ii, %bb.be ], [ %.sroa.64.0.copyload.i293.us.us.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i.preheader ] ; 3 uses
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr %.sroa.01.0.copyload.i289.us.us.i, i64 %.sroa.64.0.i297.us.us.i1287 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.sroa.52.0.copyload.i291.us.us.i, i64 %.sroa.64.0.i297.us.us.i1287
  %i.il = load i8, ptr %i.ij, align 1, !noalias !3642, !noundef !10
  %i.im = load i8, ptr %i.ik, align 1, !noalias !3642, !noundef !10
  %.not5.i300.us.us.i = icmp eq i8 %i.il, %i.im
  br i1 %.not5.i300.us.us.i, label %bb.bf, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread.us.us.i

bb.bf:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 1
  %i.io = load i8, ptr %i.in, align 1, !noalias !3642, !noundef !10
  %i.ip = icmp eq i8 %i.io, 0
  br i1 %i.ip, label %bb.be, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread.us.us.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread435.us.us.i: ; preds = %bb.be, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3643
  %i.iq = add i64 %i.ic, %i.hb
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.iq) #41
  br label %.backedge.us.us.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread.us.us.i: ; preds = %bb.bf, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj2_EIBX_hEEINtB5_7ZipImplBW_B1s_E4nextCs7gfv9tzbXmh_6yara_x.exit.i299.us.us.i, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3643
  br label %.backedge.us.us.i

.backedge.us.us.i:                                ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread.us.us.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread435.us.us.i, %.lr.ph606.split.us.split.us.i
  %i.ir = icmp eq ptr %i.ib, %i.gw
  br i1 %i.ir, label %._crit_edge.i, label %.lr.ph606.split.us.split.us.i

.lr.ph606.split.us.split.i:                       ; preds = %.lr.ph606.split.us.i, %.backedge.us.i
  %.sroa.0111.0605.us.i = phi ptr [ %i.is, %.backedge.us.i ], [ %.val263.i, %.lr.ph606.split.us.i ] ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0111.0605.us.i, i64 8 ; 2 uses
  %i.it = load i64, ptr %.sroa.0111.0605.us.i, align 8, !noalias !3642, !noundef !10 ; 4 uses
  %.not219.us.i = icmp ult i64 %i.it, %..i.i
  br i1 %.not219.us.i, label %bb.bg, label %.backedge.us.i

bb.bg:                                            ; preds = %.lr.ph606.split.us.split.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4108.0.copyload.i) ]
  %i.iu = sub nuw nsw i64 %..i.i, %i.it
  call void @llvm.experimental.noalias.scope.decl(metadata !3688)
  call void @llvm.experimental.noalias.scope.decl(metadata !3689)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !3643
  %i.iv = icmp samesign ult i64 %i.iu, %.sroa.6.0.copyload.i
  br i1 %i.iv, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread.us.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.us.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.us.i: ; preds = %bb.bg
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.it
  %bcmp.i287.us.i = call i32 @bcmp(ptr nonnull readonly %i.iw, ptr nonnull readonly %.sroa.4108.0.copyload.i, i64 range(i64 0, -9223372036854775808) %.sroa.6.0.copyload.i), !alias.scope !3691, !noalias !3642
  %i.ix = icmp eq i32 %bcmp.i287.us.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3643
  br i1 %i.ix, label %bb.bh, label %.backedge.us.i

bb.bh:                                            ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.us.i
  %i.iy = add i64 %i.it, %i.hb
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.iy) #41
  br label %.backedge.us.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread.us.i: ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3643
  br label %.backedge.us.i

.backedge.us.i:                                   ; preds = %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.thread.us.i, %bb.bh, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM21try_match_literal_fwd.exit301.us.i, %.lr.ph606.split.us.split.i
  %i.iz = icmp eq ptr %i.is, %i.gw
  br i1 %i.iz, label %._crit_edge.i, label %.lr.ph606.split.us.split.i

.lr.ph606.split.us607.i:                          ; preds = %.lr.ph606.split.us607.i.preheader, %.backedge.us611.i
  %.sroa.0111.0605.us608.i = phi ptr [ %i.ja, %.backedge.us611.i ], [ %.val263.i, %.lr.ph606.split.us607.i.preheader ] ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.0111.0605.us608.i, i64 8 ; 2 uses
  %i.jb = load i64, ptr %.sroa.0111.0605.us608.i, align 8, !noalias !3642, !noundef !10 ; 4 uses
  %.not219.us609.i = icmp ult i64 %i.jb, %..i.i
  br i1 %.not219.us609.i, label %bb.bi, label %.backedge.us611.i

bb.bi:                                            ; preds = %.lr.ph606.split.us607.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4108.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.0.copyload.i) ]
  %i.jc = sub nuw nsw i64 %..i.i, %i.jb
  call void @llvm.experimental.noalias.scope.decl(metadata !3680)
  %i.jd = icmp samesign ult i64 %i.jc, %.sroa.6.0.copyload.i
  br i1 %i.jd, label %.backedge.us611.i, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.je = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !3681
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3692
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noundef nonnull readonly %.sroa.4108.0.copyload.i, ptr noundef nonnull readonly %i.gy, ptr noundef nonnull readonly %.sroa.8.0.copyload.i, ptr noundef nonnull readonly %i.gz), !noalias !3682
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.n, ptr noundef nonnull readonly %i.je, ptr noundef nonnull readonly %i.be, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m), !noalias !3693
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3692
  %.sroa.032.0.copyload.i.us.i = load ptr, ptr %i.n, align 8, !noalias !3681 ; 2 uses
  %.sroa.334.0.copyload.i.us.i = load ptr, ptr %.sroa.334.0..sroa_idx.i.i, align 8, !noalias !3681 ; 2 uses
  %.sroa.536.0.copyload.i.us.i = load ptr, ptr %.sroa.536.0..sroa_idx.i.i, align 8, !noalias !3681 ; 2 uses
  %.sroa.738.0.copyload.i.us.i = load i64, ptr %.sroa.738.0..sroa_idx.i.i, align 8, !noalias !3681
  %.sroa.940.0.copyload.i.us.i = load i64, ptr %.sroa.940.0..sroa_idx.i.i, align 8, !noalias !3681 ; 3 uses
  %.sroa.1041.0.copyload.i.us.i = load i64, ptr %.sroa.1041.0..sroa_idx.i.i, align 8, !noalias !3681 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3681
  %umax.i302.us.i = call i64 @llvm.umax.i64(i64 %.sroa.940.0.copyload.i.us.i, i64 %.sroa.1041.0.copyload.i.us.i)
  %exitcond.not.i303.us.i1284.not = icmp ult i64 %.sroa.940.0.copyload.i.us.i, %.sroa.1041.0.copyload.i.us.i
  br i1 %exitcond.not.i303.us.i1284.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i.preheader, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit.us.i.loopexit

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i.preheader: ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.032.0.copyload.i.us.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.334.0.copyload.i.us.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.536.0.copyload.i.us.i) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i

bb.bk:                                            ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i
  %i.jf = add i64 %.sroa.830.0.i.us.i1285, 1      ; 2 uses
  %exitcond.not.i303.us.i = icmp eq i64 %i.jf, %umax.i302.us.i
  br i1 %exitcond.not.i303.us.i, label %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit.us.i.loopexit, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i.preheader, %bb.bk
  %.sroa.830.0.i.us.i1285 = phi i64 [ %i.jf, %bb.bk ], [ %.sroa.940.0.copyload.i.us.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i.preheader ] ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.032.0.copyload.i.us.i, i64 %.sroa.830.0.i.us.i1285
  %i.jh = add i64 %.sroa.830.0.i.us.i1285, %.sroa.738.0.copyload.i.us.i ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.536.0.copyload.i.us.i, i64 %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.334.0.copyload.i.us.i, i64 %i.jh
  %i.jk = load i8, ptr %i.jg, align 1, !noalias !3642, !noundef !10
  %i.jl = load i8, ptr %i.ji, align 1, !noalias !3642, !noundef !10
  %i.jm = load i8, ptr %i.jj, align 1, !noalias !3642, !noundef !10
  %i.jn = xor i8 %i.jm, %i.jk
  %i.jo = and i8 %i.jn, %i.jl
  %.not15.i.us.i = icmp eq i8 %i.jo, 0
  br i1 %.not15.i.us.i, label %bb.bk, label %.backedge.us611.i

_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit.us.i.loopexit: ; preds = %bb.bk, %bb.bj
  %i.jp = add i64 %i.jb, %i.hb
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.jp) #41
  br label %.backedge.us611.i

.backedge.us611.i:                                ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEIBN_BW_BW_EEINtB5_7ZipImplBW_B1o_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.us.i, %_RNvMs_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast6fastvmNtB4_6FastVM28try_match_masked_literal_fwd.exit.us.i.loopexit, %bb.bi, %.lr.ph606.split.us607.i
  %i.jq = icmp eq ptr %i.ja, %i.gw
  br i1 %i.jq, label %._crit_edge.i, label %.lr.ph606.split.us607.i

._crit_edge614.i:                                 ; preds = %._crit_edge.i, %.split612.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !3643
  br label %.loopexit.i

.lr.ph606.split.i:                                ; preds = %.lr.ph606.i, %.backedge.i
  %.sroa.0111.0605.i = phi ptr [ %i.jt, %.backedge.i ], [ %.val263.i, %.lr.ph606.i ] ; 2 uses
  %i.jr = load i64, ptr %.sroa.0111.0605.i, align 8, !noalias !3642, !noundef !10
  %.not219.i = icmp ult i64 %i.jr, %..i.i
  br i1 %.not219.i, label %bb.bl, label %.backedge.i

._crit_edge.i:                                    ; preds = %.backedge.us611.i, %.backedge.us611.i.us, %.backedge.us.i, %.backedge.us.us.i, %.backedge.i, %.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3643
  call void @_RNvXs0_NtNtNtCs7gfv9tzbXmh_6yara_x2re4fast5instrNtB5_11InstrParserNtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.v, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.w), !noalias !3642
  %i.js = load i16, ptr %i.v, align 8, !range !3648, !noalias !3643, !noundef !10 ; 2 uses
  %.not218.i = icmp eq i16 %i.js, -1
  br i1 %.not218.i, label %._crit_edge614.i, label %.split.i

bb.bl:                                            ; preds = %.lr.ph606.split.i
  store i64 %.us-phi3611797, ptr %i.ad, align 8
  store i64 %.us-phi3621820, ptr %i.aa, align 1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #39, !noalias !3642
  unreachable

.backedge.i:                                      ; preds = %.lr.ph606.split.i
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.0111.0605.i, i64 8 ; 2 uses
  %i.ju = icmp eq ptr %i.jt, %i.gw
  br i1 %i.ju, label %._crit_edge.i, label %.lr.ph606.split.i

bb.bm:                                            ; preds = %bb.bm, %.lr.ph604.i
  %.sroa.0116.0603.i = phi ptr [ %.val267.i, %.lr.ph604.i ], [ %i.jv, %bb.bm ] ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.0116.0603.i, i64 8 ; 2 uses
  %i.jw = load i64, ptr %.sroa.0116.0603.i, align 8, !noalias !3642, !noundef !10
  %i.jx = add i64 %i.jw, %i.ds
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.jx) #41
  %i.jy = icmp eq ptr %i.jv, %i.dp
  br i1 %i.jy, label %.loopexit.i.loopexit387, label %bb.bm

bb.bn:                                            ; preds = %bb.bq, %.lr.ph596.i
  %.sroa.0119.0595.i = phi ptr [ %.val265.i, %.lr.ph596.i ], [ %i.jz, %bb.bq ] ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.0119.0595.i, i64 8 ; 2 uses
  %i.ka = load i64, ptr %.sroa.0119.0595.i, align 8, !noalias !3642, !noundef !10 ; 3 uses
  %i.kb = add i64 %i.ka, %i.dw                    ; 3 uses
  %i.kc = icmp ult i64 %i.kb, %i.ka
  %.not216.i = icmp ugt i64 %i.kb, %..i.i
  %or.cond.i = or i1 %i.kc, %.not216.i
  br i1 %or.cond.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ka ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 %i.dw
  %i.kf = load atomic ptr, ptr @_RNvNvNtNtNtCslssDYltVX0B_6memchr4arch6x86_646memchr10memchr_raw2FN monotonic, align 8, !noalias !3694, !nonnull !10, !noundef !10
  %i.kg = call { i64, ptr } %i.kf(i8 noundef 10, ptr noundef nonnull readonly %i.kd, ptr noundef nonnull readonly %i.ke), !noalias !3695, !inline_history !3544 ; 2 uses
  %i.kh = extractvalue { i64, ptr } %i.kg, 0
  %i.ki = trunc nuw i64 %i.kh to i1
  br i1 %i.ki, label %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i, label %bb.bp

_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i: ; preds = %bb.bo
  %i.kj = extractvalue { i64, ptr } %i.kg, 1
  %i.kk = call noundef i64 @_RNvXNtCslssDYltVX0B_6memchr3extPhNtB2_7Pointer8distanceCs7gfv9tzbXmh_6yara_x(ptr noundef %i.kj, ptr noundef nonnull readonly %i.kd), !noalias !3642 ; 0 uses
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  call fastcc void @_RNvMNtNtCs7gfv9tzbXmh_6yara_x2re9bitmapsetINtB2_9BitmapSetuE6insertB6_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.bj, i64 noundef %i.kb) #41
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %_RINvNtNtNtCslssDYltVX0B_6memchr4arch7generic6memchr21search_slice_with_rawNCNvNtB8_6memchr6memchr0ECs7gfv9tzbXmh_6yara_x.exit.thread.i, %bb.bn
  %i.kl = icmp eq ptr %i.jz, %i.dt
  br i1 %i.kl, label %.loopexit.i.loopexit391, label %bb.bn

bb.br:                                            ; preds = %bb.x, %bb.v
  %.sroa.0320.0.i = phi i8 [ %spec.select627.i, %bb.v ], [ %spec.select.i, %bb.x ] ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.ca, i64 3
  %.sroa.049.0.copyload.i232.i = load i16, ptr %i.km, align 1, !alias.scope !3638, !noalias !3640 ; 2 uses
  %i.kn = icmp eq i16 %.sroa.049.0.copyload.i232.i, 0
  %i.ko = load i16, ptr %i.at, align 8, !alias.scope !3635, !noalias !3637
  %spec.select626.i = select i1 %i.kn, i16 %i.ko, i16 %.sroa.049.0.copyload.i232.i ; 3 uses
  %.sroa.13.0.ph418.in.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 1
  %.sroa.13.0.ph418.i = load i16, ptr %.sroa.13.0.ph418.in.i, align 1, !alias.scope !3638, !noalias !3640 ; 3 uses
  %i.kp = add i64 %.sroa.0.0623.i, 5              ; 8 uses
  %i.kq = icmp ugt i64 %i.kp, %i.bw
  br i1 %i.kq, label %bb.ci, label %bb.bs, !prof !14

bb.bs:                                            ; preds = %bb.br
  %i.kr = sub nuw i64 %i.bw, %i.kp                ; 14 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.kp ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3696)
  %.not.i.i = icmp eq i64 %i.bw, %i.kp
  br i1 %.not.i.i, label %bb.bt, label %bb.bu, !prof !14

bb.bt:                                            ; preds = %bb.bs
  store i64 %.us-phi3611797, ptr %i.ad, align 8
  store i64 %.us-phi3621820, ptr %i.aa, align 1
  call void @_RNvNtCskKLDkoKarTP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @6, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @347) #39, !noalias !3697
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.kt = load i8, ptr %i.ks, align 1, !alias.scope !3696, !noalias !3698, !noundef !10 ; 2 uses
  switch i8 %i.kt, label %bb.bv [
    i8 1, label %bb.bw
    i8 2, label %bb.by
    i8 7, label %bb.cc
    i8 3, label %.lr.ph600.i
    i8 4, label %bb.ce
    i8 5, label %.lr.ph600.i
    i8 6, label %bb.cg
    i8 0, label %.lr.ph600.i
  ], !prof !49

bb.bv:                                            ; preds = %bb.bu
  store i64 %.us-phi3611797, ptr %i.ad, align 8
  store i64 %.us-phi3621820, ptr %i.aa, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3699
  store i8 %i.kt, ptr %i.u, align 1, !noalias !3699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !3699
  store ptr %i.u, ptr %i.t, align 8, !noalias !3699
  %.sroa.443.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXNtNtNtCskKLDkoKarTP_4core3fmt3num3imphNtB6_7Display3fmt, ptr %.sroa.443.0..sroa_idx.i.i, align 8, !noalias !3699
  call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @354, ptr noundef nonnull %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @355) #39, !noalias !3697
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %.sroa.044.0.copyload.i.i = load i16, ptr %i.ku, align 1, !alias.scope !3696, !noalias !3698 ; 2 uses
  %i.kv = zext i16 %.sroa.044.0.copyload.i.i to i64
  %i.kw = add nuw nsw i64 %i.kv, 3                ; 2 uses
  %.not60.i.i = icmp samesign ugt i64 %i.kw, %i.kr
  br i1 %.not60.i.i, label %bb.bx, label %.lr.ph602.i, !prof !14

bb.bx:                                            ; preds = %bb.bw
  store i64 %.us-phi3611797, ptr %i.ad, align 8
  store i64 %.us-phi3621820, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.kw, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @348) #39, !noalias !3697
  unreachable

bb.by:                                            ; preds = %bb.bu
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  %.sroa.045.0.copyload.i.i = load i16, ptr %i.kx, align 1, !alias.scope !3696, !noalias !3698 ; 2 uses
  %i.ky = zext i16 %.sroa.045.0.copyload.i.i to i64 ; 2 uses
  %i.kz = add nuw nsw i64 %i.ky, 3                ; 5 uses
  %.not58.i.i = icmp samesign ugt i64 %i.kz, %i.kr
  br i1 %.not58.i.i, label %bb.bz, label %bb.ca, !prof !14

bb.bz:                                            ; preds = %bb.by
  store i64 %.us-phi3611797, ptr %i.ad, align 8
  store i64 %.us-phi3621820, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef 3, i64 noundef %i.kz, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @350) #39, !noalias !3697
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.la = getelementptr inbounds nuw i8, ptr %i.ks, i64 3
  %i.lb = add nuw nsw i64 %i.kz, %i.ky            ; 2 uses
  %.not59.i.i = icmp samesign ugt i64 %i.lb, %i.kr
  br i1 %.not59.i.i, label %bb.cb, label %bb.cn, !prof !14

bb.cb:                                            ; preds = %bb.ca
  store i64 %.us-phi3611797, ptr %i.ad, align 8
  store i64 %.us-phi3621820, ptr %i.aa, align 1
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.kz, i64 noundef %i.lb, i64 noundef range(i64 0, -9223372036854775808) %i.kr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @349) #39, !noalias !3697
  unreachable

bb.cc:                                            ; preds = %bb.bu
end_hunk_0
begin_hunk_1_@_RNvNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo4main:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6137
  store i64 -2, ptr %i.f, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store i64 -3, ptr %.sroa.49.0..sroa_idx, align 8
  call void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBY_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema10CuckooJsonEEEE4withNCNvB2p_9set_local0uEB2t_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @421, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.f), !noalias !6137
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !6137
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 0, i64 16, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.k, ptr %i.g, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.p, align 8
  call void @_RINvNtCsbbTh99npV2h_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema10CuckooJsonEB1d_(ptr noalias nofree noundef nonnull sret([192 x i8]) align 8 captures(address) dereferenceable(192) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.q = load i64, ptr %i.i, align 8, !range !41, !noundef !10
  %i.r = icmp eq i64 %i.q, -3
  br i1 %i.r, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.m, %bb.e, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.e, ptr noundef nonnull align 8 dereferenceable(192) %i.i, i64 192, i1 false)
  call void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBY_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema10CuckooJsonEEEE4withNCNvB2p_9set_local0uEB2t_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @421, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.e), !noalias !6138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 2, ptr %0, align 8
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.f
  %eh.lpad-body = phi { ptr, i32 } [ %i.t, %bb.f ], [ %i.z, %bb.i ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.v) #43
          to label %bb.o unwind label %bb.n

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !10, !align !17, !noundef !10 ; 3 uses
  store ptr %i.v, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !6139
  store i64 -2, ptr %i.d, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 120
  store i64 -3, ptr %.sroa.412.0..sroa_idx, align 8
  invoke void @_RINvMs2_NtNtCsG258MDvU3F_3std6thread5localINtB6_8LocalKeyINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtBY_6option6OptionINtNtCsexYYUdYSQU6_5alloc2rc2RcNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6cuckoo6schema10CuckooJsonEEEE4withNCNvB2p_9set_local0uEB2t_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @421, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(192) %i.d)
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6139
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6140
  store i64 0, ptr %i.c, align 8, !noalias !6140
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !6140
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !6140
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6140
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 1610612768, ptr %i.w, align 8, !noalias !6140
  store ptr %i.c, ptr %i.b, align 8, !noalias !6140
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @730, ptr %i.x, align 8, !noalias !6140
  %i.y = invoke noundef zeroext i1 @_RNvXs3_NtCsbbTh99npV2h_10serde_json5errorNtB5_5ErrorNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.i, !noalias !6141

bb.i:                                             ; preds = %bb.k, %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %.body unwind label %bb.l, !noalias !6141

bb.j:                                             ; preds = %bb.h
  br i1 %i.y, label %bb.k, label %bb.m, !prof !14

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @731, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @733) #39
          to label %.noexc.i unwind label %bb.i, !noalias !6141

.noexc.i:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42, !noalias !6141
  unreachable

bb.m:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6140
  store i64 0, ptr %0, align 8
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsbbTh99npV2h_10serde_json5error5ErrorECs7gfv9tzbXmh_6yara_x(ptr nonnull %i.v)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.d

bb.n:                                             ; preds = %.body
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

bb.o:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i1, i8 } @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context10verify_xor(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %5, i16 noundef %6) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  %i.c = alloca [48 x i8], align 8                ; 9 uses
  %i.d = alloca [48 x i8], align 8                ; 10 uses
  %i.e = add i64 %4, %1                           ; 4 uses
  %i.f = icmp ugt i64 %i.e, %3
  br i1 %i.f, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call { ptr, i64 } @_RNvXNtNtCs7gfv9tzbXmh_6yara_x8compiler5atomsNtB2_4AtomINtNtCskKLDkoKarTP_4core7convert5AsRefShE6as_ref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %5) ; 2 uses
  %i.h = extractvalue { ptr, i64 } %i.g, 1
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = load i16, ptr %i.i, align 8, !noundef !10
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = icmp samesign ugt i64 %1, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @422) #39
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.m = extractvalue { ptr, i64 } %i.g, 0
  %i.n = load i8, ptr %i.m, align 1, !noundef !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.p = load i8, ptr %i.o, align 1, !noundef !10 ; 2 uses
  %i.q = xor i8 %i.p, %i.n                        ; 6 uses
  %i.r = tail call fastcc noundef zeroext i1 @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context16verify_full_word(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 %4, i64 %i.e, i16 noundef %6, i1 noundef zeroext true, i8 %i.q)
  br i1 %i.r, label %bb.g, label %bb.s

bb.f:                                             ; preds = %bb.c
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.k, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @423) #39
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.s = icmp ult i64 %i.e, %4
  br i1 %i.s, label %bb.h, label %bb.i, !prof !51

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %4, i64 noundef %i.e, i64 noundef %3, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @424) #39
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %4 ; 7 uses
  %i.u = icmp eq i8 %i.n, %i.p
  br i1 %i.u, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.v = icmp samesign ult i64 %1, 8
  br i1 %i.v, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.07.0.zext.i = zext i8 %i.q to i64
  %.sroa.07.0.isplat.i = mul nuw i64 %.sroa.07.0.zext.i, 72340172838076673
  %i.w = and i64 %1, 9223372036854775800          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 2 uses
  %i.y = and i64 %1, 7                            ; 2 uses
  %i.z = lshr i64 %1, 3                           ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.w ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.z
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.z
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.ab, ptr noundef nonnull readonly %i.t, ptr noundef nonnull readonly %i.ac)
  %.sroa.051.0.copyload.i = load ptr, ptr %i.b, align 8, !noalias !6159 ; 2 uses
  %.sroa.553.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.553.0.copyload.i = load ptr, ptr %.sroa.553.0..sroa_idx.i, align 8, !noalias !6159 ; 2 uses
  %.sroa.655.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.655.0.copyload.i = load i64, ptr %.sroa.655.0..sroa_idx.i, align 8, !noalias !6159 ; 3 uses
  %.sroa.856.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.856.0.copyload.i = load i64, ptr %.sroa.856.0..sroa_idx.i, align 8, !noalias !6159 ; 2 uses
  %umax.i = tail call i64 @llvm.umax.i64(i64 %.sroa.655.0.copyload.i, i64 %.sroa.856.0.copyload.i)
  %exitcond.not.i48.not = icmp ult i64 %.sroa.655.0.copyload.i, %.sroa.856.0.copyload.i
  br i1 %exitcond.not.i48.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.553.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

bb.l:                                             ; preds = %bb.j
  %.sroa.01.0.zext.i = zext i8 %i.q to i32
  %.sroa.01.0.isplat.i = mul nuw i32 %.sroa.01.0.zext.i, 16843009
  %i.ad = and i64 %1, 4                           ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = and i64 %1, 3                           ; 2 uses
  %i.ag = lshr i64 %1, 2                          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ad ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ag
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ag
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.d, ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %i.ai, ptr noundef nonnull readonly %i.t, ptr noundef nonnull readonly %i.aj)
  %.sroa.038.0.copyload.i = load ptr, ptr %i.d, align 8, !noalias !6159 ; 2 uses
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.539.0.copyload.i = load ptr, ptr %.sroa.539.0..sroa_idx.i, align 8, !noalias !6159 ; 2 uses
  %.sroa.641.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.641.0.copyload.i = load i64, ptr %.sroa.641.0..sroa_idx.i, align 8, !noalias !6159 ; 3 uses
  %.sroa.842.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.842.0.copyload.i = load i64, ptr %.sroa.842.0..sroa_idx.i, align 8, !noalias !6159 ; 2 uses
  %umax85.i = tail call i64 @llvm.umax.i64(i64 %.sroa.641.0.copyload.i, i64 %.sroa.842.0.copyload.i)
  %exitcond86.not.i50.not = icmp ult i64 %.sroa.641.0.copyload.i, %.sroa.842.0.copyload.i
  br i1 %exitcond86.not.i50.not, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader: ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.038.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.539.0.copyload.i) ]
  br label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

bb.m:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i
  %i.ak = add i64 %.sroa.655.0.i49, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ak, %umax.i
  br i1 %exitcond.not.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, %bb.m
  %.sroa.655.0.i49 = phi i64 [ %i.ak, %bb.m ], [ %.sroa.655.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.sroa.051.0.copyload.i, i64 %.sroa.655.0.i49
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.sroa.553.0.copyload.i, i64 %.sroa.655.0.i49
  %.sroa.012.0.copyload.i = load i64, ptr %i.al, align 1
  %.sroa.013.0.copyload.i = load i64, ptr %i.am, align 1
  %i.an = xor i64 %.sroa.013.0.copyload.i, %.sroa.07.0.isplat.i
  %.not14.i = icmp eq i64 %.sroa.012.0.copyload.i, %i.an
  br i1 %.not14.i, label %bb.m, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i: ; preds = %bb.m, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6159
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.y
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.ao, ptr noundef nonnull readonly %i.aa, ptr noundef nonnull readonly %i.ap)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6160)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !6161, !noalias !6162, !noundef !10 ; 3 uses
  %.promoted.i.i = load i64, ptr %i.aq, align 8, !alias.scope !6161, !noalias !6162 ; 3 uses
  %.val1.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !6160, !noalias !6162, !nonnull !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !6160, !noalias !6162, !nonnull !10
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i, i64 %i.as)
  %exitcond.not.i69.not.i = icmp ult i64 %.promoted.i.i, %i.as
  br i1 %exitcond.not.i69.not.i, label %.lr.ph.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i.thread

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i.thread: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6159
  br label %.sink.split

bb.n:                                             ; preds = %.lr.ph.i
  %i.au = add i64 %i.av, 1                        ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.au, %umax.i.i
  br i1 %exitcond.not.i.i, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i.thread19, label %.lr.ph.i

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i.thread19: ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6159
  br label %.sink.split

.lr.ph.i:                                         ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i, %bb.n
  %i.av = phi i64 [ %i.au, %bb.n ], [ %.promoted.i.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 %i.av
  %.val6.i.i = load i8, ptr %i.aw, align 1, !noalias !6163, !noundef !10
  %.val7.i.i = load i8, ptr %i.ax, align 1, !noalias !6163, !noundef !10
  %i.ay = xor i8 %.val7.i.i, %i.q
  %.not.i.i = icmp eq i8 %.val6.i.i, %i.ay
  br i1 %.not.i.i, label %bb.n, label %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i

_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i: ; preds = %.lr.ph.i
  %.not21 = icmp ult i64 %i.av, %i.as
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not21, label %bb.s, label %bb.r

bb.o:                                             ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i
  %i.az = add i64 %.sroa.641.0.i51, 1             ; 2 uses
  %exitcond86.not.i = icmp eq i64 %i.az, %umax85.i
  br i1 %exitcond86.not.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i, label %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader, %bb.o
  %.sroa.641.0.i51 = phi i64 [ %i.az, %bb.o ], [ %.sroa.641.0.copyload.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i.preheader ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %.sroa.038.0.copyload.i, i64 %.sroa.641.0.i51
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.sroa.539.0.copyload.i, i64 %.sroa.641.0.i51
  %.sroa.05.0.copyload.i = load i32, ptr %i.ba, align 1
  %.sroa.06.0.copyload.i = load i32, ptr %i.bb, align 1
  %i.bc = xor i32 %.sroa.06.0.copyload.i, %.sroa.01.0.isplat.i
  %.not16.i = icmp eq i32 %.sroa.05.0.copyload.i, %i.bc
  br i1 %.not16.i, label %bb.o, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread

_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i: ; preds = %bb.o, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6159
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.af
  %i.be = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.af
  call void @_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.c, ptr noundef nonnull readonly %i.ae, ptr noundef nonnull readonly %i.bd, ptr noundef nonnull readonly %i.ah, ptr noundef nonnull readonly %i.be)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6164)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bh = load i64, ptr %i.bg, align 8, !alias.scope !6165, !noalias !6166, !noundef !10 ; 3 uses
  %.promoted.i24.i = load i64, ptr %i.bf, align 8, !alias.scope !6165, !noalias !6166 ; 3 uses
  %.val1.i.i.i25.i = load ptr, ptr %i.c, align 8, !alias.scope !6164, !noalias !6166, !nonnull !10
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val.i.i.i26.i = load ptr, ptr %i.bi, align 8, !alias.scope !6164, !noalias !6166, !nonnull !10
  %umax.i27.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i24.i, i64 %i.bh)
  %exitcond.not.i2875.not.i = icmp ult i64 %.promoted.i24.i, %i.bh
  br i1 %exitcond.not.i2875.not.i, label %.lr.ph76.i, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread14

_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread14: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6159
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph76.i
  %i.bj = add i64 %i.bk, 1                        ; 2 uses
  %exitcond.not.i28.i = icmp eq i64 %i.bj, %umax.i27.i
  br i1 %exitcond.not.i28.i, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread16, label %.lr.ph76.i

_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread16: ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6159
  br label %.sink.split

.lr.ph76.i:                                       ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.p ], [ %.promoted.i24.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.thread.i ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val1.i.i.i25.i, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i26.i, i64 %i.bk
  %.val6.i29.i = load i8, ptr %i.bl, align 1, !noalias !6167, !noundef !10
  %.val7.i30.i = load i8, ptr %i.bm, align 1, !noalias !6167, !noundef !10
  %i.bn = xor i8 %.val7.i30.i, %i.q
  %.not.i31.i = icmp eq i8 %.val6.i29.i, %i.bn
  br i1 %.not.i31.i, label %bb.p, label %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit

_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread: ; preds = %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj8_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i, %_RNvXs3_NtNtNtCskKLDkoKarTP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAhj4_EBW_EINtB5_7ZipImplBW_BW_E4nextCs7gfv9tzbXmh_6yara_x.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.s

_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit: ; preds = %.lr.ph76.i
  %.not22 = icmp ult i64 %i.bk, %i.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br i1 %.not22, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.i
  %bcmp = tail call i32 @bcmp(ptr nonnull %0, ptr nonnull %i.t, i64 %1)
  %.not11 = icmp eq i32 %bcmp, 0
  br i1 %.not11, label %bb.r, label %bb.s

.sink.split:                                      ; preds = %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread14, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread16, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i.thread, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i.thread19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit, %bb.q
  br label %bb.s

bb.s:                                             ; preds = %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread, %bb.e, %bb.q, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit, %bb.a, %bb.r
  %.sroa.7.1 = phi i8 [ %i.q, %bb.r ], [ undef, %bb.a ], [ undef, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit ], [ undef, %bb.q ], [ undef, %bb.e ], [ undef, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread ], [ undef, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i ]
  %.sroa.0.1 = phi i1 [ true, %bb.r ], [ false, %bb.a ], [ false, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit ], [ false, %bb.q ], [ false, %bb.e ], [ false, %_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eq.exit.thread ], [ false, %_RINvYINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterhEBR_ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB1n_3all5checkTRhB2r_ENCNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context13xor_slices_eqs_0E0INtNtNtBc_3ops12control_flow11ControlFlowuEEB2G_.exit.i ]
  %i.bo = insertvalue { i1, i8 } poison, i1 %.sroa.0.1, 0
  %i.bp = insertvalue { i1, i8 } %i.bo, i8 %.sroa.7.1, 1
  ret { i1, i8 } %i.bp
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11track_match(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(160) %1, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(32) %3, i1 noundef zeroext %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.0.0.copyload = load i64, ptr %i.g, align 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  store i64 %.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i64 16, i1 false)
  %i.h = call { ptr, i64 } @_RINvMs0_NtNtCsiOkGTpNE17y_8wasmtime7runtime6memoryNtB6_6Memory8data_mutNtNtNtCs7gfv9tzbXmh_6yara_x7scanner7context11ScanContextQINtNtB8_5store5StoreB17_EEB1d_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f) ; 2 uses
  %i.i = extractvalue { ptr, i64 } %i.h, 1        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !align !17, !noundef !10 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 256
  %i.m = load i64, ptr %i.l, align 8, !noundef !10 ; 2 uses
  %i.n = icmp ult i64 %i.m, 82351536043346213
  call void @llvm.assume(i1 %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 704
  %i.p = load i64, ptr %i.o, align 8, !noundef !10 ; 2 uses
  %i.q = add nuw nsw i64 %i.m, 7
  %.sroa.03.0 = lshr i64 %i.q, 3
  %i.r = add nuw nsw i64 %.sroa.03.0, 17664       ; 3 uses
  %i.s = lshr i64 %i.p, 3
  %i.t = and i64 %i.p, 7
  %.not15 = icmp ne i64 %i.t, 0
  %i.u = zext i1 %.not15 to i64
  %.sroa.04.0 = add nuw nsw i64 %i.s, %i.u        ; 5 uses
  %i.v = add nuw nsw i64 %.sroa.04.0, %i.r        ; 2 uses
  %.not16 = icmp ugt i64 %i.v, %i.i
  br i1 %.not16, label %bb.h, label %bb.d, !prof !14

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @425) #39
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.w = icmp samesign ugt i64 %.sroa.04.0, 288230376151711744
  br i1 %i.w, label %bb.e, label %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQINtNtCscjxkGEBy879_6bitvec5slice8BitSlicehEINtNtNtBN_3ptr4span12BitSpanErrorhEE6unwrapCs7gfv9tzbXmh_6yara_x.exit

bb.e:                                             ; preds = %bb.d
  %i.x = shl nuw i64 %.sroa.04.0, 3
  %i.y = icmp samesign ugt i64 %.sroa.04.0, 2305843009213693951
  br i1 %i.y, label %bb.f, label %bb.g, !prof !14

bb.f:                                             ; preds = %bb.e
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.sroa.01.0.i = phi i64 [ -1, %bb.f ], [ %i.x, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6179
  %i.z = inttoptr i64 %.sroa.01.0.i to ptr
  store i64 2, ptr %i.c, align 8, !noalias !6179
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !noalias !6179
  call void @_RNvNtCskKLDkoKarTP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @114, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @122, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #39, !noalias !6179
  unreachable

_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQINtNtCscjxkGEBy879_6bitvec5slice8BitSlicehEINtNtNtBN_3ptr4span12BitSpanErrorhEE6unwrapCs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.d
  %i.ab = extractvalue { ptr, i64 } %i.h, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.r ; 2 uses
  %i.ad = shl i64 %.sroa.04.0, 6                  ; 2 uses
  %i.ae = sext i32 %2 to i64                      ; 4 uses
  %i.af = lshr exact i64 %i.ad, 3
  call void @_RINvMs4_NtCscjxkGEBy879_6bitvec5sliceINtB6_8BitSlicehE16assert_in_boundsINtNtNtCskKLDkoKarTP_4core3ops5range5RangejEECs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ad, i64 noundef range(i64 -2147483648, 2147483648) %i.ae, i64 noundef 0, i64 noundef %i.af)
  %i.ag = ashr i64 %i.ae, 3
  %i.ah = trunc i32 %2 to i8
  %i.ai = and i8 %i.ah, 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6180
  store i64 %i.ag, ptr %i.b, align 8, !noalias !6180
  %i.aj = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_3MuthE8with_ptrhNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6180
  %i.ak = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressINtB6_6FrozenNtB6_3MutEhE8with_ptrINtNtCskKLDkoKarTP_4core4cell4CellhENCINvMs8_B6_Bv_4castB1h_E0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107), !noalias !6181 ; 2 uses
  %i.al = shl nuw i8 1, %i.ai
  %i.am = load i8, ptr %i.ak, align 1, !noalias !6181, !noundef !10
  %i.an = or i8 %i.am, %i.al
  store i8 %i.an, ptr %i.ak, align 1, !noalias !6181
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load i8, ptr %i.ao, align 8, !range !16, !noundef !10
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.b
  call void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %i.r, i64 noundef %i.v, i64 noundef %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @426) #39
  unreachable

bb.i:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQINtNtCscjxkGEBy879_6bitvec5slice8BitSlicehEINtNtNtBN_3ptr4span12BitSpanErrorhEE6unwrapCs7gfv9tzbXmh_6yara_x.exit
  %i.ar = call { i64, i64 } @_RNvMs1_NtNtCs7gfv9tzbXmh_6yara_x7scanner7matchesNtB5_14PatternMatches3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %3, i1 noundef zeroext %4)
  %i.as = extractvalue { i64, i64 } %i.ar, 0
  %i.at = icmp eq i64 %i.as, 2
  br i1 %i.at, label %bb.m, label %bb.l

bb.j:                                             ; preds = %_RNvMNtCskKLDkoKarTP_4core6resultINtB2_6ResultQINtNtCscjxkGEBy879_6bitvec5slice8BitSlicehEINtNtNtBN_3ptr4span12BitSpanErrorhEE6unwrapCs7gfv9tzbXmh_6yara_x.exit
  %i.au = getelementptr i8, ptr %i.k, i64 680
  %.val17 = load i64, ptr %i.au, align 8, !noundef !10 ; 2 uses
  %i.av = lshr i64 %.val17, 3
  %i.aw = icmp ugt i64 %i.av, %i.ae
  br i1 %i.aw, label %_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules12is_fast_scan.exit, label %bb.k, !prof !20

bb.k:                                             ; preds = %bb.j
  call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @215) #39
  unreachable

_RNvMs2_NtNtCs7gfv9tzbXmh_6yara_x8compiler5rulesNtB5_5Rules12is_fast_scan.exit: ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.k, i64 672
  %.val = load ptr, ptr %i.ax, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ay = ptrtoint ptr %.val to i64               ; 3 uses
  %i.az = and i64 %i.ay, -8
  %i.ba = getelementptr i8, ptr %.val, i64 %i.az
  %i.bb = sub i64 0, %i.ay
  %i.bc = getelementptr i8, ptr %i.ba, i64 %i.bb  ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bc) ]
  %i.bd = shl i64 %i.ay, 3
  %i.be = and i64 %i.bd, 56
  %i.bf = and i64 %.val17, 7
  %i.bg = or disjoint i64 %i.be, %i.bf
  %i.bh = add nuw nsw i64 %i.bg, %i.ae            ; 2 uses
  %i.bi = lshr i64 %i.bh, 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6182
  store i64 %i.bi, ptr %i.a, align 8, !noalias !6182
  %i.bj = call noundef nonnull ptr @_RINvMs9_NtCs3f5EAvbiDJf_3wyz4comuINtB6_7AddressNtB6_5ConstjE8with_ptrjNCNvMs8_B6_Bv_6offset0ECs7gfv9tzbXmh_6yara_x(ptr noundef nonnull readonly %i.bc, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107), !noalias !6183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6182
  %.val.i.i = load i64, ptr %i.bj, align 8, !noalias !6183, !noundef !10
  %i.bk = and i64 %i.bh, 63
  %i.bl = lshr i64 %.val.i.i, %i.bk
  %i.bm = trunc i64 %i.bl to i1
  %i.bn = call { i64, i64 } @_RNvMs1_NtNtCs7gfv9tzbXmh_6yara_x7scanner7matchesNtB5_14PatternMatches3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %2, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %3, i1 noundef zeroext %4)
  %i.bo = extractvalue { i64, i64 } %i.bn, 0
  %i.bp = icmp eq i64 %i.bo, 2
  %brmerge = or i1 %i.bp, %i.bm
end_hunk_1
begin_hunk_2_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir16of_expr_from_ast:bb.a
  %i.qf = icmp ult i64 %i.qb, %i.qe
  br i1 %i.qf, label %bb.dq, label %.split210.us

bb.dq:                                            ; preds = %.lr.ph.split
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8, !nonnull !10, !noundef !10
  %i.qi = getelementptr inbounds nuw [192 x i8], ptr %i.qh, i64 %i.qb ; 4 uses
  %i.qj = load i64, ptr %i.qi, align 8, !range !26, !alias.scope !7450, !noundef !10
  %i.qk = icmp samesign ult i64 %i.qj, 2
  br i1 %i.qk, label %bb.ds, label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB2_13PatternInRule19make_non_anchorable.exit

.split210.us:                                     ; preds = %.lr.ph.split, %.lr.ph.split.us
  %.us-phi = phi i64 [ %i.pb, %.lr.ph.split.us ], [ %i.qb, %.lr.ph.split ]
  %.us-phi211 = phi i64 [ %i.pe, %.lr.ph.split.us ], [ %i.qe, %.lr.ph.split ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.us-phi, i64 noundef %.us-phi211, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @499) #40
          to label %bb.dr unwind label %bb.s

bb.dr:                                            ; preds = %.split210.us
  unreachable

_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB2_13PatternInRule19make_non_anchorable.exit: ; preds = %bb.dq
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qi, i64 8
  store i64 0, ptr %i.ql, align 8, !alias.scope !7450
  br label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB2_13PatternInRule9anchor_at.exit

bb.ds:                                            ; preds = %bb.dq
  store i64 0, ptr %i.qi, align 8, !alias.scope !7450
  br label %_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB2_13PatternInRule9anchor_at.exit

_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB2_13PatternInRule9anchor_at.exit: ; preds = %_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB2_13PatternInRule19make_non_anchorable.exit, %bb.ds
  %i.qm = phi i64 [ 144, %bb.ds ], [ 136, %_RNvMNtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB2_13PatternInRule19make_non_anchorable.exit ]
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qm ; 2 uses
  %i.qo = load i16, ptr %i.qn, align 2, !alias.scope !7450, !noundef !10
  %i.qp = or i16 %i.qo, 256
  store i16 %i.qp, ptr %i.qn, align 2, !alias.scope !7450
  %i.qq = icmp eq ptr %i.qa, %i.oz
  br i1 %i.qq, label %.loopexit, label %.lr.ph.split

bb.dt:                                            ; preds = %.loopexit
  %i.qr = load i64, ptr %i.ag, align 8, !range !19, !noundef !10
  %i.qs = trunc nuw i64 %i.qr to i1
  %i.qt = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  br i1 %i.qs, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.336.0..sroa_idx, i64 24, i1 false)
  %i.qu = load ptr, ptr %i.qt, align 8, !nonnull !10, !align !17, !noundef !10
  %i.qv = invoke noundef i32 @_RNvMs7_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR14of_pattern_set(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.qu, i32 noundef %.sroa.11.8.extract.trunc, i32 %.sroa.11.12.extract.trunc, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.r)
          to label %bb.dy unwind label %bb.s

bb.dv:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.336.0..sroa_idx, i64 24, i1 false)
  %i.qw = load ptr, ptr %i.qt, align 8, !nonnull !10, !align !17, !noundef !10
  %i.qx = invoke noundef i32 @_RNvMs7_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR13of_expr_tuple(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.qw, i32 noundef %.sroa.11.8.extract.trunc, i32 %.sroa.11.12.extract.trunc, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.ab, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.r)
          to label %bb.dw unwind label %bb.s

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dy, %bb.dw
  %.sroa.072.0 = phi i32 [ %i.qv, %bb.dy ], [ %i.qx, %bb.dw ]
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sroa.072.0, ptr %i.qy, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah)
  br label %bb.dz

bb.dy:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.dx

bb.dz:                                            ; preds = %_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir19quantifier_from_ast.exit, %bb.m, %bb.dx
  ret void

bb.ea:                                            ; preds = %.body294
  br i1 %.sroa.074.0, label %bb.ec, label %common.resume

bb.eb:                                            ; preds = %.body294
  br i1 %.sroa.075.0, label %bb.ed, label %common.resume

bb.ec:                                            ; preds = %bb.ea
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.336.0..sroa_idx) #43
          to label %common.resume unwind label %bb.be

bb.ed:                                            ; preds = %bb.eb
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir10PatternIdxEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.336.0..sroa_idx) #43
          to label %common.resume unwind label %bb.be
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir16or_expr_from_ast(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [1 x i8], align 1                 ; 2 uses
  %i.d = alloca [1 x i8], align 1                 ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 8 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 10 uses
  %i.p = alloca [32 x i8], align 8                ; 5 uses
  %i.q = alloca [64 x i8], align 8                ; 6 uses
  %i.r = alloca [32 x i8], align 8                ; 9 uses
  %i.s = alloca [24 x i8], align 8                ; 15 uses
  %i.t = alloca [32 x i8], align 8                ; 12 uses
  %i.u = alloca [8 x i8], align 8                 ; 5 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %i.x = alloca [80 x i8], align 8                ; 6 uses
  %i.y = alloca [48 x i8], align 8                ; 4 uses
  %i.z = alloca [48 x i8], align 8                ; 5 uses
  %i.aa = alloca [24 x i8], align 8               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 6 uses
  %i.ac = alloca [24 x i8], align 8               ; 12 uses
  %i.ad = tail call { i32, i32 } @_RNvXsX_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_8NAryExprNtB5_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !10
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ah ; 3 uses
  store ptr %i.af, ptr %i.aa, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ai, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store ptr %1, ptr %i.ak, align 8
  call void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir16or_expr_from_ast0ENtB2j_6ExprIdINtNtB6_6result6ResultzNtNtB2l_6errors12CompileErrorENCINvXso_B3B_IB3z_INtNtCsexYYUdYSQU6_5alloc3vec3VecB3l_EB3V_EINtNtNtB4_6traits7collect12FromIteratorIB3z_B3l_B3V_EE9from_iterBQ_E0B4H_EB2n_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.al = load i64, ptr %i.ab, align 8, !range !31, !noundef !10 ; 2 uses
  %i.am = icmp eq i64 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ao = load i64, ptr %i.an, align 8            ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br i1 %i.am, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.ao, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.af

bb.c:                                             ; preds = %bb.a
  store i64 %i.al, ptr %i.ac, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  store i64 %i.ao, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 4 uses
  store ptr %i.aq, ptr %.sroa.5.0..sroa_idx, align 8
  %.cast = inttoptr i64 %i.ao to ptr              ; 2 uses
  %.cast53 = ptrtoint ptr %i.aq to i64
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.cast, i64 %.cast53
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEIBO_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEEB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.z, ptr noundef nonnull %.cast, ptr noundef nonnull %i.as, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ai)
          to label %bb.d unwind label %.loopexit.split-lp245.loopexit.split-lp

.thread177:                                       ; preds = %.loopexit244, %.loopexit.split-lp245.loopexit.split-lp, %.loopexit.split-lp245.loopexit, %.split, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit, %bb.be, %.thread173, %bb.w, %bb.l
  %.pn69 = phi { ptr, i32 } [ %.pn.pn.pn.pn200, %bb.be ], [ %i.dj, %bb.w ], [ %lpad.thr_comm.split-lp, %bb.l ], [ %.pn66176, %.thread173 ], [ %i.di, %.split ], [ %.pn.pn.pn, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit ], [ %lpad.loopexit246, %.loopexit244 ], [ %lpad.loopexit249, %.loopexit.split-lp245.loopexit ], [ %lpad.loopexit.split-lp250, %.loopexit.split-lp245.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.ac) #43
          to label %common.resume unwind label %bb.bd

.loopexit244:                                     ; preds = %bb.h, %bb.j, %bb.cm, %bb.cn, %bb.co, %bb.cp
  %lpad.loopexit246 = landingpad { ptr, i32 }
          cleanup
  br label %.thread177

.loopexit.split-lp245.loopexit:                   ; preds = %bb.cu, %bb.ct
  %lpad.loopexit249 = landingpad { ptr, i32 }
          cleanup
  br label %.thread177

.loopexit.split-lp245.loopexit.split-lp:          ; preds = %bb.f, %.thread, %bb.c
  %lpad.loopexit.split-lp250 = landingpad { ptr, i32 }
          cleanup
  br label %.thread177

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %i.z, align 8 ; 2 uses
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %.sroa.4139.0.copyload = load ptr, ptr %.sroa.4139.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %.sroa.5141.0.copyload = load i64, ptr %.sroa.5141.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.5141.0.copyload, i64 %.sroa.7.0.copyload)
  %exitcond.not308.not = icmp ult i64 %.sroa.5141.0.copyload, %.sroa.7.0.copyload
  br i1 %exitcond.not308.not, label %.lr.ph311.preheader, label %.thread

.lr.ph311.preheader:                              ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4139.0.copyload) ]
  br label %.lr.ph311

bb.e:                                             ; preds = %bb.cu
  %exitcond.not = icmp eq i64 %i.aw, %umax
  br i1 %exitcond.not, label %.thread, label %.lr.ph311

.lr.ph311:                                        ; preds = %.lr.ph311.preheader, %bb.e
  %.sroa.5141.0309 = phi i64 [ %i.aw, %bb.e ], [ %.sroa.5141.0.copyload, %.lr.ph311.preheader ] ; 3 uses
  %i.aw = add i64 %.sroa.5141.0309, 1             ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.5141.0309
  %i.ay = load ptr, ptr %i.at, align 8, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.az = load i32, ptr %i.ax, align 4, !noundef !10
  %i.ba = getelementptr i8, ptr %i.ay, i64 16
  %.val75 = load i64, ptr %i.ba, align 8, !noundef !10
  %i.bb = zext i32 %i.az to i64                   ; 2 uses
  %i.bc = icmp ugt i64 %.val75, %i.bb
  br i1 %i.bc, label %bb.ct, label %bb.f, !prof !20

bb.f:                                             ; preds = %.lr.ph311
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #39
          to label %.noexc unwind label %.loopexit.split-lp245.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  unreachable

.thread:                                          ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  %i.bd = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.be = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !10
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.be
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEIBO_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEEB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.y, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.af, ptr noundef nonnull %i.ai)
          to label %bb.g unwind label %.loopexit.split-lp245.loopexit.split-lp

bb.g:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(48) %i.y, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  %.sroa.249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store ptr null, ptr %.sroa.249.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  br label %bb.h

bb.h:                                             ; preds = %bb.cs, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  invoke void @_RNvXs5_NtCs2CmfWUMKNor_9itertools10tuple_implINtB5_12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtB1a_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEIB1Q_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEETTRB2g_RB36_EB3P_EENtNtNtB18_6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.w, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.x)
          to label %bb.i unwind label %.loopexit244

bb.i:                                             ; preds = %bb.h
  %i.bj = load ptr, ptr %i.w, align 8, !noundef !10 ; 2 uses
  %.not54 = icmp eq ptr %i.bj, null
  br i1 %.not54, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load ptr, ptr %i.bg, align 8, !nonnull !10, !align !17, !noundef !10
  %i.bl = load ptr, ptr %i.bh, align 8, !nonnull !10, !align !18, !noundef !10
  %i.bm = load ptr, ptr %i.bi, align 8, !nonnull !10, !align !17, !noundef !10
  %i.bn = load i32, ptr %i.bj, align 4, !noundef !10
  %i.bo = load i32, ptr %i.bl, align 4, !noundef !10
  %i.bp = invoke noundef nonnull align 8 ptr @_RNvMsl_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_8NAryExpr5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.cm unwind label %.loopexit244

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.v, ptr noundef nonnull align 8 dereferenceable(32) @66, i64 32, i1 false)
  %i.bq = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.br = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.br, 2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 %.idx
  %i.bt = icmp eq i64 %i.br, 0
  br i1 %i.bt, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.m

.thread184.loopexit:                              ; preds = %.lr.ph.i.i.i
  %lpad.loopexit233 = landingpad { ptr, i32 }
          cleanup
  br label %.thread173

.thread184.loopexit.split-lp.loopexit:            ; preds = %bb.cj, %bb.cg, %_RNvMNtCs7gfv9tzbXmh_6yara_x11string_poolINtB2_10StringPoolNtNtB4_8compiler7RegexIdE13get_or_internB4_.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir3dfs5EventTNtB1d_6ExprIdNtB1b_12EventContextEEEEB1h_.exit.i, %bb.bv, %select.unfold.i, %bb.cc
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  br label %.thread173

.thread184.loopexit.split-lp.loopexit.split-lp:   ; preds = %.invoke298, %.invoke, %bb.bl, %bb.ca
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.thread173

bb.l:                                             ; preds = %bb.x
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread177

bb.m:                                             ; preds = %.lr.ph, %bb.bh
  %.sroa.0142.0262 = phi ptr [ %i.bq, %.lr.ph ], [ %i.by, %bb.bh ] ; 2 uses
  %.sroa.7144.0261 = phi i64 [ 0, %.lr.ph ], [ %i.bz, %bb.bh ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0142.0262, i64 4 ; 2 uses
  %i.bz = add nuw nsw i64 %.sroa.7144.0261, 1
  %i.ca = load i32, ptr %.sroa.0142.0262, align 4, !noundef !10
  %i.cb = load ptr, ptr %i.at, align 8, !nonnull !10, !align !17, !noundef !10 ; 3 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %.val72 = load ptr, ptr %i.cc, align 8          ; 3 uses
  %i.cd = getelementptr i8, ptr %i.cb, i64 16
  %.val73 = load i64, ptr %i.cd, align 8, !noundef !10 ; 2 uses
  %i.ce = zext i32 %i.ca to i64                   ; 2 uses
  %i.cf = icmp ugt i64 %.val73, %i.ce
  br i1 %i.cf, label %bb.bf, label %.invoke298, !prof !20

._crit_edge:                                      ; preds = %bb.bh, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store i64 0, ptr %i.s, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  store ptr inttoptr (i64 4 to ptr), ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 6 uses
  store i64 0, ptr %i.ch, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.r, ptr noundef nonnull align 8 dereferenceable(32) @66, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3mapINtB5_7HashMapyINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB1r_7RegexIdEENtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterB1t_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.n unwind label %.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB2a_7RegexIdEEEEB2c_.exit: ; preds = %.loopexit, %.loopexit.split-lp, %.body103
  %.sroa.041.0 = phi i1 [ true, %.body103 ], [ true, %.loopexit ], [ %.sroa.041.1.ph, %.loopexit.split-lp ]
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body103 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTjuEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3set7HashSetjNtCsaO0k6qjB80f_10rustc_hash13FxBuildHasherEECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.bd

.loopexit:                                        ; preds = %.lr.ph265, %bb.ai
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB2a_7RegexIdEEEEB2c_.exit

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.t, %bb.s
  %.sroa.041.1.ph = phi i1 [ true, %._crit_edge ], [ false, %bb.t ], [ true, %bb.s ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB2a_7RegexIdEEEEB2c_.exit

bb.n:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.ci = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %.sroa.527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.628.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB1e_7RegexIdEEEB1g_.exit, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  invoke void @_RNvXsE_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB1x_7RegexIdEEEENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextB1z_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.p, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %bb.q unwind label %bb.p

.body103:                                         ; preds = %bb.bb, %bb.ao, %bb.al, %bb.p, %.thread204
  %.pn.pn = phi { ptr, i32 } [ %eh.lpad-body106207, %.thread204 ], [ %lpad.thr_comm.split-lp211, %bb.ao ], [ %i.cm, %bb.p ], [ %i.dy, %bb.al ], [ %i.ff, %bb.bb ]
  invoke void @_RNvXsC_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_11RawIntoIterTyINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB1x_7RegexIdEEEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1z_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.q)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map8IntoIteryINtNtCsexYYUdYSQU6_5alloc3vec3VecTjNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdNtB2a_7RegexIdEEEEB2c_.exit unwind label %bb.bd

bb.p:                                             ; preds = %bb.am, %bb.o
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body103

bb.q:                                             ; preds = %bb.o
  %i.cn = load i64, ptr %i.ci, align 8, !range !31, !noundef !10
  %.not56 = icmp eq i64 %i.cn, -1
  br i1 %.not56, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
end_hunk_2
begin_hunk_3_@_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17add_expr_from_ast:bb.a
  %i.ai = load ptr, ptr %i.ac, align 8, !nonnull !10, !align !18, !noundef !10
  %i.aj = load ptr, ptr %i.ad, align 8, !nonnull !10, !align !17, !noundef !10
  %i.ak = load i32, ptr %i.ag, align 4, !noundef !10
  %i.al = load i32, ptr %i.ai, align 4, !noundef !10
  %i.am = invoke noundef nonnull align 8 ptr @_RNvMsl_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_8NAryExpr5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.m unwind label %.loopexit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.an = load ptr, ptr %i.af, align 8, !nonnull !10, !align !17, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ao = call { i32, i32 } @_RNvMs7_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR3add(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.an, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b) ; 2 uses
  %i.ap = extractvalue { i32, i32 } %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ar = load ptr, ptr %i.ae, align 8, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7564
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load <2 x i32>, ptr %i.as, align 8, !noalias !7564
  store <2 x i32> %i.at, ptr %i.a, align 8, !noalias !7564
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %i.k, ptr %i.au, align 8, !noalias !7564
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 %i.l, ptr %i.av, align 4, !noalias !7564
  %i.aw = call { i64, ptr } @_RNvMs1o_NtNtCs7gfv9tzbXmh_6yara_x8compiler6errorsNtB6_16NumberOutOfRange5build(ptr noundef nonnull align 8 %i.ar, i64 noundef -9223372036854775808, i64 noundef 9223372036854775807, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.a) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7564
  %i.ax = extractvalue { i64, ptr } %i.aw, 0
  %i.ay = extractvalue { i64, ptr } %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ay, ptr %i.az, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ba = extractvalue { i32, i32 } %i.ao, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.ba, ptr %i.bb, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi i64 [ %i.ax, %bb.i ], [ -1, %bb.j ]
  store i64 %.sink, ptr %0, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void

bb.m:                                             ; preds = %bb.g
  %i.bc = invoke { i32, i32 } @_RNvXs12_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB6_4ExprNtB6_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am)
          to label %bb.n unwind label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.bd = extractvalue { i32, i32 } %i.bc, 0
  %i.be = invoke { i32, i32 } @_RNvXs12_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB6_4ExprNtB6_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ah)
          to label %bb.o unwind label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bf = invoke { i32, i32 } @_RNvXs12_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB6_4ExprNtB6_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj)
          to label %bb.p unwind label %.loopexit  ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bg = extractvalue { i32, i32 } %i.be, 1
  %i.bh = extractvalue { i32, i32 } %i.bf, 0
  %i.bi = extractvalue { i32, i32 } %i.bf, 1
  %.val = load ptr, ptr %i.ae, align 8
  %.val33 = load ptr, ptr %i.af, align 8, !nonnull !10, !align !17, !noundef !10
  %i.bj = invoke fastcc { i64, ptr } @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir14check_operands(ptr %.val, ptr nonnull %.val33, i32 noundef %i.ak, i32 noundef %i.al, i32 noundef %i.bd, i32 noundef %i.bg, i32 noundef %i.bh, i32 noundef %i.bi, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @496, i64 noundef 1)
          to label %bb.q unwind label %.loopexit  ; 2 uses

bb.q:                                             ; preds = %bb.p
  %i.bk = extractvalue { i64, ptr } %i.bj, 0      ; 2 uses
  %.not32 = icmp eq i64 %i.bk, -1
  br i1 %.not32, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = extractvalue { i64, ptr } %i.bj, 1
  store i64 %i.bk, ptr %0, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bl, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %bb.v, %bb.s
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.s ], [ %lpad.phi, %bb.v ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_.exit: ; preds = %bb.r
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.l

bb.u:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

.loopexit:                                        ; preds = %bb.e, %bb.g, %bb.m, %bb.n, %bb.o, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.loopexit.split-lp:                               ; preds = %bb.c, %.thread44
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.i) #43
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_ast(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = tail call { i32, i32 } @_RNvXsX_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_8NAryExprNtB5_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !10
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.m ; 3 uses
  store ptr %i.k, ptr %i.f, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %1, ptr %i.p, align 8
  call void @_RINvNtNtCskKLDkoKarTP_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprENCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_ast0ENtB2j_6ExprIdINtNtB6_6result6ResultzNtNtB2l_6errors12CompileErrorENCINvXso_B3C_IB3A_INtNtCsexYYUdYSQU6_5alloc3vec3VecB3m_EB3W_EINtNtNtB4_6traits7collect12FromIteratorIB3A_B3m_B3W_EE9from_iterBQ_E0B4I_EB2n_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.q = load i64, ptr %i.g, align 8, !range !31, !noundef !10 ; 2 uses
  %i.r = icmp eq i64 %i.q, -1
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 %i.t, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.w, align 8
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  store i64 %i.q, ptr %i.h, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i64 %i.t, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx, align 8
  %.cast = inttoptr i64 %i.t to ptr               ; 2 uses
  %.cast35 = ptrtoint ptr %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.cast, i64 %.cast35
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEIBO_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEEB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.e, ptr noundef nonnull %.cast, ptr noundef nonnull %i.x, ptr noundef nonnull %i.k, ptr noundef nonnull %i.n)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8 ; 2 uses
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.441.0.copyload = load ptr, ptr %.sroa.441.0..sroa_idx, align 8 ; 2 uses
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.543.0.copyload = load i64, ptr %.sroa.543.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  %umax = call i64 @llvm.umax.i64(i64 %.sroa.543.0.copyload, i64 %.sroa.7.0.copyload)
  %exitcond.not63.not = icmp ult i64 %.sroa.543.0.copyload, %.sroa.7.0.copyload
  br i1 %exitcond.not63.not, label %.lr.ph.preheader, label %.thread48

.lr.ph.preheader:                                 ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.441.0.copyload) ]
  br label %.lr.ph

_RNvYNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtNtBa_7context14CompileContextNtB8_6ExprIdNtCsfF8zpZz1lvn_13yara_x_parser4SpanEE9call_onceBc_.exit: ; preds = %_RNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0B9_.exit.i
  %exitcond.not = icmp eq i64 %i.ab, %umax
  br i1 %exitcond.not, label %.thread48, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvYNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtNtBa_7context14CompileContextNtB8_6ExprIdNtCsfF8zpZz1lvn_13yara_x_parser4SpanEE9call_onceBc_.exit
  %.sroa.543.064 = phi i64 [ %i.ab, %_RNvYNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtNtBa_7context14CompileContextNtB8_6ExprIdNtCsfF8zpZz1lvn_13yara_x_parser4SpanEE9call_onceBc_.exit ], [ %.sroa.543.0.copyload, %.lr.ph.preheader ] ; 3 uses
  %i.ab = add i64 %.sroa.543.064, 1               ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.0.copyload, i64 %.sroa.543.064
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.441.0.copyload, i64 %.sroa.543.064
  %i.ae = load i32, ptr %i.ac, align 4, !noundef !10
  %i.af = invoke { i32, i32 } @_RNvXs12_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB6_4ExprNtB6_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ad)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit ; 2 uses

.thread48:                                        ; preds = %_RNvYNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtNtBa_7context14CompileContextNtB8_6ExprIdNtCsfF8zpZz1lvn_13yara_x_parser4SpanEE9call_onceBc_.exit, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ag = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ah = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !noundef !10
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  invoke void @_RINvNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3zipINtNtNtB8_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEIBO_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEEB1j_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.d, ptr noundef nonnull %i.ag, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.k, ptr noundef nonnull %i.n)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp

bb.e:                                             ; preds = %.thread48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr null, ptr %.sroa.2.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.s, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvXs5_NtCs2CmfWUMKNor_9itertools10tuple_implINtB5_12TupleWindowsINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3zip3ZipINtNtNtB1a_5slice4iter4IterNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEIB1Q_NtNtCsfF8zpZz1lvn_13yara_x_parser3ast4ExprEETTRB2g_RB36_EB3P_EENtNtNtB18_6traits8iterator8Iterator4nextB2m_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %i.c)
          to label %bb.g unwind label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %.not36 = icmp eq ptr %i.am, null
  br i1 %.not36, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = load ptr, ptr %i.aj, align 8, !nonnull !10, !align !17, !noundef !10
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !10, !align !18, !noundef !10
  %i.ap = load ptr, ptr %i.al, align 8, !nonnull !10, !align !17, !noundef !10
  %i.aq = load i32, ptr %i.am, align 4, !noundef !10
  %i.ar = load i32, ptr %i.ao, align 4, !noundef !10
  %i.as = invoke noundef nonnull align 8 ptr @_RNvMsl_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB5_8NAryExpr5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2)
          to label %bb.k unwind label %.loopexit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.at = load ptr, ptr %i.y, align 8, !nonnull !10, !align !17, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.au = call { i32, i32 } @_RNvMs7_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_2IR3and(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.at, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.av = extractvalue { i32, i32 } %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.av, ptr %i.aw, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_.exit, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

bb.k:                                             ; preds = %bb.h
  %i.ax = invoke { i32, i32 } @_RNvXs12_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB6_4ExprNtB6_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.as)
          to label %bb.l unwind label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.ay = extractvalue { i32, i32 } %i.ax, 0
  %i.az = invoke { i32, i32 } @_RNvXs12_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB6_4ExprNtB6_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an)
          to label %bb.m unwind label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.ba = invoke { i32, i32 } @_RNvXs12_NtCsfF8zpZz1lvn_13yara_x_parser3astNtB6_4ExprNtB6_8WithSpan4span(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap)
          to label %bb.n unwind label %.loopexit  ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bb = extractvalue { i32, i32 } %i.az, 1
  %i.bc = extractvalue { i32, i32 } %i.ba, 0
  %i.bd = extractvalue { i32, i32 } %i.ba, 1
  %.val = load ptr, ptr %i.z, align 8
  %.val38 = load ptr, ptr %i.y, align 8, !nonnull !10, !align !17, !noundef !10
  %i.be = invoke fastcc { i64, ptr } @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir14check_operands(ptr %.val, ptr nonnull %.val38, i32 noundef %i.aq, i32 noundef %i.ar, i32 noundef %i.ay, i32 noundef %i.bb, i32 noundef %i.bc, i32 noundef %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @493, i64 noundef 4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @501, i64 noundef 6)
          to label %bb.o unwind label %.loopexit  ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bf = extractvalue { i64, ptr } %i.be, 0      ; 2 uses
  %.not37 = icmp eq i64 %i.bf, -1
  br i1 %.not37, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = extractvalue { i64, ptr } %i.be, 1
  store i64 %i.bf, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %i.bh, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_.exit unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable

common.resume:                                    ; preds = %.loopexit.split-lp, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.bi, %bb.q ], [ %lpad.phi, %.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_.exit: ; preds = %bb.p
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %bb.j

bb.s:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.t:                                             ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !7569)
  call void @llvm.experimental.noalias.scope.decl(metadata !7570)
  %i.bk = load ptr, ptr %i.y, align 8, !alias.scope !7571, !nonnull !10, !align !17, !noundef !10 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !7571, !noundef !10
  %i.bn = zext i32 %i.ae to i64                   ; 2 uses
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %_RNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0B9_.exit.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #39
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.u
  unreachable

_RNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0B9_.exit.i: ; preds = %bb.t
  %i.bp = extractvalue { i32, i32 } %i.af, 1
  %i.bq = extractvalue { i32, i32 } %i.af, 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !noalias !7571, !nonnull !10, !noundef !10
  %i.bt = getelementptr inbounds nuw [48 x i8], ptr %i.bs, i64 %i.bn
  %i.bu = call noundef i8 @_RNvMsh_NtNtCs7gfv9tzbXmh_6yara_x8compiler2irNtB5_4Expr2ty(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.bt), !noalias !7571
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !7571
  %.val1.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !7571
  invoke fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir16warn_if_not_bool(ptr %.val.i.i, ptr %.val1.i.i, i8 noundef %i.bu, i32 noundef %i.bq, i32 noundef %i.bp)
          to label %_RNvYNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTQNtNtBa_7context14CompileContextNtB8_6ExprIdNtCsfF8zpZz1lvn_13yara_x_parser4SpanEE9call_onceBc_.exit unwind label %.loopexit.split-lp.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.h, %bb.k, %bb.l, %bb.m, %bb.n
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %_RNCNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17and_expr_from_asts_0B9_.exit.i, %.lr.ph
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.c, %.thread48, %bb.u
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit53, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp54, %.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ExprIdEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.h) #43
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #42
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCs7gfv9tzbXmh_6yara_x8compiler2ir6ast2ir17div_expr_from_ast(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
end_hunk_3
