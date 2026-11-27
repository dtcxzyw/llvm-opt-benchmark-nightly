Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ripgrep-rs/original/grep_regex-342b229b6101d80c.grep_regex.9c5453b099169300-cgu.2?download=true
inline.NumInlined: 179
inline.NumDeleted: 112
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvNtCsdq8xsXUia3c_10grep_regex12non_matching21remove_matching_bytes:bb.a
  %exitcond.not.i.1.3 = icmp eq i8 %i.hi, %i.gu, !dbg !1200
  br i1 %exitcond.not.i.1.3, label %._crit_edge, label %.lr.ph.i.3, !dbg !1200

bb.r:                                             ; preds = %bb.m
  %i.ic = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #17, !dbg !1215
  unreachable, !dbg !1215

.lr.ph54:                                         ; preds = %bb.i, %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25
  %.sroa.018.052 = phi ptr [ %i.id, %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25 ], [ %i.ae, %bb.i ] ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.018.052, i64 2, !dbg !1216 ; 2 uses
  %i.ie = load i8, ptr %.sroa.018.052, align 1, !dbg !1217, !noundef !79 ; 7 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.sroa.018.052, i64 1, !dbg !1218
  %i.ig = load i8, ptr %i.if, align 1, !dbg !1218, !noundef !79 ; 4 uses
  %.not.i7.i21 = icmp ugt i8 %i.ie, %i.ig
  br i1 %.not.i7.i21, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25, label %.lr.ph.i22.preheader, !dbg !1219

.lr.ph.i22.preheader:                             ; preds = %.lr.ph54
  %i.ih = add i8 %i.ig, %i.ie, !dbg !1219
  %i.ii = and i8 %i.ih, 1, !dbg !1219
  %lcmp.mod142.not.not = icmp eq i8 %i.ii, 0, !dbg !1219
  br i1 %lcmp.mod142.not.not, label %.lr.ph.i22.prol, label %.lr.ph.i22.prol.loopexit, !dbg !1219

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.i22.preheader
  %i.ij = add i8 %i.ie, 1, !dbg !1220
  %i.ik = lshr i8 %i.ie, 6, !dbg !1221
  %i.il = zext nneg i8 %i.ik to i64, !dbg !1222
  %i.im = and i8 %i.ie, 63, !dbg !1223
  %i.in = zext nneg i8 %i.im to i64, !dbg !1224
  %i.io = shl nuw i64 1, %i.in, !dbg !1224
  %i.ip = xor i64 %i.io, -1, !dbg !1225
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.il, !dbg !1226 ; 2 uses
  %i.ir = load i64, ptr %i.iq, align 8, !dbg !1226, !alias.scope !1154, !noundef !79
  %i.is = and i64 %i.ir, %i.ip, !dbg !1226
  store i64 %i.is, ptr %i.iq, align 8, !dbg !1226, !alias.scope !1154
  br label %.lr.ph.i22.prol.loopexit, !dbg !1219

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader
  %.sroa.5.08.i23.unr = phi i8 [ %i.ie, %.lr.ph.i22.preheader ], [ %i.ij, %.lr.ph.i22.prol ]
  %i.it = icmp eq i8 %i.ig, %i.ie, !dbg !1219
  br i1 %i.it, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25, label %.lr.ph.i22, !dbg !1219

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %.sroa.5.08.i23 = phi i8 [ %i.je, %.lr.ph.i22 ], [ %.sroa.5.08.i23.unr, %.lr.ph.i22.prol.loopexit ] ; 4 uses
  %i.iu = add i8 %.sroa.5.08.i23, 1, !dbg !1220   ; 3 uses
  %i.iv = lshr i8 %.sroa.5.08.i23, 6, !dbg !1221
  %i.iw = zext nneg i8 %i.iv to i64, !dbg !1222
  %i.ix = and i8 %.sroa.5.08.i23, 63, !dbg !1223
  %i.iy = zext nneg i8 %i.ix to i64, !dbg !1224
  %i.iz = shl nuw i64 1, %i.iy, !dbg !1224
  %i.ja = xor i64 %i.iz, -1, !dbg !1225
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.iw, !dbg !1226 ; 2 uses
  %i.jc = load i64, ptr %i.jb, align 8, !dbg !1226, !alias.scope !1154, !noundef !79
  %i.jd = and i64 %i.jc, %i.ja, !dbg !1226
  store i64 %i.jd, ptr %i.jb, align 8, !dbg !1226, !alias.scope !1154
  %i.je = add i8 %.sroa.5.08.i23, 2, !dbg !1220
  %i.jf = lshr i8 %i.iu, 6, !dbg !1221
  %i.jg = zext nneg i8 %i.jf to i64, !dbg !1222
  %i.jh = and i8 %i.iu, 63, !dbg !1223
  %i.ji = zext nneg i8 %i.jh to i64, !dbg !1224
  %i.jj = shl nuw i64 1, %i.ji, !dbg !1224
  %i.jk = xor i64 %i.jj, -1, !dbg !1225
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.jg, !dbg !1226 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !dbg !1226, !alias.scope !1154, !noundef !79
  %i.jn = and i64 %i.jm, %i.jk, !dbg !1226
  store i64 %i.jn, ptr %i.jl, align 8, !dbg !1226, !alias.scope !1154
  %exitcond.not.i24.1 = icmp eq i8 %i.iu, %i.ig, !dbg !1219
  br i1 %exitcond.not.i24.1, label %_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25, label %.lr.ph.i22, !dbg !1219

_RNvMs5_Cs7LWxN68iDgu_12grep_matcherNtB5_7ByteSet10remove_all.exit25: ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22, %.lr.ph54
  %i.jo = icmp eq ptr %i.id, %i.bv, !dbg !1227
  br i1 %i.jo, label %.loopexit, label %.lr.ph54, !dbg !1186

bb.s:                                             ; preds = %bb.e, %bb.e
  br label %.loopexit.sink.split, !dbg !1228

.lr.ph46:                                         ; preds = %bb.g, %.lr.ph46
  %.sroa.010.045 = phi ptr [ %i.jp, %.lr.ph46 ], [ %i.an, %bb.g ] ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.010.045, i64 48, !dbg !1229 ; 2 uses
  tail call fastcc void @_RNvNtCsdq8xsXUia3c_10grep_regex12non_matching21remove_matching_bytes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.010.045, ptr noalias nofree noundef align 8 dereferenceable(32) %1), !dbg !1230
  %i.jq = icmp eq ptr %i.jp, %i.aq, !dbg !1178
  br i1 %i.jq, label %.loopexit, label %.lr.ph46, !dbg !1179

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %.sroa.013.044 = phi ptr [ %i.jr, %.lr.ph ], [ %i.at, %bb.h ] ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.013.044, i64 48, !dbg !1231 ; 2 uses
  tail call fastcc void @_RNvNtCsdq8xsXUia3c_10grep_regex12non_matching21remove_matching_bytes(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.013.044, ptr noalias nofree noundef align 8 dereferenceable(32) %1), !dbg !1232
  %i.js = icmp eq ptr %i.jr, %i.aw, !dbg !1183
  br i1 %i.js, label %.loopexit, label %.lr.ph, !dbg !1184
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %1, i8 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !1233 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = icmp sgt i8 %2, -1, !dbg !1469
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !1470, !prof !1387

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @0, ptr noundef nonnull inttoptr (i64 45 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #20, !dbg !1471
  unreachable, !dbg !1471

bb.c:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %2 to i32, !dbg !1472       ; 2 uses
  %i.g = load i64, ptr %1, align 8, !dbg !1473, !range !113, !noundef !79 ; 4 uses
  %i.h = icmp ne i64 %i.g, 4, !dbg !1473
  tail call void @llvm.assume(i1 %i.h), !dbg !1473
  %i.i = add nsw i64 %i.g, -2, !dbg !1473
  %.inv = icmp samesign ult i64 %i.g, 2, !dbg !1473
  %i.j = select i1 %.inv, i64 2, i64 %i.i, !dbg !1473
  switch i64 %i.j, label %bb.d [
    i64 0, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread
    i64 4, label %bb.h
    i64 5, label %bb.i
    i64 6, label %bb.j
    i64 7, label %bb.k
  ], !dbg !1474

bb.d:                                             ; preds = %bb.c
  unreachable, !dbg !1475

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread: ; preds = %bb.u, %bb.s, %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.thread.i, %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.thread.i, %bb.f, %bb.e, %bb.k, %bb.j, %bb.m, %bb.l, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks0_0NCINvXsK_NtB1O_5accumjNtB43_3Sum3sumINtB2A_3MapBF_B3a_EE0E0EB3g_.exit, %bb.q, %bb.o, %bb.c, %bb.c
  store i8 -1, ptr %0, align 8, !dbg !1476
  br label %bb.v, !dbg !1477

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1478
  %i.l = load ptr, ptr %i.k, align 8, !dbg !1478, !nonnull !79, !noundef !79 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1478
  %i.n = load i64, ptr %i.m, align 8, !dbg !1478, !noundef !79 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n, !dbg !1479
  %i.p = icmp samesign eq i64 %i.n, 0, !dbg !1480
  br i1 %i.p, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph92, !dbg !1481

bb.f:                                             ; preds = %.lr.ph92
  %i.q = getelementptr inbounds nuw i8, ptr %i.s, i64 1, !dbg !1482 ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.o, !dbg !1480
  br i1 %i.r, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph92, !dbg !1481

.lr.ph92:                                         ; preds = %bb.e, %bb.f
  %i.s = phi ptr [ %i.q, %bb.f ], [ %i.l, %bb.e ] ; 2 uses
  %i.t = load i8, ptr %i.s, align 1, !dbg !1483, !noalias !1396, !noundef !79
  %i.u = icmp eq i8 %i.t, %2, !dbg !1484
  br i1 %i.u, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks_0EB1I_.exit, label %bb.f, !dbg !1485

bb.g:                                             ; preds = %bb.c
  %i.v = trunc nuw i64 %i.g to i1, !dbg !1474
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1486
  %i.x = load ptr, ptr %i.w, align 8, !dbg !1486, !nonnull !79, !noundef !79 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1486
  %i.z = load i64, ptr %i.y, align 8, !dbg !1486, !noundef !79 ; 5 uses
  %i.aa = icmp eq i64 %i.z, 0, !dbg !1486         ; 2 uses
  br i1 %i.v, label %bb.l, label %bb.m, !dbg !1474

bb.h:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !1398
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1487
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !1487, !nonnull !79, !noundef !79
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ac, i8 noundef %2), !dbg !1398
  %i.ad = load i8, ptr %i.d, align 8, !dbg !1488, !range !81, !noundef !79
  %.not23 = icmp eq i8 %i.ad, -1, !dbg !1488
  br i1 %.not23, label %bb.o, label %bb.n, !dbg !1489

bb.i:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !1399
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1490
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !1490, !nonnull !79, !noundef !79
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.af, i8 noundef %2), !dbg !1399
  %i.ag = load i8, ptr %i.c, align 8, !dbg !1491, !range !81, !noundef !79
  %.not22 = icmp eq i8 %i.ag, -1, !dbg !1491
  br i1 %.not22, label %bb.q, label %bb.p, !dbg !1492

bb.j:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1493
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !1493, !nonnull !79, !noundef !79 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1494
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !1494, !noundef !79 ; 2 uses
  %.idx68 = mul nuw nsw i64 %i.ak, 48, !dbg !1495
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.idx68, !dbg !1495
  %i.am = icmp eq i64 %i.ak, 0, !dbg !1496
  br i1 %i.am, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph66, !dbg !1418

bb.k:                                             ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !1497
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !1497, !nonnull !79, !noundef !79 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !1498
  %i.aq = load i64, ptr %i.ap, align 8, !dbg !1498, !noundef !79 ; 2 uses
  %.idx67 = mul nuw nsw i64 %i.aq, 48, !dbg !1499
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.idx67, !dbg !1499
  %i.as = icmp eq i64 %i.aq, 0, !dbg !1500
  br i1 %i.as, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph, !dbg !1501

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks_0EB1I_.exit: ; preds = %.lr.ph92
  %3 = zext nneg i8 %2 to i16, !dbg !1502
  %4 = shl nuw nsw i16 %3, 8, !dbg !1502
  %5 = or disjoint i16 %4, 3, !dbg !1502
  store i16 %5, ptr %0, align 8, !dbg !1502
  br label %bb.v, !dbg !1503

bb.l:                                             ; preds = %bb.g
  %.idx57 = shl nuw nsw i64 %i.z, 1, !dbg !1504
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx57, !dbg !1504
  br i1 %i.aa, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.preheader, !dbg !1505

.preheader:                                       ; preds = %bb.l, %.preheader
  %.sroa.04.0.i = phi i64 [ %i.ax, %.preheader ], [ 0, %bb.l ], !dbg !1506 ; 2 uses
  %.sroa.02.0.i = phi i64 [ %i.aw, %.preheader ], [ 0, %bb.l ], !dbg !1507
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.sroa.04.0.i, !dbg !1508
  %i.av = tail call noundef i64 @_RNvMsi_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_15ClassBytesRange3len(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %i.au), !dbg !1509
  %i.aw = add i64 %i.av, %.sroa.02.0.i, !dbg !1510 ; 2 uses
  %i.ax = add nuw i64 %.sroa.04.0.i, 1, !dbg !1511 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, %i.z, !dbg !1512
  br i1 %i.ay, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit, label %.preheader, !dbg !1512

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit: ; preds = %.preheader
  %i.az = icmp eq i64 %i.aw, 1, !dbg !1513
  br i1 %i.az, label %.lr.ph.i34, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, !dbg !1513

bb.m:                                             ; preds = %bb.g
  %.idx = shl nuw nsw i64 %i.z, 3, !dbg !1514
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx, !dbg !1514
  br i1 %i.aa, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.preheader60, !dbg !1515

.preheader60:                                     ; preds = %bb.m, %.preheader60
  %.sroa.04.0.i28 = phi i64 [ %i.be, %.preheader60 ], [ 0, %bb.m ], !dbg !1516 ; 2 uses
  %.sroa.02.0.i29 = phi i64 [ %i.bd, %.preheader60 ], [ 0, %bb.m ], !dbg !1517
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.04.0.i28, !dbg !1518
  %i.bc = tail call noundef i64 @_RNvMse_NtCs2G6gJ0Mq9lu_12regex_syntax3hirNtB5_17ClassUnicodeRange3len(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.bb), !dbg !1519
  %i.bd = add i64 %i.bc, %.sroa.02.0.i29, !dbg !1520 ; 2 uses
  %i.be = add nuw i64 %.sroa.04.0.i28, 1, !dbg !1521 ; 2 uses
  %i.bf = icmp eq i64 %i.be, %i.z, !dbg !1522
  br i1 %i.bf, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks0_0NCINvXsK_NtB1O_5accumjNtB43_3Sum3sumINtB2A_3MapBF_B3a_EE0E0EB3g_.exit, label %.preheader60, !dbg !1522

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks0_0NCINvXsK_NtB1O_5accumjNtB43_3Sum3sumINtB2A_3MapBF_B3a_EE0E0EB3g_.exit: ; preds = %.preheader60
  %i.bg = icmp eq i64 %i.bd, 1, !dbg !1523
  br i1 %i.bg, label %.lr.ph.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, !dbg !1523

.lr.ph.i:                                         ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks0_0NCINvXsK_NtB1O_5accumjNtB43_3Sum3sumINtB2A_3MapBF_B3a_EE0E0EB3g_.exit, %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.thread.i
  %i.bh = phi ptr [ %i.bi, %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.thread.i ], [ %i.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1Q_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks0_0NCINvXsK_NtB1O_5accumjNtB43_3Sum3sumINtB2A_3MapBF_B3a_EE0E0EB3g_.exit ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8, !dbg !1524 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !dbg !1525, !range !183, !noalias !1461, !noundef !79
  %.not.i.i = icmp samesign ugt i32 %i.bj, %i.f, !dbg !1526
  br i1 %.not.i.i, label %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.thread.i, label %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.i, !dbg !1526

_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.i: ; preds = %.lr.ph.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4, !dbg !1527
  %i.bl = load i32, ptr %i.bk, align 4, !dbg !1527, !range !183, !noalias !1461, !noundef !79
  %.not.i = icmp samesign ult i32 %i.bl, %i.f, !dbg !1528
  br i1 %.not.i, label %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.thread.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0EB2A_.exit, !dbg !1529

_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.thread.i: ; preds = %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.i, %.lr.ph.i
  %i.bm = icmp eq ptr %i.bi, %i.ba, !dbg !1530
  br i1 %i.bm, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph.i, !dbg !1531

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0EB2A_.exit: ; preds = %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0B5_.exit.i
  %6 = zext nneg i8 %2 to i16, !dbg !1532
  %7 = shl nuw nsw i16 %6, 8, !dbg !1532
  %8 = or disjoint i16 %7, 3, !dbg !1532
  store i16 %8, ptr %0, align 8, !dbg !1532
  br label %bb.v, !dbg !1503

.lr.ph.i34:                                       ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit, %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.thread.i
  %i.bn = phi ptr [ %i.bo, %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.thread.i ], [ %i.x, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 2, !dbg !1533 ; 2 uses
  %i.bp = load i8, ptr %i.bn, align 1, !dbg !1534, !noalias !1463, !noundef !79
  %.not.i.i35 = icmp ugt i8 %i.bp, %2, !dbg !1535
  br i1 %.not.i.i35, label %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.thread.i, label %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.i, !dbg !1535

_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.i: ; preds = %.lr.ph.i34
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 1, !dbg !1536
  %i.br = load i8, ptr %i.bq, align 1, !dbg !1536, !noalias !1463, !noundef !79
  %.not.i36 = icmp ugt i8 %2, %i.br, !dbg !1537
  br i1 %.not.i36, label %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.thread.i, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0EB2y_.exit, !dbg !1538

_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.thread.i: ; preds = %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.i, %.lr.ph.i34
  %i.bs = icmp eq ptr %i.bo, %i.at, !dbg !1539
  br i1 %i.bs, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph.i34, !dbg !1540

_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0EB2y_.exit: ; preds = %_RNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0B5_.exit.i
  %9 = zext nneg i8 %2 to i16, !dbg !1541
  %10 = shl nuw nsw i16 %9, 8, !dbg !1541
  %11 = or disjoint i16 %10, 3, !dbg !1541
  store i16 %11, ptr %0, align 8, !dbg !1541
  br label %bb.v, !dbg !1503

bb.n:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.d, i64 32, i1 false), !dbg !1542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1543
  br label %bb.v, !dbg !1503

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !1543
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, !dbg !1544

bb.p:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !1545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1546
  br label %bb.v, !dbg !1503

bb.q:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !1546
  br label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, !dbg !1547

.lr.ph66:                                         ; preds = %bb.j, %bb.s
  %.sroa.0.065 = phi ptr [ %i.bu, %bb.s ], [ %i.ai, %bb.j ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !1465
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.065, i8 noundef %2), !dbg !1465
  %i.bt = load i8, ptr %i.b, align 8, !dbg !1548, !range !81, !noundef !79
  %.not21 = icmp eq i8 %i.bt, -1, !dbg !1548
  br i1 %.not21, label %bb.s, label %bb.r, !dbg !1549

bb.r:                                             ; preds = %.lr.ph66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !1550
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1551
  br label %bb.v, !dbg !1503

bb.s:                                             ; preds = %.lr.ph66
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 48, !dbg !1552 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !1551
  %i.bv = icmp eq ptr %i.bu, %i.al, !dbg !1496
  br i1 %i.bv, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph66, !dbg !1418

.lr.ph:                                           ; preds = %bb.k, %bb.u
  %.sroa.02.064 = phi ptr [ %i.bx, %bb.u ], [ %i.ao, %bb.k ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !1467
  call void @_RNvNtCsdq8xsXUia3c_10grep_regex3ban5check(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.02.064, i8 noundef %2), !dbg !1467
  %i.bw = load i8, ptr %i.a, align 8, !dbg !1553, !range !81, !noundef !79
  %.not = icmp eq i8 %i.bw, -1, !dbg !1553
  br i1 %.not, label %bb.u, label %bb.t, !dbg !1554

bb.t:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !dbg !1555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1556
  br label %bb.v, !dbg !1503

bb.u:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.02.064, i64 48, !dbg !1557 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !1556
  %i.by = icmp eq ptr %i.bx, %i.ar, !dbg !1500
  br i1 %i.by, label %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread, label %.lr.ph, !dbg !1501

bb.v:                                             ; preds = %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks_0EB1I_.exit, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks1_0EB2A_.exit, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks3_0EB2y_.exit, %bb.n, %bb.p, %bb.r, %bb.t, %_RINvXs2J_NtNtCskKLDkoKarTP_4core5slice4iterINtB7_4IterNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1O_8adapters3map8map_foldRBQ_jjNCNvNtCsdq8xsXUia3c_10grep_regex3ban5checks2_0NCINvXsK_NtB1M_5accumjNtB41_3Sum3sumINtB2y_3MapBF_B38_EE0E0EB3e_.exit.thread
  ret void, !dbg !1477
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_RNvXs3_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir7literal7LiteralENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator9size_hintCsdq8xsXUia3c_10grep_regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #4 !dbg !1558 {
bb.a:
  %.val = load ptr, ptr %1, align 8, !dbg !1575, !nonnull !79, !noundef !79
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !1575
  %.val1 = load ptr, ptr %i.a, align 8, !dbg !1575, !nonnull !79, !noundef !79
  %i.b = ptrtoint ptr %.val1 to i64, !dbg !1576
  %i.c = ptrtoint ptr %.val to i64, !dbg !1576
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !1576
  %i.e = lshr exact i64 %i.d, 5, !dbg !1576       ; 2 uses
  store i64 %i.e, ptr %0, align 8, !dbg !1577, !alias.scope !1574
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1577
  store i64 1, ptr %i.f, align 8, !dbg !1577, !alias.scope !1574
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1577
  store i64 %i.e, ptr %i.g, align 8, !dbg !1577, !alias.scope !1574
  ret void, !dbg !1578
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1579 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1633, !nonnull !79, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1633 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1633, !nonnull !79, !noundef !79
  store ptr inttoptr (i64 1 to ptr), ptr %0, align 8, !dbg !1634
  store ptr inttoptr (i64 1 to ptr), ptr %i.b, align 8, !dbg !1634
  %i.d = icmp eq ptr %i.c, %i.a, !dbg !1635
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1636
  %i.f = load i64, ptr %i.e, align 8, !dbg !1636, !noundef !79 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0, !dbg !1636     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f, !dbg !1635

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex.exit, label %bb.c, !dbg !1637

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1638
  %i.h = load ptr, ptr %i.g, align 8, !dbg !1638, !nonnull !79, !noundef !79 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !1639 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !1639, !noundef !79 ; 4 uses
  %i.k = icmp ult i64 %i.j, 4611686018427387904, !dbg !1640
  tail call void @llvm.assume(i1 %i.k), !dbg !1641
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1642
  %i.m = load i64, ptr %i.l, align 8, !dbg !1642, !noundef !79 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j, !dbg !1643
  br i1 %.not3.i.i, label %bb.d, label %bb.e, !dbg !1643

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f, !dbg !1644
  store i64 %i.n, ptr %i.i, align 8, !dbg !1645
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex.exit, !dbg !1646

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1647
  %i.p = load ptr, ptr %i.o, align 8, !dbg !1647, !nonnull !79, !noundef !79 ; 2 uses
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.m, !dbg !1648
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.j, !dbg !1649
  %i.s = shl nuw nsw i64 %i.f, 1, !dbg !1650
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.q, i64 %i.s, i1 false), !dbg !1650
  br label %bb.d, !dbg !1651

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
  ret void, !dbg !1652

bb.f:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex.exit, label %bb.g, !dbg !1653

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1654
  %i.u = load ptr, ptr %i.t, align 8, !dbg !1654, !nonnull !79, !noundef !79 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16, !dbg !1655 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !dbg !1655, !noundef !79 ; 4 uses
  %i.x = icmp ult i64 %i.w, 4611686018427387904, !dbg !1656
  tail call void @llvm.assume(i1 %i.x), !dbg !1657
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1658
  %i.z = load i64, ptr %i.y, align 8, !dbg !1658, !noundef !79 ; 2 uses
  %.not3.i.i9 = icmp eq i64 %i.z, %i.w, !dbg !1659
  br i1 %.not3.i.i9, label %bb.h, label %bb.i, !dbg !1659

bb.h:                                             ; preds = %bb.i, %bb.g
  %i.aa = add i64 %i.w, %i.f, !dbg !1660
  store i64 %i.aa, ptr %i.v, align 8, !dbg !1661
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir15ClassBytesRangeNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex.exit, !dbg !1662

bb.i:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 8, !dbg !1663
  %i.ac = load ptr, ptr %i.ab, align 8, !dbg !1663, !nonnull !79, !noundef !79 ; 2 uses
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.z, !dbg !1664
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ac, i64 %i.w, !dbg !1665
  %i.af = shl nuw nsw i64 %i.f, 1, !dbg !1666
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull align 1 %i.ad, i64 %i.af, i1 false), !dbg !1666
  br label %bb.h, !dbg !1667
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtB5_5DrainNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsdq8xsXUia3c_10grep_regex(ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %0) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !1668 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !dbg !1722, !nonnull !79, !noundef !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !1722 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !dbg !1722, !nonnull !79, !noundef !79
  store ptr inttoptr (i64 4 to ptr), ptr %0, align 8, !dbg !1723
  store ptr inttoptr (i64 4 to ptr), ptr %i.b, align 8, !dbg !1723
  %i.d = icmp eq ptr %i.c, %i.a, !dbg !1724
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !1725
  %i.f = load i64, ptr %i.e, align 8, !dbg !1725, !noundef !79 ; 5 uses
  %.not.i.i = icmp eq i64 %i.f, 0, !dbg !1725     ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f, !dbg !1724

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex.exit, label %bb.c, !dbg !1726

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !1727
  %i.h = load ptr, ptr %i.g, align 8, !dbg !1727, !nonnull !79, !noundef !79 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !1728 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !dbg !1728, !noundef !79 ; 4 uses
  %i.k = icmp ult i64 %i.j, 1152921504606846976, !dbg !1729
  tail call void @llvm.assume(i1 %i.k), !dbg !1730
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !1731
  %i.m = load i64, ptr %i.l, align 8, !dbg !1731, !noundef !79 ; 2 uses
  %.not3.i.i = icmp eq i64 %i.m, %i.j, !dbg !1732
  br i1 %.not3.i.i, label %bb.d, label %bb.e, !dbg !1732

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.n = add i64 %i.j, %i.f, !dbg !1733
  store i64 %i.n, ptr %i.i, align 8, !dbg !1734
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex.exit, !dbg !1735

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !1736
  %i.p = load ptr, ptr %i.o, align 8, !dbg !1736, !nonnull !79, !noundef !79 ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.m, !dbg !1737
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.j, !dbg !1738
  %i.s = shl nuw nsw i64 %i.f, 3, !dbg !1739
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull align 4 %i.q, i64 %i.s, i1 false), !dbg !1739
  br label %bb.d, !dbg !1740

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXs5_NtNtCsexYYUdYSQU6_5alloc3vec5drainINtBK_5DrainppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtCs2G6gJ0Mq9lu_12regex_syntax3hir17ClassUnicodeRangeNtNtBO_5alloc6GlobalEECsdq8xsXUia3c_10grep_regex.exit: ; preds = %bb.h, %bb.f, %bb.d, %bb.b
end_hunk_0
