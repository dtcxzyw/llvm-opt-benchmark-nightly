Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/order_facets_around_edge?download=true
inline.NumInlined: 10252
inline.NumDeleted: 2796
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvPT_RKT0_RKT1_RS8_:bb.a
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.db) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit294

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit294: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %common.resume

bb.u:                                             ; preds = %bb.k
  %i.dc = icmp eq ptr %0, %3
  br i1 %i.dc, label %bb.v, label %bb.ag

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store i64 0, ptr %6, align 16, !tbaa !86
  %i.dd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store i64 1, ptr %i.dd, align 16, !tbaa !231
  %i.de = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  store i8 0, ptr %i.de, align 8, !tbaa !240
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 25 ; 4 uses
  store i8 1, ptr %i.df, align 1, !tbaa !75
  %i.dg = getelementptr inbounds nuw i8, ptr %6, i64 26 ; 3 uses
  store i8 0, ptr %i.dg, align 2, !tbaa !241
  invoke void @_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvPT_RKT0_RKT1_RS8_(ptr noundef %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 16 dereferenceable(27) %6)
          to label %bb.w unwind label %bb.ae

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store i64 0, ptr %i.dh, align 16, !tbaa !231
  %i.di = load i64, ptr %i.dd, align 16, !tbaa !231 ; 2 uses
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.di, i64 288230376151711744) ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 25 ; 4 uses
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !75, !range !76, !noundef !77
  %i.dl = trunc nuw i8 %i.dk to i1                ; 2 uses
  %i.dm = load i64, ptr %3, align 16
  %spec.select.i8.i.i = select i1 %i.dl, i64 2, i64 %i.dm ; 2 uses
  %i.dn = icmp ugt i64 %spec.select.i.i, %spec.select.i8.i.i
  br i1 %i.dn, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i, label %bb.ab

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i: ; preds = %bb.w
  %i.do = shl nuw nsw i64 %spec.select.i8.i.i, 2
  %.sroa.speculated16.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 %spec.select.i.i)
  %.sroa.speculated.i.i = call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i, i64 288230376151711744) ; 2 uses
  %i.dp = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.dq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dp) #37
          to label %.noexc350 unwind label %bb.ae ; 3 uses

.noexc350:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  %i.dr = load i8, ptr %i.dj, align 1, !tbaa !75, !range !76, !noundef !77
  %i.ds = trunc nuw i8 %i.dr to i1                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8            ; 2 uses
  %i.dv = select i1 %i.ds, ptr %3, ptr %i.du
  %i.dw = load i64, ptr %i.dh, align 16, !tbaa !231
  %i.dx = shl i64 %i.dw, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dq, ptr align 8 %i.dv, i64 %i.dx, i1 false)
  br i1 %i.ds, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.noexc350
  %i.dy = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.dz = load i8, ptr %i.dy, align 2, !tbaa !241, !range !76, !noundef !77
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eb = load i64, ptr %3, align 16
  %i.ec = shl i64 %i.eb, 3
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.ec) #35
  %.pre.pre.i = load i8, ptr %i.dj, align 1, !tbaa !75, !range !76
  %i.ed = trunc nuw i8 %.pre.pre.i to i1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x, %.noexc350
  store i8 0, ptr %i.dj, align 1, !tbaa !75
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.pre.i = phi i1 [ false, %bb.z ], [ %i.ed, %bb.y ]
  store i64 %spec.select.i.i, ptr %i.dh, align 16, !tbaa !231
  store i64 %.sroa.speculated.i.i, ptr %3, align 16, !tbaa !86
  store ptr %i.dq, ptr %i.dt, align 8, !tbaa !86
  %.pre537.a = load i64, ptr %i.dd, align 16, !tbaa !231
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  store i64 %spec.select.i.i, ptr %i.dh, align 16, !tbaa !231
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.ee = phi i64 [ %.pre537.a, %bb.aa ], [ %i.di, %bb.ab ]
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.aa ], [ %i.dl, %bb.ab ]
  %i.ef = phi ptr [ %i.dq, %bb.aa ], [ %.pre8.i, %bb.ab ]
  %i.eg = select i1 %.pre-phi.i, ptr %3, ptr %i.ef
  %i.eh = load i8, ptr %i.df, align 1, !tbaa !75, !range !76, !noundef !77
  %i.ei = trunc nuw i8 %i.eh to i1
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = select i1 %i.ei, ptr %6, ptr %i.ek
  %i.em = shl i64 %i.ee, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.eg, ptr align 8 %i.el, i64 %i.em, i1 false)
  %i.en = load i8, ptr %i.de, align 8, !tbaa !240, !range !76, !noundef !77
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 %i.en, ptr %i.eo, align 8, !tbaa !240
  %i.ep = load i8, ptr %i.df, align 1, !tbaa !75, !range !76, !noundef !77
  %i.eq = trunc nuw i8 %i.ep to i1
  %i.er = load i8, ptr %i.dg, align 2, !range !76
  %i.es = trunc nuw i8 %i.er to i1
  %or.cond.i291 = select i1 %i.eq, i1 true, i1 %i.es
  br i1 %or.cond.i291, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit292, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.et = load ptr, ptr %i.ej, align 8
  %i.eu = load i64, ptr %6, align 16
  %i.ev = shl i64 %i.eu, 3
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ev) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit292

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit292: ; preds = %bb.ac, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.ae:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i, %bb.v
  %i.ew = landingpad { ptr, i32 }
          cleanup
  %i.ex = load i8, ptr %i.df, align 1, !tbaa !75, !range !76, !noundef !77
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = load i8, ptr %i.dg, align 2, !range !76
  %i.fa = trunc nuw i8 %i.ez to i1
  %or.cond.i289 = select i1 %i.ey, i1 true, i1 %i.fa
  br i1 %or.cond.i289, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit290, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = load i64, ptr %6, align 16
  %i.fe = shl i64 %i.fd, 3
  call void @_ZdlPvm(ptr noundef %i.fc, i64 noundef %i.fe) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit290

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit290: ; preds = %bb.ae, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %common.resume

bb.ag:                                            ; preds = %bb.u
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  %i.fg = load i64, ptr %i.ff, align 16, !tbaa !231 ; 5 uses
  %i.fh = add i64 %i.fg, -1                       ; 11 uses
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !75, !range !76, !noundef !77
  %i.fl = trunc nuw i8 %i.fk to i1
  %i.fm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = select i1 %i.fl, ptr %2, ptr %i.fn
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !233
  tail call void @_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvPT_RKT0_yRS8_(ptr noundef %0, ptr noundef nonnull align 16 dereferenceable(27) %1, i64 noundef %i.fp, ptr noundef nonnull align 16 dereferenceable(27) %3)
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !75, !range !76, !noundef !77
  %i.fs = trunc nuw i8 %i.fr to i1                ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = select i1 %i.fs, ptr %1, ptr %i.fu      ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 3 uses
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !75, !range !76, !noundef !77
  %i.fy = trunc nuw i8 %i.fx to i1
  %i.fz = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = select i1 %i.fy, ptr %2, ptr %i.ga      ; 7 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.gd = load i64, ptr %i.gc, align 16, !tbaa !231 ; 3 uses
  %i.ge = add i64 %i.gd, -1                       ; 5 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.gg = load i64, ptr %i.fv, align 8, !tbaa !233
  %i.gh = icmp eq i64 %i.gg, 0
  br i1 %i.gh, label %bb.ak, label %bb.am

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %1)
  %.not282 = icmp eq ptr %0, null
  br i1 %.not282, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1)
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.am:                                            ; preds = %bb.ai, %bb.aj
  %i.gi = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 13 uses
  store i64 0, ptr %i.gi, align 16, !tbaa !231
  %i.gj = load i64, ptr %i.gc, align 16, !tbaa !231
  %spec.select.i.i352 = tail call i64 @llvm.umin.i64(i64 %i.gj, i64 288230376151711744) ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %3, i64 25 ; 17 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !75, !range !76, !noundef !77
  %i.gm = trunc nuw i8 %i.gl to i1                ; 2 uses
  %i.gn = load i64, ptr %3, align 16
  %spec.select.i8.i.i353 = select i1 %i.gm, i64 2, i64 %i.gn ; 2 uses
  %i.go = icmp ugt i64 %spec.select.i.i352, %spec.select.i8.i.i353
  br i1 %i.go, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i357, label %bb.ar

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i357: ; preds = %bb.am
  %i.gp = shl nuw nsw i64 %spec.select.i8.i.i353, 2
  %.sroa.speculated16.i.i358 = tail call i64 @llvm.umax.i64(i64 %i.gp, i64 %spec.select.i.i352)
  %.sroa.speculated.i.i359 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i358, i64 288230376151711744) ; 2 uses
  %i.gq = shl nuw nsw i64 %.sroa.speculated.i.i359, 3
  %i.gr = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gq) #37 ; 3 uses
  %i.gs = load i8, ptr %i.gk, align 1, !tbaa !75, !range !76, !noundef !77
  %i.gt = trunc nuw i8 %i.gs to i1                ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gv = load ptr, ptr %i.gu, align 8            ; 2 uses
  %i.gw = select i1 %i.gt, ptr %3, ptr %i.gv
  %i.gx = load i64, ptr %i.gi, align 16, !tbaa !231
  %i.gy = shl i64 %i.gx, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.gr, ptr align 8 %i.gw, i64 %i.gy, i1 false)
  br i1 %i.gt, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i357
  %i.gz = getelementptr inbounds nuw i8, ptr %3, i64 26
  %i.ha = load i8, ptr %i.gz, align 2, !tbaa !241, !range !76, !noundef !77
  %i.hb = trunc nuw i8 %i.ha to i1
  br i1 %i.hb, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.hc = load i64, ptr %3, align 16
  %i.hd = shl i64 %i.hc, 3
  tail call void @_ZdlPvm(ptr noundef %i.gv, i64 noundef %i.hd) #35
  %.pre.pre.i360 = load i8, ptr %i.gk, align 1, !tbaa !75, !range !76
  %i.he = trunc nuw i8 %.pre.pre.i360 to i1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i357
  store i8 0, ptr %i.gk, align 1, !tbaa !75
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.pre.i361 = phi i1 [ false, %bb.ap ], [ %i.he, %bb.ao ]
  store i64 %spec.select.i.i352, ptr %i.gi, align 16, !tbaa !231
  store i64 %.sroa.speculated.i.i359, ptr %3, align 16, !tbaa !86
  store ptr %i.gr, ptr %i.gu, align 8, !tbaa !86
  %.pre = load i8, ptr %i.fq, align 1, !tbaa !75, !range !76
  %.pre547 = trunc nuw i8 %.pre to i1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit362

bb.ar:                                            ; preds = %bb.am
  store i64 %spec.select.i.i352, ptr %i.gi, align 16, !tbaa !231
  %.phi.trans.insert.i354 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre8.i355 = load ptr, ptr %.phi.trans.insert.i354, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit362

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit362: ; preds = %bb.aq, %bb.ar
  %.pre-phi = phi i1 [ %.pre547, %bb.aq ], [ %i.fs, %bb.ar ]
  %.pre-phi.i356 = phi i1 [ %.pre.i361, %bb.aq ], [ %i.gm, %bb.ar ]
  %i.hf = phi ptr [ %i.gr, %bb.aq ], [ %.pre8.i355, %bb.ar ]
  %i.hg = select i1 %.pre-phi.i356, ptr %3, ptr %i.hf
  %i.hh = load ptr, ptr %i.ft, align 8
  %i.hi = select i1 %.pre-phi, ptr %1, ptr %i.hh
  %i.hj = load i64, ptr %i.gc, align 16, !tbaa !231
  %i.hk = shl i64 %i.hj, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.hg, ptr align 8 %i.hi, i64 %i.hk, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 10 uses
  store i8 0, ptr %i.hl, align 8, !tbaa !240
  %i.hm = icmp ne ptr %0, null                    ; 6 uses
  br i1 %i.hm, label %bb.as, label %bb.az

bb.as:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit362
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !75, !range !76, !noundef !77
  %i.hp = trunc nuw i8 %i.ho to i1                ; 2 uses
  %i.hq = load i64, ptr %0, align 16
  %i.hr = icmp ne i64 %i.hq, 0
  %.not460 = select i1 %i.hp, i1 true, i1 %i.hr
  br i1 %.not460, label %bb.ax, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i365

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i365: ; preds = %bb.as
  %i.hs = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #37
          to label %.noexc368 unwind label %bb.ay ; 3 uses

.noexc368:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i365
  %i.ht = load i8, ptr %i.hn, align 1, !tbaa !75, !range !76, !noundef !77
  %i.hu = trunc nuw i8 %i.ht to i1                ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8            ; 2 uses
  %i.hx = select i1 %i.hu, ptr %0, ptr %i.hw
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.hz = load i64, ptr %i.hy, align 16, !tbaa !231
  %i.ia = shl i64 %i.hz, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.hs, ptr align 8 %i.hx, i64 %i.ia, i1 false)
  br i1 %i.hu, label %bb.av, label %bb.at

bb.at:                                            ; preds = %.noexc368
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.ic = load i8, ptr %i.ib, align 2, !tbaa !241, !range !76, !noundef !77
  %i.id = trunc nuw i8 %i.ic to i1
  br i1 %i.id, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ie = load i64, ptr %0, align 16
  %i.if = shl i64 %i.ie, 3
  tail call void @_ZdlPvm(ptr noundef %i.hw, i64 noundef %i.if) #35
  %.pre524.pre = load i8, ptr %i.hn, align 1, !tbaa !75, !range !76
  %i.ig = trunc nuw i8 %.pre524.pre to i1
  br label %bb.aw

bb.av:                                            ; preds = %bb.at, %.noexc368
  store i8 0, ptr %i.hn, align 1, !tbaa !75
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %.pre524 = phi i1 [ false, %bb.av ], [ %i.ig, %bb.au ]
  store i64 1, ptr %i.hy, align 16, !tbaa !231
  store i64 1, ptr %0, align 16, !tbaa !86
  store ptr %i.hs, ptr %i.hv, align 8, !tbaa !86
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit310

bb.ax:                                            ; preds = %bb.as
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.ih, align 16, !tbaa !231
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre525 = load ptr, ptr %.phi.trans.insert, align 8
  br label %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit310

bb.ay:                                            ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i365
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  tail call void @__clang_call_terminate(ptr %i.ij) #39
  unreachable

_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit310: ; preds = %bb.ax, %bb.aw
  %.pre-phi549 = phi i1 [ %i.hp, %bb.ax ], [ %.pre524, %bb.aw ]
  %i.ik = phi ptr [ %.pre525, %bb.ax ], [ %i.hs, %bb.aw ]
  %i.il = select i1 %.pre-phi549, ptr %0, ptr %i.ik
  store i64 0, ptr %i.il, align 8, !tbaa !233
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.im, align 8, !tbaa !240
  br label %bb.az

bb.az:                                            ; preds = %_ZN5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEaSIyEENSt9enable_ifIXaasr3std7is_sameIT_yEE5valuentL_ZNSt17integral_constantIbLb0EE5valueEEERS6_E4typeES9_.exit310, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit362
  %.not = icmp ugt i64 %i.ge, %i.fh
  br i1 %.not, label %.thread439, label %bb.ba

.thread439:                                       ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store i64 0, ptr %7, align 16, !tbaa !86
  %i.in = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  store i64 1, ptr %i.in, align 16, !tbaa !231
  %i.io = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store i8 0, ptr %i.io, align 8, !tbaa !240
  %i.ip = getelementptr inbounds nuw i8, ptr %7, i64 25 ; 2 uses
  store i8 1, ptr %i.ip, align 1, !tbaa !75
  %i.iq = getelementptr inbounds nuw i8, ptr %7, i64 26 ; 2 uses
  store i8 0, ptr %i.iq, align 2, !tbaa !241
  br label %bb.bl

bb.ba:                                            ; preds = %bb.az
  %i.ir = icmp ult i64 %i.ge, %i.fh
  br i1 %i.ir, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.is = load i64, ptr %i.gi, align 16, !tbaa !231 ; 4 uses
  %i.it = load i64, ptr %i.ff, align 16, !tbaa !231 ; 2 uses
  %.not.i371 = icmp eq i64 %i.is, %i.it
  br i1 %.not.i371, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.iu = icmp ugt i64 %i.is, %i.it
  br i1 %i.iu, label %.thread438, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE16compare_unsignedILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.bd:                                            ; preds = %bb.bb
  %i.iv = load i8, ptr %i.gk, align 1, !tbaa !75, !range !76, !noundef !77
  %i.iw = trunc nuw i8 %i.iv to i1
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8
  %i.iz = select i1 %i.iw, ptr %3, ptr %i.iy
  %i.ja = load i8, ptr %i.fw, align 1, !tbaa !75, !range !76, !noundef !77
  %i.jb = trunc nuw i8 %i.ja to i1
  %i.jc = load ptr, ptr %i.fz, align 8
  %i.jd = select i1 %i.jb, ptr %2, ptr %i.jc
  %i.je = icmp slt i64 %i.is, 1
  br i1 %i.je, label %.thread438, label %.lr.ph

bb.be:                                            ; preds = %.lr.ph
  %i.jf = icmp slt i64 %.015.in.i620, 2
  br i1 %i.jf, label %.thread438, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %bb.bd, %bb.be
  %.015.in.i620 = phi i64 [ %.015.i, %bb.be ], [ %i.is, %bb.bd ] ; 2 uses
  %.015.i = add nsw i64 %.015.in.i620, -1         ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %.015.i
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !233 ; 2 uses
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.015.i
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !233 ; 2 uses
  %.not19.i = icmp eq i64 %i.jh, %i.jj
end_hunk_0
begin_hunk_1_@_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvPT_RKT0_RKT1_RS8_:bb.a
  br label %.lr.ph487.epil

.lr.ph487.epil:                                   ; preds = %.lr.ph487.epil, %.lr.ph487.epil.preheader
  %.0240486.epil = phi i64 [ %i.pb, %.lr.ph487.epil ], [ %.0240486.epil.init, %.lr.ph487.epil.preheader ] ; 2 uses
  %epil.iter653 = phi i64 [ %epil.iter653.next, %.lr.ph487.epil ], [ 0, %.lr.ph487.epil.preheader ]
  %i.oy = load ptr, ptr %i.mj, align 8
  %i.oz = select i1 %.pre-phi553, ptr %7, ptr %i.oy
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %i.oz, i64 %.0240486.epil
  store i64 0, ptr %i.pa, align 8, !tbaa !233
  %i.pb = add nuw i64 %.0240486.epil, 1
  %epil.iter653.next = add i64 %epil.iter653, 1   ; 2 uses
  %epil.iter653.cmp.not = icmp eq i64 %epil.iter653.next, %xtraiter652
  br i1 %epil.iter653.cmp.not, label %._crit_edge488, label %.lr.ph487.epil, !llvm.loop !885

._crit_edge488:                                   ; preds = %._crit_edge488.loopexit.unr-lcssa, %.lr.ph487.epil, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit388
  %i.pc = load i8, ptr %i.mk, align 8, !tbaa !240, !range !76, !noundef !77
  %i.pd = load i8, ptr %i.lh, align 8, !tbaa !240, !range !76, !noundef !77
  %.not463 = icmp eq i8 %i.pc, %i.pd
  br i1 %.not463, label %.invoke604, label %.invoke

.invoke:                                          ; preds = %._crit_edge, %._crit_edge488
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.invoke604:                                       ; preds = %._crit_edge, %._crit_edge488
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph487:                                        ; preds = %.lr.ph487, %.lr.ph487.preheader.new
  %.0240486 = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %i.pt, %.lr.ph487 ] ; 5 uses
  %niter657 = phi i64 [ 0, %.lr.ph487.preheader.new ], [ %niter657.next.3, %.lr.ph487 ]
  %i.pe = load ptr, ptr %i.mj, align 8
  %i.pf = select i1 %.pre-phi553, ptr %7, ptr %i.pe
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.pf, i64 %.0240486
  store i64 0, ptr %i.pg, align 8, !tbaa !233
  %i.ph = load ptr, ptr %i.mj, align 8
  %i.pi = select i1 %.pre-phi553, ptr %7, ptr %i.ph
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.pi, i64 %.0240486
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  store i64 0, ptr %i.pk, align 8, !tbaa !233
  %i.pl = load ptr, ptr %i.mj, align 8
  %i.pm = select i1 %.pre-phi553, ptr %7, ptr %i.pl
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %.0240486
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  store i64 0, ptr %i.po, align 8, !tbaa !233
  %i.pp = load ptr, ptr %i.mj, align 8
  %i.pq = select i1 %.pre-phi553, ptr %7, ptr %i.pp
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pq, i64 %.0240486
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store i64 0, ptr %i.ps, align 8, !tbaa !233
  %i.pt = add nuw i64 %.0240486, 4                ; 2 uses
  %niter657.next.3 = add i64 %niter657, 4         ; 2 uses
  %niter657.ncmp.3 = icmp eq i64 %niter657.next.3, %unroll_iter656
  br i1 %niter657.ncmp.3, label %._crit_edge488.loopexit.unr-lcssa, label %.lr.ph487, !llvm.loop !886

bb.cd:                                            ; preds = %bb.bu
  %i.pu = xor i64 %i.ny, -1
  %i.pv = icmp ult i64 %.1243, %i.pu
  br i1 %i.pv, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.pw = add i64 %i.ny, %.1243
  br label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318.sink.split

bb.cf:                                            ; preds = %bb.cd
  %i.px = add i64 %i.nv, 1
  %spec.select.i389 = call i64 @llvm.umin.i64(i64 %i.px, i64 288230376151711744) ; 4 uses
  %i.py = load i8, ptr %i.li, align 1, !tbaa !75, !range !76, !noundef !77
  %i.pz = trunc nuw i8 %i.py to i1                ; 2 uses
  %i.qa = load i64, ptr %7, align 16
  %spec.select.i8.i390 = select i1 %i.pz, i64 2, i64 %i.qa ; 2 uses
  %i.qb = icmp ugt i64 %spec.select.i389, %spec.select.i8.i390
  br i1 %i.qb, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i391, label %bb.ck

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i391: ; preds = %bb.cf
  %i.qc = shl nuw nsw i64 %spec.select.i8.i390, 2
  %.sroa.speculated16.i392 = call i64 @llvm.umax.i64(i64 %i.qc, i64 %spec.select.i389)
  %.sroa.speculated.i393 = call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i392, i64 288230376151711744) ; 2 uses
  %i.qd = shl nuw nsw i64 %.sroa.speculated.i393, 3
  %i.qe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qd) #37
          to label %.noexc394 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc394:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i391
  %i.qf = load i8, ptr %i.li, align 1, !tbaa !75, !range !76, !noundef !77
  %i.qg = trunc nuw i8 %i.qf to i1                ; 2 uses
  %i.qh = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.qi = select i1 %i.qg, ptr %7, ptr %i.qh
  %i.qj = load i64, ptr %i.lg, align 16, !tbaa !231
  %i.qk = shl i64 %i.qj, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.qe, ptr align 8 %i.qi, i64 %i.qk, i1 false)
  br i1 %i.qg, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %.noexc394
  %i.ql = load i8, ptr %i.lj, align 2, !tbaa !241, !range !76, !noundef !77
  %i.qm = trunc nuw i8 %i.ql to i1
  br i1 %i.qm, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qn = load i64, ptr %7, align 16
  %i.qo = shl i64 %i.qn, 3
  call void @_ZdlPvm(ptr noundef %i.qh, i64 noundef %i.qo) #35
  br label %bb.cj

bb.ci:                                            ; preds = %bb.cg, %.noexc394
  store i8 0, ptr %i.li, align 1, !tbaa !75
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  store i64 %spec.select.i389, ptr %i.lg, align 16, !tbaa !231
  store i64 %.sroa.speculated.i393, ptr %7, align 16, !tbaa !86
  store ptr %i.qe, ptr %i.mj, align 8, !tbaa !86
  %.pre527 = load i8, ptr %i.li, align 1, !tbaa !75, !range !76
  %.pre554 = trunc nuw i8 %.pre527 to i1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit395

bb.ck:                                            ; preds = %bb.cf
  store i64 %spec.select.i389, ptr %i.lg, align 16, !tbaa !231
  %.pre528 = load ptr, ptr %i.mj, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit395

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit395: ; preds = %bb.ck, %bb.cj
  %.pre-phi555 = phi i1 [ %i.pz, %bb.ck ], [ %.pre554, %bb.cj ] ; 6 uses
  %i.qp = phi ptr [ %.pre528, %bb.ck ], [ %i.qe, %bb.cj ]
  %i.qq = select i1 %.pre-phi555, ptr %7, ptr %i.qp
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.nv
  store i64 %.1243, ptr %i.qr, align 8, !tbaa !233
  %.not503 = icmp eq i64 %.2254, %i.fh
  br i1 %.not503, label %._crit_edge, label %.lr.ph485.preheader

.lr.ph485.preheader:                              ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit395
  %i.qs = sub i64 %.2254, %i.fg
  %xtraiter = and i64 %i.nv, 3                    ; 3 uses
  %i.qt = icmp ult i64 %i.qs, 3
  br i1 %i.qt, label %.lr.ph485.epil.preheader, label %.lr.ph485.preheader.new

.lr.ph485.preheader.new:                          ; preds = %.lr.ph485.preheader
  %unroll_iter = and i64 %i.nv, -4
  br label %.lr.ph485

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph485
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph485.epil.preheader

.lr.ph485.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph485.preheader
  %.0239484.epil.init = phi i64 [ 0, %.lr.ph485.preheader ], [ %i.rp, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod651 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod651)
  br label %.lr.ph485.epil

.lr.ph485.epil:                                   ; preds = %.lr.ph485.epil, %.lr.ph485.epil.preheader
  %.0239484.epil = phi i64 [ %i.qx, %.lr.ph485.epil ], [ %.0239484.epil.init, %.lr.ph485.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph485.epil ], [ 0, %.lr.ph485.epil.preheader ]
  %i.qu = load ptr, ptr %i.mj, align 8
  %i.qv = select i1 %.pre-phi555, ptr %7, ptr %i.qu
  %i.qw = getelementptr inbounds nuw [8 x i8], ptr %i.qv, i64 %.0239484.epil
  store i64 0, ptr %i.qw, align 8, !tbaa !233
  %i.qx = add nuw i64 %.0239484.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph485.epil, !llvm.loop !887

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph485.epil, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit395
  %i.qy = load i8, ptr %i.mk, align 8, !tbaa !240, !range !76, !noundef !77
  %i.qz = load i8, ptr %i.lh, align 8, !tbaa !240, !range !76, !noundef !77
  %.not.i396 = icmp eq i8 %i.qy, %i.qz
  br i1 %.not.i396, label %.invoke, label %.invoke604

.lr.ph485:                                        ; preds = %.lr.ph485, %.lr.ph485.preheader.new
  %.0239484 = phi i64 [ 0, %.lr.ph485.preheader.new ], [ %i.rp, %.lr.ph485 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph485.preheader.new ], [ %niter.next.3, %.lr.ph485 ]
  %i.ra = load ptr, ptr %i.mj, align 8
  %i.rb = select i1 %.pre-phi555, ptr %7, ptr %i.ra
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %.0239484
  store i64 0, ptr %i.rc, align 8, !tbaa !233
  %i.rd = load ptr, ptr %i.mj, align 8
  %i.re = select i1 %.pre-phi555, ptr %7, ptr %i.rd
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.re, i64 %.0239484
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  store i64 0, ptr %i.rg, align 8, !tbaa !233
  %i.rh = load ptr, ptr %i.mj, align 8
  %i.ri = select i1 %.pre-phi555, ptr %7, ptr %i.rh
  %i.rj = getelementptr inbounds nuw [8 x i8], ptr %i.ri, i64 %.0239484
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 16
  store i64 0, ptr %i.rk, align 8, !tbaa !233
  %i.rl = load ptr, ptr %i.mj, align 8
  %i.rm = select i1 %.pre-phi555, ptr %7, ptr %i.rl
  %i.rn = getelementptr inbounds nuw [8 x i8], ptr %i.rm, i64 %.0239484
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 24
  store i64 0, ptr %i.ro, align 8, !tbaa !233
  %i.rp = add nuw i64 %.0239484, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph485, !llvm.loop !888

_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318.sink.split: ; preds = %bb.ce, %bb.bw
  %.sink = phi i64 [ %i.oa, %bb.bw ], [ %i.pw, %bb.ce ]
  store i64 %.sink, ptr %i.nx, align 8, !tbaa !233
  br label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318

_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318: ; preds = %.invoke604, %.invoke, %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318.sink.split, %bb.bt
  %i.rq = load i64, ptr %i.ff, align 16, !tbaa !231 ; 2 uses
  %i.rr = add i64 %i.nv, 1                        ; 2 uses
  %i.rs = add i64 %i.rr, %i.rq                    ; 2 uses
  %spec.select.i399 = call i64 @llvm.umin.i64(i64 %i.rs, i64 288230376151711744) ; 7 uses
  %i.rt = load i8, ptr %i.li, align 1, !tbaa !75, !range !76, !noundef !77
  %i.ru = trunc nuw i8 %i.rt to i1                ; 2 uses
  %i.rv = load i64, ptr %7, align 16
  %spec.select.i8.i400 = select i1 %i.ru, i64 2, i64 %i.rv ; 2 uses
  %i.rw = icmp ugt i64 %spec.select.i399, %spec.select.i8.i400
  br i1 %i.rw, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i401, label %bb.cp

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i401: ; preds = %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318
  %i.rx = shl nuw nsw i64 %spec.select.i8.i400, 2
  %.sroa.speculated16.i402 = call i64 @llvm.umax.i64(i64 %i.rx, i64 %spec.select.i399)
  %.sroa.speculated.i403 = call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i402, i64 288230376151711744) ; 2 uses
  %i.ry = shl nuw nsw i64 %.sroa.speculated.i403, 3
  %i.rz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ry) #37
          to label %.noexc404 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc404:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i401
  %i.sa = load i8, ptr %i.li, align 1, !tbaa !75, !range !76, !noundef !77
  %i.sb = trunc nuw i8 %i.sa to i1                ; 2 uses
  %i.sc = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.sd = select i1 %i.sb, ptr %7, ptr %i.sc
  %i.se = load i64, ptr %i.lg, align 16, !tbaa !231
  %i.sf = shl i64 %i.se, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.rz, ptr align 8 %i.sd, i64 %i.sf, i1 false)
  br i1 %i.sb, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %.noexc404
  %i.sg = load i8, ptr %i.lj, align 2, !tbaa !241, !range !76, !noundef !77
  %i.sh = trunc nuw i8 %i.sg to i1
  br i1 %i.sh, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.si = load i64, ptr %7, align 16
  %i.sj = shl i64 %i.si, 3
  call void @_ZdlPvm(ptr noundef %i.sc, i64 noundef %i.sj) #35
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl, %.noexc404
  store i8 0, ptr %i.li, align 1, !tbaa !75
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  store i64 %spec.select.i399, ptr %i.lg, align 16, !tbaa !231
  store i64 %.sroa.speculated.i403, ptr %7, align 16, !tbaa !86
  store ptr %i.rz, ptr %i.mj, align 8, !tbaa !86
  %.pre532 = load i64, ptr %i.ff, align 16, !tbaa !231 ; 2 uses
  %.pre532.a = load i8, ptr %i.li, align 1, !tbaa !75, !range !76
  %.pre551 = add i64 %i.rr, %.pre532
  %.pre550 = trunc nuw i8 %.pre532.a to i1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405

bb.cp:                                            ; preds = %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit318
  store i64 %spec.select.i399, ptr %i.lg, align 16, !tbaa !231
  %.pre533 = load ptr, ptr %i.mj, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405: ; preds = %bb.cp, %bb.co
  %.pre-phi551 = phi i1 [ %i.ru, %bb.cp ], [ %.pre550, %bb.co ] ; 2 uses
  %.pre-phi552 = phi i64 [ %i.rs, %bb.cp ], [ %.pre551, %bb.co ]
  %8 = phi ptr [ %.pre533, %bb.cp ], [ %i.rz, %bb.co ]
  %9 = phi i64 [ %i.rq, %bb.cp ], [ %.pre532, %bb.co ] ; 5 uses
  %i.sk = icmp ne i64 %spec.select.i399, %.pre-phi552 ; 3 uses
  %i.sl = select i1 %.pre-phi551, ptr %7, ptr %8  ; 3 uses
  %.not505 = icmp eq i64 %.2254, %i.fh
  br i1 %.not505, label %.preheader470, label %.lr.ph490.preheader

.lr.ph490.preheader:                              ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405
  %i.sm = shl nuw i64 %i.nv, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.sl, i8 0, i64 %i.sm, i1 false), !tbaa !233
  br label %.preheader470

.preheader470:                                    ; preds = %.lr.ph490.preheader, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit405
  %invariant.gep = getelementptr [8 x i8], ptr %i.sl, i64 %i.nv ; 3 uses
  %.not506 = icmp eq i64 %9, 0
  br i1 %.not506, label %._crit_edge494.thread, label %.lr.ph493

.lr.ph493:                                        ; preds = %.preheader470
  %i.sn = zext i64 %.1243 to i128                 ; 3 uses
  %xtraiter658 = and i64 %9, 1
  %i.so = icmp eq i64 %9, 1
  br i1 %i.so, label %.epil.preheader, label %.lr.ph493.new

.lr.ph493.new:                                    ; preds = %.lr.ph493
  %unroll_iter663 = and i64 %9, -2
  br label %bb.cq

._crit_edge494.unr-lcssa:                         ; preds = %bb.cq
  %lcmp.mod660.not = icmp eq i64 %xtraiter658, 0
  br i1 %lcmp.mod660.not, label %._crit_edge494, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge494.unr-lcssa, %.lr.ph493
  %.0236492.epil.init = phi i64 [ 0, %.lr.ph493 ], [ %i.tm, %._crit_edge494.unr-lcssa ] ; 2 uses
  %.0238491.epil.init = phi i128 [ 0, %.lr.ph493 ], [ %i.tl, %._crit_edge494.unr-lcssa ]
  %lcmp.mod662 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod662)
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.0236492.epil.init
  %i.sq = load i64, ptr %i.sp, align 8, !tbaa !233
  %i.sr = zext i64 %i.sq to i128
  %i.ss = mul nuw i128 %i.sr, %i.sn
  %i.st = add nuw i128 %i.ss, %.0238491.epil.init ; 2 uses
  %i.su = trunc i128 %i.st to i64
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0236492.epil.init
  store i64 %i.su, ptr %gep.epil, align 8, !tbaa !233
  %i.sv = lshr i128 %i.st, 64
  br label %._crit_edge494

._crit_edge494:                                   ; preds = %._crit_edge494.unr-lcssa, %.epil.preheader
  %.lcssa = phi i128 [ %i.tl, %._crit_edge494.unr-lcssa ], [ %i.sv, %.epil.preheader ] ; 2 uses
  %i.sw = icmp eq i128 %.lcssa, 0                 ; 3 uses
  %or.cond3 = or i1 %i.sk, %i.sw
  br i1 %or.cond3, label %._crit_edge494.thread, label %bb.cr

bb.cq:                                            ; preds = %bb.cq, %.lr.ph493.new
  %.0236492 = phi i64 [ 0, %.lr.ph493.new ], [ %i.tm, %bb.cq ] ; 4 uses
  %.0238491 = phi i128 [ 0, %.lr.ph493.new ], [ %i.tl, %bb.cq ]
  %niter664 = phi i64 [ 0, %.lr.ph493.new ], [ %niter664.next.1, %bb.cq ]
  %i.sx = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %.0236492
  %i.sy = load i64, ptr %i.sx, align 8, !tbaa !233
  %i.sz = zext i64 %i.sy to i128
  %i.ta = mul nuw i128 %i.sz, %i.sn
  %i.tb = add nuw i128 %i.ta, %.0238491           ; 2 uses
  %i.tc = trunc i128 %i.tb to i64
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0236492
  store i64 %i.tc, ptr %gep, align 8, !tbaa !233
  %i.td = lshr i128 %i.tb, 64
  %i.te = or disjoint i64 %.0236492, 1            ; 2 uses
  %i.tf = getelementptr inbounds nuw [8 x i8], ptr %i.gb, i64 %i.te
  %i.tg = load i64, ptr %i.tf, align 8, !tbaa !233
  %i.th = zext i64 %i.tg to i128
  %i.ti = mul nuw i128 %i.th, %i.sn
  %i.tj = add nuw i128 %i.ti, %i.td               ; 2 uses
  %i.tk = trunc i128 %i.tj to i64
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.te
  store i64 %i.tk, ptr %gep.1, align 8, !tbaa !233
  %i.tl = lshr i128 %i.tj, 64                     ; 3 uses
  %i.tm = add nuw i64 %.0236492, 2                ; 2 uses
  %niter664.next.1 = add nuw i64 %niter664, 2     ; 2 uses
  %niter664.ncmp.1 = icmp eq i64 %niter664.next.1, %unroll_iter663
  br i1 %niter664.ncmp.1, label %._crit_edge494.unr-lcssa, label %bb.cq, !llvm.loop !889

bb.cr:                                            ; preds = %._crit_edge494
  %i.tn = trunc nuw i128 %.lcssa to i64
  %i.to = getelementptr [8 x i8], ptr %i.sl, i64 %spec.select.i399
  %i.tp = getelementptr i8, ptr %i.to, i64 -8
  store i64 %i.tn, ptr %i.tp, align 8, !tbaa !233
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412

._crit_edge494.thread:                            ; preds = %.preheader470, %._crit_edge494
  %i.tq = phi i1 [ %i.sw, %._crit_edge494 ], [ true, %.preheader470 ]
  br i1 %i.sk, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412, label %bb.cs

bb.cs:                                            ; preds = %._crit_edge494.thread
  %i.tr = add nsw i64 %spec.select.i399, -1
  %spec.select.i406 = call i64 @llvm.umin.i64(i64 %i.tr, i64 288230376151711744) ; 4 uses
  %i.ts = load i64, ptr %7, align 16
  %spec.select.i8.i407 = select i1 %.pre-phi551, i64 2, i64 %i.ts ; 2 uses
  %i.tt = icmp ugt i64 %spec.select.i406, %spec.select.i8.i407
  br i1 %i.tt, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408, label %bb.cx

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408: ; preds = %bb.cs
  %i.tu = shl nuw nsw i64 %spec.select.i8.i407, 2
  %.sroa.speculated16.i409 = call i64 @llvm.umax.i64(i64 %i.tu, i64 %spec.select.i406)
  %.sroa.speculated.i410 = call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i409, i64 288230376151711744) ; 2 uses
  %i.tv = shl nuw nsw i64 %.sroa.speculated.i410, 3
  %i.tw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tv) #37
          to label %.noexc411 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc411:                                        ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408
  %i.tx = load i8, ptr %i.li, align 1, !tbaa !75, !range !76, !noundef !77
  %i.ty = trunc nuw i8 %i.tx to i1                ; 2 uses
  %i.tz = load ptr, ptr %i.mj, align 8            ; 2 uses
  %i.ua = select i1 %i.ty, ptr %7, ptr %i.tz
  %i.ub = load i64, ptr %i.lg, align 16, !tbaa !231
  %i.uc = shl i64 %i.ub, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.tw, ptr align 8 %i.ua, i64 %i.uc, i1 false)
  br i1 %i.ty, label %bb.cv, label %bb.ct

bb.ct:                                            ; preds = %.noexc411
  %i.ud = load i8, ptr %i.lj, align 2, !tbaa !241, !range !76, !noundef !77
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uf = load i64, ptr %7, align 16
  %i.ug = shl i64 %i.uf, 3
  call void @_ZdlPvm(ptr noundef %i.tz, i64 noundef %i.ug) #35
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct, %.noexc411
  store i8 0, ptr %i.li, align 1, !tbaa !75
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  store i64 %spec.select.i406, ptr %i.lg, align 16, !tbaa !231
  store i64 %.sroa.speculated.i410, ptr %7, align 16, !tbaa !86
  store ptr %i.tw, ptr %i.mj, align 8, !tbaa !86
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread

bb.cx:                                            ; preds = %bb.cs
  store i64 %spec.select.i406, ptr %i.lg, align 16, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i421, %bb.dk, %bb.dj, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i408, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i401, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i391, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i384, %bb.dg, %bb.df, %bb.dr, %bb.dq, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread595, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread, %.invoke, %.invoke604, %.invoke606, %.invoke605, %bb.ei, %bb.eh, %bb.bm
  %lpad.loopexit.split-lp632 = landingpad { ptr, i32 }
          cleanup
  %i.uh = load i8, ptr %i.li, align 1, !tbaa !75, !range !76, !noundef !77
  %i.ui = trunc nuw i8 %i.uh to i1
  %i.uj = load i8, ptr %i.lj, align 2, !range !76
  %i.uk = trunc nuw i8 %i.uj to i1
  %or.cond.i = select i1 %i.ui, i1 true, i1 %i.uk
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.cy

bb.cy:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ul = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.um = load ptr, ptr %i.ul, align 8
  %i.un = load i64, ptr %7, align 16
  %i.uo = shl i64 %i.un, 3
  call void @_ZdlPvm(ptr noundef %i.um, i64 noundef %i.uo) #35
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %common.resume

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412: ; preds = %._crit_edge494.thread, %bb.cr
  %i.up = phi i1 [ %i.tq, %._crit_edge494.thread ], [ %i.sw, %bb.cr ]
  %.not534 = xor i1 %i.up, true
  %or.cond5 = and i1 %i.sk, %.not534
  br i1 %or.cond5, label %.preheader469, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread

.preheader469:                                    ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412
  %i.uq = load i8, ptr %i.gk, align 1, !tbaa !75, !range !76, !noundef !77
  %i.ur = trunc nuw i8 %i.uq to i1                ; 3 uses
  %i.us = add i64 %.2254, 1                       ; 2 uses
  %umax522 = call i64 @llvm.umax.i64(i64 %i.us, i64 1) ; 3 uses
  %xtraiter666 = and i64 %umax522, 1
  %i.ut = icmp ult i64 %i.us, 2
  br i1 %i.ut, label %.epil.preheader665, label %.preheader469.new

.preheader469.new:                                ; preds = %.preheader469
  %unroll_iter670 = and i64 %umax522, -2
  br label %bb.dh

.unr-lcssa:                                       ; preds = %bb.dh
  %lcmp.mod668.not = icmp eq i64 %xtraiter666, 0
  br i1 %lcmp.mod668.not, label %bb.cz, label %.epil.preheader665

.epil.preheader665:                               ; preds = %.unr-lcssa, %.preheader469
  %.0495.epil.init = phi i64 [ 0, %.preheader469 ], [ %i.wf, %.unr-lcssa ] ; 2 uses
  %lcmp.mod669 = trunc i64 %umax522 to i1
  call void @llvm.assume(i1 %lcmp.mod669)
  %i.uu = getelementptr inbounds nuw [8 x i8], ptr %.0248, i64 %.0495.epil.init
  %i.uv = load i64, ptr %i.uu, align 8, !tbaa !233
  %i.uw = xor i64 %i.uv, -1
  %i.ux = load ptr, ptr %i.mf, align 8
  %i.uy = select i1 %i.ur, ptr %3, ptr %i.ux
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uy, i64 %.0495.epil.init
  store i64 %i.uw, ptr %i.uz, align 8, !tbaa !233
  br label %bb.cz

bb.cz:                                            ; preds = %.unr-lcssa, %.epil.preheader665
  %10 = load i8, ptr %i.gk, align 1, !tbaa !75, !range !76, !noundef !77
  %11 = trunc nuw i8 %10 to i1                    ; 2 uses
  %i.va = load ptr, ptr %i.mf, align 8
  %i.vb = select i1 %11, ptr %3, ptr %i.va        ; 5 uses
  %.pr = load i64, ptr %i.gi, align 16, !tbaa !231 ; 2 uses
  %i.vc = add i64 %.pr, -1                        ; 3 uses
  %.not.i496 = icmp eq i64 %i.vc, 0
  br i1 %.not.i496, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit, label %.lr.ph498.preheader

.lr.ph498.preheader:                              ; preds = %bb.cz
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.vc
  %i.ve = load i64, ptr %i.vd, align 8, !tbaa !233
  %.not2.i625 = icmp eq i64 %i.ve, 0
  br i1 %.not2.i625, label %.lr.ph626, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

.lr.ph498:                                        ; preds = %.lr.ph626
  %i.vf = getelementptr inbounds nuw [8 x i8], ptr %i.vb, i64 %i.vi
  %i.vg = load i64, ptr %i.vf, align 8, !tbaa !233
  %.not2.i = icmp eq i64 %i.vg, 0
  br i1 %.not2.i, label %.lr.ph626, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, !llvm.loop !12

.lr.ph626:                                        ; preds = %.lr.ph498.preheader, %.lr.ph498
  %i.vh = phi i64 [ %i.vi, %.lr.ph498 ], [ %i.vc, %.lr.ph498.preheader ] ; 4 uses
  %i.vi = add i64 %i.vh, -1                       ; 3 uses
  %.not.i = icmp eq i64 %i.vi, 0
  br i1 %.not.i, label %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, label %.lr.ph498, !llvm.loop !12

._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge: ; preds = %.lr.ph626
  store i64 %i.vh, ptr %i.gi, align 16, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, !llvm.loop !12

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit: ; preds = %.lr.ph498
  store i64 %i.vh, ptr %i.gi, align 16, !tbaa !231
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge, %.lr.ph498.preheader
  %.lcssa476.ph = phi i64 [ %.pr, %.lr.ph498.preheader ], [ 1, %._ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit_crit_edge ], [ %i.vh, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit.loopexit ]
  %i.vj = icmp eq i64 %.lcssa476.ph, 1
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit, %bb.cz
  %.lcssa476 = phi i1 [ true, %bb.cz ], [ %i.vj, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 1, ptr %i.b, align 8, !tbaa !233
  %i.vk = load i8, ptr %i.hl, align 8, !tbaa !240, !range !76, !noundef !77
  %i.vl = trunc nuw i8 %i.vk to i1
  %i.vm = load i64, ptr %i.vb, align 8, !tbaa !233 ; 4 uses
  br i1 %i.vl, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %.not.i332 = icmp eq i64 %i.vm, -1
  br i1 %.not.i332, label %bb.dg, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.vn = add nuw i64 %i.vm, 1
  store i64 %i.vn, ptr %i.vb, align 8, !tbaa !233
  br label %bb.di

bb.dc:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE9normalizeEv.exit
  %.not10.i = icmp eq i64 %i.vm, 0
  br i1 %.not10.i, label %bb.df, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vo = add i64 %i.vm, -1
  store i64 %i.vo, ptr %i.vb, align 8, !tbaa !233
  %i.vp = load ptr, ptr %i.mf, align 8
  %i.vq = select i1 %11, ptr %3, ptr %i.vp
  %i.vr = load i64, ptr %i.vq, align 8, !tbaa !233
  %.not11.i = icmp eq i64 %i.vr, 0
  %or.cond458 = and i1 %.lcssa476, %.not11.i
  br i1 %or.cond458, label %bb.de, label %bb.di

bb.de:                                            ; preds = %bb.dd
  store i8 0, ptr %i.hl, align 8, !tbaa !240
  br label %bb.di

bb.df:                                            ; preds = %bb.dc
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dg:                                            ; preds = %bb.da
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.di unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dh:                                            ; preds = %bb.dh, %.preheader469.new
  %.0495 = phi i64 [ 0, %.preheader469.new ], [ %i.wf, %bb.dh ] ; 4 uses
  %niter671 = phi i64 [ 0, %.preheader469.new ], [ %niter671.next.1, %bb.dh ]
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %.0248, i64 %.0495
  %i.vt = load i64, ptr %i.vs, align 8, !tbaa !233
  %i.vu = xor i64 %i.vt, -1
  %i.vv = load ptr, ptr %i.mf, align 8
  %i.vw = select i1 %i.ur, ptr %3, ptr %i.vv
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %i.vw, i64 %.0495
  store i64 %i.vu, ptr %i.vx, align 8, !tbaa !233
  %i.vy = or disjoint i64 %.0495, 1               ; 2 uses
  %i.vz = getelementptr inbounds nuw [8 x i8], ptr %.0248, i64 %i.vy
  %i.wa = load i64, ptr %i.vz, align 8, !tbaa !233
  %i.wb = xor i64 %i.wa, -1
  %i.wc = load ptr, ptr %i.mf, align 8
  %i.wd = select i1 %i.ur, ptr %3, ptr %i.wc
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %i.wd, i64 %i.vy
  store i64 %i.wb, ptr %i.we, align 8, !tbaa !233
  %i.wf = add nuw i64 %.0495, 2                   ; 2 uses
  %niter671.next.1 = add i64 %niter671, 2         ; 2 uses
  %niter671.ncmp.1 = icmp eq i64 %niter671.next.1, %unroll_iter670
  br i1 %niter671.ncmp.1, label %.unr-lcssa, label %bb.dh, !llvm.loop !890

bb.di:                                            ; preds = %bb.de, %bb.dd, %bb.db, %bb.dg, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  %i.wg = load i8, ptr %i.hl, align 8, !tbaa !240, !range !76, !noundef !77
  %i.wh = load i8, ptr %i.lh, align 8, !tbaa !240, !range !76, !noundef !77
  %.not.i414 = icmp eq i8 %i.wg, %i.wh
  br i1 %.not.i414, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dk:                                            ; preds = %bb.di
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit: ; preds = %bb.dk, %bb.dj
  %i.wi = xor i8 %.0250, 1
  br label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread: ; preds = %bb.cw, %bb.cx, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412
  %i.wj = load i8, ptr %i.hl, align 8, !tbaa !240, !range !76, !noundef !77 ; 4 uses
  %i.wk = trunc nuw i8 %i.wj to i1                ; 2 uses
  %i.wl = load i8, ptr %i.lh, align 8, !tbaa !240, !range !76, !noundef !77 ; 2 uses
  %.not.i.i = icmp eq i8 %i.wj, %i.wl             ; 2 uses
  br i1 %.not.i.i, label %bb.dm, label %bb.dl

bb.dl:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread
  br i1 %i.wk, label %._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread

._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge: ; preds = %bb.dl
  %.pre535 = load i64, ptr %i.gi, align 16, !tbaa !93
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446

bb.dm:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit412.thread
  %i.wm = load i64, ptr %i.gi, align 16, !tbaa !231 ; 6 uses
  %i.wn = load i64, ptr %i.lg, align 16, !tbaa !231 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.wm, %i.wn
  br i1 %.not.i.i.i, label %bb.dn, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread592

bb.dn:                                            ; preds = %bb.dm
  %i.wo = load i8, ptr %i.gk, align 1, !tbaa !75, !range !76, !noundef !77
  %i.wp = trunc nuw i8 %i.wo to i1
  %i.wq = load ptr, ptr %i.mf, align 8
  %i.wr = select i1 %i.wp, ptr %3, ptr %i.wq
  %i.ws = load i8, ptr %i.li, align 1, !tbaa !75, !range !76, !noundef !77
  %i.wt = trunc nuw i8 %i.ws to i1
  %i.wu = load ptr, ptr %i.mj, align 8
  %i.wv = select i1 %i.wt, ptr %7, ptr %i.wu
  %i.ww = icmp slt i64 %i.wm, 1
  br i1 %i.ww, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph624

bb.do:                                            ; preds = %.lr.ph624
  %i.wx = icmp slt i64 %.015.in.i.i.i622, 2
  br i1 %i.wx, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph624, !llvm.loop !13

.lr.ph624:                                        ; preds = %bb.dn, %bb.do
  %.015.in.i.i.i622 = phi i64 [ %.015.i.i.i, %bb.do ], [ %i.wm, %bb.dn ] ; 2 uses
  %.015.i.i.i = add nsw i64 %.015.in.i.i.i622, -1 ; 3 uses
  %i.wy = getelementptr inbounds nuw [8 x i8], ptr %i.wr, i64 %.015.i.i.i
  %i.wz = load i64, ptr %i.wy, align 8, !tbaa !233 ; 2 uses
  %i.xa = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %.015.i.i.i
  %i.xb = load i64, ptr %i.xa, align 8, !tbaa !233 ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.wz, %i.xb
  br i1 %.not19.i.i.i, label %bb.do, label %bb.dp, !llvm.loop !13

bb.dp:                                            ; preds = %.lr.ph624
  %i.xc = icmp ugt i64 %i.wz, %i.xb
  %i.xd = select i1 %i.xc, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit: ; preds = %bb.do, %bb.dn, %bb.dp
  %.2.i.i.i = phi i32 [ %i.xd, %bb.dp ], [ 0, %bb.dn ], [ 0, %bb.do ] ; 2 uses
  %i.xe = sub nsw i32 0, %.2.i.i.i
  %spec.select.i.i418 = select i1 %i.wk, i32 %i.xe, i32 %.2.i.i.i
  %i.xf = icmp sgt i32 %spec.select.i.i418, 0
  br i1 %i.xf, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread595, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread592: ; preds = %bb.dm
  %i.xg = icmp ugt i64 %i.wm, %i.wn
  %i.xh = trunc nuw i8 %i.wj to i1
  %i.xi = xor i1 %i.xg, %i.xh
  br i1 %i.xi, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread595, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread: ; preds = %bb.dl
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread595: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread592
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread592, %._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %i.xj = phi i64 [ %.pre535, %._ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446_crit_edge ], [ %i.wm, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit ], [ %i.wm, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread592 ]
  %.sroa.0.0.copyload.i = load i128, ptr %3, align 16, !tbaa !86
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7, i64 16, i1 false), !tbaa.struct !261
  store i128 %.sroa.0.0.copyload.i, ptr %7, align 16, !tbaa !86
  store i8 %i.wl, ptr %i.hl, align 8, !tbaa !262
  store i8 %i.wj, ptr %i.lh, align 8, !tbaa !262
  %i.xk = load i8, ptr %i.gk, align 1, !tbaa !262, !range !76, !noundef !77
  %i.xl = load i8, ptr %i.li, align 1, !tbaa !262, !range !76, !noundef !77
  store i8 %i.xl, ptr %i.gk, align 1, !tbaa !262
  store i8 %i.xk, ptr %i.li, align 1, !tbaa !262
  %i.xm = load i64, ptr %i.lg, align 8, !tbaa !93
  store i64 %i.xm, ptr %i.gi, align 16, !tbaa !93
  store i64 %i.xj, ptr %i.lg, align 8, !tbaa !93
  %i.xn = load i8, ptr %i.ml, align 2, !tbaa !262, !range !76, !noundef !77
  %i.xo = load i8, ptr %i.lj, align 1, !tbaa !262, !range !76, !noundef !77
  store i8 %i.xo, ptr %i.ml, align 2, !tbaa !262
  store i8 %i.xn, ptr %i.lj, align 1, !tbaa !262
  br i1 %.not.i.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.dr:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread446
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvRT_RKT0_RKT1_(ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %3, ptr noundef nonnull align 16 dereferenceable(27) %7)
          to label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316: ; preds = %bb.dr, %bb.dq
  %i.xp = load i8, ptr %i.gk, align 1, !tbaa !75, !range !76, !noundef !77
  %i.xq = trunc nuw i8 %i.xp to i1
  %i.xr = load ptr, ptr %i.mf, align 8
  %i.xs = select i1 %i.xq, ptr %3, ptr %i.xr
  %i.xt = xor i8 %.0250, 1
  br label %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317

_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317: ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread595, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread, %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316, %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit
  %.1251 = phi i8 [ %i.wi, %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit ], [ %i.xt, %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 ], [ %.0250, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread ], [ %.0250, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread595 ] ; 2 uses
  %.1249 = phi ptr [ %.0248, %_ZN5boost14multiprecision8backends8eval_addILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit ], [ %i.xs, %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit316 ], [ %.0248, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread ], [ %.0248, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread.thread595 ]
  %or.cond7 = select i1 %i.hm, i1 %.0244, i1 false
  br i1 %or.cond7, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %_ZN5boost14multiprecision8backends13eval_subtractILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valueEvE4typeERS9_RKSB_.exit317
  %i.xu = load i64, ptr %i.mm, align 16, !tbaa !231 ; 2 uses
  %i.xv = getelementptr [8 x i8], ptr %.0247, i64 %i.xu
  %i.xw = getelementptr i8, ptr %i.xv, i64 -8
  %i.xx = load i64, ptr %i.xw, align 8, !tbaa !233
  %i.xy = icmp eq i64 %i.xx, 0
  br i1 %i.xy, label %.lr.ph502.preheader, label %.loopexit

.lr.ph502.preheader:                              ; preds = %.preheader
  %.pre536 = load i64, ptr %0, align 16
  br label %.lr.ph502

.lr.ph502:                                        ; preds = %.lr.ph502.preheader, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit425
  %i.xz = phi i64 [ %i.ys, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit425 ], [ %.pre536, %.lr.ph502.preheader ] ; 2 uses
  %i.ya = phi i64 [ %spec.select.i419, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit425 ], [ %i.xu, %.lr.ph502.preheader ]
  %i.yb = add i64 %i.ya, -1
  %spec.select.i419 = call i64 @llvm.umin.i64(i64 %i.yb, i64 288230376151711744) ; 6 uses
  %i.yc = load i8, ptr %i.mn, align 1, !tbaa !75, !range !76, !noundef !77
  %i.yd = trunc nuw i8 %i.yc to i1
  %spec.select.i8.i420 = select i1 %i.yd, i64 2, i64 %i.xz ; 2 uses
  %i.ye = icmp ugt i64 %spec.select.i419, %spec.select.i8.i420
  br i1 %i.ye, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i421, label %bb.dw

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i421: ; preds = %.lr.ph502
  %i.yf = shl nuw nsw i64 %spec.select.i8.i420, 2
  %.sroa.speculated16.i422 = call i64 @llvm.umax.i64(i64 %i.yf, i64 %spec.select.i419)
  %.sroa.speculated.i423 = call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i422, i64 288230376151711744) ; 3 uses
end_hunk_1
