Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/index_scheduler-0c73470abd85ee5a.index_scheduler.34b94f085cb09947-cgu.0?download=true
inline.NumInlined: 57300
inline.NumDeleted: 23973
loop-unroll.NumCompletelyUnrolled: 215
loop-unroll.NumRuntimeUnrolled: 564
loop-unroll.NumUnrolled: 782
loop-unroll.NumUnrolledNotLatch: 6
begin_hunk_0_@_ZN5rstar9algorithm5rstar14choose_subtree17hbc6477587708b832E:bb.a
  %i.cv = shufflevector <6 x double> %i.cs, <6 x double> poison, <2 x i32> <i32 5, i32 5> ; 2 uses
  %i.cw = fcmp olt <2 x double> %i.bh, %i.cv
  %i.cx = shufflevector <6 x double> %i.cs, <6 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cy = fcmp ogt <2 x double> %i.bi, %i.cx
  %i.cz = select <2 x i1> %i.cy, <2 x double> %i.bi, <2 x double> %i.cx
  %i.da = shufflevector <6 x double> %i.cs, <6 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.db = fcmp ogt <2 x double> %i.bj, %i.da
  %i.dc = select <2 x i1> %i.db, <2 x double> %i.bj, <2 x double> %i.da
  %i.dd = select <2 x i1> %i.cu, <2 x double> %i.bf, <2 x double> %i.ct
  %i.de = shufflevector <6 x double> %i.cs, <6 x double> poison, <2 x i32> <i32 4, i32 4> ; 2 uses
  %i.df = fcmp olt <2 x double> %i.bk, %i.de
  %i.dg = select <2 x i1> %i.df, <2 x double> %i.bk, <2 x double> %i.de
  %i.dh = shufflevector <6 x double> %i.cs, <6 x double> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.di = fcmp olt <2 x double> %i.bl, %i.dh
  %i.dj = select <2 x i1> %i.di, <2 x double> %i.bl, <2 x double> %i.dh
  %i.dk = select <2 x i1> %i.cw, <2 x double> %i.bh, <2 x double> %i.cv
  %i.dl = fsub <2 x double> %i.dg, %i.cz          ; 2 uses
  %i.dm = fsub <2 x double> %i.dj, %i.dc          ; 2 uses
  %i.dn = fsub <2 x double> %i.dk, %i.dd          ; 2 uses
  %i.do = fcmp ogt <2 x double> %i.dm, zeroinitializer
  %i.dp = select <2 x i1> %i.do, <2 x double> %i.dm, <2 x double> zeroinitializer
  %i.dq = fcmp ogt <2 x double> %i.dl, zeroinitializer
  %i.dr = select <2 x i1> %i.dq, <2 x double> %i.dl, <2 x double> zeroinitializer
  %i.ds = fmul <2 x double> %i.dr, %i.dp
  %i.dt = fcmp ogt <2 x double> %i.dn, zeroinitializer
  %i.du = select <2 x i1> %i.dt, <2 x double> %i.dn, <2 x double> zeroinitializer
  %i.dv = fmul <2 x double> %i.du, %i.ds
  %i.dw = fadd <2 x double> %i.ch, %i.dv
  br label %bb.n

bb.r:                                             ; preds = %bb.i
  %i.dx = add i32 %.sroa.09.0146, 1               ; 2 uses
  %i.dy = fsub <2 x double> %i.ab, %i.ac          ; 2 uses
  %i.dz = fsub double %.sroa.1637.0, %.sroa.826.0 ; 2 uses
  %i.ea = fcmp ogt <2 x double> %i.dy, zeroinitializer
  %i.eb = select <2 x i1> %i.ea, <2 x double> %i.dy, <2 x double> zeroinitializer ; 2 uses
  %shift174 = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop175 = fmul <2 x double> %shift174, %i.eb
  %i.ec = extractelement <2 x double> %foldExtExtBinop175, i64 0
  %i.ed = fcmp ogt double %i.dz, 0.000000e+00
  %..i.i.2.i.i.i72 = select i1 %i.ed, double %i.dz, double 0.000000e+00
  %i.ee = fmul double %..i.i.2.i.i.i72, %i.ec     ; 2 uses
  %i.ef = fcmp olt double %i.ee, %.sroa.017.0144
  br i1 %i.ef, label %bb.s, label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$17contains_envelope17hbe9b9dde784de2bbE.exit.thread"

bb.s:                                             ; preds = %bb.r
  br label %"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$17contains_envelope17hbe9b9dde784de2bbE.exit.thread"

"_ZN72_$LT$rstar..aabb..AABB$LT$P$GT$$u20$as$u20$rstar..envelope..Envelope$GT$17contains_envelope17hbe9b9dde784de2bbE.exit.thread": ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit46", %bb.i, %bb.s, %bb.r
  %.sroa.017.2 = phi double [ %.sroa.017.0144, %bb.r ], [ %.sroa.017.0144, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit46" ], [ %i.ee, %bb.s ], [ %.sroa.017.0144, %bb.i ]
  %.sroa.011.5 = phi i64 [ %.sroa.011.0145, %bb.r ], [ %.sroa.011.0145, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit46" ], [ %.sroa.7.0142, %bb.s ], [ %.sroa.011.0145, %bb.i ] ; 3 uses
  %.sroa.09.1 = phi i32 [ %i.dx, %bb.r ], [ %.sroa.09.0146, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit46" ], [ %i.dx, %bb.s ], [ %.sroa.09.0146, %bb.i ] ; 2 uses
  %i.eg = icmp eq ptr %i.s, %i.p
  br i1 %i.eg, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfa80ddebe472fdcdE.exit.thread", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hfa80ddebe472fdcdE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5rstar9algorithm5rstar16forced_insertion17hde6f0128293fc28eE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [72 x i8], align 8                ; 9 uses
  %i.d = alloca [72 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179009)
  %i.f = load i64, ptr %2, align 8, !range !83, !alias.scope !179010, !noalias !179009, !noundef !57
  %.not.i = icmp eq i64 %i.f, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.h = load <2 x double>, ptr %.sroa.10.24..sroa_idx, align 8, !alias.scope !179011
  %i.i = load <2 x double>, ptr %i.g, align 8, !alias.scope !179011
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !179011
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load <2 x double>, ptr %i.k, align 8, !alias.scope !179012 ; 2 uses
  %.sroa.6.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload27 = load double, ptr %.sroa.6.0..sroa_idx26, align 8, !alias.scope !179012 ; 2 uses
  %i.m = shufflevector <2 x double> %i.l, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.n = insertelement <2 x double> %i.m, double %.sroa.6.0.copyload27, i64 0
  %i.o = insertelement <2 x double> %i.m, double %.sroa.6.0.copyload27, i64 1
  br label %bb.d

.thread61:                                        ; preds = %bb.o, %bb.l
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %2) #81
          to label %.thread57 unwind label %bb.y

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi <2 x double> [ %i.l, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.q = phi <2 x double> [ %i.n, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.r = phi <2 x double> [ %i.o, %bb.c ], [ %i.h, %bb.b ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.t = load <2 x double>, ptr %i.e, align 8, !alias.scope !179013, !noalias !179014 ; 2 uses
  %i.u = fcmp olt <2 x double> %i.t, %i.p
  %i.v = select <2 x i1> %i.u, <2 x double> %i.t, <2 x double> %i.p
  store <2 x double> %i.v, ptr %i.e, align 8, !alias.scope !179015, !noalias !179016
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.x = load <2 x double>, ptr %i.s, align 8, !alias.scope !179015, !noalias !179016 ; 3 uses
  %i.y = shufflevector <2 x double> %i.x, <2 x double> %i.q, <2 x i32> <i32 0, i32 3>
  %i.z = shufflevector <2 x double> %i.q, <2 x double> %i.x, <2 x i32> <i32 0, i32 3>
  %i.aa = fcmp olt <2 x double> %i.y, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x double> %i.x, <2 x double> %i.q
  store <2 x double> %i.ab, ptr %i.s, align 8, !alias.scope !179015, !noalias !179016
  %i.ac = load <2 x double>, ptr %i.w, align 8, !alias.scope !179017, !noalias !179018 ; 2 uses
  %i.ad = fcmp ogt <2 x double> %i.ac, %i.r
  %i.ae = select <2 x i1> %i.ad, <2 x double> %i.ac, <2 x double> %i.r
  store <2 x double> %i.ae, ptr %i.w, align 8, !alias.scope !179015, !noalias !179016
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.af, align 8            ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %.val11 = load i64, ptr %i.ag, align 8, !noundef !57 ; 10 uses
  %i.ah = tail call fastcc noundef i64 @_ZN5rstar9algorithm5rstar14choose_subtree17hbc6477587708b832E(ptr %.val, i64 %.val11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) ; 4 uses
  %i.ai = icmp eq i64 %3, 0
  br i1 %i.ai, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.i, %bb.d
  %i.aj = load i64, ptr %1, align 8, !range !56, !alias.scope !179019, !noalias !179020, !noundef !57
  %i.ak = icmp eq i64 %.val11, %i.aj
  br i1 %i.ak, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0a19f77da45ba799E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2734)
          to label %._crit_edge unwind label %bb.g, !noalias !179021

._crit_edge:                                      ; preds = %bb.f
  %.pre = load ptr, ptr %i.af, align 8, !alias.scope !179019, !noalias !179020
  br label %bb.aa

bb.g:                                             ; preds = %bb.f
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %2) #81
          to label %.thread57 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !179021
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.an = icmp ult i64 %.val11, 128102389400760776
  tail call void @llvm.assume(i1 %i.an)
  %i.ao = icmp ult i64 %.val11, %i.ah
  br i1 %i.ao, label %bb.e, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp samesign ult i64 %i.ah, %.val11
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %i.ah ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !range !83, !noundef !57
  %.not = icmp eq i64 %i.ar, -9223372036854775808
  br i1 %.not, label %bb.o, label %bb.n, !prof !60

bb.l:                                             ; preds = %bb.j
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ah, i64 noundef %.val11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2729) #80
          to label %bb.m unwind label %.thread61

bb.m:                                             ; preds = %bb.o, %bb.l
  unreachable

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.as = add i64 %3, -1
  call fastcc void @_ZN5rstar9algorithm5rstar16forced_insertion17hde6f0128293fc28eE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef align 8 dereferenceable(72) %i.aq, ptr noalias noundef align 8 captures(address) dereferenceable(72) %2, i64 noundef %i.as)
  %i.at = load i64, ptr %i.d, align 8, !range !125, !noundef !57 ; 3 uses
  %i.au = tail call i64 @llvm.umax.i64(i64 %i.at, i64 -9223372036854775808)
  %i.av = and i64 %i.au, 9223372036854775807
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.p, label %bb.q

bb.o:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @2732, ptr %i.a, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17he874e2b73ef12367E", ptr %.sroa.44.0..sroa_idx, align 8
  store ptr @415, ptr %i.b, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ax, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ay, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.az, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.ba, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2733) #80
          to label %bb.m unwind label %.thread61

bb.p:                                             ; preds = %bb.n
  %.sroa.5.0..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %4 = load <2 x double>, ptr %.sroa.5.0..sroa_idx71, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.bb = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.bc = load <2 x double>, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bd = load <2 x double>, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.not.i12 = icmp eq i64 %i.at, -9223372036854775808 ; 3 uses
  %i.be = shufflevector <2 x double> %i.bb, <2 x double> %4, <2 x i32> <i32 0, i32 2>
  %i.bf = shufflevector <2 x double> %4, <2 x double> %i.bb, <2 x i32> <i32 1, i32 2>
  %i.bg = select i1 %.not.i12, <2 x double> %4, <2 x double> %i.bb ; 2 uses
  %i.bh = select i1 %.not.i12, <2 x double> %i.be, <2 x double> %i.bc ; 3 uses
  %i.bi = select i1 %.not.i12, <2 x double> %i.bf, <2 x double> %i.bd ; 2 uses
  %i.bj = load <2 x double>, ptr %i.e, align 8, !alias.scope !179022, !noalias !179023 ; 2 uses
  %i.bk = fcmp olt <2 x double> %i.bj, %i.bg
  %i.bl = select <2 x i1> %i.bk, <2 x double> %i.bj, <2 x double> %i.bg
  store <2 x double> %i.bl, ptr %i.e, align 8, !alias.scope !179024, !noalias !179025
  %i.bm = load <2 x double>, ptr %i.s, align 8, !alias.scope !179024, !noalias !179025 ; 3 uses
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> %i.bh, <2 x i32> <i32 0, i32 3>
  %i.bo = shufflevector <2 x double> %i.bh, <2 x double> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.bp = fcmp olt <2 x double> %i.bn, %i.bo
  %i.bq = select <2 x i1> %i.bp, <2 x double> %i.bm, <2 x double> %i.bh
  store <2 x double> %i.bq, ptr %i.s, align 8, !alias.scope !179024, !noalias !179025
  %i.br = load <2 x double>, ptr %i.w, align 8, !alias.scope !179026, !noalias !179027 ; 2 uses
  %i.bs = fcmp ogt <2 x double> %i.br, %i.bi
  %i.bt = select <2 x i1> %i.bs, <2 x double> %i.br, <2 x double> %i.bi
  store <2 x double> %i.bt, ptr %i.w, align 8, !alias.scope !179024, !noalias !179025
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %i.at, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx73 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store <2 x double> %4, ptr %.sroa.5.0..sroa_idx73, align 8
  %.sroa.7.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store <2 x double> %i.bb, ptr %.sroa.7.0..sroa_idx79, align 8
  %.sroa.10.0..sroa_idx83 = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store <2 x double> %i.bc, ptr %.sroa.10.0..sroa_idx83, align 8
  %.sroa.12.0..sroa_idx87 = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store <2 x double> %i.bd, ptr %.sroa.12.0..sroa_idx87, align 8
  %i.bu = load i64, ptr %i.ag, align 8, !alias.scope !179028, !noalias !179029, !noundef !57 ; 5 uses
  %i.bv = load i64, ptr %1, align 8, !range !56, !alias.scope !179028, !noalias !179029, !noundef !57
  %i.bw = icmp eq i64 %i.bu, %i.bv
  br i1 %i.bw, label %bb.r, label %bb.u

bb.q:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.d, i64 72, i1 false)
  br label %bb.x

bb.r:                                             ; preds = %bb.p
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0a19f77da45ba799E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2730)
          to label %bb.u unwind label %bb.s, !noalias !179030

bb.s:                                             ; preds = %bb.r
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.c) #81
          to label %.thread57 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !179030
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.p
  %i.bz = load ptr, ptr %i.af, align 8, !alias.scope !179028, !noalias !179029, !nonnull !57, !noundef !57
  %i.ca = getelementptr inbounds nuw [72 x i8], ptr %i.bz, i64 %i.bu
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.cb = add nsw i64 %i.bu, 1
  store i64 %i.cb, ptr %i.ag, align 8, !alias.scope !179028, !noalias !179029
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.cc = icmp slt i64 %i.bu, 128102389400760775
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp sgt i64 %i.bu, 5
  br i1 %i.cd, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call fastcc void @_ZN5rstar9algorithm5rstar5split17h79b55ccbce4f5382E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.z

bb.y:                                             ; preds = %.thread61
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

bb.z:                                             ; preds = %bb.ab, %bb.ac, %bb.x
  ret void

bb.aa:                                            ; preds = %._crit_edge, %bb.e
  %i.cf = phi ptr [ %.pre, %._crit_edge ], [ %.val, %bb.e ]
  %i.cg = getelementptr inbounds nuw [72 x i8], ptr %i.cf, i64 %.val11
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cg, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.ch = add nsw i64 %.val11, 1
  store i64 %i.ch, ptr %i.ag, align 8, !alias.scope !179019, !noalias !179020
  %i.ci = icmp slt i64 %.val11, 128102389400760775
  tail call void @llvm.assume(i1 %i.ci)
  %i.cj = icmp sgt i64 %.val11, 5
  br i1 %i.cj, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.z

bb.ac:                                            ; preds = %bb.aa
  tail call fastcc void @_ZN5rstar9algorithm5rstar5split17h79b55ccbce4f5382E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1)
  br label %bb.z

.thread57:                                        ; preds = %bb.s, %bb.g, %.thread61
  %.pn952 = phi { ptr, i32 } [ %i.al, %bb.g ], [ %lpad.thr_comm, %.thread61 ], [ %i.bx, %bb.s ]
  resume { ptr, i32 } %.pn952
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5rstar9algorithm5rstar16recursive_insert17h28ef6085fff690bcE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 9 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179170)
  %i.d = load i64, ptr %2, align 8, !range !83, !alias.scope !179171, !noalias !179170, !noundef !57
  %.not.i = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.10.24..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.f = load <2 x double>, ptr %.sroa.10.24..sroa_idx, align 8, !alias.scope !179172
  %i.g = load <2 x double>, ptr %i.e, align 8, !alias.scope !179172
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.h = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !179172
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x double>, ptr %i.i, align 8, !alias.scope !179173 ; 2 uses
  %.sroa.6.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload23 = load double, ptr %.sroa.6.0..sroa_idx22, align 8, !alias.scope !179173 ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.l = insertelement <2 x double> %i.k, double %.sroa.6.0.copyload23, i64 0
  %i.m = insertelement <2 x double> %i.k, double %.sroa.6.0.copyload23, i64 1
  br label %bb.d

.thread61:                                        ; preds = %bb.n, %bb.k
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef align 8 dereferenceable(72) %2) #81
          to label %.thread57 unwind label %bb.z

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.n = phi <2 x double> [ %i.j, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.o = phi <2 x double> [ %i.l, %bb.c ], [ %i.h, %bb.b ] ; 3 uses
  %i.p = phi <2 x double> [ %i.m, %bb.c ], [ %i.f, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.r = load <2 x double>, ptr %i.c, align 8, !alias.scope !179174, !noalias !179175 ; 2 uses
  %i.s = fcmp olt <2 x double> %i.r, %i.n
  %i.t = select <2 x i1> %i.s, <2 x double> %i.r, <2 x double> %i.n
  store <2 x double> %i.t, ptr %i.c, align 8, !alias.scope !179176, !noalias !179177
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  %i.v = load <2 x double>, ptr %i.q, align 8, !alias.scope !179176, !noalias !179177 ; 3 uses
  %i.w = shufflevector <2 x double> %i.v, <2 x double> %i.o, <2 x i32> <i32 0, i32 3>
  %i.x = shufflevector <2 x double> %i.o, <2 x double> %i.v, <2 x i32> <i32 0, i32 3>
  %i.y = fcmp olt <2 x double> %i.w, %i.x
  %i.z = select <2 x i1> %i.y, <2 x double> %i.v, <2 x double> %i.o
  store <2 x double> %i.z, ptr %i.q, align 8, !alias.scope !179176, !noalias !179177
  %i.aa = load <2 x double>, ptr %i.u, align 8, !alias.scope !179178, !noalias !179179 ; 2 uses
  %i.ab = fcmp ogt <2 x double> %i.aa, %i.p
  %i.ac = select <2 x i1> %i.ab, <2 x double> %i.aa, <2 x double> %i.p
  store <2 x double> %i.ac, ptr %i.u, align 8, !alias.scope !179176, !noalias !179177
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %.val = load ptr, ptr %i.ad, align 8            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %.val7 = load i64, ptr %i.ae, align 8, !noundef !57 ; 8 uses
  %i.af = tail call fastcc noundef i64 @_ZN5rstar9algorithm5rstar14choose_subtree17hbc6477587708b832E(ptr %.val, i64 %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) ; 4 uses
  %i.ag = icmp ult i64 %.val7, 128102389400760776
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = icmp ult i64 %.val7, %i.af
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp samesign ult i64 %i.af, %.val7
  br i1 %i.ai, label %bb.j, label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.aj = load i64, ptr %1, align 8, !range !56, !alias.scope !179180, !noalias !179181, !noundef !57
  %i.ak = icmp eq i64 %.val7, %i.aj
  br i1 %i.ak, label %bb.g, label %bb.aa

bb.g:                                             ; preds = %bb.f
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0a19f77da45ba799E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2738)
          to label %._crit_edge unwind label %bb.h, !noalias !179182

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.ad, align 8, !alias.scope !179180, !noalias !179181
  br label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %2) #81
          to label %.thread57 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !179182
  unreachable

bb.j:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw [72 x i8], ptr %.val, i64 %i.af ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !range !83, !noundef !57
  %.not = icmp eq i64 %i.ao, -9223372036854775808
  br i1 %.not, label %bb.n, label %bb.m, !prof !60

bb.k:                                             ; preds = %bb.e
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.af, i64 noundef %.val7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2735) #80
          to label %bb.l unwind label %.thread61

bb.l:                                             ; preds = %bb.n, %bb.k
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ap = add i64 %3, 1
  call fastcc void @_ZN5rstar9algorithm5rstar16recursive_insert17h28ef6085fff690bcE(ptr noalias noundef align 8 captures(address) dereferenceable(72) %i.a, ptr noalias noundef align 8 dereferenceable(72) %i.an, ptr noalias noundef align 8 captures(address) dereferenceable(72) %2, i64 noundef %i.ap)
  %i.aq = load i64, ptr %i.a, align 8, !range !125, !noundef !57 ; 3 uses
  %i.ar = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 -9223372036854775808)
  %i.as = and i64 %i.ar, 9223372036854775807
  switch i64 %i.as, label %bb.o [
    i64 0, label %bb.p
    i64 1, label %bb.q
    i64 2, label %bb.t
  ]

bb.n:                                             ; preds = %bb.j
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2731, i64 noundef 23, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2737) #80
          to label %bb.l unwind label %.thread61

bb.o:                                             ; preds = %bb.m
  unreachable

bb.p:                                             ; preds = %bb.m
  %.sroa.5.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %4 = load <2 x double>, ptr %.sroa.5.0..sroa_idx70, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.at = load <2 x double>, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.au = load <2 x double>, ptr %.sroa.10.0..sroa_idx, align 8 ; 2 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.av = load <2 x double>, ptr %.sroa.12.0..sroa_idx, align 8 ; 2 uses
  %.not.i8 = icmp eq i64 %i.aq, -9223372036854775808 ; 3 uses
  %i.aw = shufflevector <2 x double> %i.at, <2 x double> %4, <2 x i32> <i32 0, i32 2>
  %i.ax = shufflevector <2 x double> %4, <2 x double> %i.at, <2 x i32> <i32 1, i32 2>
  %i.ay = select i1 %.not.i8, <2 x double> %4, <2 x double> %i.at ; 2 uses
  %i.az = select i1 %.not.i8, <2 x double> %i.aw, <2 x double> %i.au ; 3 uses
  %i.ba = select i1 %.not.i8, <2 x double> %i.ax, <2 x double> %i.av ; 2 uses
  %i.bb = load <2 x double>, ptr %i.c, align 8, !alias.scope !179183, !noalias !179184 ; 2 uses
  %i.bc = fcmp olt <2 x double> %i.bb, %i.ay
  %i.bd = select <2 x i1> %i.bc, <2 x double> %i.bb, <2 x double> %i.ay
  store <2 x double> %i.bd, ptr %i.c, align 8, !alias.scope !179185, !noalias !179186
  %i.be = load <2 x double>, ptr %i.q, align 8, !alias.scope !179185, !noalias !179186 ; 3 uses
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> %i.az, <2 x i32> <i32 0, i32 3>
  %i.bg = shufflevector <2 x double> %i.az, <2 x double> %i.be, <2 x i32> <i32 0, i32 3>
  %i.bh = fcmp olt <2 x double> %i.bf, %i.bg
  %i.bi = select <2 x i1> %i.bh, <2 x double> %i.be, <2 x double> %i.az
  store <2 x double> %i.bi, ptr %i.q, align 8, !alias.scope !179185, !noalias !179186
  %i.bj = load <2 x double>, ptr %i.u, align 8, !alias.scope !179187, !noalias !179188 ; 2 uses
  %i.bk = fcmp ogt <2 x double> %i.bj, %i.ba
  %i.bl = select <2 x i1> %i.bk, <2 x double> %i.bj, <2 x double> %i.ba
  store <2 x double> %i.bl, ptr %i.u, align 8, !alias.scope !179185, !noalias !179186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %i.aq, ptr %i.b, align 8
  %.sroa.5.0..sroa_idx72 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <2 x double> %4, ptr %.sroa.5.0..sroa_idx72, align 8
  %.sroa.7.0..sroa_idx78 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store <2 x double> %i.at, ptr %.sroa.7.0..sroa_idx78, align 8
  %.sroa.10.0..sroa_idx82 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store <2 x double> %i.au, ptr %.sroa.10.0..sroa_idx82, align 8
  %.sroa.12.0..sroa_idx86 = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store <2 x double> %i.av, ptr %.sroa.12.0..sroa_idx86, align 8
  %i.bm = load i64, ptr %i.ae, align 8, !alias.scope !179189, !noalias !179190, !noundef !57 ; 3 uses
  %i.bn = load i64, ptr %1, align 8, !range !56, !alias.scope !179189, !noalias !179190, !noundef !57
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.u, label %bb.x

bb.q:                                             ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.br = load i64, ptr %i.bq, align 8, !noundef !57
  %i.bs = load ptr, ptr %i.ad, align 8, !nonnull !57, !noundef !57 ; 2 uses
  %i.bt = load i64, ptr %i.ae, align 8, !noundef !57 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bt, 72
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.q, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i"
  %.sroa.02.023.i = phi ptr [ %i.by, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ], [ %i.bs, %bb.q ] ; 6 uses
  %i.bw = phi <2 x double> [ %i.ck, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ], [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.q ] ; 2 uses
  %i.bx = phi <4 x double> [ %i.co, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ], [ <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, %bb.q ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 72 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179191)
  %i.bz = load i64, ptr %.sroa.02.023.i, align 8, !range !83, !alias.scope !179192, !noalias !179193, !noundef !57
  %.not.i.i = icmp eq i64 %i.bz, -9223372036854775808
  br i1 %.not.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 24
  %i.cb = load <2 x double>, ptr %i.ca, align 8, !alias.scope !179194, !noalias !179195
  %.sroa.69.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 40
  %i.cc = load <4 x double>, ptr %.sroa.69.0..sroa_idx.i, align 8, !alias.scope !179194, !noalias !179195
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i"

bb.s:                                             ; preds = %.lr.ph.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 8
  %.sroa.5.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.sroa.02.023.i, i64 16
  %i.ce = load <2 x double>, ptr %i.cd, align 8, !alias.scope !179196, !noalias !179195 ; 2 uses
  %i.cf = load <2 x double>, ptr %.sroa.5.0..sroa_idx7.i, align 8, !alias.scope !179196, !noalias !179195
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> %i.ce, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  br label %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i"

"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i": ; preds = %bb.s, %bb.r
  %i.ch = phi <2 x double> [ %i.ce, %bb.s ], [ %i.cb, %bb.r ] ; 2 uses
  %i.ci = phi <4 x double> [ %i.cg, %bb.s ], [ %i.cc, %bb.r ] ; 3 uses
  %i.cj = fcmp olt <2 x double> %i.bw, %i.ch
  %i.ck = select <2 x i1> %i.cj, <2 x double> %i.bw, <2 x double> %i.ch ; 2 uses
  %i.cl = shufflevector <4 x double> %i.bx, <4 x double> %i.ci, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cm = shufflevector <4 x double> %i.ci, <4 x double> %i.bx, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cn = fcmp olt <4 x double> %i.cl, %i.cm
  %i.co = select <4 x i1> %i.cn, <4 x double> %i.bx, <4 x double> %i.ci ; 2 uses
  %i.cp = icmp eq ptr %i.by, %i.bu
  br i1 %i.cp, label %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit, label %.lr.ph.i

bb.t:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %bb.y

bb.u:                                             ; preds = %bb.p
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h0a19f77da45ba799E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2736)
          to label %bb.x unwind label %bb.v, !noalias !179197

bb.v:                                             ; preds = %bb.u
  %i.cq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr171drop_in_place$LT$rstar..node..RTreeNode$LT$rstar..primitives..geom_with_data..GeomWithData$LT$$u5b$f64$u3b$$u20$3$u5d$$C$$LP$u32$C$$u5b$f64$u3b$$u20$2$u5d$$RP$$GT$$GT$$GT$17h36485824ce0c88eaE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(72) %i.b) #81
          to label %.thread57 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82, !noalias !179197
  unreachable

bb.x:                                             ; preds = %bb.u, %bb.p
  %i.cs = load ptr, ptr %i.ad, align 8, !alias.scope !179189, !noalias !179190, !nonnull !57, !noundef !57
  %i.ct = getelementptr inbounds nuw [72 x i8], ptr %i.cs, i64 %i.bm
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ct, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  %i.cu = add i64 %i.bm, 1
  store i64 %i.cu, ptr %i.ae, align 8, !alias.scope !179189, !noalias !179190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17hd77d9a5e06733865E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1, i64 noundef %3)
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit, %bb.x, %bb.t
  ret void

bb.z:                                             ; preds = %.thread61
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #82
  unreachable

_ZN5rstar4node21envelope_for_children17hd40fbd1ed16c008fE.exit: ; preds = %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i", %bb.q
  %i.cw = phi <2 x double> [ splat (double f0x7FEFFFFFFFFFFFFF), %bb.q ], [ %i.ck, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ]
  %i.cx = phi <4 x double> [ <double f0x7FEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF, double f0xFFEFFFFFFFFFFFFF>, %bb.q ], [ %i.co, %"_ZN78_$LT$rstar..node..RTreeNode$LT$T$GT$$u20$as$u20$rstar..object..RTreeObject$GT$8envelope17hb553de6e55b34ee2E.exit.i" ]
  store <2 x double> %i.cw, ptr %i.c, align 8
  store <4 x double> %i.cx, ptr %i.q, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, ptr noundef nonnull align 8 dereferenceable(24) %i.bp, i64 24, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.br, ptr %i.cz, align 8
  store i64 -9223372036854775807, ptr %0, align 8
  br label %bb.y

bb.aa:                                            ; preds = %._crit_edge, %bb.f
  %i.da = phi ptr [ %.pre, %._crit_edge ], [ %.val, %bb.f ]
  %i.db = getelementptr inbounds nuw [72 x i8], ptr %i.da, i64 %.val7
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.db, ptr noundef nonnull readonly align 8 dereferenceable(72) %2, i64 72, i1 false)
  %i.dc = add nuw nsw i64 %.val7, 1
  store i64 %i.dc, ptr %i.ae, align 8, !alias.scope !179180, !noalias !179181
  tail call fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17hd77d9a5e06733865E(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1, i64 noundef %3)
  br label %bb.y

.thread57:                                        ; preds = %bb.v, %bb.h, %.thread61
  %.pn552 = phi { ptr, i32 } [ %i.al, %bb.h ], [ %lpad.thr_comm, %.thread61 ], [ %i.cq, %bb.v ]
  resume { ptr, i32 } %.pn552
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5rstar9algorithm5rstar16resolve_overflow17hd77d9a5e06733865E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [24 x i8], align 16               ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !57 ; 6 uses
  %i.f = icmp ult i64 %i.e, 128102389400760776
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp samesign ugt i64 %i.e, 6
  br i1 %i.g, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179267)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !179268
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179270)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179274)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !alias.scope !179275, !noalias !179276, !noundef !57
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load double, ptr %i.l, align 8, !alias.scope !179277, !noalias !179278, !noundef !57
  %i.n = fadd double %i.k, %i.m
  %i.o = fmul double %i.n, 5.000000e-01
  %i.p = load <2 x double>, ptr %i.h, align 8, !alias.scope !179275, !noalias !179279
  %i.q = load <2 x double>, ptr %i.i, align 8, !alias.scope !179277, !noalias !179280
  %i.r = fadd <2 x double> %i.p, %i.q
  %i.s = fmul <2 x double> %i.r, splat (double 5.000000e-01)
  store <2 x double> %i.s, ptr %i.c, align 16, !alias.scope !179281, !noalias !179282
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store double %i.o, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 16, !alias.scope !179281, !noalias !179282
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !179267, !noalias !179283, !nonnull !57, !noundef !57 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !179268
  store ptr %i.c, ptr %i.b, align 8, !noalias !179284
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179284
  store ptr %i.b, ptr %i.a, align 8, !noalias !179284
  %i.v = icmp samesign ult i64 %i.e, 21
  br i1 %i.v, label %bb.d, label %bb.c, !prof !58

bb.c:                                             ; preds = %bb.b
end_hunk_0
