inline.NumInlined: 9660
inline.NumDeleted: 4069
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvMNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptimeNtB2_13StrpTimeState5parse:bb.a

bb.ak:                                            ; preds = %bb.e
  %i.ix = add i64 %.sroa.083.1789, 3, !dbg !109422 ; 2 uses
  %i.iy = icmp ugt i64 %.sroa.083.1789, -4, !dbg !109424
  %.not.i322 = icmp ugt i64 %i.ix, %2
  %or.cond.i323 = or i1 %i.iy, %.not.i322, !dbg !109424
  br i1 %or.cond.i323, label %.loopexit415, label %bb.al, !dbg !109424

bb.al:                                            ; preds = %bb.ak
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1789, !dbg !109428 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 1, !dbg !109430
  %.sroa.033.0.copyload.i16.i = load i16, ptr %i.ja, align 1, !dbg !109440, !alias.scope !109444, !noalias !109449
  %i.jb = zext i16 %.sroa.033.0.copyload.i16.i to i64, !dbg !109459
  %i.jc = shl nuw nsw i64 %i.jb, 8, !dbg !109459
  %i.jd = load i8, ptr %i.iz, align 1, !dbg !109460, !alias.scope !109444, !noalias !109449, !noundef !11
  %i.je = zext i8 %i.jd to i64, !dbg !109460
  %i.jf = or disjoint i64 %i.jc, %i.je, !dbg !109459 ; 3 uses
  %i.jg = add nuw nsw i64 %i.jf, 394758, !dbg !109461
  %i.jh = lshr i64 %i.jg, 4, !dbg !109464
  %i.ji = and i64 %i.jh, 986895, !dbg !109464
  %i.jj = and i64 %i.jf, 15790320, !dbg !109465
  %i.jk = or disjoint i64 %i.ji, %i.jj, !dbg !109466
  %i.jl = xor i64 %i.jk, 3689348814741910323, !dbg !109466
  %i.jm = tail call range(i64 0, 25) i64 @llvm.cttz.i64(i64 %i.jl, i1 true), !dbg !109467 ; 2 uses
  %switch819 = icmp samesign ugt i64 %i.jm, 15, !dbg !109469
  %.mask820 = and i64 %i.jm, 24
  %i.jn = icmp eq i64 %.mask820, 24
  %or.cond940 = and i1 %switch819, %i.jn, !dbg !109469
  br i1 %or.cond940, label %bb.bd, label %.loopexit415, !dbg !109469

_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit: ; preds = %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECskY9G75ZWc4U_11polars_expr.exit.thread.i, %bb.j
  %.sroa.66.0306322.i = phi i32 [ %i.ca, %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECskY9G75ZWc4U_11polars_expr.exit.thread.i ], [ %i.av, %bb.j ] ; 2 uses
  %i.jo = sub i32 0, %.sroa.66.0306322.i
  %spec.select111 = select i1 %.sroa.0.0926, i32 %i.jo, i32 %.sroa.66.0306322.i, !dbg !109470
  br label %.thread380, !dbg !109470

bb.am:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit125.i, %bb.h, %bb.j, %bb.k, %_RINvXs6_NtCs7TFy6xBzIN2_9atoi_simd6linkerlNtB6_5Parse22atoi_simd_parse_prefixKb1_Kb0_ECskY9G75ZWc4U_11polars_expr.exit.thread.i, %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit49.i
  store i32 0, ptr %0, align 4, !dbg !109471
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

.loopexit421:                                     ; preds = %bb.l, %bb.m
  store i32 0, ptr %0, align 4, !dbg !109476
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

bb.an:                                            ; preds = %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i
  store i32 0, ptr %0, align 4, !dbg !109481
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

bb.ao:                                            ; preds = %bb.n
  %i.jp = load i32, ptr %i.m, align 8, !dbg !109482, !noundef !11
  %i.jq = load i64, ptr %i.n, align 8, !dbg !109482, !noundef !11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !109483
  br label %.thread380, !dbg !109484

bb.ap:                                            ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !109483
  store i32 0, ptr %0, align 4, !dbg !109485
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

bb.aq:                                            ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !109000, !noalias !108990
  store i32 0, ptr %0, align 4, !dbg !109490
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

.loopexit420:                                     ; preds = %bb.w, %bb.x
  store i32 0, ptr %0, align 4, !dbg !109495
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

.loopexit419:                                     ; preds = %bb.y, %bb.z
  store i32 0, ptr %0, align 4, !dbg !109500
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

.loopexit418:                                     ; preds = %bb.aa, %bb.ab
  store i32 0, ptr %0, align 4, !dbg !109505
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

.loopexit417:                                     ; preds = %bb.ac, %bb.ad
  store i32 0, ptr %0, align 4, !dbg !109510
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

bb.ar:                                            ; preds = %bb.ae
  %i.jr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1789, !dbg !109515 ; 3 uses
  %i.js = load i8, ptr %i.jr, align 1, !dbg !109519, !alias.scope !109526, !noalias !109529, !noundef !11
  %cond.i = icmp eq i8 %i.js, 45, !dbg !109519
  br i1 %cond.i, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168, label %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244, !dbg !109519

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244: ; preds = %bb.ar
  %.sroa.034.0.copyload.i208 = load i16, ptr %i.jr, align 1, !dbg !109531, !alias.scope !109539, !noalias !109542
  %i.jt = zext i16 %.sroa.034.0.copyload.i208 to i64, !dbg !109549 ; 4 uses
  %i.ju = add nuw nsw i64 %i.jt, 1542, !dbg !109550
  %i.jv = lshr i64 %i.ju, 4, !dbg !109553
  %i.jw = and i64 %i.jv, 3855, !dbg !109553
  %i.jx = and i64 %i.jt, 61680, !dbg !109554
  %i.jy = or disjoint i64 %i.jw, %i.jx, !dbg !109555
  %i.jz = xor i64 %i.jy, 3689348814741910323, !dbg !109555
  %i.ka = tail call range(i64 0, 17) i64 @llvm.cttz.i64(i64 %i.jz, i1 true), !dbg !109556 ; 2 uses
  %i.kb = trunc nuw nsw i64 %i.ka to i32, !dbg !109556
  %i.kc = lshr i32 %i.kb, 3, !dbg !109558
  switch i32 %i.kc, label %bb.as [
    i32 0, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECskY9G75ZWc4U_11polars_expr.exit.thread335
    i32 1, label %.thread172
  ], !dbg !109559

.thread172:                                       ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244
  %i.kd = and i64 %i.jt, 15, !dbg !109560
  br label %bb.au, !dbg !109561

bb.as:                                            ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244
  %i.ke = icmp samesign ugt i64 %i.ka, 15, !dbg !109562
  tail call void @llvm.assume(i1 %i.ke), !dbg !109562, !noalias !109563
  %i.kf = shl nuw i64 %i.jt, 48, !dbg !109564
  %i.kg = and i64 %i.kf, 1085086035219578880, !dbg !109566
  %i.kh = mul i64 %i.kg, 2561, !dbg !109567
  %i.ki = lshr exact i64 %i.kh, 8, !dbg !109569
  %i.kj = and i64 %i.ki, 71776119061217280, !dbg !109570
  %i.kk = mul i64 %i.kj, 6553601, !dbg !109571
  %i.kl = lshr exact i64 %i.kk, 16, !dbg !109573
  %i.km = mul i64 %i.kl, 42949672960001, !dbg !109574 ; 2 uses
  %i.kn = lshr exact i64 %i.km, 32, !dbg !109576
  %i.ko = icmp ugt i64 %i.km, 9223372032559808512, !dbg !109561
  br i1 %i.ko, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECskY9G75ZWc4U_11polars_expr.exit.thread335, label %bb.au, !dbg !109561

_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168: ; preds = %bb.ar
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jr, i64 1, !dbg !109577
  %i.kq = load i8, ptr %i.kp, align 1, !dbg !109583, !alias.scope !109588, !noalias !109591, !noundef !11 ; 2 uses
  %i.kr = zext i8 %i.kq to i64, !dbg !109583      ; 2 uses
  %i.ks = add nuw nsw i64 %i.kr, 6, !dbg !109598
  %i.kt = lshr i64 %i.ks, 4, !dbg !109601
  %i.ku = and i64 %i.kt, 15, !dbg !109601
  %i.kv = and i64 %i.kr, 240, !dbg !109602
  %i.kw = or disjoint i64 %i.ku, %i.kv, !dbg !109603
  %trunc.not = icmp eq i64 %i.kw, 51, !dbg !109604
  br i1 %trunc.not, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.thread, label %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECskY9G75ZWc4U_11polars_expr.exit.thread335, !dbg !109604

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.thread: ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168
  %i.kx = and i8 %i.kq, 15, !dbg !109605
  %i.ky = zext nneg i8 %i.kx to i32, !dbg !109605
  %i.kz = sub nsw i32 0, %i.ky, !dbg !109605
  br label %.thread357, !dbg !109608

bb.at:                                            ; preds = %bb.ae
  store i32 0, ptr %0, align 4, !dbg !109609
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !109614

_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECskY9G75ZWc4U_11polars_expr.exit.thread335: ; preds = %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit168, %_RNvNtCs7TFy6xBzIN2_9atoi_simd8fallback6load_8.exit244, %bb.as
  store i32 0, ptr %0, align 4, !dbg !109616
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !109621

bb.au:                                            ; preds = %bb.as, %.thread172
  %.sroa.11.2.ph166178 = phi i64 [ %i.kd, %.thread172 ], [ %i.kn, %bb.as ]
  %i.la = trunc nuw nsw i64 %.sroa.11.2.ph166178 to i32, !dbg !109623
  br label %.thread357, !dbg !109631

.thread357:                                       ; preds = %bb.au, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.thread
  %.sroa.10.2326372 = phi i32 [ %i.la, %bb.au ], [ %i.kz, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_negKxn80000000_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.thread ]
  %.sroa.10.2326372.fr = freeze i32 %.sroa.10.2326372, !dbg !109633 ; 2 uses
  %i.lb = icmp slt i32 %.sroa.10.2326372.fr, 70, !dbg !109633
  %spec.select403.v = select i1 %i.lb, i32 2000, i32 1900, !dbg !109633
  %spec.select403 = add i32 %spec.select403.v, %.sroa.10.2326372.fr, !dbg !109633
  br label %.thread380, !dbg !109633

bb.av:                                            ; preds = %bb.ah
  %i.lc = lshr i128 %i.ie, 64
  %i.ld = trunc nuw i128 %i.lc to i32, !dbg !109634
  %i.le = icmp eq ptr %i.u, %i.i, !dbg !109637
  br i1 %i.le, label %bb.ax, label %bb.aw, !dbg !109643, !prof !103

_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i306.thread: ; preds = %bb.ah, %bb.af, %bb.ag
  store i32 0, ptr %0, align 4, !dbg !109644
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

bb.aw:                                            ; preds = %bb.av
  %i.lf = load i8, ptr %i.u, align 1, !dbg !109649, !noundef !11
  %i.lg = icmp eq i8 %i.lf, 102, !dbg !109649
  br i1 %i.lg, label %bb.ay, label %bb.ax, !dbg !109658, !prof !8535

bb.ax:                                            ; preds = %bb.av, %bb.aw
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @149) #50, !dbg !109659
  unreachable, !dbg !109659

bb.ay:                                            ; preds = %bb.aw
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.07.0790, i64 3, !dbg !109660
  br label %.thread380, !dbg !109662

bb.az:                                            ; preds = %bb.aj
  %i.li = shl nuw i64 %i.io, 16, !dbg !109663
  %i.lj = and i64 %i.li, 1085102592571146240, !dbg !109665
  %i.lk = mul i64 %i.lj, 2561, !dbg !109666
  %i.ll = lshr exact i64 %i.lk, 8, !dbg !109668
  %i.lm = and i64 %i.ll, 71777214294589440, !dbg !109669
  %i.ln = mul i64 %i.lm, 6553601, !dbg !109670
  %i.lo = lshr exact i64 %i.ln, 16, !dbg !109672
  %i.lp = and i64 %i.lo, 281470681808895, !dbg !109673
  %i.lq = mul i64 %i.lp, 42949672960001, !dbg !109674
  %i.lr = lshr i64 %i.lq, 32, !dbg !109673
  %i.ls = trunc nuw i64 %i.lr to i32, !dbg !109676
  %i.lt = mul i32 %i.ls, 1000, !dbg !109679
  %i.lu = icmp eq ptr %i.u, %i.i, !dbg !109680
  br i1 %i.lu, label %bb.bb, label %bb.ba, !dbg !109686, !prof !103

.loopexit416:                                     ; preds = %bb.ai, %bb.aj
  store i32 0, ptr %0, align 4, !dbg !109687
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

bb.ba:                                            ; preds = %bb.az
  %i.lv = load i8, ptr %i.u, align 1, !dbg !109692, !noundef !11
  %i.lw = icmp eq i8 %i.lv, 102, !dbg !109692
  br i1 %i.lw, label %bb.bc, label %bb.bb, !dbg !109698, !prof !8535

bb.bb:                                            ; preds = %bb.az, %bb.ba
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @150) #50, !dbg !109699
  unreachable, !dbg !109699

bb.bc:                                            ; preds = %bb.ba
  %i.lx = getelementptr inbounds nuw i8, ptr %.sroa.07.0790, i64 3, !dbg !109700
  br label %.thread380, !dbg !109702

bb.bd:                                            ; preds = %bb.al
  %i.ly = shl nuw i64 %i.jf, 40, !dbg !109703
  %i.lz = and i64 %i.ly, 1085102527893995520, !dbg !109705
  %i.ma = mul i64 %i.lz, 2561, !dbg !109706
  %i.mb = lshr exact i64 %i.ma, 8, !dbg !109708
  %i.mc = and i64 %i.mb, 71777214277877760, !dbg !109709
  %i.md = mul i64 %i.mc, 6553601, !dbg !109710
  %i.me = lshr exact i64 %i.md, 16, !dbg !109712
  %i.mf = and i64 %i.me, 281470681743360, !dbg !109713
  %i.mg = mul i64 %i.mf, 42949672960001, !dbg !109714
  %i.mh = lshr exact i64 %i.mg, 32, !dbg !109713
  %i.mi = trunc nuw i64 %i.mh to i32, !dbg !109716
  %i.mj = mul i32 %i.mi, 1000000, !dbg !109719
  %i.mk = icmp eq ptr %i.u, %i.i, !dbg !109720
  br i1 %i.mk, label %bb.bf, label %bb.be, !dbg !109726, !prof !103

.loopexit415:                                     ; preds = %bb.ak, %bb.al
  store i32 0, ptr %0, align 4, !dbg !109727
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

bb.be:                                            ; preds = %bb.bd
  %i.ml = load i8, ptr %i.u, align 1, !dbg !109732, !noundef !11
  %i.mm = icmp eq i8 %i.ml, 102, !dbg !109732
  br i1 %i.mm, label %bb.bg, label %bb.bf, !dbg !109738, !prof !8535

bb.bf:                                            ; preds = %bb.bd, %bb.be
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @151) #50, !dbg !109739
  unreachable, !dbg !109739

bb.bg:                                            ; preds = %bb.be
  %i.mn = getelementptr inbounds nuw i8, ptr %.sroa.07.0790, i64 3, !dbg !109740
  br label %.thread380, !dbg !109742

.thread380:                                       ; preds = %.thread357, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i, %bb.u, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit, %bb.ao, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296, %bb.ay, %bb.bc, %bb.bg, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i, %bb.bj
  %.sroa.078.3 = phi i32 [ %.sroa.078.0780, %bb.bj ], [ %.sroa.078.0780, %bb.bg ], [ %spec.select111, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.078.0780, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %.sroa.078.0780, %bb.ao ], [ %.sroa.078.0780, %bb.bc ], [ %.sroa.078.0780, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %.sroa.078.0780, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %.sroa.078.0780, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %.sroa.078.0780, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %.sroa.078.0780, %bb.u ], [ %.sroa.078.0780, %bb.ay ], [ %spec.select403, %.thread357 ], [ %.sroa.078.0780, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !108660 ; 2 uses
  %.sroa.080.2 = phi i32 [ %.sroa.080.0781, %bb.bj ], [ %.sroa.080.0781, %bb.bg ], [ %.sroa.080.0781, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %i.ct, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %i.jp, %bb.ao ], [ %.sroa.080.0781, %bb.bc ], [ %.sroa.080.0781, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %.sroa.080.0781, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %.sroa.080.0781, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %.sroa.080.0781, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %i.cz, %bb.u ], [ %.sroa.080.0781, %bb.ay ], [ %.sroa.080.0781, %.thread357 ], [ %i.cz, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !108661 ; 2 uses
  %.sroa.082.2 = phi i32 [ %.sroa.082.0785, %bb.bj ], [ %.sroa.082.0785, %bb.bg ], [ %.sroa.082.0785, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.082.0785, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %.sroa.082.0785, %bb.ao ], [ %.sroa.082.0785, %bb.bc ], [ %i.ei, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %.sroa.082.0785, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %.sroa.082.0785, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %.sroa.082.0785, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %.sroa.082.0785, %bb.u ], [ %.sroa.082.0785, %bb.ay ], [ %.sroa.082.0785, %.thread357 ], [ %.sroa.082.0785, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !108662 ; 2 uses
  %.sroa.083.3 = phi i64 [ %i.ms, %bb.bj ], [ %i.ix, %bb.bg ], [ %i.w, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %i.cb, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %i.jq, %bb.ao ], [ %i.ih, %bb.bc ], [ %i.dq, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %i.ej, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %i.fc, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %i.fv, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %i.da, %bb.u ], [ %i.gq, %bb.ay ], [ %i.go, %.thread357 ], [ %spec.select402, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !109743 ; 2 uses
  %.sroa.07.2 = phi ptr [ %i.o, %bb.bj ], [ %i.mn, %bb.bg ], [ %i.u, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %i.u, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %i.u, %bb.ao ], [ %i.lx, %bb.bc ], [ %i.u, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %i.u, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %i.u, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %i.u, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %i.u, %bb.u ], [ %i.lh, %bb.ay ], [ %i.u, %.thread357 ], [ %i.u, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !109744 ; 2 uses
  %.sroa.04.2 = phi i32 [ %.sroa.04.0791, %bb.bj ], [ %i.mj, %bb.bg ], [ %.sroa.04.0791, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.04.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %.sroa.04.0791, %bb.ao ], [ %i.lt, %bb.bc ], [ %.sroa.04.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %.sroa.04.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %.sroa.04.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %.sroa.04.0791, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %.sroa.04.0791, %bb.u ], [ %i.ld, %bb.ay ], [ %.sroa.04.0791, %.thread357 ], [ %.sroa.04.0791, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !108663 ; 2 uses
  %.sroa.03.2 = phi i32 [ %.sroa.03.0795, %bb.bj ], [ %.sroa.03.0795, %bb.bg ], [ %.sroa.03.0795, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.03.0795, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %.sroa.03.0795, %bb.ao ], [ %.sroa.03.0795, %bb.bc ], [ %.sroa.03.0795, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %.sroa.03.0795, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %.sroa.03.0795, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %i.gn, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %.sroa.03.0795, %bb.u ], [ %.sroa.03.0795, %bb.ay ], [ %.sroa.03.0795, %.thread357 ], [ %.sroa.03.0795, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !108664 ; 2 uses
  %.sroa.02.2 = phi i32 [ %.sroa.02.0799, %bb.bj ], [ %.sroa.02.0799, %bb.bg ], [ %.sroa.02.0799, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.02.0799, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %.sroa.02.0799, %bb.ao ], [ %.sroa.02.0799, %bb.bc ], [ %.sroa.02.0799, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %.sroa.02.0799, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %i.fu, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %.sroa.02.0799, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %.sroa.02.0799, %bb.u ], [ %.sroa.02.0799, %bb.ay ], [ %.sroa.02.0799, %.thread357 ], [ %.sroa.02.0799, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !108665 ; 2 uses
  %.sroa.01.2 = phi i32 [ %.sroa.01.0803, %bb.bj ], [ %.sroa.01.0803, %bb.bg ], [ %.sroa.01.0803, %_RINvNtNtNtCs2Aa799EbAFJ_11polars_time12chunkedarray6string8strptime16update_and_parselECskY9G75ZWc4U_11polars_expr.exit ], [ %.sroa.01.0803, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i ], [ %.sroa.01.0803, %bb.ao ], [ %.sroa.01.0803, %bb.bc ], [ %.sroa.01.0803, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i263 ], [ %i.fb, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i274 ], [ %.sroa.01.0803, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i285 ], [ %.sroa.01.0803, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i296 ], [ %.sroa.01.0803, %bb.u ], [ %.sroa.01.0803, %bb.ay ], [ %.sroa.01.0803, %.thread357 ], [ %.sroa.01.0803, %_RNvMNtCscgRAwXFJnXP_4core5sliceSh11starts_withCskY9G75ZWc4U_11polars_expr.exit.i ], !dbg !108666 ; 2 uses
  %i.mo = icmp eq ptr %.sroa.07.2, %i.i, !dbg !108645
  br i1 %i.mo, label %._crit_edge, label %bb.b, !dbg !108631

bb.bh:                                            ; preds = %bb.d
  %i.mp = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.083.1789, !dbg !109745
  %i.mq = load i8, ptr %i.mp, align 1, !dbg !109746, !noundef !11
  %i.mr = icmp eq i8 %i.mq, %i.p, !dbg !109746
  br i1 %i.mr, label %bb.bj, label %bb.bi, !dbg !109752

bb.bi:                                            ; preds = %bb.d, %bb.bh
  store i32 0, ptr %0, align 4, !dbg !109753
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !108690

bb.bj:                                            ; preds = %bb.bh
  %i.ms = add nuw nsw i64 %.sroa.083.1789, 1, !dbg !109754
  br label %.thread380, !dbg !109755

_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit: ; preds = %bb.bq, %bb.bn, %bb.br, %bb.bk, %bb.bi, %.loopexit415, %.loopexit416, %_RINvNtCs7TFy6xBzIN2_9atoi_simd8fallback12parse_fb_posKyffffffff_Kb1_ECskY9G75ZWc4U_11polars_expr.exit.i.i.thread121.i306.thread, %_RINvNtCs7TFy6xBzIN2_9atoi_simd6linker29atoi_simd_parse_prefix_signedlKb1_Kb0_ECskY9G75ZWc4U_11polars_expr.exit.thread335, %bb.at, %.loopexit417, %.loopexit418, %.loopexit419, %.loopexit420, %bb.aq, %bb.ap, %bb.an, %.loopexit421, %bb.am, %bb.g, %bb.f
  ret void, !dbg !109756

bb.bk:                                            ; preds = %._crit_edge
  store i32 0, ptr %0, align 4, !dbg !109757
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !109758

bb.bl:                                            ; preds = %._crit_edge
  %i.mt = tail call noundef i32 @_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate12from_ymd_opt(i32 noundef %.sroa.078.0.lcssa, i32 noundef %.sroa.080.0.lcssa, i32 noundef %.sroa.082.0.lcssa), !dbg !109759 ; 2 uses
  %.not109 = icmp eq i32 %i.mt, 0, !dbg !109760
  br i1 %.not109, label %bb.br, label %bb.bm, !dbg !109763

bb.bm:                                            ; preds = %bb.bl
  %i.mu = icmp ugt i32 %.sroa.01.0.lcssa, 23, !dbg !109764
  %i.mv = icmp ugt i32 %.sroa.02.0.lcssa, 59
  %or.cond.i332 = or i1 %i.mv, %i.mu, !dbg !109764
  %i.mw = icmp ugt i32 %.sroa.03.0.lcssa, 59
  %or.cond1.i = or i1 %i.mw, %or.cond.i332, !dbg !109764
  br i1 %or.cond1.i, label %bb.bn, label %bb.bo, !dbg !109764

bb.bn:                                            ; preds = %bb.bp, %bb.bm
  store i32 0, ptr %0, align 4, !dbg !109777, !alias.scope !109780
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !109783

bb.bo:                                            ; preds = %bb.bm
  %i.mx = icmp ugt i32 %.sroa.04.0.lcssa, 999999999, !dbg !109784
  br i1 %i.mx, label %bb.bp, label %bb.bq, !dbg !109784

bb.bp:                                            ; preds = %bb.bo
  %i.my = icmp ne i32 %.sroa.03.0.lcssa, 59, !dbg !109785
  %i.mz = icmp ugt i32 %.sroa.04.0.lcssa, 1999999999
  %or.cond2.i = or i1 %i.mz, %i.my, !dbg !109785
  br i1 %or.cond2.i, label %bb.bn, label %bb.bq, !dbg !109785

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.na = mul nuw nsw i32 %.sroa.01.0.lcssa, 3600, !dbg !109786
  %i.nb = mul nuw nsw i32 %.sroa.02.0.lcssa, 60, !dbg !109787
  %i.nc = add nuw nsw i32 %i.nb, %.sroa.03.0.lcssa, !dbg !109786
  %i.nd = add nuw nsw i32 %i.nc, %i.na, !dbg !109786
  store i32 %i.mt, ptr %0, align 4, !dbg !109788, !alias.scope !109780
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4, !dbg !109788
  store i32 %i.nd, ptr %.sroa.44.0..sroa_idx.i, align 4, !dbg !109788, !alias.scope !109780
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !109788
  store i32 %.sroa.04.0.lcssa, ptr %.sroa.5.0..sroa_idx.i, align 4, !dbg !109788, !alias.scope !109780
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !109783

bb.br:                                            ; preds = %bb.bl
  store i32 0, ptr %0, align 4, !dbg !109790
  br label %_RNvMNtNtCs9o5SvTbM2BP_6chrono5naive4dateNtB2_9NaiveDate16and_hms_nano_opt.exit, !dbg !109791
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMNtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB2_6Finder3new(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 2, -9223372036854775808) %2) unnamed_addr #0 !dbg !109792 {
bb.a:
  %xtraiter = and i64 %2, 3, !dbg !109796         ; 3 uses
  %i.a = icmp samesign ult i64 %2, 4, !dbg !109796
  br i1 %i.a, label %.lr.ph.i.epil.preheader, label %.new, !dbg !109796

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %2, 9223372036854775804, !dbg !109796
  br label %.lr.ph.i, !dbg !109796

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.new
  %.sroa.0.05.i = phi i64 [ 0, %.new ], [ %i.y, %.lr.ph.i ]
  %.sroa.02.04.i = phi ptr [ %1, %.new ], [ %i.t, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 1, !dbg !109807
  %i.c = load i8, ptr %.sroa.02.04.i, align 1, !dbg !109810, !alias.scope !109811, !noundef !11
  %i.d = and i8 %i.c, 63, !dbg !109814
  %i.e = zext nneg i8 %i.d to i64, !dbg !109816
  %i.f = shl nuw i64 1, %i.e, !dbg !109816
  %i.g = or i64 %i.f, %.sroa.0.05.i, !dbg !109817
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 2, !dbg !109807
  %i.i = load i8, ptr %i.b, align 1, !dbg !109810, !alias.scope !109811, !noundef !11
  %i.j = and i8 %i.i, 63, !dbg !109814
  %i.k = zext nneg i8 %i.j to i64, !dbg !109816
  %i.l = shl nuw i64 1, %i.k, !dbg !109816
  %i.m = or i64 %i.l, %i.g, !dbg !109817
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 3, !dbg !109807
  %i.o = load i8, ptr %i.h, align 1, !dbg !109810, !alias.scope !109811, !noundef !11
  %i.p = and i8 %i.o, 63, !dbg !109814
  %i.q = zext nneg i8 %i.p to i64, !dbg !109816
  %i.r = shl nuw i64 1, %i.q, !dbg !109816
  %i.s = or i64 %i.r, %i.m, !dbg !109817
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i, i64 4, !dbg !109807 ; 2 uses
  %i.u = load i8, ptr %i.n, align 1, !dbg !109810, !alias.scope !109811, !noundef !11
  %i.v = and i8 %i.u, 63, !dbg !109814
  %i.w = zext nneg i8 %i.v to i64, !dbg !109816
  %i.x = shl nuw i64 1, %i.w, !dbg !109816
  %i.y = or i64 %i.x, %i.s, !dbg !109817          ; 3 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4, !dbg !109796 ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter, !dbg !109796
  br i1 %niter.ncmp.3, label %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa, label %.lr.ph.i, !dbg !109796

_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !109796
  br i1 %lcmp.mod.not, label %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit, label %.lr.ph.i.epil.preheader, !dbg !109796

.lr.ph.i.epil.preheader:                          ; preds = %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa, %bb.a
  %.sroa.0.05.i.epil.init = phi i64 [ 0, %bb.a ], [ %i.y, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa ]
  %.sroa.02.04.i.epil.init = phi ptr [ %1, %bb.a ], [ %i.t, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0, !dbg !109796
  tail call void @llvm.assume(i1 %lcmp.mod39), !dbg !109796
  br label %.lr.ph.i.epil, !dbg !109796

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.05.i.epil = phi i64 [ %i.ae, %.lr.ph.i.epil ], [ %.sroa.0.05.i.epil.init, %.lr.ph.i.epil.preheader ]
  %.sroa.02.04.i.epil = phi ptr [ %i.z, %.lr.ph.i.epil ], [ %.sroa.02.04.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.02.04.i.epil, i64 1, !dbg !109807
  %i.aa = load i8, ptr %.sroa.02.04.i.epil, align 1, !dbg !109810, !alias.scope !109811, !noundef !11
  %i.ab = and i8 %i.aa, 63, !dbg !109814
  %i.ac = zext nneg i8 %i.ab to i64, !dbg !109816
  %i.ad = shl nuw i64 1, %i.ac, !dbg !109816
  %i.ae = or i64 %i.ad, %.sroa.0.05.i.epil, !dbg !109817 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1, !dbg !109796 ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter, !dbg !109796
  br i1 %epil.iter.cmp.not, label %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit, label %.lr.ph.i.epil, !dbg !109796, !llvm.loop !109818

_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit: ; preds = %.lr.ph.i.epil, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa
  %.lcssa37 = phi i64 [ %i.y, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit.unr-lcssa ], [ %i.ae, %.lr.ph.i.epil ], !dbg !109817
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109819), !dbg !109822
  br label %.split.i

.split.i:                                         ; preds = %bb.g, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit
  %i.af = phi i64 [ %i.au, %bb.g ], [ 1, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ]
  %.sroa.0.031.i = phi i64 [ %.sroa.0.1.i, %bb.g ], [ 0, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ] ; 4 uses
  %.sroa.5.030.i = phi i64 [ %.sroa.5.1.i, %bb.g ], [ 1, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ] ; 3 uses
  %.sroa.05.029.i = phi i64 [ %.sroa.05.1.i, %bb.g ], [ 1, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ] ; 4 uses
  %.sroa.012.028.i = phi i64 [ %.sroa.012.1.i, %bb.g ], [ 0, %_RNvMs3_NtNtNtCslnrARR2vGZ9_6memchr4arch3all6twowayNtB5_18ApproximateByteSet3new.exit ] ; 2 uses
  %i.ag = add i64 %.sroa.012.028.i, %.sroa.0.031.i, !dbg !109824 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, %2, !dbg !109831
  br i1 %i.ah, label %bb.b, label %.split33.us.i, !dbg !109831

bb.b:                                             ; preds = %.split.i
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag, !dbg !109831
  %i.aj = load i8, ptr %i.ai, align 1, !dbg !109831, !alias.scope !109819, !noundef !11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.af, !dbg !109832
  %i.al = load i8, ptr %i.ak, align 1, !dbg !109832, !alias.scope !109819, !noundef !11 ; 2 uses
  %i.am = icmp ult i8 %i.al, %i.aj, !dbg !109834
  br i1 %i.am, label %bb.f, label %bb.c, !dbg !109834

.split33.us.i:                                    ; preds = %.split.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.ag, i64 noundef range(i64 2, -9223372036854775808) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #50, !dbg !109831, !noalias !109819
  unreachable, !dbg !109831

bb.c:                                             ; preds = %bb.b
  %i.an = icmp ugt i8 %i.al, %i.aj, !dbg !109839
  %i.ao = add i64 %.sroa.012.028.i, 1, !dbg !109840 ; 3 uses
  br i1 %i.an, label %bb.e, label %bb.d, !dbg !109839

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp eq i64 %i.ao, %.sroa.5.030.i, !dbg !109841 ; 2 uses
  %spec.select.i = select i1 %i.ap, i64 0, i64 %i.ao, !dbg !109841
  %i.aq = select i1 %i.ap, i64 %.sroa.5.030.i, i64 0, !dbg !109841
  %spec.select25.i = add i64 %i.aq, %.sroa.05.029.i, !dbg !109841
  br label %bb.g, !dbg !109841
end_hunk_0
