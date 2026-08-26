Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/signed_distance_isosurface?download=true
inline.NumInlined: 15413
inline.NumDeleted: 5213
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 50
loop-unroll.NumUnrolled: 86
begin_hunk_0_@_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors24Construct_circumcenter_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Point_3IS1_EESS_SS_SS_EEEDcDpRKT_:bb.a

bb.y:                                             ; preds = %_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit
  %i.ck = shl i64 %i.bz, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(192) %i.bv, ptr nonnull align 16 dereferenceable(192) %17, i64 %i.ck, i1 false)
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i

bb.z:                                             ; preds = %_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(192) %i.bv, ptr noundef nonnull align 16 dereferenceable(192) %17, i64 16, i1 false), !tbaa.struct !285
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i: ; preds = %bb.z, %bb.y
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bv, i64 32 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %17, i64 32 ; 2 uses
  store i64 0, ptr %i.cl, align 16, !tbaa !24
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %17, i64 48
  %i.cp = load i64, ptr %i.co, align 16, !tbaa !214 ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 16, !tbaa !214
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 56
  %i.cr = getelementptr inbounds nuw i8, ptr %17, i64 56
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !222, !range !13, !noundef !14
  store i8 %i.cs, ptr %i.cq, align 8, !tbaa !222
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 57
  %i.cu = getelementptr inbounds nuw i8, ptr %17, i64 57
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bv, i64 58
  %i.cx = getelementptr inbounds nuw i8, ptr %17, i64 58
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !223, !range !13, !noundef !14
  store i8 %i.cy, ptr %i.cw, align 2, !tbaa !223
  %i.cz = trunc nuw i8 %i.cv to i1
  br i1 %i.cz, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i
  %i.da = shl i64 %i.cp, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.cl, ptr nonnull align 16 dereferenceable(27) %i.cm, i64 %i.da, i1 false)
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i

bb.ab:                                            ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EEC2EOS6_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.cl, ptr noundef nonnull align 16 dereferenceable(27) %i.cm, i64 16, i1 false), !tbaa.struct !285
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i: ; preds = %bb.ab, %bb.aa
  %i.db = getelementptr inbounds nuw i8, ptr %i.bv, i64 64 ; 2 uses
  store i64 0, ptr %i.db, align 16, !tbaa !24
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.dd = getelementptr inbounds nuw i8, ptr %17, i64 80
  %i.de = load i64, ptr %i.dd, align 16, !tbaa !214 ; 2 uses
  store i64 %i.de, ptr %i.dc, align 16, !tbaa !214
  %i.df = getelementptr inbounds nuw i8, ptr %i.bv, i64 88
  %i.dg = getelementptr inbounds nuw i8, ptr %17, i64 88
  %i.dh = load i8, ptr %i.dg, align 8, !tbaa !222, !range !13, !noundef !14
  store i8 %i.dh, ptr %i.df, align 8, !tbaa !222
  %i.di = getelementptr inbounds nuw i8, ptr %i.bv, i64 89
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 89
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.dk, ptr %i.di, align 1, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bv, i64 90
  %i.dm = getelementptr inbounds nuw i8, ptr %17, i64 90
  %i.dn = load i8, ptr %i.dm, align 2, !tbaa !223, !range !13, !noundef !14
  store i8 %i.dn, ptr %i.dl, align 2, !tbaa !223
  %i.do = trunc nuw i8 %i.dk to i1
  %i.dp = shl i64 %i.de, 3
  %.sink = select i1 %i.do, i64 %i.dp, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.db, ptr nonnull align 16 dereferenceable(64) %i.bf, i64 %.sink, i1 false)
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bv, i64 96 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %17, i64 96
  store i64 0, ptr %i.dq, align 16, !tbaa !24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bv, i64 112
  %i.dt = getelementptr inbounds nuw i8, ptr %17, i64 112
  %i.du = load i64, ptr %i.dt, align 16, !tbaa !214 ; 2 uses
  store i64 %i.du, ptr %i.ds, align 16, !tbaa !214
  %i.dv = getelementptr inbounds nuw i8, ptr %i.bv, i64 120
  %i.dw = getelementptr inbounds nuw i8, ptr %17, i64 120
  %i.dx = load i8, ptr %i.dw, align 8, !tbaa !222, !range !13, !noundef !14
  store i8 %i.dx, ptr %i.dv, align 8, !tbaa !222
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bv, i64 121
  %i.dz = getelementptr inbounds nuw i8, ptr %17, i64 121
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ea, ptr %i.dy, align 1, !tbaa !9
  %i.eb = getelementptr inbounds nuw i8, ptr %i.bv, i64 122
  %i.ec = getelementptr inbounds nuw i8, ptr %17, i64 122
  %i.ed = load i8, ptr %i.ec, align 2, !tbaa !223, !range !13, !noundef !14
  store i8 %i.ed, ptr %i.eb, align 2, !tbaa !223
  %i.ee = trunc nuw i8 %i.ea to i1
  %i.ef = shl i64 %i.du, 3
  %.sink61 = select i1 %i.ee, i64 %i.ef, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.dq, ptr nonnull align 16 dereferenceable(27) %i.dr, i64 %.sink61, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %i.bv, i64 128 ; 2 uses
  store i64 0, ptr %i.eg, align 16, !tbaa !24
  %i.eh = getelementptr inbounds nuw i8, ptr %i.bv, i64 144
  %i.ei = getelementptr inbounds nuw i8, ptr %17, i64 144
  %i.ej = load i64, ptr %i.ei, align 16, !tbaa !214 ; 2 uses
  store i64 %i.ej, ptr %i.eh, align 16, !tbaa !214
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bv, i64 152
  %i.el = getelementptr inbounds nuw i8, ptr %17, i64 152
  %i.em = load i8, ptr %i.el, align 8, !tbaa !222, !range !13, !noundef !14
  store i8 %i.em, ptr %i.ek, align 8, !tbaa !222
  %i.en = getelementptr inbounds nuw i8, ptr %i.bv, i64 153
  %i.eo = getelementptr inbounds nuw i8, ptr %17, i64 153
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ep, ptr %i.en, align 1, !tbaa !9
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bv, i64 154
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 154
  %i.es = load i8, ptr %i.er, align 2, !tbaa !223, !range !13, !noundef !14
  store i8 %i.es, ptr %i.eq, align 2, !tbaa !223
  %i.et = trunc nuw i8 %i.ep to i1
  %i.eu = shl i64 %i.ej, 3
  %.sink62 = select i1 %i.et, i64 %i.eu, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(64) %i.eg, ptr nonnull align 16 dereferenceable(64) %i.bh, i64 %.sink62, i1 false)
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bv, i64 160 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %17, i64 160 ; 2 uses
  store i64 0, ptr %i.ev, align 16, !tbaa !24
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 176
  %i.ez = load i64, ptr %i.ey, align 16, !tbaa !214 ; 2 uses
  store i64 %i.ez, ptr %i.ex, align 16, !tbaa !214
  %i.fa = getelementptr inbounds nuw i8, ptr %i.bv, i64 184
  %i.fb = getelementptr inbounds nuw i8, ptr %17, i64 184
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !222, !range !13, !noundef !14
  store i8 %i.fc, ptr %i.fa, align 8, !tbaa !222
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bv, i64 185
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 185
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ff, ptr %i.fd, align 1, !tbaa !9
  %i.fg = getelementptr inbounds nuw i8, ptr %i.bv, i64 186
  %i.fh = getelementptr inbounds nuw i8, ptr %17, i64 186
  %i.fi = load i8, ptr %i.fh, align 2, !tbaa !223, !range !13, !noundef !14
  store i8 %i.fi, ptr %i.fg, align 2, !tbaa !223
  %i.fj = trunc nuw i8 %i.ff to i1
  br i1 %i.fj, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.ev, ptr noundef nonnull align 16 dereferenceable(27) %i.ew, i64 16, i1 false), !tbaa.struct !285
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

bb.ad:                                            ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2EOS8_.exit.i
  %i.fk = shl i64 %i.ez, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 dereferenceable(27) %i.ev, ptr nonnull align 16 dereferenceable(27) %i.ew, i64 %i.fk, i1 false)
  br label %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit

_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit: ; preds = %bb.ac, %bb.ad
  store ptr %i.bv, ptr %i.bw, align 16, !tbaa !723
  %i.fl = getelementptr inbounds nuw i8, ptr %i.y, i64 72
  store i32 0, ptr %i.fl, align 8, !tbaa !665
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEE, i64 16), ptr %i.y, align 16, !tbaa !68
  store ptr %i.y, ptr %0, align 8, !tbaa !653
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  br label %bb.ai

bb.ae:                                            ; preds = %bb.f
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.e
  %.merged22 = phi { ptr, i32 } [ %i.fm, %bb.ae ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.fn = load i32, ptr %i.a, align 4
  %i.fo = and i32 %i.fn, -24577
  %i.fp = or disjoint i32 %i.fo, %i.i
  store i32 %i.fp, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.aj

bb.ag:                                            ; preds = %bb.w
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %.noexc39, %.noexc38, %.noexc, %bb.x
  %i.fr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %17) #38
  br label %.body

.body:                                            ; preds = %bb.j, %bb.r, %bb.v, %bb.ag, %bb.n, %bb.ah
  %.pn20 = phi { ptr, i32 } [ %i.fr, %bb.ah ], [ %i.ae, %bb.j ], [ %i.ak, %bb.n ], [ %i.aq, %bb.r ], [ %i.fq, %bb.ag ], [ %i.aw, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 80) #43
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev.exit
  ret void

bb.aj:                                            ; preds = %.body, %bb.af
  %.merged = phi { ptr, i32 } [ %.pn20, %.body ], [ %.merged22, %bb.af ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors24Construct_circumcenter_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS1_INS_5EpeckEEESV_SV_SV_EEC2IJRKSV_SZ_SZ_SZ_EEERKSO_RKSP_DpOT_(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.04.i.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %7 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %8 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %.sroa.0 = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = load ptr, ptr %3, align 8, !tbaa !653    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %4, align 8, !tbaa !653    ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %5, align 8, !tbaa !653    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %6, align 8, !tbaa !653    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38, !noalias !2269
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38, !noalias !2269
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i.i), !noalias !2269
  call void @_ZN4CGAL14circumcenterC3INS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_RS3_S6_S6_(ptr noundef nonnull align 16 dereferenceable(48) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.j, ptr noundef nonnull align 16 dereferenceable(48) %i.d, ptr noundef nonnull align 16 dereferenceable(16) %i.k, ptr noundef nonnull align 16 dereferenceable(16) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %i.m, ptr noundef nonnull align 16 dereferenceable(16) %i.n, ptr noundef nonnull align 16 dereferenceable(48) %i.h, ptr noundef nonnull align 16 dereferenceable(16) %i.o, ptr noundef nonnull align 16 dereferenceable(16) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8), !noalias !2269
  %.sroa.04.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %7, i64 16, i1 false), !noalias !2269
  %.sroa.04.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %8, i64 16, i1 false), !noalias !2269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i.i.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i.i), !noalias !2269
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38, !noalias !2269
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38, !noalias !2269
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !660
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %9, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr null, ptr %i.r, align 16, !tbaa !723
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.s, align 8, !tbaa !665
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_23CartesianKernelFunctors24Construct_circumcenter_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS1_INS_5EpeckEEESV_SV_SV_EEE, i64 16), ptr %0, align 16, !tbaa !68
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.u = load ptr, ptr %6, align 8, !tbaa !653    ; 2 uses
  store ptr %i.u, ptr %i.t, align 16, !tbaa !653
  %i.v = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load atomic i32, ptr %i.w monotonic, align 4
  %i.y = add nsw i32 %i.x, 1
  store atomic i32 %i.y, ptr %i.w monotonic, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = load ptr, ptr %5, align 8, !tbaa !653   ; 2 uses
  store ptr %i.aa, ptr %i.z, align 8, !tbaa !653
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  %i.ac = load atomic i32, ptr %i.ab monotonic, align 4
  %i.ad = add nsw i32 %i.ac, 1
  store atomic i32 %i.ad, ptr %i.ab monotonic, align 4
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load ptr, ptr %4, align 8, !tbaa !653   ; 2 uses
  store ptr %i.af, ptr %i.ae, align 16, !tbaa !653
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4
  %i.ai = add nsw i32 %i.ah, 1
  store atomic i32 %i.ai, ptr %i.ag monotonic, align 4
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load ptr, ptr %3, align 8, !tbaa !653   ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !653
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.am = load atomic i32, ptr %i.al monotonic, align 4
  %i.an = add nsw i32 %i.am, 1
  store atomic i32 %i.an, ptr %i.al monotonic, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ao = atomicrmw add ptr %i.w, i32 1 monotonic, align 4 ; 0 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aq = load ptr, ptr %5, align 8, !tbaa !653   ; 2 uses
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !653
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = atomicrmw add ptr %i.ar, i32 1 monotonic, align 4 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.au = load ptr, ptr %4, align 8, !tbaa !653   ; 2 uses
  store ptr %i.au, ptr %i.at, align 16, !tbaa !653
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = atomicrmw add ptr %i.av, i32 1 monotonic, align 4 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ay = load ptr, ptr %3, align 8, !tbaa !653   ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !653
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL23CartesianKernelFunctors24Construct_circumcenter_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_SL_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3.550") align 16 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(192) %2, ptr noundef nonnull align 16 dereferenceable(192) %3, ptr noundef nonnull align 16 dereferenceable(192) %4, ptr noundef nonnull align 16 dereferenceable(192) %5) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.boost::multiprecision::number", align 16 ; 15 uses
  %7 = alloca %"class.boost::multiprecision::number", align 16 ; 15 uses
  %8 = alloca %"class.boost::multiprecision::number", align 16 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %7)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit17 unwind label %bb.k

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit17: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %8)
          to label %bb.b unwind label %bb.l

bb.b:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2Ev.exit17
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 128
  invoke void @_ZN4CGAL14circumcenterC3IN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEEvRKT_SG_SG_SG_SG_SG_SG_SG_SG_SG_SG_SG_RSE_SH_SH_(ptr noundef nonnull align 16 dereferenceable(64) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.d, ptr noundef nonnull align 16 dereferenceable(64) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.e, ptr noundef nonnull align 16 dereferenceable(64) %i.f, ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.g, ptr noundef nonnull align 16 dereferenceable(64) %i.h, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) %8)
          to label %bb.c unwind label %bb.m

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2IRSE_SI_SI_EEOT_OT0_OT1_(ptr noundef nonnull align 16 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) %8)
          to label %bb.d unwind label %bb.m

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 57
  %i.j = load i8, ptr %i.i, align 1, !tbaa !9, !range !13, !noundef !14
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 58
  %i.m = load i8, ptr %i.l, align 2, !range !13
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond.i1.i.i = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond.i1.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i64, ptr %i.o, align 16
  %i.s = shl i64 %i.r, 3
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.s) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i: ; preds = %bb.e, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 26
  %i.x = load i8, ptr %i.w, align 2, !range !13
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %8, align 16
  %i.ac = shl i64 %i.ab, 3
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #43
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 57
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !9, !range !13, !noundef !14
  %i.af = trunc nuw i8 %i.ae to i1
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 58
  %i.ah = load i8, ptr %i.ag, align 2, !range !13
  %i.ai = trunc nuw i8 %i.ah to i1
  %or.cond.i1.i.i18 = select i1 %i.af, i1 true, i1 %i.ai
  br i1 %or.cond.i1.i.i18, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i19, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load i64, ptr %i.aj, align 16
  %i.an = shl i64 %i.am, 3
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.an) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i19

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i19: ; preds = %bb.g, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 25
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !9, !range !13, !noundef !14
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.as = load i8, ptr %i.ar, align 2, !range !13
  %i.at = trunc nuw i8 %i.as to i1
  %or.cond.i.i.i20 = select i1 %i.aq, i1 true, i1 %i.at
  br i1 %or.cond.i.i.i20, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit21, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i19
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = load i64, ptr %7, align 16
  %i.ax = shl i64 %i.aw, 3
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ax) #43
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit21

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit21: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i19, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.ay = getelementptr inbounds nuw i8, ptr %6, i64 57
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ba = trunc nuw i8 %i.az to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 58
  %i.bc = load i8, ptr %i.bb, align 2, !range !13
  %i.bd = trunc nuw i8 %i.bc to i1
  %or.cond.i1.i.i22 = select i1 %i.ba, i1 true, i1 %i.bd
  br i1 %or.cond.i1.i.i22, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i23, label %bb.i

bb.i:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit21
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = load i64, ptr %i.be, align 16
  %i.bi = shl i64 %i.bh, 3
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bi) #43
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i23

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i23: ; preds = %bb.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit21
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 25
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 26
  %i.bn = load i8, ptr %i.bm, align 2, !range !13
  %i.bo = trunc nuw i8 %i.bn to i1
  %or.cond.i.i.i24 = select i1 %i.bl, i1 true, i1 %i.bo
  br i1 %or.cond.i.i.i24, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit25, label %bb.j

bb.j:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i23
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
end_hunk_0
