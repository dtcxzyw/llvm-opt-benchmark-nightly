Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/assign_scalar?download=true
inline.NumInlined: 4685
inline.NumDeleted: 1060
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_ZN5boost14multiprecision6detail33generic_convert_rational_to_floatIdNS0_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEEEvRT_RKT0_:bb.a
  store i8 1, ptr %i.bo, align 1, !tbaa !74, !alias.scope !1128
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 0, ptr %i.bp, align 2, !tbaa !155, !alias.scope !1128
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 16, !tbaa !154, !noalias !1128 ; 3 uses
  %spec.select.i.i11 = call i64 @llvm.umin.i64(i64 %i.br, i64 288230376151711744) ; 2 uses
  %i.bs = icmp ult i64 %i.br, 3
  br i1 %i.bs, label %_ZN5boost14multiprecision11denominatorINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS0_6numberIT_XT0_EEERKNS9_INS2_16rational_adaptorISA_EEXT0_EEE.exit, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i12

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i12: ; preds = %bb.f
  %.sroa.speculated16.i.i13 = call i64 @llvm.umax.i64(i64 %spec.select.i.i11, i64 8) ; 2 uses
  %i.bt = shl nuw nsw i64 %.sroa.speculated16.i.i13, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #37
          to label %.noexc16 unwind label %bb.n   ; 2 uses

.noexc16:                                         ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i12
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i8 0, ptr %i.bo, align 1, !tbaa !74, !alias.scope !1128
  store i64 %.sroa.speculated16.i.i13, ptr %4, align 16, !tbaa !87, !alias.scope !1128
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !87, !alias.scope !1128
  %.pre2.i14 = load i64, ptr %i.bq, align 16, !tbaa !154, !noalias !1128
  %.pre27.pre = load i8, ptr %i.bb, align 2, !range !63
  %i.bw = trunc nuw i8 %.pre27.pre to i1
  br label %_ZN5boost14multiprecision11denominatorINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS0_6numberIT_XT0_EEERKNS9_INS2_16rational_adaptorISA_EEXT0_EEE.exit

_ZN5boost14multiprecision11denominatorINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS0_6numberIT_XT0_EEERKNS9_INS2_16rational_adaptorISA_EEXT0_EEE.exit: ; preds = %bb.f, %.noexc16
  %.pre27 = phi i1 [ %i.bw, %.noexc16 ], [ false, %bb.f ]
  %i.bx = phi ptr [ %i.bu, %.noexc16 ], [ %4, %bb.f ]
  %i.by = phi i64 [ %.pre2.i14, %.noexc16 ], [ %i.br, %bb.f ]
  store i64 %spec.select.i.i11, ptr %i.ba, align 16, !tbaa !154, !alias.scope !1128
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !74, !range !63, !noalias !1128, !noundef !64 ; 2 uses
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1128
  %i.ce = select i1 %i.cb, ptr %i.az, ptr %i.cd
  %i.cf = shl i64 %i.by, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bx, ptr align 8 %i.ce, i64 %i.cf, i1 false)
  %i.cg = trunc nuw i8 %i.ca to i1
  %or.cond.i1.i.i17 = select i1 %i.cg, i1 true, i1 %.pre27
  br i1 %or.cond.i1.i.i17, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i18, label %bb.g

bb.g:                                             ; preds = %_ZN5boost14multiprecision11denominatorINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS0_6numberIT_XT0_EEERKNS9_INS2_16rational_adaptorISA_EEXT0_EEE.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load i64, ptr %i.az, align 16
  %i.ck = shl i64 %i.cj, 3
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.ck) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i18

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i18: ; preds = %_ZN5boost14multiprecision11denominatorINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS0_6numberIT_XT0_EEERKNS9_INS2_16rational_adaptorISA_EEXT0_EEE.exit.thread, %bb.g, %_ZN5boost14multiprecision11denominatorINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS0_6numberIT_XT0_EEERKNS9_INS2_16rational_adaptorISA_EEXT0_EEE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cn = trunc nuw i8 %i.cm to i1
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.cp = load i8, ptr %i.co, align 2, !range !63
  %i.cq = trunc nuw i8 %i.cp to i1
  %or.cond.i.i.i19 = select i1 %i.cn, i1 true, i1 %i.cq
  br i1 %or.cond.i.i.i19, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit20, label %bb.h

bb.h:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i18
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = load i64, ptr %5, align 16
  %i.cu = shl i64 %i.ct, 3
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cu) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit20

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit20: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i18, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN5boost14multiprecision6detail37generic_convert_rational_to_float_impIdNS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEEENSt9enable_ifIXoosr9is_numberIT_EE5valuesr3std17is_floating_pointISD_EE5valueEvE4typeERSD_RT0_SI_RKSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.i unwind label %bb.p

bb.i:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.cz = load i8, ptr %i.cy, align 2, !range !63
  %i.da = trunc nuw i8 %i.cz to i1
  %or.cond.i.i = select i1 %i.cx, i1 true, i1 %i.da
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load i64, ptr %4, align 16
  %i.de = shl i64 %i.dd, 3
  call void @_ZdlPvm(ptr noundef %i.dc, i64 noundef %i.de) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !74, !range !63, !noundef !64
  %i.dh = trunc nuw i8 %i.dg to i1
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.dj = load i8, ptr %i.di, align 2, !range !63
  %i.dk = trunc nuw i8 %i.dj to i1
  %or.cond.i.i21 = select i1 %i.dh, i1 true, i1 %i.dk
  br i1 %or.cond.i.i21, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit22, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = load i64, ptr %2, align 16
  %i.do = shl i64 %i.dn, 3
  call void @_ZdlPvm(ptr noundef %i.dm, i64 noundef %i.do) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit22

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit22: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.l:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit26

bb.m:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit
  %i.dq = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i12
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %5) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.n ], [ %i.dq, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit24

bb.p:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit20
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 25
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !74, !range !63, !noundef !64
  %i.dv = trunc nuw i8 %i.du to i1
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 26
  %i.dx = load i8, ptr %i.dw, align 2, !range !63
  %i.dy = trunc nuw i8 %i.dx to i1
  %or.cond.i.i23 = select i1 %i.dv, i1 true, i1 %i.dy
  br i1 %or.cond.i.i23, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit24, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = load i64, ptr %4, align 16
  %i.ec = shl i64 %i.eb, 3
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ec) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit24

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit24: ; preds = %bb.q, %bb.p, %bb.o
  %.pn8 = phi { ptr, i32 } [ %.pn, %bb.o ], [ %i.ds, %bb.p ], [ %i.ds, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !74, !range !63, !noundef !64
  %i.ef = trunc nuw i8 %i.ee to i1
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 26
  %i.eh = load i8, ptr %i.eg, align 2, !range !63
  %i.ei = trunc nuw i8 %i.eh to i1
  %or.cond.i.i25 = select i1 %i.ef, i1 true, i1 %i.ei
  br i1 %or.cond.i.i25, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit26, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit24
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i64, ptr %2, align 16
  %i.em = shl i64 %i.el, 3
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.em) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit26

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit26: ; preds = %bb.r, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit24, %bb.l
  %.pn8.pn = phi { ptr, i32 } [ %i.dp, %bb.l ], [ %.pn8, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit24 ], [ %.pn8, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn8.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6detail37generic_convert_rational_to_float_impIdNS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEEENSt9enable_ifIXoosr9is_numberIT_EE5valuesr3std17is_floating_pointISD_EE5valueEvE4typeERSD_RT0_SI_RKSt17integral_constantIbLb0EE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %4 = alloca %"struct.boost::multiprecision::detail::negate", align 1 ; 3 uses
  %5 = alloca %"class.boost::multiprecision::number.23", align 16 ; 10 uses
  %6 = alloca %"class.boost::multiprecision::number.23", align 16 ; 10 uses
  %7 = alloca %"class.boost::multiprecision::number.23", align 16 ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %8 = alloca %"struct.boost::multiprecision::detail::expression.43", align 8 ; 4 uses
  %9 = alloca %"class.boost::multiprecision::number.23", align 16 ; 41 uses
  %10 = alloca %"class.boost::multiprecision::number.23", align 16 ; 20 uses
  %11 = alloca %"struct.boost::multiprecision::detail::expression.96", align 8 ; 8 uses
  %12 = alloca %"struct.boost::multiprecision::detail::expression.96", align 8 ; 6 uses
  %13 = alloca %"struct.boost::multiprecision::detail::expression.96", align 8 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !tbaa !73, !range !63, !noundef !64
  %i.g = trunc nuw i8 %i.f to i1                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = load i64, ptr %i.h, align 16
  %i.j = icmp ne i64 %i.i, 1
  %or.cond.i.not = select i1 %i.g, i1 true, i1 %i.j
  br i1 %or.cond.i.not, label %_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit, label %_ZN5boost14multiprecisioneqINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuentsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit

_ZN5boost14multiprecisioneqINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuentsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.l = load i8, ptr %i.k, align 1, !tbaa !74, !range !63, !noundef !64
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %1, ptr %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !76
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread

bb.b:                                             ; preds = %_ZN5boost14multiprecisioneqINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuentsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit
  store double 0.000000e+00, ptr %0, align 8, !tbaa !44
  br label %bb.bp

_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit: ; preds = %bb.a
  br i1 %i.g, label %bb.c, label %_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread

bb.c:                                             ; preds = %_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  store ptr %1, ptr %8, align 8, !tbaa !152, !alias.scope !1137
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSB_6negateES9_vvvEEEEvRKT_RKSD_(ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread

_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread: ; preds = %_ZN5boost14multiprecisioneqINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuentsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit, %bb.c, %_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit
  %i.s = call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(32) %2)
  %i.t = add nsw i64 %i.s, 53
  %i.u = call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(32) %1)
  %i.v = sub i64 %i.t, %i.u                       ; 5 uses
  %i.w = icmp sgt i64 %i.v, 0
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread
  %i.x = zext nneg i64 %i.v to i128               ; 3 uses
  %i.y = and i128 %i.x, 7
  %i.z = icmp eq i128 %i.y, 0
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(32) %1, i128 noundef %i.x)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(32) %1, i128 noundef %i.x)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !74, !range !63, !noundef !64
  %i.ac = trunc nuw i8 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = select i1 %i.ac, ptr %1, ptr %i.ae
  %.promoted.i = load i64, ptr %i.h, align 16, !tbaa !154
  %i.ag = add i64 %.promoted.i, -1                ; 2 uses
  %.not.i7.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i7.i, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ah = phi i64 [ %i.ak, %bb.h ], [ %i.ag, %bb.g ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !76
  %.not2.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not2.i.i, label %bb.h, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit

bb.h:                                             ; preds = %.lr.ph.i
  store i64 %i.ah, ptr %i.h, align 16, !tbaa !154
  %i.ak = add i64 %i.ah, -1                       ; 2 uses
  %.not.i.i66 = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i66, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit, label %.lr.ph.i, !llvm.loop !16

bb.i:                                             ; preds = %_ZN5boost14multiprecisionltINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EiEENSt9enable_ifIXaaaasr6detail22is_valid_mixed_compareINS0_6numberIT_XT0_EEET1_EE5valuenesr15number_categoryISB_EE5valueLNS0_20number_category_typeE4Entsr20is_number_expressionISD_EE5valueEbE4typeERKSC_RKSD_.exit.thread
  %i.al = icmp slt i64 %i.v, 0
  br i1 %i.al, label %bb.j, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit

bb.j:                                             ; preds = %bb.i
  %i.am = sub i64 0, %i.v
  %i.an = zext i64 %i.am to i128                  ; 3 uses
  %i.ao = and i128 %i.an, 7
  %i.ap = icmp eq i128 %i.ao, 0
  br i1 %i.ap, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN5boost14multiprecision8backends15left_shift_byteINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(32) %2, i128 noundef %i.an)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(32) %2, i128 noundef %i.an)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !74, !range !63, !noundef !64
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = select i1 %i.as, ptr %2, ptr %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.promoted.i68 = load i64, ptr %i.aw, align 16, !tbaa !154
  %i.ax = add i64 %.promoted.i68, -1              ; 2 uses
  %.not.i7.i69 = icmp eq i64 %i.ax, 0
  br i1 %.not.i7.i69, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.m, %bb.n
  %i.ay = phi i64 [ %i.bb, %bb.n ], [ %i.ax, %bb.m ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !76
  %.not2.i.i71 = icmp eq i64 %i.ba, 0
  br i1 %.not2.i.i71, label %bb.n, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit

bb.n:                                             ; preds = %.lr.ph.i70
  store i64 %i.ay, ptr %i.aw, align 16, !tbaa !154
  %i.bb = add i64 %i.ay, -1                       ; 2 uses
  %.not.i.i72 = icmp eq i64 %i.bb, 0
  br i1 %.not.i.i72, label %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit, label %.lr.ph.i70, !llvm.loop !16

_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit: ; preds = %bb.n, %.lr.ph.i70, %bb.h, %.lr.ph.i, %bb.m, %bb.g, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  store i64 0, ptr %9, align 16, !tbaa !87
  %i.bc = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 5 uses
  store i64 1, ptr %i.bc, align 16, !tbaa !154
  %i.bd = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 9 uses
  store i8 0, ptr %i.bd, align 8, !tbaa !73
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 25 ; 7 uses
  store i8 1, ptr %i.be, align 1, !tbaa !74
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 26 ; 3 uses
  store i8 0, ptr %i.bf, align 2, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  store i64 0, ptr %10, align 16, !tbaa !87
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store i64 1, ptr %i.bg, align 16, !tbaa !154
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  store i8 0, ptr %i.bh, align 8, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %10, i64 25 ; 6 uses
  store i8 1, ptr %i.bi, align 1, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 26 ; 3 uses
  store i8 0, ptr %i.bj, align 2, !tbaa !155
  invoke void @_ZN5boost14multiprecision8backends22divide_unsigned_helperINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_S7_EEvPT_RKT0_RKT1_RS8_(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %1, ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(32) %10)
          to label %.noexc74 unwind label %bb.af

.noexc74:                                         ; preds = %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit
  %i.bk = load i8, ptr %i.e, align 8, !tbaa !73, !range !63, !noundef !64 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !73, !range !63, !noundef !64
  %i.bn = icmp ne i8 %i.bk, %i.bm                 ; 2 uses
  %i.bo = zext i1 %i.bn to i8
  store i8 %i.bo, ptr %i.bd, align 8, !tbaa !73
  %i.bp = load i64, ptr %i.bc, align 16
  %i.bq = icmp eq i64 %i.bp, 1
  %or.cond.i.i.i = select i1 %i.bn, i1 %i.bq, i1 false
  br i1 %or.cond.i.i.i, label %bb.o, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.i.i

bb.o:                                             ; preds = %.noexc74
  %i.br = load i8, ptr %i.be, align 1, !tbaa !74, !range !63, !noundef !64
  %i.bs = trunc nuw i8 %i.br to i1
  %i.bt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = select i1 %i.bs, ptr %9, ptr %i.bu
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !76
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %bb.p, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.i.i

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.bd, align 8, !tbaa !73
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.i.i: ; preds = %bb.p, %bb.o, %.noexc74
  %i.by = trunc nuw i8 %i.bk to i1
  store i8 %i.bk, ptr %i.bh, align 8, !tbaa !73
  %i.bz = load i64, ptr %i.bg, align 16
  %i.ca = icmp eq i64 %i.bz, 1
  %or.cond.i9.i.i = select i1 %i.by, i1 %i.ca, i1 false
  br i1 %or.cond.i9.i.i, label %bb.q, label %_ZN5boost14multiprecision9divide_qrINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEvE4typeERKNS0_6numberISA_XT0_EEESH_RSF_SI_.exit

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.i.i
  %i.cb = load i8, ptr %i.bi, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = select i1 %i.cc, ptr %10, ptr %i.ce
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !76
  %i.ch = icmp eq i64 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %_ZN5boost14multiprecision9divide_qrINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEvE4typeERKNS0_6numberISA_XT0_EEESH_RSF_SI_.exit

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.bh, align 8, !tbaa !73
  br label %_ZN5boost14multiprecision9divide_qrINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEvE4typeERKNS0_6numberISA_XT0_EEESH_RSF_SI_.exit

_ZN5boost14multiprecision9divide_qrINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEvE4typeERKNS0_6numberISA_XT0_EEESH_RSF_SI_.exit: ; preds = %bb.r, %bb.q, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE4signEb.exit.i.i
  %i.ci = invoke noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(32) %9)
          to label %_ZN5boost14multiprecision3msbINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEmE4typeERKNS0_6numberISA_XT0_EEE.exit unwind label %bb.af

_ZN5boost14multiprecision3msbINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEmE4typeERKNS0_6numberISA_XT0_EEE.exit: ; preds = %_ZN5boost14multiprecision9divide_qrINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEvE4typeERKNS0_6numberISA_XT0_EEESH_RSF_SI_.exit
  %i.cj = icmp eq i64 %i.ci, 52
  br i1 %i.cj, label %.noexc, label %bb.at

.noexc:                                           ; preds = %_ZN5boost14multiprecision3msbINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEmE4typeERKNS0_6numberISA_XT0_EEE.exit
  invoke void @_ZN5boost14multiprecision8backends18left_shift_genericINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_o(ptr noundef nonnull align 16 dereferenceable(32) %10, i128 noundef 1)
          to label %.noexc83 unwind label %bb.af

.noexc83:                                         ; preds = %.noexc
  %i.ck = load i8, ptr %i.bi, align 1, !tbaa !74, !range !63, !noundef !64
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = select i1 %i.cl, ptr %10, ptr %i.cn     ; 3 uses
  %.promoted.i77 = load i64, ptr %i.bg, align 16, !tbaa !154 ; 2 uses
  %i.cp = add i64 %.promoted.i77, -1              ; 3 uses
  %.not.i7.i78 = icmp eq i64 %i.cp, 0
  br i1 %.not.i7.i78, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit, label %.lr.ph.i79.preheader

.lr.ph.i79.preheader:                             ; preds = %.noexc83
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !76
  %.not2.i.i80159 = icmp eq i64 %i.cr, 0
  br i1 %.not2.i.i80159, label %.lr.ph, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit

.lr.ph.i79:                                       ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cv
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !76
  %.not2.i.i80 = icmp eq i64 %i.ct, 0
  br i1 %.not2.i.i80, label %.lr.ph, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit.loopexit, !llvm.loop !16

.lr.ph:                                           ; preds = %.lr.ph.i79.preheader, %.lr.ph.i79
  %i.cu = phi i64 [ %i.cv, %.lr.ph.i79 ], [ %i.cp, %.lr.ph.i79.preheader ] ; 4 uses
  %i.cv = add i64 %i.cu, -1                       ; 3 uses
  %.not.i.i81 = icmp eq i64 %i.cv, 0
  br i1 %.not.i.i81, label %._ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit.loopexit_crit_edge, label %.lr.ph.i79, !llvm.loop !16

._ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit.loopexit_crit_edge: ; preds = %.lr.ph
  store i64 %i.cu, ptr %i.bg, align 16, !tbaa !154
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit, !llvm.loop !16

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit.loopexit: ; preds = %.lr.ph.i79
  store i64 %i.cu, ptr %i.bg, align 16, !tbaa !154
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit.loopexit, %.lr.ph.i79.preheader, %._ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit.loopexit_crit_edge, %.noexc83
  %i.cw = phi i64 [ 1, %.noexc83 ], [ 1, %._ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit.loopexit_crit_edge ], [ %.promoted.i77, %.lr.ph.i79.preheader ], [ %i.cu, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit.loopexit ] ; 4 uses
  %i.cx = load i8, ptr %i.bh, align 8, !tbaa !73, !range !63, !noundef !64 ; 2 uses
  %14 = trunc nuw i8 %i.cx to i1                  ; 2 uses
  %i.cy = load i8, ptr %i.bl, align 8, !tbaa !73, !range !63, !noundef !64
  %.not.i.i85 = icmp eq i8 %i.cx, %i.cy
  br i1 %.not.i.i85, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit
  br i1 %14, label %.thread119, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread

bb.t:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EElSIiEENSt9enable_ifIXsr5boost14multiprecision6detail11is_integralIT_EE5valueERS9_E4typeESC_.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.da = load i64, ptr %i.cz, align 16, !tbaa !154 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.cw, %i.da
  br i1 %.not.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.db = icmp ugt i64 %i.cw, %i.da
  %15 = select i1 %i.db, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

bb.v:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 25
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !74, !range !63, !noundef !64
  %i.de = trunc nuw i8 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = select i1 %i.de, ptr %2, ptr %i.dg
  %i.di = icmp slt i64 %i.cw, 1
  br i1 %i.di, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph162

bb.w:                                             ; preds = %.lr.ph162
  %i.dj = icmp slt i64 %.015.in.i.i.i161, 2
  br i1 %i.dj, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit, label %.lr.ph162, !llvm.loop !17

.lr.ph162:                                        ; preds = %bb.v, %bb.w
  %.015.in.i.i.i161 = phi i64 [ %.015.i.i.i, %bb.w ], [ %i.cw, %bb.v ] ; 2 uses
  %.015.i.i.i = add nsw i64 %.015.in.i.i.i161, -1 ; 3 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.015.i.i.i
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !76 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.015.i.i.i
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !76 ; 2 uses
  %.not19.i.i.i = icmp eq i64 %i.dl, %i.dn
  br i1 %.not19.i.i.i, label %bb.w, label %bb.x, !llvm.loop !17

bb.x:                                             ; preds = %.lr.ph162
  %i.do = icmp ugt i64 %i.dl, %i.dn
  %16 = select i1 %i.do, i32 1, i32 -1
  br label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit

.thread119:                                       ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  br label %.critedge

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit: ; preds = %bb.w, %bb.v, %bb.u, %bb.x
  %.2.i.i.i = phi i32 [ %15, %bb.u ], [ %16, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ] ; 2 uses
  %17 = sub nsw i32 0, %.2.i.i.i
  %spec.select.i.i = select i1 %14, i32 %17, i32 %.2.i.i.i ; 2 uses
  %18 = icmp sgt i32 %spec.select.i.i, 0
  br i1 %18, label %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread, label %19

_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread: ; preds = %bb.s, %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 1, ptr %i.b, align 8, !tbaa !76
  %i.dp = load i8, ptr %i.bd, align 8, !tbaa !73, !range !63, !noundef !64
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = load i8, ptr %i.be, align 1, !tbaa !74, !range !63, !noundef !64
  %i.ds = trunc nuw i8 %i.dr to i1                ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = select i1 %i.ds, ptr %9, ptr %i.du      ; 3 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !76 ; 4 uses
  br i1 %i.dq, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread
  %.not.i.i51 = icmp eq i64 %i.dw, -1
  br i1 %.not.i.i51, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dx = add nuw i64 %i.dw, 1
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !76
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit57

bb.aa:                                            ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit.thread
  %.not10.i.i53 = icmp eq i64 %i.dw, 0
  br i1 %.not10.i.i53, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dy = add i64 %i.dw, -1
  store i64 %i.dy, ptr %i.dv, align 8, !tbaa !76
  %i.dz = load ptr, ptr %i.dt, align 8
  %i.ea = select i1 %i.ds, ptr %9, ptr %i.dz
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !76
  %.not11.i.i54 = icmp eq i64 %i.eb, 0
  %i.ec = load i64, ptr %i.bc, align 16
  %i.ed = icmp eq i64 %i.ec, 1
  %or.cond = select i1 %.not11.i.i54, i1 %i.ed, i1 false
  br i1 %or.cond, label %bb.ac, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit57

bb.ac:                                            ; preds = %bb.ab
  store i8 0, ptr %i.bd, align 8, !tbaa !73
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit57

bb.ad:                                            ; preds = %bb.aa
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit57 unwind label %bb.af

bb.ae:                                            ; preds = %bb.y
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit57 unwind label %bb.af

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit57: ; preds = %bb.ad, %bb.ae, %bb.z, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %bb.bm

bb.af:                                            ; preds = %.noexc, %_ZN5boost14multiprecision9divide_qrINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEvE4typeERKNS0_6numberISA_XT0_EEESH_RSF_SI_.exit, %_ZN5boost14multiprecision8backends15eval_left_shiftILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEvE4typeERS9_o.exit, %bb.ae, %bb.ad, %bb.ar, %bb.aq, %bb.bj, %bb.bi
  %i.ee = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

19:                                               ; preds = %_ZNK5boost14multiprecision8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEE7compareILm0ELm0ELS3_1ELS4_0ES5_EEiRKNS2_IXT_EXT0_EXT1_EXT2_ET3_EE.exit
  %20 = icmp eq i32 %spec.select.i.i, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  br i1 %20, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %19
  store ptr %9, ptr %11, align 8, !tbaa !152, !alias.scope !1138
  %i.ef = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 1, ptr %i.ef, align 8, !tbaa !1139, !alias.scope !1138
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail22bitwise_and_immediatesES9_jvvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(12) %11, ptr noundef null)
          to label %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit62 unwind label %bb.as

_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit62: ; preds = %bb.ag
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.eh = load i64, ptr %i.eg, align 16, !tbaa !154
  %i.ei = icmp eq i64 %i.eh, 1
  %i.ej = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !74, !range !63 ; 2 uses
  br i1 %i.ei, label %bb.ah, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit

bb.ah:                                            ; preds = %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit62
  %i.el = trunc nuw i8 %i.ek to i1
  %i.em = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = select i1 %i.el, ptr %5, ptr %i.en
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !76
  %i.eq = icmp ne i64 %i.ep, 0
  br label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit: ; preds = %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit62, %bb.ah
  %i.er = phi i1 [ %i.eq, %bb.ah ], [ true, %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit62 ]
  %i.es = trunc nuw i8 %i.ek to i1
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.eu = load i8, ptr %i.et, align 2, !range !63
  %i.ev = trunc nuw i8 %i.eu to i1
  %or.cond.i.i87 = select i1 %i.es, i1 true, i1 %i.ev
  br i1 %or.cond.i.i87, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit
  %i.ew = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = load i64, ptr %5, align 16
  %i.ez = shl i64 %i.ey, 3
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.ez) #38
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br i1 %i.er, label %bb.ak, label %bb.bm

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 1, ptr %i.c, align 8, !tbaa !76
  %i.fa = load i8, ptr %i.bd, align 8, !tbaa !73, !range !63, !noundef !64
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = load i8, ptr %i.be, align 1, !tbaa !74, !range !63, !noundef !64
  %i.fd = trunc nuw i8 %i.fc to i1                ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = select i1 %i.fd, ptr %9, ptr %i.ff      ; 3 uses
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !76 ; 4 uses
  br i1 %i.fb, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i.i44 = icmp eq i64 %i.fh, -1
  br i1 %.not.i.i44, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fi = add nuw i64 %i.fh, 1
  store i64 %i.fi, ptr %i.fg, align 8, !tbaa !76
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit50

bb.an:                                            ; preds = %bb.ak
  %.not10.i.i46 = icmp eq i64 %i.fh, 0
  br i1 %.not10.i.i46, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fj = add i64 %i.fh, -1
  store i64 %i.fj, ptr %i.fg, align 8, !tbaa !76
  %i.fk = load ptr, ptr %i.fe, align 8
  %i.fl = select i1 %i.fd, ptr %9, ptr %i.fk
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !76
  %.not11.i.i47 = icmp eq i64 %i.fm, 0
  %i.fn = load i64, ptr %i.bc, align 16
  %i.fo = icmp eq i64 %i.fn, 1
  %or.cond127 = select i1 %.not11.i.i47, i1 %i.fo, i1 false
  br i1 %or.cond127, label %bb.ap, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit50

bb.ap:                                            ; preds = %bb.ao
  store i8 0, ptr %i.bd, align 8, !tbaa !73
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit50

bb.aq:                                            ; preds = %bb.an
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit50 unwind label %bb.af

bb.ar:                                            ; preds = %bb.al
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit50 unwind label %bb.af

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit50: ; preds = %bb.aq, %bb.ar, %bb.am, %bb.ao, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.bm

bb.as:                                            ; preds = %bb.ag
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bq

.critedge:                                        ; preds = %.thread119, %19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %bb.bm

bb.at:                                            ; preds = %_ZN5boost14multiprecision3msbINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENSt9enable_ifIXeqsr15number_categoryIT_EE5valueLNS0_20number_category_typeE0EEmE4typeERKNS0_6numberISA_XT0_EEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24
  store ptr %9, ptr %12, align 8, !tbaa !152, !alias.scope !1140
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i32 1, ptr %i.fq, align 8, !tbaa !1139, !alias.scope !1140
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail22bitwise_and_immediatesES9_jvvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(12) %12, ptr noundef null)
          to label %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit60 unwind label %bb.bk

_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit60: ; preds = %bb.at
  %i.fr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fs = load i64, ptr %i.fr, align 16, !tbaa !154
  %i.ft = icmp eq i64 %i.fs, 1
  %i.fu = getelementptr inbounds nuw i8, ptr %6, i64 25
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !74, !range !63 ; 2 uses
  br i1 %i.ft, label %bb.au, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit63

bb.au:                                            ; preds = %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit60
  %i.fw = trunc nuw i8 %i.fv to i1
  %i.fx = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  %i.fz = select i1 %i.fw, ptr %6, ptr %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !76
  %i.gb = icmp ne i64 %i.ga, 0
  br label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit63

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit63: ; preds = %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit60, %bb.au
  %i.gc = phi i1 [ %i.gb, %bb.au ], [ true, %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit60 ]
  %i.gd = trunc nuw i8 %i.fv to i1
  %i.ge = getelementptr inbounds nuw i8, ptr %6, i64 26
  %i.gf = load i8, ptr %i.ge, align 2, !range !63
  %i.gg = trunc nuw i8 %i.gf to i1
  %or.cond.i.i89 = select i1 %i.gd, i1 true, i1 %i.gg
  br i1 %or.cond.i.i89, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit63
  %i.gh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = load i64, ptr %6, align 16
  %i.gk = shl i64 %i.gj, 3
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gk) #38
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br i1 %i.gc, label %bb.ax, label %bb.bm

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24
  %i.gl = load i64, ptr %i.bg, align 16, !tbaa !154
  %i.gm = icmp eq i64 %i.gl, 1
  br i1 %i.gm, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit65, label %.critedge2

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit65: ; preds = %bb.ax
  %i.gn = load i8, ptr %i.bi, align 1, !tbaa !74, !range !63, !noundef !64
  %i.go = trunc nuw i8 %i.gn to i1
  %i.gp = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = select i1 %i.go, ptr %10, ptr %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !76
  %.not = icmp eq i64 %i.gs, 0
  br i1 %.not, label %bb.ay, label %.critedge2

bb.ay:                                            ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit65
  store ptr %9, ptr %13, align 8, !tbaa !152, !alias.scope !1141
  %i.gt = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 2, ptr %i.gt, align 8, !tbaa !1139, !alias.scope !1141
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  invoke void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail22bitwise_and_immediatesES9_jvvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(12) %13, ptr noundef null)
          to label %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit unwind label %bb.bl

_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit: ; preds = %bb.ay
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gv = load i64, ptr %i.gu, align 16, !tbaa !154
  %i.gw = icmp eq i64 %i.gv, 1
  %i.gx = getelementptr inbounds nuw i8, ptr %7, i64 25
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !74, !range !63 ; 2 uses
  br i1 %i.gw, label %bb.az, label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit64

bb.az:                                            ; preds = %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit
  %i.gz = trunc nuw i8 %i.gy to i1
  %i.ha = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = select i1 %i.gz, ptr %7, ptr %i.hb
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !76
  %i.he = icmp ne i64 %i.hd, 0
  br label %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit64

_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit64: ; preds = %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit, %bb.az
  %i.hf = phi i1 [ %i.he, %bb.az ], [ true, %_ZNK5boost14multiprecision6detail10expressionINS1_22bitwise_and_immediatesENS0_6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEEjvvEcvbEv.exit ]
  %i.hg = trunc nuw i8 %i.gy to i1
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 26
  %i.hi = load i8, ptr %i.hh, align 2, !range !63
  %i.hj = trunc nuw i8 %i.hi to i1
  %or.cond.i.i91 = select i1 %i.hg, i1 true, i1 %i.hj
  br i1 %or.cond.i.i91, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit64
  %i.hk = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = load i64, ptr %7, align 16
  %i.hn = shl i64 %i.hm, 3
  call void @_ZdlPvm(ptr noundef %i.hl, i64 noundef %i.hn) #38
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br i1 %i.hf, label %bb.bc, label %bb.bm

.critedge2:                                       ; preds = %bb.ax, %_ZNK5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEcvbEv.exit65
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bc

bb.bc:                                            ; preds = %.critedge2, %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 1, ptr %i.d, align 8, !tbaa !76
  %i.ho = load i8, ptr %i.bd, align 8, !tbaa !73, !range !63, !noundef !64
  %i.hp = trunc nuw i8 %i.ho to i1
  %i.hq = load i8, ptr %i.be, align 1, !tbaa !74, !range !63, !noundef !64
  %i.hr = trunc nuw i8 %i.hq to i1                ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8
  %i.hu = select i1 %i.hr, ptr %9, ptr %i.ht      ; 3 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !76 ; 4 uses
  br i1 %i.hp, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not.i.i = icmp eq i64 %i.hv, -1
  br i1 %.not.i.i, label %bb.bj, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.hw = add nuw i64 %i.hv, 1
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !76
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit

bb.bf:                                            ; preds = %bb.bc
  %.not10.i.i = icmp eq i64 %i.hv, 0
  br i1 %.not10.i.i, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hx = add i64 %i.hv, -1
  store i64 %i.hx, ptr %i.hu, align 8, !tbaa !76
  %i.hy = load ptr, ptr %i.hs, align 8
  %i.hz = select i1 %i.hr, ptr %9, ptr %i.hy
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !76
  %.not11.i.i = icmp eq i64 %i.ia, 0
  %i.ib = load i64, ptr %i.bc, align 16
  %i.ic = icmp eq i64 %i.ib, 1
  %or.cond129 = select i1 %.not11.i.i, i1 %i.ic, i1 false
  br i1 %or.cond129, label %bb.bh, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit

bb.bh:                                            ; preds = %bb.bg
  store i8 0, ptr %i.bd, align 8, !tbaa !73
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit

bb.bi:                                            ; preds = %bb.bf
  invoke void @_ZN5boost14multiprecision8backends17subtract_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit unwind label %bb.af

bb.bj:                                            ; preds = %bb.bd
  invoke void @_ZN5boost14multiprecision8backends12add_unsignedINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_EEvRT_RKT0_RKy(ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 16 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit unwind label %bb.af

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit: ; preds = %bb.bi, %bb.bj, %bb.be, %bb.bg, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.bm

bb.bk:                                            ; preds = %bb.at
  %i.id = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #24
  br label %bb.bq

bb.bl:                                            ; preds = %bb.ay
  %i.ie = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #24
  br label %bb.bq

bb.bm:                                            ; preds = %bb.bb, %bb.aw, %bb.aj, %.critedge, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit50, %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEppEv.exit57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !44
  call void @_ZN5boost14multiprecision8backends15eval_convert_toIdLm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXaasr3std17is_floating_pointIT_EE5valuentsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT0_EXT1_EXT2_EXT3_ET4_EEEE5valueEvE4typeEPS7_RKSA_(ptr noundef nonnull %i.a, ptr noundef nonnull align 16 dereferenceable(32) %9) #24
  %i.if = load double, ptr %i.a, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.ig = trunc i64 %i.v to i32
  %i.ih = sub i32 0, %i.ig
  %i.ii = call double @ldexp(double noundef %i.if, i32 noundef %i.ih) #24 ; 2 uses
  %i.ij = fneg double %i.ii
  %storemerge = select i1 %i.g, double %i.ij, double %i.ii
  store double %storemerge, ptr %0, align 8, !tbaa !44
  %i.ik = load i8, ptr %i.bi, align 1, !tbaa !74, !range !63, !noundef !64
  %i.il = trunc nuw i8 %i.ik to i1
  %i.im = load i8, ptr %i.bj, align 2, !range !63
  %i.in = trunc nuw i8 %i.im to i1
  %or.cond.i.i94 = select i1 %i.il, i1 true, i1 %i.in
  br i1 %or.cond.i.i94, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit95, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.io = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ip = load ptr, ptr %i.io, align 8
  %i.iq = load i64, ptr %10, align 16
  %i.ir = shl i64 %i.iq, 3
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.ir) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit95

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit95: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.is = load i8, ptr %i.be, align 1, !tbaa !74, !range !63, !noundef !64
  %i.it = trunc nuw i8 %i.is to i1
  %i.iu = load i8, ptr %i.bf, align 2, !range !63
  %i.iv = trunc nuw i8 %i.iu to i1
  %or.cond.i.i96 = select i1 %i.it, i1 true, i1 %i.iv
  br i1 %or.cond.i.i96, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit97, label %bb.bo

bb.bo:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit95
  %i.iw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = load i64, ptr %9, align 16
  %i.iz = shl i64 %i.iy, 3
  call void @_ZdlPvm(ptr noundef %i.ix, i64 noundef %i.iz) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit97

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit97: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit95, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.bp

bb.bp:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit97, %bb.b
  ret void

bb.bq:                                            ; preds = %bb.bk, %bb.bl, %bb.as, %bb.af
  %.pn38.pn = phi { ptr, i32 } [ %i.fp, %bb.as ], [ %i.ee, %bb.af ], [ %i.id, %bb.bk ], [ %i.ie, %bb.bl ]
  %i.ja = load i8, ptr %i.bi, align 1, !tbaa !74, !range !63, !noundef !64
  %i.jb = trunc nuw i8 %i.ja to i1
  %i.jc = load i8, ptr %i.bj, align 2, !range !63
  %i.jd = trunc nuw i8 %i.jc to i1
  %or.cond.i.i98 = select i1 %i.jb, i1 true, i1 %i.jd
  br i1 %or.cond.i.i98, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit99, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.je = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = load i64, ptr %10, align 16
  %i.jh = shl i64 %i.jg, 3
  call void @_ZdlPvm(ptr noundef %i.jf, i64 noundef %i.jh) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit99

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit99: ; preds = %bb.bq, %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  %i.ji = load i8, ptr %i.be, align 1, !tbaa !74, !range !63, !noundef !64
  %i.jj = trunc nuw i8 %i.ji to i1
  %i.jk = load i8, ptr %i.bf, align 2, !range !63
  %i.jl = trunc nuw i8 %i.jk to i1
  %or.cond.i.i100 = select i1 %i.jj, i1 true, i1 %i.jl
  br i1 %or.cond.i.i100, label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit101, label %bb.bs

bb.bs:                                            ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit99
  %i.jm = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  %i.jo = load i64, ptr %9, align 16
  %i.jp = shl i64 %i.jo, 3
  call void @_ZdlPvm(ptr noundef %i.jn, i64 noundef %i.jp) #38
  br label %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit101

_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit101: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EED2Ev.exit99, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  resume { ptr, i32 } %.pn38.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision6numberINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEC2INS0_6detail22bitwise_and_immediatesES9_jvvEERKNSB_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSJ_11result_typeES9_EE5valueEvE4typeE(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  store i64 0, ptr %0, align 16, !tbaa !87
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %i.a, align 16, !tbaa !154
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.b, align 8, !tbaa !73
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  store i8 1, ptr %i.c, align 1, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  store i8 0, ptr %i.d, align 2, !tbaa !155
  %i.e = load ptr, ptr %1, align 8, !tbaa !1146, !noalias !1147, !nonnull !64, !align !161
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !57, !noalias !1148
  %i.h = zext i32 %i.g to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i64 %i.h, ptr %3, align 16, !tbaa !87
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 1, ptr %i.i, align 16, !tbaa !154
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i8 0, ptr %i.j, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 25 ; 3 uses
  store i8 1, ptr %i.k, align 1, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 26 ; 3 uses
  store i8 0, ptr %i.l, align 2, !tbaa !155
  invoke void @_ZN5boost14multiprecision11default_ops24eval_bitwise_and_defaultINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_RKS9_SC_(ptr noundef nonnull align 16 dereferenceable(32) %0, ptr noundef nonnull align 16 dereferenceable(27) %i.e, ptr noundef nonnull align 16 dereferenceable(27) %3)
          to label %_ZN5boost14multiprecision11default_ops16eval_bitwise_andINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_S8_EEvRT_RKT0_RKT1_.exit.i.i.i.i.i unwind label %bb.c

_ZN5boost14multiprecision11default_ops16eval_bitwise_andINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_S8_EEvRT_RKT0_RKT1_.exit.i.i.i.i.i: ; preds = %bb.a
  %i.m = load i8, ptr %i.k, align 1, !tbaa !74, !range !63, !noundef !64
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i8, ptr %i.l, align 2, !range !63
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond.i4.i.i.i.i.i = select i1 %i.n, i1 true, i1 %i.p
  br i1 %or.cond.i4.i.i.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZN5boost14multiprecision11default_ops16eval_bitwise_andINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_S8_EEvRT_RKT0_RKT1_.exit.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = load i64, ptr %3, align 16
  %i.t = shl i64 %i.s, 3
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.t) #38
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  %i.v = load i8, ptr %i.k, align 1, !tbaa !74, !range !63, !noundef !64
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = load i8, ptr %i.l, align 2, !range !63
  %i.y = trunc nuw i8 %i.x to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.w, i1 true, i1 %i.y
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load i64, ptr %3, align 16
  %i.ac = shl i64 %i.ab, 3
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ac) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i.i.i.i.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.ad = load i8, ptr %i.c, align 1, !tbaa !74, !range !63, !noundef !64
  %i.ae = trunc nuw i8 %i.ad to i1
  %i.af = load i8, ptr %i.d, align 2, !range !63
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i = select i1 %i.ae, i1 true, i1 %i.ag
  br i1 %or.cond.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit, label %bb.f

bb.e:                                             ; preds = %bb.b, %_ZN5boost14multiprecision11default_ops16eval_bitwise_andINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES8_S8_EEvRT_RKT0_RKT1_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret void

bb.f:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = load i64, ptr %0, align 16
  %i.ak = shl i64 %i.aj, 3
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.ak) #38
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit.i.i.i.i.i, %bb.f
  resume { ptr, i32 } %i.u
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision11default_ops24eval_bitwise_and_defaultINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRT_RKS9_SC_(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 16 dereferenceable(27) %2) local_unnamed_addr #2 comdat {
bb.a:
  %3 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %4 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %5 = alloca %"struct.std::integral_constant", align 1 ; 3 uses
  %i.a = icmp eq ptr %0, %2
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZN5boost14multiprecision8backends10bitwise_opINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_NS1_7bit_andEEEvRT_RKT0_T1_RKSt17integral_constantIbLb1EE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %1, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZN5boost14multiprecision8backends10bitwise_opINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEES7_NS1_7bit_andEEEvRT_RKT0_T1_RKSt17integral_constantIbLb1EE(ptr noundef nonnull align 16 dereferenceable(27) %0, ptr noundef nonnull align 16 dereferenceable(27) %2, ptr noundef nonnull align 1 dereferenceable(1) %4)
end_hunk_0
