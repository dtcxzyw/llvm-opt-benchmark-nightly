Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.15?download=true
inline.NumInlined: 9427
inline.NumDeleted: 4812
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_RNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB2_11RollingExprNtB4_12PhysicalExpr23evaluate_on_groups_impl:bb.a
  br label %bb.ch, !dbg !109493

bb.bo:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !dbg !109494
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !109496
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.go, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
          to label %bb.bp unwind label %bb.bl, !dbg !109496

bb.bp:                                            ; preds = %bb.bo
  %i.gy = load i64, ptr %i.e, align 8, !dbg !109496, !range !1565, !noundef !11
  %i.gz = trunc nuw i64 %i.gy to i1, !dbg !109505
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !109506
  %i.hb = load i64, ptr %i.ha, align 8, !dbg !109506, !range !1568, !noundef !11 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !109506 ; 2 uses
  br i1 %i.gz, label %bb.bq, label %bb.br, !dbg !109505, !prof !1569

bb.bq:                                            ; preds = %bb.bp
  %i.hd = load i64, ptr %i.hc, align 8, !dbg !109507
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.hb, i64 %i.hd) #36
          to label %bb.bk unwind label %bb.bl, !dbg !109508

bb.br:                                            ; preds = %bb.bp
  %i.he = load ptr, ptr %i.hc, align 8, !dbg !109510, !nonnull !11, !noundef !11
  %i.hf = icmp ule i64 %i.go, %i.hb, !dbg !109511
  call void @llvm.assume(i1 %i.hf), !dbg !109515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !109518
  store i64 %i.hb, ptr %i.av, align 8, !dbg !109519
  %i.hg = getelementptr inbounds nuw i8, ptr %i.av, i64 8, !dbg !109519
  store ptr %i.he, ptr %i.hg, align 8, !dbg !109519
  %i.hh = getelementptr inbounds nuw i8, ptr %i.av, i64 16, !dbg !109519 ; 2 uses
  store i64 0, ptr %i.hh, align 8, !dbg !109519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !dbg !109520
  %i.hi = load i64, ptr %3, align 8, !dbg !109522, !range !1568, !noundef !11 ; 2 uses
  %i.hj = icmp eq i64 %i.hi, -9223372036854775808, !dbg !109522 ; 2 uses
  %. = select i1 %i.hj, i64 24, i64 16, !dbg !109524
  %.731.a = select i1 %i.hj, i64 1152921504606846976, i64 2305843009213693952, !dbg !109524
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 %., !dbg !109524
  %i.hl = load i64, ptr %i.hk, align 8, !dbg !109524, !noundef !11 ; 3 uses
  %i.hm = icmp ult i64 %i.hl, %.731.a, !dbg !109524
  call void @llvm.assume(i1 %i.hm), !dbg !109524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !109525
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.hl, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %bb.bt unwind label %.thread465, !dbg !109525

bb.bs:                                            ; preds = %bb.cb
  br i1 %.not496740, label %.body337, label %bb.cj, !dbg !109536

.thread465:                                       ; preds = %bb.br, %bb.bu
  %i.hn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj, !dbg !109536

bb.bt:                                            ; preds = %bb.br
  %i.ho = load i64, ptr %i.d, align 8, !dbg !109525, !range !1565, !noundef !11
  %i.hp = trunc nuw i64 %i.ho to i1, !dbg !109537
  %i.hq = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !109538
  %i.hr = load i64, ptr %i.hq, align 8, !dbg !109538, !range !1568, !noundef !11 ; 3 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !109538 ; 2 uses
  br i1 %i.hp, label %bb.bu, label %bb.bv, !dbg !109537, !prof !1569

bb.bu:                                            ; preds = %bb.bt
  %i.ht = load i64, ptr %i.hs, align 8, !dbg !109539
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.hr, i64 %i.ht) #36
          to label %bb.bk unwind label %.thread465, !dbg !109540

bb.bv:                                            ; preds = %bb.bt
  %i.hu = load ptr, ptr %i.hs, align 8, !dbg !109542, !nonnull !11, !noundef !11
  %i.hv = icmp samesign ule i64 %i.hl, %i.hr, !dbg !109543
  call void @llvm.assume(i1 %i.hv), !dbg !109547
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !109549
  store i64 %i.hr, ptr %i.au, align 8, !dbg !109550
  %i.hw = getelementptr inbounds nuw i8, ptr %i.au, i64 8, !dbg !109550 ; 3 uses
  store ptr %i.hu, ptr %i.hw, align 8, !dbg !109550
  %i.hx = getelementptr inbounds nuw i8, ptr %i.au, i64 16, !dbg !109550 ; 4 uses
  store i64 0, ptr %i.hx, align 8, !dbg !109550
  %.sroa.gep363 = getelementptr inbounds nuw i8, ptr %i.gt, i64 32, !dbg !109551
  %.sroa.gep364 = getelementptr inbounds nuw i8, ptr %i.bj, i64 208, !dbg !109551
  %.sroa.0187.0.sroa.sel365 = select i1 %.not257, ptr %.sroa.gep363, ptr %.sroa.gep364, !dbg !109551
  %i.hy = load ptr, ptr %.sroa.0187.0.sroa.sel365, align 8, !dbg !109551, !nonnull !11, !noundef !11 ; 2 uses
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %i.gt, i64 40, !dbg !109568
  %.sroa.gep362 = getelementptr inbounds nuw i8, ptr %i.bj, i64 216, !dbg !109568
  %.sroa.0187.0.sroa.sel = select i1 %.not257, ptr %.sroa.gep, ptr %.sroa.gep362, !dbg !109568
  %i.hz = load i64, ptr %.sroa.0187.0.sroa.sel, align 8, !dbg !109568, !noundef !11 ; 2 uses
  %.idx751 = shl nuw nsw i64 %i.hz, 4, !dbg !109569
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.idx751, !dbg !109569
  %i.ib = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %.not496741 = icmp eq i64 %i.hz, 0, !dbg !109580
  br i1 %.not496741, label %._crit_edge746, label %.lr.ph745, !dbg !109582

bb.bw:                                            ; preds = %bb.cf
  %.not496 = icmp eq ptr %i.id, %i.ia, !dbg !109580
  br i1 %.not496, label %._crit_edge746, label %.lr.ph745, !dbg !109582

.lr.ph745:                                        ; preds = %bb.bv, %bb.bw
  %.sroa.055.0742 = phi ptr [ %i.id, %bb.bw ], [ %i.hy, %bb.bv ] ; 5 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.055.0742, i64 16, !dbg !109589 ; 2 uses
  %i.ie = load i64, ptr %i.hh, align 8, !dbg !109592, !noundef !11 ; 2 uses
  %i.if = icmp ult i64 %i.ie, 1152921504606846976, !dbg !109596
  call void @llvm.assume(i1 %i.if), !dbg !109598
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.055.0742, i64 8, !dbg !109599
  %i.ih = load i32, ptr %i.ig, align 8, !dbg !109599, !noundef !11
  %i.ii = zext i32 %i.ih to i64, !dbg !109599     ; 2 uses
  %.sroa.4235.0.insert.shift = shl nuw i64 %i.ii, 32, !dbg !109605
  %.sroa.0234.0.insert.ext = and i64 %i.ie, 4294967295, !dbg !109605
  %.sroa.0234.0.insert.insert = or disjoint i64 %.sroa.4235.0.insert.shift, %.sroa.0234.0.insert.ext, !dbg !109605
  %i.ij = load i64, ptr %i.hx, align 8, !dbg !109608, !alias.scope !109611, !noundef !11 ; 3 uses
  %i.ik = load i64, ptr %i.au, align 8, !dbg !109614, !range !1325, !alias.scope !109611, !noundef !11
  %i.il = icmp eq i64 %i.ij, %i.ik, !dbg !109620
  br i1 %i.il, label %bb.bx, label %bb.cd, !dbg !109620

bb.bx:                                            ; preds = %.lr.ph745
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecAmj2_E8grow_oneCs1LHh8CLbVkQ_11polars_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %bb.cd unwind label %bb.cc, !dbg !109621

._crit_edge746:                                   ; preds = %bb.bw, %bb.bv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !dbg !109622
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, ptr noundef nonnull align 8 dereferenceable(24) %i.av, i64 24, i1 false), !dbg !109623
  %i.im = load i64, ptr %i.ay, align 8, !dbg !109624, !range !1568, !alias.scope !109626, !noundef !11
  %i.in = icmp eq i64 %i.im, -9223372036854775808, !dbg !109624
  br i1 %i.in, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit, label %bb.by, !dbg !109624

bb.by:                                            ; preds = %._crit_edge746
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i unwind label %bb.bz, !dbg !109629

bb.bz:                                            ; preds = %bb.by
  %i.io = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %.body311 unwind label %bb.ca, !dbg !109631

bb.ca:                                            ; preds = %bb.bz
  %i.ip = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !109629
  unreachable, !dbg !109629

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.by
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecxENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit unwind label %bb.cg, !dbg !109633

bb.cb:                                            ; preds = %.body311, %bb.cc
  %.not496740 = phi i1 [ true, %.body311 ], [ false, %bb.cc ]
  %.pn = phi { ptr, i32 } [ %eh.lpad-body312, %.body311 ], [ %i.iq, %bb.cc ] ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecAmj2_EECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.au) #38
          to label %bb.bs unwind label %bb.ci, !dbg !109635

bb.cc:                                            ; preds = %bb.bx, %bb.cf
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cd:                                            ; preds = %.lr.ph745, %bb.bx
  %i.ir = load ptr, ptr %i.hw, align 8, !dbg !109636, !alias.scope !109611, !nonnull !11, !noundef !11
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.ir, i64 %i.ij, !dbg !109645
  store i64 %.sroa.0234.0.insert.insert, ptr %i.is, align 4, !dbg !109648
  %i.it = add i64 %i.ij, 1, !dbg !109652
  store i64 %i.it, ptr %i.hx, align 8, !dbg !109652, !alias.scope !109611
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.055.0742, i64 12, !dbg !109653
  %i.iv = load i32, ptr %i.iu, align 4, !dbg !109653, !range !109665, !noundef !11
  %i.iw = icmp eq i32 %i.iv, 1, !dbg !109666
  br i1 %i.iw, label %bb.cf, label %bb.ce, !dbg !109666

bb.ce:                                            ; preds = %bb.cd
  %i.ix = load ptr, ptr %.sroa.055.0742, align 8, !dbg !109667, !noundef !11
  br label %bb.cf, !dbg !109668

bb.cf:                                            ; preds = %bb.cd, %bb.ce
  %.sroa.0193.0 = phi ptr [ %i.ix, %bb.ce ], [ %.sroa.055.0742, %bb.cd ], !dbg !109669 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0193.0) ], !dbg !109670
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0193.0, i64 %i.ii, !dbg !109681
  store ptr %.sroa.0193.0, ptr %i.at, align 8, !dbg !109684
  store ptr %i.iy, ptr %i.ib, align 8, !dbg !109684
  store ptr %i.ay, ptr %i.ic, align 8, !dbg !109684
  invoke void @_RINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6_3VecxE14extend_trustedINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB2k_11RollingExprNtB2m_12PhysicalExpr23evaluate_on_groups_impls_0EEB2o_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.at)
          to label %bb.bw unwind label %bb.cc, !dbg !109689

bb.cg:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i
  %i.iz = landingpad { ptr, i32 }
          cleanup
  br label %.body311, !dbg !109694

.body311:                                         ; preds = %bb.bz, %bb.cg
  %eh.lpad-body312 = phi { ptr, i32 } [ %i.iz, %bb.cg ], [ %i.io, %bb.bz ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !dbg !109694
  br label %bb.cb, !dbg !109694

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit: ; preds = %._crit_edge746, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !dbg !109694
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !dbg !109695
  %.sroa.068.0.copyload = load i64, ptr %i.au, align 8, !dbg !109696
  %.sroa.469.0.copyload = load ptr, ptr %i.hw, align 8, !dbg !109696
  %.sroa.570.0.copyload = load i64, ptr %i.hx, align 8, !dbg !109696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !dbg !109635
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !dbg !109536
  br label %bb.ch, !dbg !109697

bb.ch:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit, %bb.bn
  %i.ja = phi i64 [ %.pre, %bb.bn ], [ %i.hi, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit ], !dbg !109489
  %.sroa.465.sroa.0.0 = phi i64 [ undef, %bb.bn ], [ %.sroa.570.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit ]
  %.sroa.072.0 = phi i8 [ %i.gx, %bb.bn ], [ 1, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit ], !dbg !109698
  %.sroa.071.0 = phi i8 [ %i.gw, %bb.bn ], [ 0, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit ], !dbg !109698
  %.sroa.362.0 = phi ptr [ %.sroa.0187.0.sroa.sel374, %bb.bn ], [ %.sroa.469.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit ], !dbg !109698 ; 4 uses
  %.sroa.060.0 = phi i64 [ -9223372036854775808, %bb.bn ], [ %.sroa.068.0.copyload, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc6borrow3CowSxEECskY9G75ZWc4U_11polars_expr.exit ], !dbg !109698 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !dbg !109699
  store i64 %.sroa.060.0, ptr %i.aw, align 8, !dbg !109699
  %.sroa.362.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.aw, i64 8, !dbg !109699 ; 6 uses
  store ptr %.sroa.362.0, ptr %.sroa.362.0..sroa_idx63, align 8, !dbg !109699
  %.sroa.465.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.aw, i64 16, !dbg !109699 ; 4 uses
  store i64 %.sroa.465.sroa.0.0, ptr %.sroa.465.0..sroa_idx66, align 8, !dbg !109699
  %.not261 = icmp eq i64 %.sroa.060.0, -9223372036854775808, !dbg !109700 ; 3 uses
  %.sroa.gep389 = getelementptr inbounds nuw i8, ptr %.sroa.362.0, i64 16, !dbg !109703
  %.sroa.0194.0.sroa.sel = select i1 %.not261, ptr %.sroa.gep389, ptr %.sroa.465.0..sroa_idx66, !dbg !109703
  %i.jb = load i64, ptr %.sroa.0194.0.sroa.sel, align 8, !dbg !109703, !noundef !11 ; 7 uses
  store i64 %i.jb, ptr %i.ar, align 8, !dbg !109703
  %i.jc = icmp ult i64 %i.jb, 1152921504606846976, !dbg !109706
  call void @llvm.assume(i1 %i.jc), !dbg !109708
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !dbg !109709
  %i.jd = icmp eq i64 %i.ja, -9223372036854775808, !dbg !109489 ; 2 uses
  br i1 %i.jd, label %bb.ck, label %bb.cl, !dbg !109710

bb.ci:                                            ; preds = %bb.gg, %bb.ee, %.body345, %.thread449, %.body328.thread, %bb.fj, %.body340, %bb.ez, %bb.ej, %bb.ea, %bb.dt, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsECskY9G75ZWc4U_11polars_expr.exit, %bb.cj, %bb.cb, %.body337, %bb.ag, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8temporal9time_zone8TimeZoneEECskY9G75ZWc4U_11polars_expr.exit361, %bb.d
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !109711
  unreachable, !dbg !109711

bb.cj:                                            ; preds = %.thread465, %bb.bs
  %.pn259468 = phi { ptr, i32 } [ %i.hn, %.thread465 ], [ %.pn, %bb.bs ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecxEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.av) #38
          to label %.body337 unwind label %bb.ci, !dbg !109536

bb.ck:                                            ; preds = %bb.ch
  %i.jf = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !109712
  %i.jg = load i64, ptr %i.jf, align 8, !dbg !109712, !noundef !11 ; 3 uses
  store i64 %i.jg, ptr %i.aq, align 8, !dbg !109712
  %i.jh = icmp ult i64 %i.jg, 1152921504606846976, !dbg !109716
  call void @llvm.assume(i1 %i.jh), !dbg !109718
  %i.ji = icmp eq i64 %i.jb, %i.jg, !dbg !109719
  br i1 %i.ji, label %bb.cp, label %bb.cm, !dbg !109719, !prof !7906

bb.cl:                                            ; preds = %bb.ch
  %i.jj = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !109722
  %i.jk = load i64, ptr %i.jj, align 8, !dbg !109722, !noundef !11 ; 4 uses
  store i64 %i.jk, ptr %i.aq, align 8, !dbg !109722
  %i.jl = icmp ult i64 %i.jk, 2305843009213693952, !dbg !109730
  call void @llvm.assume(i1 %i.jl), !dbg !109732
  %i.jm = icmp eq i64 %i.jb, %i.jk, !dbg !109719
  %i.jn = inttoptr i64 %i.jk to ptr, !dbg !109719 ; 2 uses
  br i1 %i.jm, label %bb.cn, label %bb.cm, !dbg !109719, !prof !7906

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  invoke void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aq, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @784) #36
          to label %bb.bk unwind label %.split653.thread, !dbg !109733

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !109736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !dbg !109737
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !109739
  %i.jp = load ptr, ptr %i.jo, align 8, !dbg !109739, !nonnull !11, !noundef !11 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !109753
  %i.jr = load i64, ptr %i.jq, align 8, !dbg !109753, !noundef !11
  %i.js = getelementptr inbounds nuw [16 x i8], ptr %i.jp, i64 %i.jr, !dbg !109754
  %.sroa.gep393 = getelementptr inbounds nuw i8, ptr %.sroa.362.0, i64 8, !dbg !109762
  %.sroa.0195.0.sroa.sel395 = select i1 %.not261, ptr %.sroa.gep393, ptr %.sroa.362.0..sroa_idx63, !dbg !109762
  %i.jt = load ptr, ptr %.sroa.0195.0.sroa.sel395, align 8, !dbg !109762, !nonnull !11, !noundef !11 ; 2 uses
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jb, !dbg !109781
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEIBX_Amj2_EEINtB5_7ZipImplBW_B2c_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ap, ptr noundef nonnull %i.jp, ptr noundef nonnull %i.js, ptr noundef nonnull %i.jt, ptr noundef nonnull %i.ju)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_Amj2_EECskY9G75ZWc4U_11polars_expr.exit unwind label %.split653.thread, !dbg !109792

.body328:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsECskY9G75ZWc4U_11polars_expr.exit
  br i1 %.sroa.0146.2, label %.body328.thread, label %.body337, !dbg !109797

.split653.thread:                                 ; preds = %bb.cm, %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit316, %.loopexit507, %bb.cs, %bb.df, %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEIBS_Amj2_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2b_ETjjEuINtNtNtBc_3ops12control_flow11ControlFlowB3E_ENCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB4y_11RollingExprNtB4A_12PhysicalExpr23evaluate_on_groups_impls0_0NCINvNvB2i_4find5checkB3E_NCB4v_s1_0E0E0B3J_EB4C_.exit, %bb.cn, %bb.cp
  %lpad.thr_comm654 = landingpad { ptr, i32 }
          cleanup
  br label %.body328.thread, !dbg !109797

.split653:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtNtCs1LHh8CLbVkQ_11polars_core5frame8group_by8position14GroupPositionsECskY9G75ZWc4U_11polars_expr.exit336
  %lpad.thr_comm.split-lp655 = landingpad { ptr, i32 }
          cleanup
  br label %.body337, !dbg !109797

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_Amj2_EECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.cn
  %.sroa.0406.0.copyload = load ptr, ptr %i.ap, align 8, !dbg !109798
  %.sroa.5408.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 16, !dbg !109798
  %.sroa.5408.0.copyload = load ptr, ptr %.sroa.5408.0..sroa_idx, align 8, !dbg !109798
  %.sroa.6410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 32, !dbg !109798
  %.sroa.6410.0.copyload = load i64, ptr %.sroa.6410.0..sroa_idx, align 8, !dbg !109798 ; 3 uses
  %.sroa.8411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ap, i64 40, !dbg !109798
  %.sroa.8411.0.copyload = load i64, ptr %.sroa.8411.0..sroa_idx, align 8, !dbg !109798 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !dbg !109804
  %umax.i = call i64 @llvm.umax.i64(i64 %.sroa.6410.0.copyload, i64 %.sroa.8411.0.copyload), !dbg !109805
  %exitcond.not.i747.not = icmp ult i64 %.sroa.6410.0.copyload, %.sroa.8411.0.copyload, !dbg !109813
  br i1 %exitcond.not.i747.not, label %.lr.ph748.a, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEIBS_Amj2_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2b_ETjjEuINtNtNtBc_3ops12control_flow11ControlFlowB3E_ENCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB4y_11RollingExprNtB4A_12PhysicalExpr23evaluate_on_groups_impls0_0NCINvNvB2i_4find5checkB3E_NCB4v_s1_0E0E0B3J_EB4C_.exit, !dbg !109813

bb.co:                                            ; preds = %.lr.ph748.a
  %i.jv = add i64 %i.jw, 1, !dbg !109819          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.jv, %umax.i, !dbg !109813
  br i1 %exitcond.not.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEIBS_Amj2_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2b_ETjjEuINtNtNtBc_3ops12control_flow11ControlFlowB3E_ENCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB4y_11RollingExprNtB4A_12PhysicalExpr23evaluate_on_groups_impls0_0NCINvNvB2i_4find5checkB3E_NCB4v_s1_0E0E0B3J_EB4C_.exit, label %.lr.ph748.a, !dbg !109813

.lr.ph748.a:                                      ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_Amj2_EECskY9G75ZWc4U_11polars_expr.exit, %bb.co
  %i.jw = phi i64 [ %i.jv, %bb.co ], [ %.sroa.6410.0.copyload, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_Amj2_EECskY9G75ZWc4U_11polars_expr.exit ] ; 3 uses
  %i.jx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0406.0.copyload, i64 %i.jw, !dbg !109821
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5408.0.copyload, i64 %i.jw, !dbg !109826
  %i.jz = getelementptr i8, ptr %i.jx, i64 8, !dbg !109831
  %.val.i = load i32, ptr %i.jz, align 8, !dbg !109831, !noalias !109832, !noundef !11 ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jy, i64 4, !dbg !109831
  %.val5.i = load i32, ptr %i.ka, align 4, !dbg !109831, !noalias !109832, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.val.i, %.val5.i, !dbg !109836
  br i1 %.not.i.i.i, label %bb.co, label %.loopexit507, !dbg !109847

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEIBS_Amj2_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2b_ETjjEuINtNtNtBc_3ops12control_flow11ControlFlowB3E_ENCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB4y_11RollingExprNtB4A_12PhysicalExpr23evaluate_on_groups_impls0_0NCINvNvB2i_4find5checkB3E_NCB4v_s1_0E0E0B3J_EB4C_.exit: ; preds = %bb.co, %bb.cq, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_Amj2_EECskY9G75ZWc4U_11polars_expr.exit, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterAmj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECskY9G75ZWc4U_11polars_expr.exit
  %i.kb = phi ptr [ %i.ke, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterAmj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECskY9G75ZWc4U_11polars_expr.exit ], [ %i.jn, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEENtNtNtNtBa_4iter6traits8iterator8Iterator3zipIB4_Amj2_EECskY9G75ZWc4U_11polars_expr.exit ], [ %i.ke, %bb.cq ], [ %i.jn, %bb.co ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !109848
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !109850
  invoke void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.go, i1 noundef zeroext false, i64 noundef 4, i64 noundef 8)
          to label %bb.cr unwind label %.split653.thread, !dbg !109850

.loopexit507:                                     ; preds = %.lr.ph748.a, %.lr.ph750
  %.sroa.11.0.in = phi i32 [ %.val5.i324, %.lr.ph750 ], [ %.val5.i, %.lr.ph748.a ]
  %.sroa.885.0.in = phi i32 [ %.val.i323, %.lr.ph750 ], [ %.val.i, %.lr.ph748.a ]
  %.sroa.885.0 = zext i32 %.sroa.885.0.in to i64, !dbg !109858
  %.sroa.11.0 = zext i32 %.sroa.11.0.in to i64, !dbg !109858
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !dbg !109859
  store i64 %.sroa.885.0, ptr %i.an, align 8, !dbg !109859
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !dbg !109861
  store i64 %.sroa.11.0, ptr %i.am, align 8, !dbg !109861
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !dbg !109862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !109863
  store ptr %i.an, ptr %i.aj, align 8, !dbg !109863
  %.sroa.4202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 8, !dbg !109863
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4202.0..sroa_idx, align 8, !dbg !109863
  %i.kc = getelementptr inbounds nuw i8, ptr %i.aj, i64 16, !dbg !109863
  store ptr %i.am, ptr %i.kc, align 8, !dbg !109863
  %.sroa.4206.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 24, !dbg !109863
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.4206.0..sroa_idx, align 8, !dbg !109863
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ak, ptr noundef nonnull @793, ptr noundef nonnull %i.aj)
          to label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECskY9G75ZWc4U_11polars_expr.exit316 unwind label %.split653.thread, !dbg !109866

bb.cp:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !dbg !109736
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !dbg !109871
  %i.kd = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !109873
  %i.ke = load ptr, ptr %i.kd, align 8, !dbg !109873, !nonnull !11, !noundef !11 ; 4 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.ke, i64 %i.jb, !dbg !109884
  %.sroa.gep398 = getelementptr inbounds nuw i8, ptr %.sroa.362.0, i64 8, !dbg !109892
  %.sroa.0197.0.sroa.sel400 = select i1 %.not261, ptr %.sroa.gep398, ptr %.sroa.362.0..sroa_idx63, !dbg !109892
  %i.kg = load ptr, ptr %.sroa.0197.0.sroa.sel400, align 8, !dbg !109892, !nonnull !11, !noundef !11 ; 2 uses
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.kg, i64 %i.jb, !dbg !109905
  invoke void @_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterAmj2_EBW_EINtB5_7ZipImplBW_BW_E3newCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.ao, ptr noundef nonnull %i.ke, ptr noundef nonnull %i.kf, ptr noundef nonnull %i.kg, ptr noundef nonnull %i.kh)
          to label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterAmj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECskY9G75ZWc4U_11polars_expr.exit unwind label %.split653.thread, !dbg !109913

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterAmj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.cp
  %.sroa.0412.0.copyload = load ptr, ptr %i.ao, align 8, !dbg !109918
  %.sroa.5414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16, !dbg !109918
  %.sroa.5414.0.copyload = load ptr, ptr %.sroa.5414.0..sroa_idx, align 8, !dbg !109918
  %.sroa.6416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 32, !dbg !109918
  %.sroa.6416.0.copyload = load i64, ptr %.sroa.6416.0..sroa_idx, align 8, !dbg !109918 ; 3 uses
  %.sroa.8417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40, !dbg !109918
  %.sroa.8417.0.copyload = load i64, ptr %.sroa.8417.0..sroa_idx, align 8, !dbg !109918 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !dbg !109924
  %umax.i321 = call i64 @llvm.umax.i64(i64 %.sroa.6416.0.copyload, i64 %.sroa.8417.0.copyload), !dbg !109925
  %exitcond.not.i322749.not = icmp ult i64 %.sroa.6416.0.copyload, %.sroa.8417.0.copyload, !dbg !109934
  br i1 %exitcond.not.i322749.not, label %.lr.ph750, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEIBS_Amj2_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2b_ETjjEuINtNtNtBc_3ops12control_flow11ControlFlowB3E_ENCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB4y_11RollingExprNtB4A_12PhysicalExpr23evaluate_on_groups_impls0_0NCINvNvB2i_4find5checkB3E_NCB4v_s1_0E0E0B3J_EB4C_.exit, !dbg !109934

bb.cq:                                            ; preds = %.lr.ph750
  %i.ki = add i64 %i.kj, 1, !dbg !109940          ; 2 uses
  %exitcond.not.i322 = icmp eq i64 %i.ki, %umax.i321, !dbg !109934
  br i1 %exitcond.not.i322, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEIBS_Amj2_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2b_ETjjEuINtNtNtBc_3ops12control_flow11ControlFlowB3E_ENCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB4y_11RollingExprNtB4A_12PhysicalExpr23evaluate_on_groups_impls0_0NCINvNvB2i_4find5checkB3E_NCB4v_s1_0E0E0B3J_EB4C_.exit, label %.lr.ph750, !dbg !109934

.lr.ph750:                                        ; preds = %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterAmj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECskY9G75ZWc4U_11polars_expr.exit, %bb.cq
  %i.kj = phi i64 [ %i.ki, %bb.cq ], [ %.sroa.6416.0.copyload, %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterAmj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator3zipB3_ECskY9G75ZWc4U_11polars_expr.exit ] ; 3 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0412.0.copyload, i64 %i.kj, !dbg !109942
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.5414.0.copyload, i64 %i.kj, !dbg !109945
  %i.km = getelementptr i8, ptr %i.kk, i64 4, !dbg !109948
  %.val.i323 = load i32, ptr %i.km, align 4, !dbg !109948, !noalias !109949, !noundef !11 ; 2 uses
  %i.kn = getelementptr i8, ptr %i.kl, i64 4, !dbg !109948
  %.val5.i324 = load i32, ptr %i.kn, align 4, !dbg !109948, !noalias !109949, !noundef !11 ; 2 uses
  %.not.i.i.i325 = icmp eq i32 %.val.i323, %.val5.i324, !dbg !109953
  br i1 %.not.i.i.i325, label %bb.cq, label %.loopexit507, !dbg !109961

bb.cr:                                            ; preds = %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs2mZqlW55729_12polars_utils7idx_vec7UnitVecmEEIBS_Amj2_EENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2b_ETjjEuINtNtNtBc_3ops12control_flow11ControlFlowB3E_ENCNvXNtNtCskY9G75ZWc4U_11polars_expr11expressions7rollingNtB4y_11RollingExprNtB4A_12PhysicalExpr23evaluate_on_groups_impls0_0NCINvNvB2i_4find5checkB3E_NCB4v_s1_0E0E0B3J_EB4C_.exit
  %i.ko = load i64, ptr %i.c, align 8, !dbg !109850, !range !1565, !noundef !11
  %i.kp = trunc nuw i64 %i.ko to i1, !dbg !109962
  %i.kq = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !109963
  %i.kr = load i64, ptr %i.kq, align 8, !dbg !109963, !range !1568, !noundef !11 ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !109963 ; 2 uses
  br i1 %i.kp, label %bb.cs, label %bb.ct, !dbg !109962, !prof !1569

bb.cs:                                            ; preds = %bb.cr
  %i.kt = load i64, ptr %i.ks, align 8, !dbg !109964
  invoke void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.kr, i64 %i.kt) #36
          to label %bb.bk unwind label %.split653.thread, !dbg !109965

bb.ct:                                            ; preds = %bb.cr
  %i.ku = load ptr, ptr %i.ks, align 8, !dbg !109967, !nonnull !11, !noundef !11
  %i.kv = icmp ule i64 %i.go, %i.kr, !dbg !109968
  call void @llvm.assume(i1 %i.kv), !dbg !109972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !109974
  store i64 %i.kr, ptr %i.ai, align 8, !dbg !109975
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !109975 ; 3 uses
  store ptr %i.ku, ptr %i.kw, align 8, !dbg !109975
  %i.kx = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !109975 ; 3 uses
  store i64 0, ptr %i.kx, align 8, !dbg !109975
  %i.ky = load i64, ptr %i.aw, align 8, !dbg !109976, !range !1568, !noundef !11
  %.not264.a = icmp eq i64 %i.ky, -9223372036854775808, !dbg !109976 ; 2 uses
  %i.kz = load ptr, ptr %.sroa.362.0..sroa_idx63, align 8, !dbg !109981, !nonnull !11, !align !1707 ; 2 uses
  %.sroa.gep403 = getelementptr inbounds nuw i8, ptr %i.kz, i64 8, !dbg !109982
  %.sroa.0209.0.sroa.sel405 = select i1 %.not264.a, ptr %.sroa.gep403, ptr %.sroa.362.0..sroa_idx63, !dbg !109982
end_hunk_0
begin_hunk_1_@_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl11replace_all0INtB7_5FnMutTReEE8call_mutCskY9G75ZWc4U_11polars_expr:bb.a
  %i.a = load ptr, ptr %1, align 8, !dbg !142500, !nonnull !11, !align !1707, !noundef !11 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !dbg !142501, !nonnull !11, !align !1707, !noundef !11
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !142501
  %.val1 = load ptr, ptr %i.b, align 8, !dbg !142501, !nonnull !11, !align !1707, !noundef !11 ; 2 uses
  %i.c = load ptr, ptr %.val1, align 8, !dbg !142502, !noalias !142506, !nonnull !11, !noundef !11
  %i.d = getelementptr inbounds nuw i8, ptr %.val1, i64 8, !dbg !142502
  %i.e = load i64, ptr %i.d, align 8, !dbg !142502, !noalias !142506, !noundef !11
  tail call fastcc void @_RINvMs3_NtNtCshIrAnp6Nu95_5regex5regex6stringNtB6_5Regex8replacenReECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3, i64 noundef 0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %i.e) #37, !dbg !142510
  ret void, !dbg !142513
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden { ptr, i64 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl11strip_chars0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #1 !dbg !142514 {
bb.a:
  %.not.i = icmp eq ptr %1, null, !dbg !142515
  br i1 %.not.i, label %_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl11strip_chars0CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !142521

bb.b:                                             ; preds = %bb.a
  %i.a = tail call { ptr, i64 } @_RINvMNtCscgRAwXFJnXP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !142522 ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0, !dbg !142522
  %i.c = extractvalue { ptr, i64 } %i.a, 1, !dbg !142522
  br label %_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl11strip_chars0CskY9G75ZWc4U_11polars_expr.exit, !dbg !142529

_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl11strip_chars0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %bb.b
  %.sroa.03.0.i = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ], !dbg !142530
  %.sroa.34.0.i = phi i64 [ %i.c, %bb.b ], [ undef, %bb.a ], !dbg !142530
  %i.d = insertvalue { ptr, i64 } poison, ptr %.sroa.03.0.i, 0, !dbg !142531
  %i.e = insertvalue { ptr, i64 } %i.d, i64 %.sroa.34.0.i, 1, !dbg !142531
  ret { ptr, i64 } %i.e, !dbg !142532
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13base64_encode0INtB7_5FnMutTReEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !142533 {
bb.a:
  tail call void @_RINvNvNtNtCs5rycEC1AXKJ_6base646engine6Engine6encode5innerNtNtB6_15general_purpose14GeneralPurposeECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(323) @244, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3), !dbg !142534
  ret void, !dbg !142544
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13count_matches0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !142545 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %.not.i = icmp eq ptr %1, null, !dbg !142546
  br i1 %.not.i, label %_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13count_matches0CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !142552

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !dbg !142553, !nonnull !11, !align !1707, !noundef !11
  %.val = load ptr, ptr %i.c, align 8, !dbg !142554, !nonnull !11, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !142555, !noalias !142560
  %i.d = load ptr, ptr %.val, align 8, !dbg !142563, !noalias !142560, !nonnull !11, !noundef !11
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !142563
  %i.f = load i64, ptr %i.e, align 8, !dbg !142563, !noalias !142560, !noundef !11
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.f), !dbg !142564
  br label %bb.c, !dbg !142569

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i = phi i32 [ 0, %bb.b ], [ %i.i, %bb.c ], !dbg !142575 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142576, !noalias !142584
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b) #37, !dbg !142591
  %i.g = load i64, ptr %i.a, align 8, !dbg !142592, !range !1565, !noalias !142584, !noundef !11
  %i.h = trunc nuw i64 %i.g to i1, !dbg !142595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142596, !noalias !142584
  %i.i = add i32 %.sroa.0.0.i.i, 1, !dbg !142597
  br i1 %i.h, label %bb.c, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !142601

_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !142602, !noalias !142560
  br label %_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13count_matches0CskY9G75ZWc4U_11polars_expr.exit, !dbg !142603

_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13count_matches0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.03.0.i = phi i32 [ 1, %_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr.exit.i ], [ 0, %bb.a ], !dbg !142604
  %.sroa.34.0.i = phi i32 [ %.sroa.0.0.i.i, %_RINvYINtNtNtCscgRAwXFJnXP_4core3str4iter7MatchesReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldjNCNvYB3_BN_5count0ECskY9G75ZWc4U_11polars_expr.exit.i ], [ undef, %bb.a ], !dbg !142604
  %i.j = insertvalue { i32, i32 } poison, i32 %.sroa.03.0.i, 0, !dbg !142605
  %i.k = insertvalue { i32, i32 } %i.j, i32 %.sroa.34.0.i, 1, !dbg !142605
  ret { i32, i32 } %i.k, !dbg !142606
}

; Function Attrs: nonlazybind uwtable
define hidden { i32, i32 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13count_matchess_0INtB7_5FnMutTINtNtBb_6option6OptionReEEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef readonly captures(address, read_provenance) %1, i64 %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !142607 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 7 uses
  %i.h = alloca [80 x i8], align 8                ; 15 uses
  %i.i = alloca [32 x i8], align 8                ; 12 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = load ptr, ptr %0, align 8, !dbg !142608, !nonnull !11, !align !1707, !noundef !11
  %.val = load ptr, ptr %i.k, align 8, !dbg !142609 ; 3 uses
  %.not.i = icmp eq ptr %1, null, !dbg !142610
  br i1 %.not.i, label %_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13count_matchess_0CskY9G75ZWc4U_11polars_expr.exit, label %bb.b, !dbg !142615

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142616), !dbg !142619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !142626, !noalias !142629
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 8, !dbg !142626
  %i.m = load ptr, ptr %i.l, align 8, !dbg !142626, !alias.scope !142616, !noalias !142632, !nonnull !11, !noundef !11 ; 3 uses
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID0s_023___RUST_STD_INTERNAL_VAL), !dbg !142635 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !142641
  %i.p = load i8, ptr %i.o, align 8, !dbg !142645, !range !6326, !noalias !142646, !noundef !11
  %i.q = trunc nuw i8 %i.p to i1, !dbg !142645
  br i1 %i.q, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB48_13RefUnwindSafeNtNtB3j_6marker4SendNtB58_4SyncEL_EE3get0jECskY9G75ZWc4U_11polars_expr.exit.i.i.i, label %_RNvYNCNKNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !142657, !prof !7906

_RNvYNCNKNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %bb.b
  %i.r = tail call noundef ptr @_RINvMs0_NtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native4lazyINtB6_7StoragejzE16get_or_init_slowNvNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID27___rust_std_internal_init_fnECskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.n, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !dbg !142658, !noalias !142659 ; 2 uses
  %i.s = icmp eq ptr %i.r, null, !dbg !142660
  br i1 %i.s, label %bb.c, label %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB48_13RefUnwindSafeNtNtB3j_6marker4SendNtB58_4SyncEL_EE3get0jECskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !142660

bb.c:                                             ; preds = %_RNvYNCNKNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i
  tail call void @_RNvNtNtCsh8eZTKRCwoO_3std6thread5local18panic_access_error(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #35, !dbg !142662, !noalias !142659
  unreachable, !dbg !142662

_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB48_13RefUnwindSafeNtNtB3j_6marker4SendNtB58_4SyncEL_EE3get0jECskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %_RNvYNCNKNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i, %bb.b
  %.sroa.0.0.i.i.i3.i.i.i = phi ptr [ %i.r, %_RNvYNCNKNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner9THREAD_ID0s_0INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB1j_6option6OptionQIB1Y_jEEEE9call_onceCskY9G75ZWc4U_11polars_expr.exit.i.i.i ], [ %i.n, %bb.b ]
  %.val.i.i.i.i.i = load i64, ptr %.sroa.0.0.i.i.i3.i.i.i, align 8, !dbg !142663, !noalias !142659, !noundef !11 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 40, !dbg !142664 ; 2 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8, !dbg !142668, !noalias !142670 ; 2 uses
  %i.v = icmp eq i64 %.val.i.i.i.i.i, %i.u, !dbg !142671
  br i1 %i.v, label %bb.e, label %bb.d, !dbg !142671, !prof !7906

bb.d:                                             ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB48_13RefUnwindSafeNtNtB3j_6marker4SendNtB58_4SyncEL_EE3get0jECskY9G75ZWc4U_11polars_expr.exit.i.i.i
  call void @_RNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_13RefUnwindSafeNtNtB2d_6marker4SendNtB42_4SyncEL_EE8get_slowCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j, ptr noundef nonnull align 8 %i.m, i64 noundef %.val.i.i.i.i.i, i64 noundef %i.u), !dbg !142672, !noalias !142673
  br label %_RINvMs_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_5Regex9find_iterReECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !142672

bb.e:                                             ; preds = %_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB2b_NtNtNtB3j_5panic11unwind_safe10UnwindSafeNtB48_13RefUnwindSafeNtNtB3j_6marker4SendNtB58_4SyncEL_EE3get0jECskY9G75ZWc4U_11polars_expr.exit.i.i.i
  store atomic i64 1, ptr %i.t release, align 8, !dbg !142674, !noalias !142670
  %i.w = inttoptr i64 %.val.i.i.i.i.i to ptr, !dbg !142677
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 16, !dbg !142679
  store ptr %i.m, ptr %i.x, align 8, !dbg !142679, !noalias !142673
  store i64 1, ptr %i.j, align 8, !dbg !142679, !noalias !142673
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !142679
  store ptr %i.w, ptr %i.y, align 8, !dbg !142679, !noalias !142673
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24, !dbg !142679
  store i8 0, ptr %i.z, align 8, !dbg !142679, !noalias !142673
  br label %_RINvMs_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_5Regex9find_iterReECskY9G75ZWc4U_11polars_expr.exit.i, !dbg !142680

_RINvMs_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_5Regex9find_iterReECskY9G75ZWc4U_11polars_expr.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !142681, !noalias !142688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !142691, !noalias !142629
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !142692, !noalias !142629
  %i.aa = load i64, ptr %i.i, align 8, !dbg !142693, !range !1565, !noalias !142688, !noundef !11
  %i.ab = trunc nuw i64 %i.aa to i1, !dbg !142699 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !142699
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !142699, !nonnull !11, !align !1707
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48, !dbg !142699
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !142699
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !142699, !nonnull !11
  %.sroa.0.0.i.i = select i1 %i.ab, ptr %i.ae, ptr %i.ag, !dbg !142699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !142700, !noalias !142688
  store i64 0, ptr %i.h, align 8, !dbg !142702, !noalias !142629
  %.sroa.6.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !142702 ; 2 uses
  %.sroa.61.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !142702 ; 2 uses
  store i32 0, ptr %.sroa.61.32..sroa_idx.i, align 8, !dbg !142702, !noalias !142629
  %.sroa.72.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !142702
  store ptr %1, ptr %.sroa.72.32..sroa_idx.i, align 8, !dbg !142702, !noalias !142629
  %.sroa.8.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32, !dbg !142702 ; 2 uses
  store i64 %2, ptr %.sroa.8.32..sroa_idx.i, align 8, !dbg !142702, !noalias !142629
  %.sroa.9.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40, !dbg !142702 ; 2 uses
  store i64 0, ptr %.sroa.9.32..sroa_idx.i, align 8, !dbg !142702, !noalias !142629
  %.sroa.10.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48, !dbg !142702 ; 2 uses
  store i64 %2, ptr %.sroa.10.32..sroa_idx.i, align 8, !dbg !142702, !noalias !142629
  %.sroa.11.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56, !dbg !142702
  store i8 0, ptr %.sroa.11.32..sroa_idx.i, align 8, !dbg !142702, !noalias !142629
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 64, !dbg !142702 ; 2 uses
  store ptr %.val, ptr %i.ah, align 8, !dbg !142702, !noalias !142688
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 72, !dbg !142702
  store ptr %.sroa.0.0.i.i, ptr %i.ai, align 8, !dbg !142702, !noalias !142688
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142708), !dbg !142711
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.636.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.f, !dbg !142714

bb.f:                                             ; preds = %_RNCNvYINtNtNtCsfHnWouPsIOz_14regex_automata4util4iter18TryHalfMatchesIterNCNvXs6_NtNtBb_4meta5regexNtB1h_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count0EB1S_5count0CskY9G75ZWc4U_11polars_expr.exit.i.i.i, %_RINvMs_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_5Regex9find_iterReECskY9G75ZWc4U_11polars_expr.exit.i
  %.sroa.0.0.i.i.i = phi i32 [ 0, %_RINvMs_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_5Regex9find_iterReECskY9G75ZWc4U_11polars_expr.exit.i ], [ %i.bd, %_RNCNvYINtNtNtCsfHnWouPsIOz_14regex_automata4util4iter18TryHalfMatchesIterNCNvXs6_NtNtBb_4meta5regexNtB1h_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count0EB1S_5count0CskY9G75ZWc4U_11polars_expr.exit.i.i.i ], !dbg !142718 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142719), !dbg !142722
  call void @llvm.experimental.noalias.scope.decl(metadata !142724), !dbg !142727
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !142731
  store ptr %i.ah, ptr %i.g, align 8, !noalias !142733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !142736, !noalias !142733
  invoke void @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvXs6_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtBW_11FindMatchesNtNtNtNtBb_4iter6traits8iterator8Iterator5count0INtB7_5FnMutTRNtNtNtB10_4util6search5InputEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.61.32..sroa_idx.i)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !dbg !142736, !noalias !142739

.noexc.i.i:                                       ; preds = %bb.f
  %i.am = load i64, ptr %i.f, align 8, !dbg !142740, !range !38950, !noalias !142733, !noundef !11 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2, !dbg !142740
  %i.ao = load ptr, ptr %i.aj, align 8, !dbg !142743, !noalias !142733 ; 2 uses
  br i1 %i.an, label %bb.g, label %bb.h, !dbg !142744

bb.g:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !142745, !noalias !142733
  br label %bb.n, !dbg !142746

bb.h:                                             ; preds = %.noexc.i.i
  %.sroa.636.0.copyload.i.i.i.i.i = load i32, ptr %.sroa.636.0..sroa_idx.i.i.i.i.i, align 8, !dbg !142748, !noalias !142733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !142745, !noalias !142733
  %i.ap = ptrtoint ptr %i.ao to i64, !dbg !142736 ; 3 uses
  %i.aq = trunc nuw i64 %i.am to i1, !dbg !142749
  br i1 %i.aq, label %bb.i, label %bb.p, !dbg !142749

bb.i:                                             ; preds = %bb.h
  %i.ar = load i64, ptr %i.h, align 8, !dbg !142750, !range !1565, !alias.scope !142755, !noalias !142756, !noundef !11
  %i.as = trunc nuw i64 %i.ar to i1, !dbg !142757
  %i.at = load i64, ptr %.sroa.6.32..sroa_idx.i, align 8, !noalias !142688
  %i.au = icmp eq i64 %i.at, %i.ap
  %or.cond.i.i = select i1 %i.as, i1 %i.au, i1 false, !dbg !142757, !prof !45797
  br i1 %or.cond.i.i, label %bb.l, label %bb.j, !dbg !142757, !prof !45797

bb.j:                                             ; preds = %bb.m, %bb.i
  %.sroa.024.0.i.i.i.i.i = phi i64 [ %i.bc, %bb.m ], [ %i.ap, %bb.i ], !dbg !142758 ; 4 uses
  %i.av = load i64, ptr %.sroa.10.32..sroa_idx.i, align 8, !dbg !142759, !alias.scope !142755, !noalias !142756, !noundef !11 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !142764), !dbg !142767
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !142768, !noalias !142733
  store i64 %.sroa.024.0.i.i.i.i.i, ptr %i.d, align 8, !dbg !142768, !noalias !142771
  store i64 %i.av, ptr %i.al, align 8, !dbg !142768, !noalias !142771
  %i.aw = load i64, ptr %.sroa.8.32..sroa_idx.i, align 8, !dbg !142772, !alias.scope !142774, !noalias !142756, !noundef !11 ; 2 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.av, %i.aw, !dbg !142775
  %i.ax = add i64 %i.av, 1
  %.not8.i.i.i.i.i.i = icmp ugt i64 %.sroa.024.0.i.i.i.i.i, %i.ax
  %or.cond.i.i.i.i.i.i = or i1 %.not8.i.i.i.i.i.i, %.not.i.i.i.i.i.i, !dbg !142775
  br i1 %or.cond.i.i.i.i.i.i, label %bb.k, label %.thread.i.i.i, !dbg !142775, !prof !39366

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !142776, !noalias !142771
  store i64 %i.aw, ptr %i.c, align 8, !dbg !142776, !noalias !142771
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !142777, !noalias !142771
  store ptr %i.d, ptr %i.b, align 8, !dbg !142777, !noalias !142771
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !142777
  store ptr @_RNvXs2_NtNtCsfHnWouPsIOz_14regex_automata4util6searchNtB5_4SpanNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !142777, !noalias !142771
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !142777
  store ptr %i.c, ptr %i.ay, align 8, !dbg !142777, !noalias !142771
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !142777
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i, align 8, !dbg !142777, !noalias !142771
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking9panic_fmt(ptr noundef nonnull @6, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @7) #35
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.i.i, !dbg !142780, !noalias !142739

.noexc4.i.i:                                      ; preds = %bb.k
  unreachable, !dbg !142780

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !142781, !noalias !142733
  %i.az = load ptr, ptr %i.g, align 8, !dbg !142782, !noalias !142733, !nonnull !11, !align !1707, !noundef !11
  invoke void @_RINvMNtNtCsfHnWouPsIOz_14regex_automata4util4iterNtB3_8Searcher35handle_overlapping_empty_half_matchQNCNvXs6_NtNtB7_4meta5regexNtB1J_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count0ECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.h, i64 noundef %i.ap, i32 noundef %.sroa.636.0.copyload.i.i.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %.noexc5.i.i unwind label %.loopexit.i.i, !dbg !142783, !noalias !142739

.noexc5.i.i:                                      ; preds = %bb.l
  %i.ba = load i64, ptr %i.e, align 8, !dbg !142784, !range !38950, !noalias !142733, !noundef !11
  %i.bb = load ptr, ptr %i.ak, align 8, !dbg !142786, !noalias !142733 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !142787, !noalias !142733
  switch i64 %i.ba, label %bb.m [
    i64 2, label %bb.n
    i64 0, label %bb.p
  ], !dbg !142788

bb.m:                                             ; preds = %.noexc5.i.i
  %i.bc = ptrtoint ptr %i.bb to i64, !dbg !142781
  br label %bb.j, !dbg !142789

.thread.i.i.i:                                    ; preds = %bb.j
  store i64 %.sroa.024.0.i.i.i.i.i, ptr %.sroa.9.32..sroa_idx.i, align 8, !dbg !142790, !alias.scope !142774, !noalias !142756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !142791, !noalias !142733
  store i64 1, ptr %i.h, align 8, !dbg !142792, !alias.scope !142755, !noalias !142756
  store i64 %.sroa.024.0.i.i.i.i.i, ptr %.sroa.6.32..sroa_idx.i, align 8, !dbg !142792, !alias.scope !142755, !noalias !142756
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !142793, !noalias !142731
  br label %_RNCNvYINtNtNtCsfHnWouPsIOz_14regex_automata4util4iter18TryHalfMatchesIterNCNvXs6_NtNtBb_4meta5regexNtB1h_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count0EB1S_5count0CskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !142794

bb.n:                                             ; preds = %.noexc5.i.i, %bb.g
  %.sroa.6.2.ph.in.i.i.i.i = phi ptr [ %i.ao, %bb.g ], [ %i.bb, %.noexc5.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !142793, !noalias !142731
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.2.ph.in.i.i.i.i) ]
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.2.ph.in.i.i.i.i, i64 noundef 16, i64 noundef 8) #41, !dbg !142799, !noalias !142739
  br label %_RNCNvYINtNtNtCsfHnWouPsIOz_14regex_automata4util4iter18TryHalfMatchesIterNCNvXs6_NtNtBb_4meta5regexNtB1h_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count0EB1S_5count0CskY9G75ZWc4U_11polars_expr.exit.i.i.i, !dbg !142794

_RNCNvYINtNtNtCsfHnWouPsIOz_14regex_automata4util4iter18TryHalfMatchesIterNCNvXs6_NtNtBb_4meta5regexNtB1h_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count0EB1S_5count0CskY9G75ZWc4U_11polars_expr.exit.i.i.i: ; preds = %bb.n, %.thread.i.i.i
  %i.bd = add i32 %.sroa.0.0.i.i.i, 1, !dbg !142812
  br label %bb.f, !dbg !142714

.loopexit.i.i:                                    ; preds = %bb.l, %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

.loopexit.split-lp.i.i:                           ; preds = %bb.k
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsfHnWouPsIOz_14regex_automata4util4pool9PoolGuardNtNtNtBN_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1B_NtNtNtB4_5panic11unwind_safe10UnwindSafeNtB3h_13RefUnwindSafeNtNtB4_6marker4SendNtB4g_4SyncEL_EEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(32) %i.i) #38
          to label %common.resume.i.i unwind label %bb.v, !dbg !142813, !noalias !142739

bb.p:                                             ; preds = %.noexc5.i.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !142793, !noalias !142731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !142814, !noalias !142688
  call void @llvm.experimental.noalias.scope.decl(metadata !142815), !dbg !142813
  call void @llvm.experimental.noalias.scope.decl(metadata !142818), !dbg !142821
  call void @llvm.experimental.noalias.scope.decl(metadata !142823), !dbg !142826
  call void @llvm.experimental.noalias.scope.decl(metadata !142828), !dbg !142831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142833, !noalias !142836
  %i.be = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !142833 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !142833, !alias.scope !142837, !noalias !142688, !noundef !11 ; 7 uses
  %i.bg = ptrtoint ptr %i.bf to i64, !dbg !142833 ; 2 uses
  store i64 1, ptr %i.i, align 8, !dbg !142838, !alias.scope !142837, !noalias !142688
  store ptr inttoptr (i64 2 to ptr), ptr %i.be, align 8, !dbg !142838, !alias.scope !142837, !noalias !142688
  br i1 %i.ab, label %bb.q, label %bb.r, !dbg !142839

bb.q:                                             ; preds = %bb.p
  store i64 %i.bg, ptr %i.a, align 8, !dbg !142840, !noalias !142841
  %i.bh = icmp eq ptr %i.bf, inttoptr (i64 2 to ptr), !dbg !142842
  br i1 %i.bh, label %.noexc4.i.i.i.i, label %bb.u, !dbg !142842, !prof !1569

bb.r:                                             ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !142843
  %i.bj = load i8, ptr %i.bi, align 8, !dbg !142843, !range !6326, !alias.scope !142837, !noalias !142688, !noundef !11
  %i.bk = trunc nuw i8 %i.bj to i1, !dbg !142843
  br i1 %i.bk, label %bb.t, label %bb.s, !dbg !142843

bb.s:                                             ; preds = %bb.r
  %i.bl = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !142844
  %i.bm = load ptr, ptr %i.bl, align 8, !dbg !142844, !alias.scope !142837, !noalias !142688, !nonnull !11, !align !1707, !noundef !11
  call fastcc void @_RNvMs2_NtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDINtNtNtCscgRAwXFJnXP_4core3ops8function2FnuEp6OutputB16_NtNtNtB2d_5panic11unwind_safe10UnwindSafeNtB32_13RefUnwindSafeNtNtB2d_6marker4SendNtB42_4SyncEL_EE9put_valueCskY9G75ZWc4U_11polars_expr(ptr noundef nonnull align 8 %i.bm, ptr noalias noundef nonnull align 8 %i.bf) #37, !dbg !142845, !noalias !142846
  br label %_RNvXs6_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count.exit.i, !dbg !142845

bb.t:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bf) ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheECskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(1400) %i.bf)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i unwind label %.body.i.i.i.i, !dbg !142847, !noalias !142849

common.resume.i.i:                                ; preds = %.body.i.i.i.i, %bb.o
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.bn, %.body.i.i.i.i ], [ %lpad.phi.i.i, %bb.o ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !142850

.body.i.i.i.i:                                    ; preds = %bb.t
  %i.bn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef 1400, i64 noundef 8) #41, !dbg !142851, !noalias !142849
  br label %common.resume.i.i, !dbg !142826

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i: ; preds = %bb.t
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bf, i64 noundef 1400, i64 noundef 8) #41, !dbg !142857, !noalias !142849
  br label %_RNvXs6_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count.exit.i, !dbg !142863

.noexc4.i.i.i.i:                                  ; preds = %bb.q
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCsfHnWouPsIOz_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @308) #35, !dbg !142864, !noalias !142846
  unreachable, !dbg !142864

bb.u:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !142865
  %i.bp = load ptr, ptr %i.bo, align 8, !dbg !142865, !alias.scope !142837, !noalias !142688, !nonnull !11, !align !1707, !noundef !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40, !dbg !142866
  store atomic i64 %i.bg, ptr %i.bq release, align 8, !dbg !142870, !noalias !142872
  br label %_RNvXs6_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count.exit.i, !dbg !142873

bb.v:                                             ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #39, !dbg !142874, !noalias !142739
  unreachable, !dbg !142874

_RNvXs6_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count.exit.i: ; preds = %bb.u, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNtNtNtCsfHnWouPsIOz_14regex_automata4meta5regex5CacheEECskY9G75ZWc4U_11polars_expr.exit.i.i.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142863, !noalias !142836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !142813, !noalias !142688
  br label %_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13count_matchess_0CskY9G75ZWc4U_11polars_expr.exit, !dbg !142875

_RNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtB9_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl13count_matchess_0CskY9G75ZWc4U_11polars_expr.exit: ; preds = %bb.a, %_RNvXs6_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count.exit.i
  %.sroa.03.0.i = phi i32 [ 1, %_RNvXs6_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count.exit.i ], [ 0, %bb.a ], !dbg !142876
  %.sroa.34.0.i = phi i32 [ %.sroa.0.0.i.i.i, %_RNvXs6_NtNtCsfHnWouPsIOz_14regex_automata4meta5regexNtB5_11FindMatchesNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator5count.exit.i ], [ undef, %bb.a ], !dbg !142876
  %i.bs = insertvalue { i32, i32 } poison, i32 %.sroa.03.0.i, 0, !dbg !142877
  %i.bt = insertvalue { i32, i32 } %i.bs, i32 %.sroa.34.0.i, 1, !dbg !142877
  ret { i32, i32 } %i.bt, !dbg !142878
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, i64 } @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNvYINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBY_9datatypes10StringTypeENtNtNtNtCsePnBjWcsLF5_10polars_ops13chunked_array7strings9namespace19StringNameSpaceImpl15replace_literal0INtB7_5FnMutTReEE8call_mutCskY9G75ZWc4U_11polars_expr(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 !dbg !142879 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 11 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !dbg !142880, !nonnull !11, !align !1707, !noundef !11 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142881), !dbg !142884
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !142885 ; 16 uses
  store i64 0, ptr %i.d, align 8, !dbg !142885, !alias.scope !142881, !noalias !142894
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !142896
  %i.f = load ptr, ptr %i.e, align 8, !dbg !142896, !alias.scope !142881, !noalias !142894, !nonnull !11, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !142896
  %i.h = load i64, ptr %i.g, align 8, !dbg !142896, !alias.scope !142881, !noalias !142894, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !142899, !noalias !142900
  call void @_RNvMsu_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.f, i64 noundef %i.h), !dbg !142901, !noalias !142881
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56, !dbg !142906
  %i.j = load i64, ptr %i.i, align 8, !dbg !142906, !alias.scope !142881, !noalias !142894, !noundef !11 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 104, !dbg !142899 ; 4 uses
  %i.k = icmp eq i64 %i.j, 0, !dbg !142907
  br i1 %i.k, label %.loopexit.i, label %.lr.ph.i, !dbg !142907

.lr.ph.i:                                         ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %i.q = add i64 %i.j, -1, !dbg !142912
  store i64 %i.q, ptr %.sroa.2.0..sroa_idx.i, align 8, !dbg !142912, !noalias !142900
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !142913, !noalias !142900
  call fastcc void @_RNvXsv_NtNtCscgRAwXFJnXP_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(104) %i.b) #37, !dbg !142920, !noalias !142881
  %i.r = load i64, ptr %i.a, align 8, !dbg !142921, !range !1565, !noalias !142900, !noundef !11
  %i.s = trunc nuw i64 %i.r to i1, !dbg !142924   ; 2 uses
  br i1 %i.s, label %bb.b, label %.loopexit30.i, !dbg !142924

bb.b:                                             ; preds = %.lr.ph.i
  %i.t = load i64, ptr %i.l, align 8, !dbg !142925, !noalias !142900, !noundef !11 ; 4 uses
  %i.u = load i64, ptr %i.m, align 8, !dbg !142925, !noalias !142900, !noundef !11 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !142926, !noalias !142900
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.t), !dbg !142927
  %i.v = load i64, ptr %i.d, align 8, !dbg !142937, !alias.scope !142939, !noalias !142894, !noundef !11 ; 3 uses
  %i.w = icmp sgt i64 %i.v, -1, !dbg !142942
  tail call void @llvm.assume(i1 %i.w), !dbg !142943
  %.not.i14.peel.i = icmp eq i64 %i.t, 0, !dbg !142944
  br i1 %.not.i14.peel.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCskY9G75ZWc4U_11polars_expr.exit16.peel.i, label %bb.c, !dbg !142944

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.n, align 8, !dbg !142945, !alias.scope !142939, !noalias !142894, !nonnull !11, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v, !dbg !142950
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull readonly align 1 %1, i64 %i.t, i1 false), !dbg !142952
  %.pre.i15.peel.i = load i64, ptr %i.d, align 8, !dbg !142954, !alias.scope !142939, !noalias !142894
  br label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCskY9G75ZWc4U_11polars_expr.exit16.peel.i, !dbg !142955

_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCskY9G75ZWc4U_11polars_expr.exit16.peel.i: ; preds = %bb.c, %bb.b
  %i.z = phi i64 [ %.pre.i15.peel.i, %bb.c ], [ %i.v, %bb.b ], !dbg !142954
  %i.aa = add i64 %i.z, %i.t, !dbg !142954
  store i64 %i.aa, ptr %i.d, align 8, !dbg !142954, !alias.scope !142939, !noalias !142894
  %i.ab = load ptr, ptr %i.o, align 8, !dbg !142956, !alias.scope !142881, !noalias !142894, !nonnull !11, !noundef !11
  %i.ac = load i64, ptr %i.p, align 8, !dbg !142956, !alias.scope !142881, !noalias !142894, !noundef !11 ; 4 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c, i64 noundef %i.ac), !dbg !142957
  %i.ad = load i64, ptr %i.d, align 8, !dbg !142965, !alias.scope !142967, !noalias !142894, !noundef !11 ; 3 uses
  %i.ae = icmp sgt i64 %i.ad, -1, !dbg !142970
  tail call void @llvm.assume(i1 %i.ae), !dbg !142971
  %.not.i17.peel.i = icmp eq i64 %i.ac, 0, !dbg !142972
  br i1 %.not.i17.peel.i, label %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCskY9G75ZWc4U_11polars_expr.exit19.peel.i, label %bb.d, !dbg !142972

bb.d:                                             ; preds = %_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE15append_elementsCskY9G75ZWc4U_11polars_expr.exit16.peel.i
  %i.af = load ptr, ptr %i.n, align 8, !dbg !142973, !alias.scope !142967, !noalias !142894, !nonnull !11, !noundef !11
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ad, !dbg !142978
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.ab, i64 %i.ac, i1 false), !dbg !142980
end_hunk_1
