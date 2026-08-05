inline.NumInlined: 2170
inline.NumDeleted: 755
begin_hunk_0_@_RNvMNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptimeNtB2_13StrpTimeState5parse:bb.a

bb.am:                                            ; preds = %bb.g
  %i.iu = add i64 %.sroa.083.1781, 3, !dbg !14446 ; 2 uses
  %i.iv = icmp ugt i64 %.sroa.083.1781, -4, !dbg !14448
  %.not.i315 = icmp ugt i64 %i.iu, %2
  %or.cond.i316 = or i1 %i.iv, %.not.i315, !dbg !14448
  br i1 %or.cond.i316, label %.loopexit407, label %bb.an, !dbg !14448

bb.an:                                            ; preds = %bb.am
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1781, !dbg !14452 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 1, !dbg !14454
  %.sroa.033.0.copyload.i16.i = load i16, ptr %i.ix, align 1, !dbg !14464, !alias.scope !14468, !noalias !14473
  %i.iy = zext i16 %.sroa.033.0.copyload.i16.i to i64, !dbg !14483
  %i.iz = shl nuw nsw i64 %i.iy, 8, !dbg !14483
  %i.ja = load i8, ptr %i.iw, align 1, !dbg !14484, !alias.scope !14468, !noalias !14473, !noundef !13
  %i.jb = zext i8 %i.ja to i64, !dbg !14484
  %i.jc = or disjoint i64 %i.iz, %i.jb, !dbg !14483 ; 3 uses
  %i.jd = add nuw nsw i64 %i.jc, 394758, !dbg !14485
  %i.je = lshr i64 %i.jd, 4, !dbg !14488
  %i.jf = and i64 %i.je, 986895, !dbg !14488
  %i.jg = and i64 %i.jc, 15790320, !dbg !14489
  %i.jh = or disjoint i64 %i.jf, %i.jg, !dbg !14490
  %i.ji = xor i64 %i.jh, 3689348814741910323, !dbg !14490
  %i.jj = tail call range(i64 0, 25) i64 @llvm.cttz.i64(i64 %i.ji, i1 true), !dbg !14491 ; 2 uses
  %switch811 = icmp samesign ugt i64 %i.jj, 15, !dbg !14493
  %.mask812 = and i64 %i.jj, 24
  %i.jk = icmp eq i64 %.mask812, 24
  %or.cond927 = and i1 %switch811, %i.jk, !dbg !14493
  br i1 %or.cond927, label %bb.bf, label %.loopexit407, !dbg !14493

_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit: ; preds = %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i, %bb.l
  %.sroa.66.0306322.i = phi i32 [ %i.bw, %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i ], [ %i.ar, %bb.l ] ; 2 uses
  %i.jl = sub i32 0, %.sroa.66.0306322.i
  %spec.select111 = select i1 %.sroa.0.0, i32 %i.jl, i32 %.sroa.66.0306322.i, !dbg !14494
  br label %.thread373, !dbg !14494

bb.ao:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit125.i, %bb.j, %bb.l, %bb.m, %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread.i, %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit49.i
  store i32 0, ptr %0, align 4, !dbg !14495
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

.loopexit413:                                     ; preds = %bb.n, %bb.o
  store i32 0, ptr %0, align 4, !dbg !14500
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

bb.ap:                                            ; preds = %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i
  store i32 0, ptr %0, align 4, !dbg !14505
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

bb.aq:                                            ; preds = %bb.p
  %i.jm = load i32, ptr %i.i, align 8, !dbg !14506, !noundef !13
  %i.jn = load i64, ptr %i.j, align 8, !dbg !14506, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14507
  br label %.thread373, !dbg !14508

bb.ar:                                            ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14507
  store i32 0, ptr %0, align 4, !dbg !14509
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

bb.as:                                            ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14033, !noalias !14023
  store i32 0, ptr %0, align 4, !dbg !14514
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

.loopexit412:                                     ; preds = %bb.y, %bb.z
  store i32 0, ptr %0, align 4, !dbg !14519
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

.loopexit411:                                     ; preds = %bb.aa, %bb.ab
  store i32 0, ptr %0, align 4, !dbg !14524
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

.loopexit410:                                     ; preds = %bb.ac, %bb.ad
  store i32 0, ptr %0, align 4, !dbg !14529
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

.loopexit409:                                     ; preds = %bb.ae, %bb.af
  store i32 0, ptr %0, align 4, !dbg !14534
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

bb.at:                                            ; preds = %bb.ag
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1781, !dbg !14539 ; 3 uses
  %i.jp = load i8, ptr %i.jo, align 1, !dbg !14543, !alias.scope !14550, !noalias !14553, !noundef !13
  %cond.i = icmp eq i8 %i.jp, 45, !dbg !14543
  br i1 %cond.i, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244, !dbg !14543

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244: ; preds = %bb.at
  %.sroa.034.0.copyload.i208 = load i16, ptr %i.jo, align 1, !dbg !14555, !alias.scope !14563, !noalias !14566
  %i.jq = zext i16 %.sroa.034.0.copyload.i208 to i64, !dbg !14573 ; 4 uses
  %i.jr = add nuw nsw i64 %i.jq, 1542, !dbg !14574
  %i.js = lshr i64 %i.jr, 4, !dbg !14577
  %i.jt = and i64 %i.js, 3855, !dbg !14577
  %i.ju = and i64 %i.jq, 61680, !dbg !14578
  %i.jv = or disjoint i64 %i.jt, %i.ju, !dbg !14579
  %i.jw = xor i64 %i.jv, 3689348814741910323, !dbg !14579
  %i.jx = tail call range(i64 0, 17) i64 @llvm.cttz.i64(i64 %i.jw, i1 true), !dbg !14580 ; 2 uses
  %i.jy = trunc nuw nsw i64 %i.jx to i32, !dbg !14580
  %i.jz = lshr i32 %i.jy, 3, !dbg !14582
  switch i32 %i.jz, label %bb.au [
    i32 0, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread329
    i32 1, label %.thread167
  ], !dbg !14583

.thread167:                                       ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244
  %i.ka = and i64 %i.jq, 15, !dbg !14584
  br label %bb.aw, !dbg !14585

bb.au:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244
  %i.kb = icmp samesign ugt i64 %i.jx, 15, !dbg !14586
  tail call void @llvm.assume(i1 %i.kb), !dbg !14586, !noalias !14587
  %i.kc = shl nuw i64 %i.jq, 48, !dbg !14588
  %i.kd = and i64 %i.kc, 1085086035219578880, !dbg !14590
  %i.ke = mul i64 %i.kd, 2561, !dbg !14591
  %i.kf = lshr exact i64 %i.ke, 8, !dbg !14593
  %i.kg = and i64 %i.kf, 71776119061217280, !dbg !14594
  %i.kh = mul i64 %i.kg, 6553601, !dbg !14595
  %i.ki = lshr exact i64 %i.kh, 16, !dbg !14597
  %i.kj = mul i64 %i.ki, 42949672960001, !dbg !14598 ; 2 uses
  %i.kk = lshr exact i64 %i.kj, 32, !dbg !14600
  %i.kl = icmp ugt i64 %i.kj, 9223372032559808512, !dbg !14585
  br i1 %i.kl, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread329, label %bb.aw, !dbg !14585

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168: ; preds = %bb.at
  %i.km = getelementptr inbounds nuw i8, ptr %i.jo, i64 1, !dbg !14601
  %i.kn = load i8, ptr %i.km, align 1, !dbg !14607, !alias.scope !14612, !noalias !14615, !noundef !13 ; 2 uses
  %i.ko = zext i8 %i.kn to i64, !dbg !14607       ; 2 uses
  %i.kp = add nuw nsw i64 %i.ko, 6, !dbg !14622
  %i.kq = lshr i64 %i.kp, 4, !dbg !14625
  %i.kr = and i64 %i.kq, 15, !dbg !14625
  %i.ks = and i64 %i.ko, 240, !dbg !14626
  %i.kt = or disjoint i64 %i.kr, %i.ks, !dbg !14627
  %trunc.not = icmp eq i64 %i.kt, 51, !dbg !14628
  br i1 %trunc.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread329, !dbg !14628

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread: ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168
  %i.ku = and i8 %i.kn, 15, !dbg !14629
  %i.kv = zext nneg i8 %i.ku to i32, !dbg !14629
  %i.kw = sub nsw i32 0, %i.kv, !dbg !14629
  br label %.thread351, !dbg !14632

bb.av:                                            ; preds = %bb.ag
  store i32 0, ptr %0, align 4, !dbg !14633
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14638

_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread329: ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168, %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244, %bb.au
  store i32 0, ptr %0, align 4, !dbg !14640
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14645

bb.aw:                                            ; preds = %bb.au, %.thread167
  %.sroa.11.2.ph161173 = phi i64 [ %i.ka, %.thread167 ], [ %i.kk, %bb.au ]
  %i.kx = trunc nuw nsw i64 %.sroa.11.2.ph161173 to i32, !dbg !14647
  br label %.thread351, !dbg !14655

.thread351:                                       ; preds = %bb.aw, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread
  %.sroa.10.2320366 = phi i32 [ %i.kx, %bb.aw ], [ %i.kw, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.thread ]
  %.sroa.10.2320366.fr = freeze i32 %.sroa.10.2320366, !dbg !14657 ; 2 uses
  %i.ky = icmp slt i32 %.sroa.10.2320366.fr, 70, !dbg !14657
  %spec.select396.v = select i1 %i.ky, i32 2000, i32 1900, !dbg !14657
  %spec.select396 = add i32 %spec.select396.v, %.sroa.10.2320366.fr, !dbg !14657
  br label %.thread373, !dbg !14657

bb.ax:                                            ; preds = %bb.aj
  %i.kz = lshr i128 %i.ib, 64
  %i.la = trunc nuw i128 %i.kz to i32, !dbg !14658
  %i.lb = icmp eq ptr %i.q, %i.e, !dbg !14661
  br i1 %i.lb, label %bb.az, label %bb.ay, !dbg !14667, !prof !50

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread: ; preds = %bb.aj, %bb.ah, %bb.ai
  store i32 0, ptr %0, align 4, !dbg !14668
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

bb.ay:                                            ; preds = %bb.ax
  %i.lc = load i8, ptr %i.q, align 1, !dbg !14673, !noundef !13
  %i.ld = icmp eq i8 %i.lc, 102, !dbg !14673
  br i1 %i.ld, label %bb.ba, label %bb.az, !dbg !14682, !prof !11242

bb.az:                                            ; preds = %bb.ax, %bb.ay
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #38, !dbg !14683
  unreachable, !dbg !14683

bb.ba:                                            ; preds = %bb.ay
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.07.0782, i64 3, !dbg !14684
  br label %.thread373, !dbg !14686

bb.bb:                                            ; preds = %bb.al
  %i.lf = shl nuw i64 %i.il, 16, !dbg !14687
  %i.lg = and i64 %i.lf, 1085102592571146240, !dbg !14689
  %i.lh = mul i64 %i.lg, 2561, !dbg !14690
  %i.li = lshr exact i64 %i.lh, 8, !dbg !14692
  %i.lj = and i64 %i.li, 71777214294589440, !dbg !14693
  %i.lk = mul i64 %i.lj, 6553601, !dbg !14694
  %i.ll = lshr exact i64 %i.lk, 16, !dbg !14696
  %i.lm = and i64 %i.ll, 281470681808895, !dbg !14697
  %i.ln = mul i64 %i.lm, 42949672960001, !dbg !14698
  %i.lo = lshr i64 %i.ln, 32, !dbg !14697
  %i.lp = trunc nuw i64 %i.lo to i32, !dbg !14700
  %i.lq = mul i32 %i.lp, 1000, !dbg !14703
  %i.lr = icmp eq ptr %i.q, %i.e, !dbg !14704
  br i1 %i.lr, label %bb.bd, label %bb.bc, !dbg !14710, !prof !50

.loopexit408:                                     ; preds = %bb.ak, %bb.al
  store i32 0, ptr %0, align 4, !dbg !14711
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

bb.bc:                                            ; preds = %bb.bb
  %i.ls = load i8, ptr %i.q, align 1, !dbg !14716, !noundef !13
  %i.lt = icmp eq i8 %i.ls, 102, !dbg !14716
  br i1 %i.lt, label %bb.be, label %bb.bd, !dbg !14722, !prof !11242

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #38, !dbg !14723
  unreachable, !dbg !14723

bb.be:                                            ; preds = %bb.bc
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.07.0782, i64 3, !dbg !14724
  br label %.thread373, !dbg !14726

bb.bf:                                            ; preds = %bb.an
  %i.lv = shl nuw i64 %i.jc, 40, !dbg !14727
  %i.lw = and i64 %i.lv, 1085102527893995520, !dbg !14729
  %i.lx = mul i64 %i.lw, 2561, !dbg !14730
  %i.ly = lshr exact i64 %i.lx, 8, !dbg !14732
  %i.lz = and i64 %i.ly, 71777214277877760, !dbg !14733
  %i.ma = mul i64 %i.lz, 6553601, !dbg !14734
  %i.mb = lshr exact i64 %i.ma, 16, !dbg !14736
  %i.mc = and i64 %i.mb, 281470681743360, !dbg !14737
  %i.md = mul i64 %i.mc, 42949672960001, !dbg !14738
  %i.me = lshr exact i64 %i.md, 32, !dbg !14737
  %i.mf = trunc nuw i64 %i.me to i32, !dbg !14740
  %i.mg = mul i32 %i.mf, 1000000, !dbg !14743
  %i.mh = icmp eq ptr %i.q, %i.e, !dbg !14744
  br i1 %i.mh, label %bb.bh, label %bb.bg, !dbg !14750, !prof !50

.loopexit407:                                     ; preds = %bb.am, %bb.an
  store i32 0, ptr %0, align 4, !dbg !14751
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

bb.bg:                                            ; preds = %bb.bf
  %i.mi = load i8, ptr %i.q, align 1, !dbg !14756, !noundef !13
  %i.mj = icmp eq i8 %i.mi, 102, !dbg !14756
  br i1 %i.mj, label %bb.bi, label %bb.bh, !dbg !14762, !prof !11242

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @22, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #38, !dbg !14763
  unreachable, !dbg !14763

bb.bi:                                            ; preds = %bb.bg
  %i.mk = getelementptr inbounds nuw i8, ptr %.sroa.07.0782, i64 3, !dbg !14764
  br label %.thread373, !dbg !14766

.thread373:                                       ; preds = %.thread351, %bb.w, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit, %bb.aq, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289, %bb.ba, %bb.be, %bb.bi, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i, %bb.bl
  %.sroa.078.3 = phi i32 [ %.sroa.078.0772, %bb.bl ], [ %.sroa.078.0772, %bb.bi ], [ %spec.select111, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.078.0772, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %.sroa.078.0772, %bb.aq ], [ %.sroa.078.0772, %bb.be ], [ %.sroa.078.0772, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %.sroa.078.0772, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %.sroa.078.0772, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %.sroa.078.0772, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %spec.select396, %.thread351 ], [ %.sroa.078.0772, %bb.ba ], [ %.sroa.078.0772, %bb.w ], !dbg !13688 ; 2 uses
  %.sroa.080.2 = phi i32 [ %.sroa.080.0773, %bb.bl ], [ %.sroa.080.0773, %bb.bi ], [ %.sroa.080.0773, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %i.cp, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %i.jm, %bb.aq ], [ %.sroa.080.0773, %bb.be ], [ %.sroa.080.0773, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %.sroa.080.0773, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %.sroa.080.0773, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %.sroa.080.0773, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %.sroa.080.0773, %.thread351 ], [ %.sroa.080.0773, %bb.ba ], [ %i.cv, %bb.w ], !dbg !13689 ; 2 uses
  %.sroa.082.2 = phi i32 [ %.sroa.082.0777, %bb.bl ], [ %.sroa.082.0777, %bb.bi ], [ %.sroa.082.0777, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.082.0777, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %.sroa.082.0777, %bb.aq ], [ %.sroa.082.0777, %bb.be ], [ %i.ef, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %.sroa.082.0777, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %.sroa.082.0777, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %.sroa.082.0777, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %.sroa.082.0777, %.thread351 ], [ %.sroa.082.0777, %bb.ba ], [ %.sroa.082.0777, %bb.w ], !dbg !13690 ; 2 uses
  %.sroa.083.3 = phi i64 [ %i.mp, %bb.bl ], [ %i.iu, %bb.bi ], [ %i.s, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %i.bx, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %i.jn, %bb.aq ], [ %i.ie, %bb.be ], [ %i.dn, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %i.eg, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %i.ez, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %i.fs, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %i.gl, %.thread351 ], [ %i.gn, %bb.ba ], [ %spec.select395, %bb.w ], !dbg !14767 ; 2 uses
  %.sroa.07.2 = phi ptr [ %i.k, %bb.bl ], [ %i.mk, %bb.bi ], [ %i.q, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %i.q, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %i.q, %bb.aq ], [ %i.lu, %bb.be ], [ %i.q, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %i.q, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %i.q, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %i.q, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %i.q, %.thread351 ], [ %i.le, %bb.ba ], [ %i.q, %bb.w ], !dbg !14768 ; 2 uses
  %.sroa.04.2 = phi i32 [ %.sroa.04.0783, %bb.bl ], [ %i.mg, %bb.bi ], [ %.sroa.04.0783, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.04.0783, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %.sroa.04.0783, %bb.aq ], [ %i.lq, %bb.be ], [ %.sroa.04.0783, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %.sroa.04.0783, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %.sroa.04.0783, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %.sroa.04.0783, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %.sroa.04.0783, %.thread351 ], [ %i.la, %bb.ba ], [ %.sroa.04.0783, %bb.w ], !dbg !13691 ; 2 uses
  %.sroa.03.2 = phi i32 [ %.sroa.03.0787, %bb.bl ], [ %.sroa.03.0787, %bb.bi ], [ %.sroa.03.0787, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.03.0787, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %.sroa.03.0787, %bb.aq ], [ %.sroa.03.0787, %bb.be ], [ %.sroa.03.0787, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %.sroa.03.0787, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %.sroa.03.0787, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %i.gk, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %.sroa.03.0787, %.thread351 ], [ %.sroa.03.0787, %bb.ba ], [ %.sroa.03.0787, %bb.w ], !dbg !13692 ; 2 uses
  %.sroa.02.2 = phi i32 [ %.sroa.02.0791, %bb.bl ], [ %.sroa.02.0791, %bb.bi ], [ %.sroa.02.0791, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.02.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %.sroa.02.0791, %bb.aq ], [ %.sroa.02.0791, %bb.be ], [ %.sroa.02.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %.sroa.02.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %i.fr, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %.sroa.02.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %.sroa.02.0791, %.thread351 ], [ %.sroa.02.0791, %bb.ba ], [ %.sroa.02.0791, %bb.w ], !dbg !13693 ; 2 uses
  %.sroa.01.2 = phi i32 [ %.sroa.01.0795, %bb.bl ], [ %.sroa.01.0795, %bb.bi ], [ %.sroa.01.0795, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECshquuC4dCYVj_10polars_sql.exit ], [ %.sroa.01.0795, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i ], [ %.sroa.01.0795, %bb.aq ], [ %.sroa.01.0795, %bb.be ], [ %.sroa.01.0795, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i256 ], [ %i.ey, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i267 ], [ %.sroa.01.0795, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i278 ], [ %.sroa.01.0795, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i289 ], [ %.sroa.01.0795, %.thread351 ], [ %.sroa.01.0795, %bb.ba ], [ %.sroa.01.0795, %bb.w ], !dbg !13694 ; 2 uses
  %i.ml = icmp eq ptr %.sroa.07.2, %i.e, !dbg !13675
  br i1 %i.ml, label %._crit_edge, label %bb.d, !dbg !13677

bb.bj:                                            ; preds = %bb.f
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1781, !dbg !14769
  %i.mn = load i8, ptr %i.mm, align 1, !dbg !14770, !noundef !13
  %i.mo = icmp eq i8 %i.mn, %i.l, !dbg !14770
  br i1 %i.mo, label %bb.bl, label %bb.bk, !dbg !14776

bb.bk:                                            ; preds = %bb.f, %bb.bj
  store i32 0, ptr %0, align 4, !dbg !14777
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !13720

bb.bl:                                            ; preds = %bb.bj
  %i.mp = add nuw nsw i64 %.sroa.083.1781, 1, !dbg !14778
  br label %.thread373, !dbg !14779

_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit: ; preds = %bb.bs, %bb.bp, %bb.bt, %bb.bm, %bb.bk, %.loopexit407, %.loopexit408, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECshquuC4dCYVj_10polars_sql.exit.i.i.thread121.i299.thread, %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECshquuC4dCYVj_10polars_sql.exit.thread329, %bb.av, %.loopexit409, %.loopexit410, %.loopexit411, %.loopexit412, %bb.as, %bb.ar, %bb.ap, %.loopexit413, %bb.ao, %bb.i, %bb.h
  ret void, !dbg !14780

bb.bm:                                            ; preds = %._crit_edge
  store i32 0, ptr %0, align 4, !dbg !14781
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14782

bb.bn:                                            ; preds = %._crit_edge
  %i.mq = tail call noundef i32 @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate12from_ymd_opt(i32 noundef %.sroa.078.0.lcssa, i32 noundef %.sroa.080.0.lcssa, i32 noundef %.sroa.082.0.lcssa), !dbg !14783 ; 2 uses
  %.not109 = icmp eq i32 %i.mq, 0, !dbg !14784
  br i1 %.not109, label %bb.bt, label %bb.bo, !dbg !14787

bb.bo:                                            ; preds = %bb.bn
  %i.mr = icmp ugt i32 %.sroa.01.0.lcssa, 23, !dbg !14788
  %i.ms = icmp ugt i32 %.sroa.02.0.lcssa, 59
  %or.cond.i325 = or i1 %i.ms, %i.mr, !dbg !14788
  %i.mt = icmp ugt i32 %.sroa.03.0.lcssa, 59
  %or.cond1.i = or i1 %i.mt, %or.cond.i325, !dbg !14788
  br i1 %or.cond1.i, label %bb.bp, label %bb.bq, !dbg !14788

bb.bp:                                            ; preds = %bb.br, %bb.bo
  store i32 0, ptr %0, align 4, !dbg !14801, !alias.scope !14804
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14807

bb.bq:                                            ; preds = %bb.bo
  %i.mu = icmp ugt i32 %.sroa.04.0.lcssa, 999999999, !dbg !14808
  br i1 %i.mu, label %bb.br, label %bb.bs, !dbg !14808

bb.br:                                            ; preds = %bb.bq
  %i.mv = icmp ne i32 %.sroa.03.0.lcssa, 59, !dbg !14809
  %i.mw = icmp ugt i32 %.sroa.04.0.lcssa, 1999999999
  %or.cond2.i = or i1 %i.mw, %i.mv, !dbg !14809
  br i1 %or.cond2.i, label %bb.bp, label %bb.bs, !dbg !14809

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mx = mul nuw nsw i32 %.sroa.01.0.lcssa, 3600, !dbg !14810
  %i.my = mul nuw nsw i32 %.sroa.02.0.lcssa, 60, !dbg !14811
  %i.mz = add nuw nsw i32 %i.my, %.sroa.03.0.lcssa, !dbg !14810
  %i.na = add nuw nsw i32 %i.mz, %i.mx, !dbg !14810
  store i32 %i.mq, ptr %0, align 4, !dbg !14812, !alias.scope !14804
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !14812
  store i32 %i.na, ptr %.sroa.44.0..sroa_idx.i, align 4, !dbg !14812, !alias.scope !14804
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !14812
  store i32 %.sroa.04.0.lcssa, ptr %.sroa.5.0..sroa_idx.i, align 4, !dbg !14812, !alias.scope !14804
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14807

bb.bt:                                            ; preds = %bb.bn
  store i32 0, ptr %0, align 4, !dbg !14814
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !14815
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionlEE24with_capacity_and_hasherCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14816 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.0.0.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !14817 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14820
  %i.c = add i64 %.sroa.0.0.i, 1, !dbg !14822     ; 2 uses
  call void @_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE16with_capacity_inCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.c), !dbg !14823
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14827
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionlEEE21with_capacity_and_keyCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.c)
          to label %bb.d unwind label %bb.c, !dbg !14827

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d, !dbg !14828

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !14829
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %bb.b unwind label %bb.e, !dbg !14836

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !14837
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !14837
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !14837
  store i64 %.sroa.0.0.i, ptr %i.g, align 8, !dbg !14837
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14837
  store <4 x i32> <i32 1, i32 -1, i32 1, i32 -1>, ptr %i.h, align 8, !dbg !14837
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !14837
  store i64 %2, ptr %i.i, align 8, !dbg !14837
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14838
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14838
  ret void, !dbg !14839

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14828
  unreachable, !dbg !14828
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RNvMs0_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheReINtNtCscgRAwXFJnXP_4core6option6OptionxEE24with_capacity_and_hasherCshquuC4dCYVj_10polars_sql(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14840 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.0.0.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %1, i64 1), !dbg !14841 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !14843
  %i.c = add i64 %.sroa.0.0.i, 1, !dbg !14845     ; 2 uses
  call void @_RNvMs6_NtCs7tGzs63DEEy_9hashbrown3rawINtB5_8RawTableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyE16with_capacity_inCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, i64 noundef %i.c), !dbg !14846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14850
  invoke void @_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryReINtNtCscgRAwXFJnXP_4core6option6OptionxEEE21with_capacity_and_keyCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, i64 noundef %i.c)
          to label %bb.d unwind label %bb.c, !dbg !14850

bb.b:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d, !dbg !14851

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !14852
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 8, i64 noundef 16)
          to label %bb.b unwind label %bb.e, !dbg !14856

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !14857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !14857
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !14857
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !14857
  store i64 %.sroa.0.0.i, ptr %i.g, align 8, !dbg !14857
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !14857
  store <4 x i32> <i32 1, i32 -1, i32 1, i32 -1>, ptr %i.h, align 8, !dbg !14857
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !14857
  store i64 %2, ptr %i.i, align 8, !dbg !14857
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !14858
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !14858
  ret void, !dbg !14859

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !14851
  unreachable, !dbg !14851
}

; Function Attrs: nonlazybind optsize uwtable
define hidden void @_RNvMs0_NtCshquuC4dCYVj_10polars_sql12sql_visitorsNtB5_17QualifyExpression7analyze(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !14860 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !14865
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7aliasesINtNtCs7tGzs63DEEy_9hashbrown3set7HashSetNtNtCsgZ49sUHp3tW_5alloc6string6StringNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateENtB5_12InitHashMaps3newCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(48) %i.a), !dbg !14866
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !14869 ; 2 uses
  store i8 0, ptr %i.b, align 8, !dbg !14869, !alias.scope !14870
  %i.c = invoke noundef zeroext i1 @_RINvXs7S_NtCsaRr8xKSRVhT_9sqlparser3astNtB7_4ExprNtNtB7_7visitor5Visit5visitNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEB1g_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !14873 ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !14875
  invoke void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsgZ49sUHp3tW_5alloc6string6StringuENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.e, i64 noundef 24, i64 noundef 16)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCshquuC4dCYVj_10polars_sql12sql_visitors17QualifyExpressionEBK_.exit unwind label %bb.d, !dbg !14886

end_hunk_0
