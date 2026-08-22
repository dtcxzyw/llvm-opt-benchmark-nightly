Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_self_intersections?download=true
inline.NumInlined: 24561
inline.NumDeleted: 7924
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 83
begin_hunk_0_@_ZZNK4CGAL20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_ENKUlvE_clEv:bb.a

_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit: ; preds = %bb.g, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bk = load i8, ptr %i.bj, align 8, !tbaa !1066, !range !13, !noundef !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  %i.bm = load i8, ptr %i.bl, align 8, !tbaa !1066, !range !13, !noundef !14
  %.not.i.i.i.i = icmp eq i8 %i.bk, %i.bm
  br i1 %.not.i.i.i.i, label %bb.h, label %_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit

bb.h:                                             ; preds = %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.bo = load i64, ptr %i.bn, align 16, !tbaa !1058 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.bq = load i64, ptr %i.bp, align 16, !tbaa !1058
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.i, label %_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 153
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bu = trunc nuw i8 %i.bt to i1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = select i1 %i.bu, ptr %i.bh, ptr %i.bw   ; 2 uses
  %.idx.i.i.i.i = shl nuw nsw i64 %i.bo, 3
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.i.i.i
  %.not10.i.i.i.i.i = icmp eq i64 %i.bo, 0
  br i1 %.not10.i.i.i.i.i, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 153
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cb = trunc nuw i8 %i.ca to i1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.d, i64 136
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = select i1 %i.cb, ptr %i.bi, ptr %i.cd
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.preheader.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ci, %bb.j ], [ %i.ce, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.ch, %bb.j ], [ %i.bx, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  %i.cf = load i64, ptr %.0811.i.i.i.i.i, align 8, !tbaa !1059
  %i.cg = load i64, ptr %.012.i.i.i.i.i, align 8, !tbaa !1059
  %.not9.i.i.i.i.i = icmp eq i64 %i.cf, %i.cg
  br i1 %.not9.i.i.i.i.i, label %bb.j, label %_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit

bb.j:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ch, %i.by
  br i1 %.not.i.i.i.i.i, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1138

_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.ck = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.cm = load i8, ptr %i.cl, align 8, !tbaa !1066, !range !13, !noundef !14
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.co = load i8, ptr %i.cn, align 8, !tbaa !1066, !range !13, !noundef !14
  %.not13.i.i.i.i = icmp eq i8 %i.cm, %i.co
  br i1 %.not13.i.i.i.i, label %bb.k, label %_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit

bb.k:                                             ; preds = %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.cq = load i64, ptr %i.cp, align 16, !tbaa !1058 ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.d, i64 176
  %i.cs = load i64, ptr %i.cr, align 16, !tbaa !1058
  %i.ct = icmp eq i64 %i.cq, %i.cs
  br i1 %i.ct, label %bb.l, label %_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit

bb.l:                                             ; preds = %bb.k
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 185
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cw = trunc nuw i8 %i.cv to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = select i1 %i.cw, ptr %i.cj, ptr %i.cy   ; 2 uses
  %.idx14.i.i.i.i = shl nuw nsw i64 %i.cq, 3
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx14.i.i.i.i
  %.not10.i5.i.i.i.i = icmp eq i64 %i.cq, 0
  br i1 %.not10.i5.i.i.i.i, label %_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit, label %.lr.ph.i6.preheader.i.i.i.i

.lr.ph.i6.preheader.i.i.i.i:                      ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 185
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !9, !range !13, !noundef !14
  %i.dd = trunc nuw i8 %i.dc to i1
  %i.de = getelementptr inbounds nuw i8, ptr %i.d, i64 168
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = select i1 %i.dd, ptr %i.ck, ptr %i.df
  br label %.lr.ph.i6.i.i.i.i

.lr.ph.i6.i.i.i.i:                                ; preds = %bb.m, %.lr.ph.i6.preheader.i.i.i.i
  %.012.i7.i.i.i.i = phi ptr [ %i.dk, %bb.m ], [ %i.dg, %.lr.ph.i6.preheader.i.i.i.i ] ; 2 uses
  %.0811.i8.i.i.i.i = phi ptr [ %i.dj, %bb.m ], [ %i.cz, %.lr.ph.i6.preheader.i.i.i.i ] ; 2 uses
  %i.dh = load i64, ptr %.0811.i8.i.i.i.i, align 8, !tbaa !1059
  %i.di = load i64, ptr %.012.i7.i.i.i.i, align 8, !tbaa !1059
  %.not9.i9.i.i.i.i = icmp eq i64 %i.dh, %i.di
  br i1 %.not9.i9.i.i.i.i, label %bb.m, label %_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit

bb.m:                                             ; preds = %.lr.ph.i6.i.i.i.i
  %i.dj = getelementptr inbounds nuw i8, ptr %.0811.i8.i.i.i.i, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.012.i7.i.i.i.i, i64 8
  %.not.i11.i.i.i.i = icmp eq ptr %i.dj, %i.da
  br i1 %.not.i11.i.i.i.i, label %_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit, label %.lr.ph.i6.i.i.i.i, !llvm.loop !1138

_ZN4CGAL8internal13cgal_and_implIZZNKS_20CommonKernelFunctors7Equal_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS6_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS6_16cpp_integer_typeE1ELNS6_18cpp_int_check_typeE0ESaIyEEEEELNS6_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISI_EESN_ENKUlvE_clEvEUlvE_EENS_9UncertainIbEERKSR_OT_.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i6.i.i, %.lr.ph.i.i.i.i.i, %.lr.ph.i6.i.i.i.i, %bb.m, %bb.a, %bb.e, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, %bb.b, %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, %bb.h, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i.i.i, %bb.k, %bb.l
  %.sroa.05.0.i = phi i16 [ 257, %bb.m ], [ 257, %bb.l ], [ 0, %bb.h ], [ 0, %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit ], [ 0, %bb.k ], [ 0, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i.i.i ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %.lr.ph.i6.i.i ], [ 0, %.lr.ph.i.i.i.i.i ], [ 0, %bb.b ], [ 0, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i ], [ 0, %.lr.ph.i6.i.i.i.i ], [ 0, %.lr.ph.i.i.i ]
  ret i16 %.sroa.05.0.i
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv() #5 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2967, !nonnull !14, !align !1503
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2959 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(76) %i.d), !inline_history !2969
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_10Triangle_3IS1_EEiEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Point_3.713") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %class.anon.671, align 8            ; 5 uses
  %5 = alloca %class.anon.670, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #44
          to label %bb.b unwind label %bb.k       ; 8 uses

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %2, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 3 uses
  %i.q = load i32, ptr %3, align 4, !tbaa !90     ; 6 uses
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.nonneg.i.i.i = sub i32 0, %i.q
  %i.s = urem i32 %.nonneg.i.i.i, 3
  %i.t = xor i32 %i.s, 3
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.u = icmp samesign ugt i32 %i.q, 2
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.v = urem i32 %i.q, 3
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i.i = phi i32 [ %i.t, %bb.c ], [ %i.v, %bb.e ], [ %i.q, %bb.d ]
  switch i32 %.0.i.i.i, label %bb.h [
    i32 0, label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i
    i32 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  br label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  br label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i

_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.y = phi ptr [ %i.x, %bb.h ], [ %i.w, %bb.g ], [ %i.p, %bb.f ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.z, align 4, !tbaa !2970
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.aa, ptr noundef nonnull align 16 dereferenceable(48) %i.y, i64 48, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store ptr null, ptr %i.ab, align 8, !tbaa !2972
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  store i32 0, ptr %i.ac, align 8, !tbaa !2974
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors18Construct_vertex_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_10Triangle_3INS_5EpeckEEEiEEE, i64 16), ptr %i.m, align 16, !tbaa !92
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store i32 %i.q, ptr %i.ad, align 16, !tbaa !2976
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  %i.af = load ptr, ptr %2, align 8, !tbaa !109   ; 2 uses
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !109
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store atomic i32 %i.aj, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.j:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_10Triangle_3IS5_EEi.exit.i
  %i.ak = atomicrmw add ptr %i.ah, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.i, %bb.j
  store ptr %i.m, ptr %0, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.al = load i32, ptr %i.c, align 4
  %i.am = and i32 %i.al, -24577
  %i.an = or disjoint i32 %i.am, %i.i
  store i32 %i.an, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.aa

bb.k:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.09 = extractvalue { ptr, i32 } %i.ao, 1
  %i.ap = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.aq = icmp eq i32 %.09, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.y

bb.l:                                             ; preds = %bb.k
  %.010 = extractvalue { ptr, i32 } %i.ao, 0
  %i.ar = call ptr @__cxa_begin_catch(ptr %.010) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.as = load i32, ptr %i.c, align 4
  %i.at = and i32 %i.as, -24577
  %i.au = or disjoint i32 %i.at, %i.i
  store i32 %i.au, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.av = call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #44 ; 3 uses
  %i.aw = load ptr, ptr %2, align 8, !tbaa !109   ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %i.aw, ptr %5, align 8, !tbaa !2691
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %5, ptr %4, align 8, !tbaa !15
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %4, ptr %i.ay, align 8, !tbaa !15
  %i.az = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.az, align 8, !tbaa !15
  %i.ba = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ax, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.p ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.m
  %.not.i.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ba) #43
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bb = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ay, align 8, !tbaa !15
  store ptr null, ptr %i.az, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %.body

bb.q:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ay, align 8, !tbaa !15
  store ptr null, ptr %i.az, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  %i.bd = load atomic ptr, ptr %i.bc monotonic, align 8 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 144
  %i.bf = load i32, ptr %3, align 4, !tbaa !90    ; 5 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.nonneg.i.i = sub i32 0, %i.bf
  %i.bh = urem i32 %.nonneg.i.i, 3
  %i.bi = xor i32 %i.bh, 3
  br label %bb.u

bb.s:                                             ; preds = %bb.q
  %i.bj = icmp samesign ugt i32 %i.bf, 2
  br i1 %i.bj, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bk = urem i32 %i.bf, 3
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.0.i.i = phi i32 [ %i.bi, %bb.r ], [ %i.bk, %bb.t ], [ %i.bf, %bb.s ]
  switch i32 %.0.i.i, label %bb.w [
    i32 0, label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit
    i32 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 336
  br label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit

bb.w:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 528
  br label %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit

_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.bn = phi ptr [ %i.bm, %bb.w ], [ %i.bl, %bb.v ], [ %i.be, %bb.u ]
  invoke void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(80) %i.av, ptr noundef nonnull align 16 dereferenceable(192) %i.bn)
          to label %_ZN4CGAL6HandleD2Ev.exit17 unwind label %bb.z

_ZN4CGAL6HandleD2Ev.exit17:                       ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit
  store ptr %i.av, ptr %0, align 8, !tbaa !109
  br label %bb.aa

bb.x:                                             ; preds = %bb.l
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.k
  %.merged14 = phi { ptr, i32 } [ %i.bo, %bb.x ], [ %i.ao, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bp = load i32, ptr %i.a, align 4
  %i.bq = and i32 %i.bp, -24577
  %i.br = or disjoint i32 %i.bq, %i.i
  store i32 %i.br, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ab

bb.z:                                             ; preds = %_ZNK4CGAL20CommonKernelFunctors18Construct_vertex_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EEi.exit
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %bb.z
  %eh.lpad-body = phi { ptr, i32 } [ %i.bs, %bb.z ], [ %i.bb, %bb.p ]
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 80) #40
  br label %bb.ab

bb.aa:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit17
  ret void

bb.ab:                                            ; preds = %.body, %bb.y
  %.merged = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.merged14, %bb.y ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_0INS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2IRKSL_EEOT_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 16 dereferenceable(192) %1) unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !2978
  %i.a = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(192) %1), !noalias !2978 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !2978
  %i.b = extractvalue { double, double } %i.a, 0
  %i.c = extractvalue { double, double } %i.a, 1
  %i.d = fneg double %i.b
  %i.e = insertelement <2 x double> poison, double %i.d, i64 0
  %i.f = insertelement <2 x double> %i.e, double %i.c, i64 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !2978
  %i.h = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.g), !noalias !2978 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_E20double_shared_vertexERKNS3_10Triangle_3IS4_EESG_llSt6vectorISt4pairIllESaISJ_EEENKUlSG_lSG_lE_clESG_lSG_l:bb.a

bb.az:                                            ; preds = %bb.av
  br i1 %i.cz, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.de = atomicrmw sub ptr %i.cx, i32 1 release, align 4
  %i.df = icmp eq i32 %i.de, 1
  br i1 %i.df, label %bb.bb, label %_ZN4CGAL6HandleD2Ev.exit39

bb.bb:                                            ; preds = %bb.ba, %bb.az
  fence acquire
  %i.dg = load ptr, ptr %16, align 8, !tbaa !109  ; 3 uses
  %i.dh = icmp eq ptr %i.dg, null
  br i1 %i.dh, label %_ZN4CGAL6HandleD2Ev.exit39, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.di = load ptr, ptr %i.dg, align 8, !tbaa !92
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dk = load ptr, ptr %i.dj, align 8
  call void %i.dk(ptr noundef nonnull align 8 dereferenceable(12) %i.dg) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit39

_ZN4CGAL6HandleD2Ev.exit39:                       ; preds = %_ZN4CGAL6HandleD2Ev.exit36, %bb.ax, %bb.ay, %bb.ba, %bb.bb, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  ret i1 %i.ce

bb.bd:                                            ; preds = %bb.a
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

bb.be:                                            ; preds = %bb.b
  %i.dm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #23
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.dm, %bb.be ], [ %i.dl, %bb.bd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %bb.bn

bb.bg:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit24
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bh:                                            ; preds = %bb.t
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.bi:                                            ; preds = %bb.u
  %i.dp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #23
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.pn16 = phi { ptr, i32 } [ %i.dp, %bb.bi ], [ %i.do, %bb.bh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %20) #23
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bg
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.bj ], [ %i.dn, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.bm

bb.bl:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit33
  %i.dq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #23
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn19 = phi { ptr, i32 } [ %i.dq, %bb.bl ], [ %.pn16.pn, %bb.bk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %16) #23
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bf
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %bb.bm ], [ %.pn, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  resume { ptr, i32 } %.pn19.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.anon.1163, align 1           ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !2949, !range !13, !noundef !14
  %i.c = trunc nuw i8 %i.b to i1
  store i8 0, ptr %i.a, align 8, !tbaa !2949
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i8, ptr %i.d, align 8
  %.not.i.i.i.i.i = icmp ne i8 %i.e, -1
  %or.cond.not.i.i = select i1 %i.c, i1 %.not.i.i.i.i.i, i1 false
  br i1 %or.cond.not.i.i, label %bb.b, label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0ELb0EED2Ev.exit, !prof !2953

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(33) %0)
          to label %.noexc.i.i.i.i unwind label %bb.c

.noexc.i.i.i.i:                                   ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0ELb0EED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #41
  unreachable

_ZNSt17_Optional_payloadISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0ELb0EED2Ev.exit: ; preds = %bb.a, %.noexc.i.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_10Triangle_3IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Plane_3.742") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #34 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %class.anon.671, align 8            ; 5 uses
  %8 = alloca %class.anon.670, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %10 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %11 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %12 = alloca %"class.CGAL::PlaneC3.414", align 16 ; 7 uses
  %.sroa.0.i = alloca [4 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.CGAL::Plane_3.800", align 16 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #44
          to label %bb.b unwind label %bb.e       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %2, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !3007
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !3007
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !3007
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 112
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 128
  invoke void @_ZN4CGAL19plane_from_pointsC3INS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_S5_S5_S5_S5_S5_RS3_S6_S6_S6_(ptr noundef nonnull align 16 dereferenceable(144) %i.p, ptr noundef nonnull align 16 dereferenceable(16) %i.s, ptr noundef nonnull align 16 dereferenceable(16) %i.t, ptr noundef nonnull align 16 dereferenceable(48) %i.q, ptr noundef nonnull align 16 dereferenceable(16) %i.u, ptr noundef nonnull align 16 dereferenceable(16) %i.v, ptr noundef nonnull align 16 dereferenceable(48) %i.r, ptr noundef nonnull align 16 dereferenceable(16) %i.w, ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 16 dereferenceable(16) %9, ptr noundef nonnull align 16 dereferenceable(16) %10, ptr noundef nonnull align 16 dereferenceable(16) %11)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %12, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !1149, !noalias !3000
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !1149, !noalias !3000
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !1149, !noalias !3000
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !3007
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !3007
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !3007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %12, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !3000
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.ab, align 4, !tbaa !2970
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ac, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !3010
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.ae, align 8, !tbaa !2974
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors28Construct_supporting_plane_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_10Triangle_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.ag = load ptr, ptr %2, align 8, !tbaa !109   ; 2 uses
  store ptr %i.ag, ptr %i.af, align 16, !tbaa !109
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store atomic i32 %i.ak, ptr %i.ai monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %.noexc
  %i.al = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.am = load i32, ptr %i.c, align 4
  %i.an = and i32 %i.am, -24577
  %i.ao = or disjoint i32 %i.an, %i.i
  store i32 %i.ao, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  %i.ap = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 112) #40
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %i.ap, %bb.e ] ; 3 uses
  %.08 = extractvalue { ptr, i32 } %.pn, 1
  %i.ar = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.as = icmp eq i32 %.08, %i.ar
  br i1 %i.as, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %bb.g
  %.09 = extractvalue { ptr, i32 } %.pn, 0
  %i.at = call ptr @__cxa_begin_catch(ptr %.09) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.au = load i32, ptr %i.c, align 4
  %i.av = and i32 %i.au, -24577
  %i.aw = or disjoint i32 %i.av, %i.i
  store i32 %i.aw, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ax = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #44 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ay = load ptr, ptr %2, align 8, !tbaa !109   ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.ay, ptr %8, align 8, !tbaa !2691
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %8, ptr %7, align 8, !tbaa !15
  %i.ba = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %7, ptr %i.ba, align 8, !tbaa !15
  %i.bb = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.bb, align 8, !tbaa !15
  %i.bc = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.az, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bc) #43
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ba, align 8, !tbaa !15
  store ptr null, ptr %i.bb, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.m:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ba, align 8, !tbaa !15
  store ptr null, ptr %i.bb, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 160
  %i.bf = load atomic ptr, ptr %i.be monotonic, align 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 144
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 336
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 528
  invoke void @_ZN4CGAL7Plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_3ISF_EESK_SK_(ptr noundef nonnull align 16 dereferenceable(256) %13, ptr noundef nonnull align 16 dereferenceable(576) %i.bg, ptr noundef nonnull align 16 dereferenceable(192) %i.bh, ptr noundef nonnull align 16 dereferenceable(192) %i.bi)
          to label %_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit unwind label %bb.af

_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !3013
  %i.bj = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(256) %13)
          to label %.noexc18 unwind label %bb.ag  ; 2 uses

.noexc18:                                         ; preds = %_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3013
  %i.bk = extractvalue { double, double } %i.bj, 0
  %i.bl = extractvalue { double, double } %i.bj, 1
  %i.bm = fneg double %i.bk
  %i.bn = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bl, i64 1
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !3013
  %i.bq = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.bp)
          to label %.noexc19 unwind label %bb.ag  ; 2 uses

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3013
  %i.br = extractvalue { double, double } %i.bq, 0
  %i.bs = extractvalue { double, double } %i.bq, 1
  %i.bt = fneg double %i.br
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.bs, i64 1
  %i.bw = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !3013
  %i.bx = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.bw)
          to label %.noexc20 unwind label %bb.ag  ; 2 uses

.noexc20:                                         ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !3013
  %i.by = extractvalue { double, double } %i.bx, 0
  %i.bz = extractvalue { double, double } %i.bx, 1
  %i.ca = fneg double %i.by
  %i.cb = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %i.bz, i64 1
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !3013
  %i.ce = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.cd)
          to label %.noexc21 unwind label %bb.ag  ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !3013
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i32 1, ptr %i.cf, align 4, !tbaa !2970
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %i.ax, align 16, !tbaa !92
  %i.cg = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #44
          to label %_ZN4CGAL10Lazy_rep_0INS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit unwind label %bb.ag ; 45 uses

_ZN4CGAL10Lazy_rep_0INS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit: ; preds = %.noexc21
  %i.ch = extractvalue { double, double } %i.ce, 0
  %i.ci = fneg double %i.ch
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = extractvalue { double, double } %i.ce, 1
  %i.cl = insertelement <2 x double> %i.cj, double %i.ck, i64 1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  store <2 x double> %i.bo, ptr %i.cg, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store <2 x double> %i.bv, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 32
  store <2 x double> %i.cc, ptr %.sroa.5.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 48
  store <2 x double> %i.cl, ptr %.sroa.6.0..sroa_idx.i, align 16
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cg, i64 64 ; 3 uses
  store i64 0, ptr %i.cn, align 16, !tbaa !24
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 80
  %i.cp = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 16, !tbaa !1058 ; 2 uses
  store i64 %i.cq, ptr %i.co, align 16, !tbaa !1058
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cg, i64 88
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ct = load i8, ptr %i.cs, align 8, !tbaa !1066, !range !13, !noundef !14
  store i8 %i.ct, ptr %i.cr, align 8, !tbaa !1066
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cg, i64 89
  %i.cv = getelementptr inbounds nuw i8, ptr %13, i64 25 ; 2 uses
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cg, i64 90
  %i.cy = getelementptr inbounds nuw i8, ptr %13, i64 26
  %i.cz = load i8, ptr %i.cy, align 2, !tbaa !1067, !range !13, !noundef !14
end_hunk_1
begin_hunk_2_@_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_4plusENSE_INSD_5minusENSE_INSD_19multiply_immediatesESB_SB_vvEESI_vvEESI_vvEEEEvRKT_RKSF_:_ZNK5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit3.i.thread
  store i128 %.sroa.0.0.copyload.i.i, ptr %0, align 16, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load i8, ptr %i.s, align 8, !tbaa !1150, !range !13, !noundef !14
  %i.v = load i8, ptr %i.t, align 8, !tbaa !1150, !range !13, !noundef !14
  store i8 %i.v, ptr %i.s, align 8, !tbaa !1150
  store i8 %i.u, ptr %i.t, align 8, !tbaa !1150
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 25 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 2 uses
  %i.y = load i8, ptr %i.w, align 1, !tbaa !1150, !range !13, !noundef !14
  %i.z = load i8, ptr %i.x, align 1, !tbaa !1150, !range !13, !noundef !14 ; 2 uses
  store i8 %i.z, ptr %i.w, align 1, !tbaa !1150
  store i8 %i.y, ptr %i.x, align 1, !tbaa !1150
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load i64, ptr %i.aa, align 16, !tbaa !25
  %i.ad = load i64, ptr %i.ab, align 16, !tbaa !25
  store i64 %i.ad, ptr %i.aa, align 16, !tbaa !25
  store i64 %i.ac, ptr %i.ab, align 16, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 26 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.ag = load i8, ptr %i.ae, align 2, !tbaa !1150, !range !13, !noundef !14
  %i.ah = load i8, ptr %i.af, align 2, !tbaa !1150, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ah, ptr %i.ae, align 2, !tbaa !1150
  store i8 %i.ag, ptr %i.af, align 2, !tbaa !1150
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i3.i = load i128, ptr %i.ai, align 16, !tbaa !24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(27) %i.ai, ptr noundef nonnull align 16 dereferenceable(27) %i.aj, i64 16, i1 false), !tbaa.struct !1149
  store i128 %.sroa.0.0.copyload.i3.i, ptr %i.aj, align 16, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.am = load i8, ptr %i.ak, align 8, !tbaa !1150, !range !13, !noundef !14
  %i.an = load i8, ptr %i.al, align 8, !tbaa !1150, !range !13, !noundef !14
  store i8 %i.an, ptr %i.ak, align 8, !tbaa !1150
  store i8 %i.am, ptr %i.al, align 8, !tbaa !1150
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 57 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !1150, !range !13, !noundef !14
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !1150, !range !13, !noundef !14 ; 2 uses
  store i8 %i.ar, ptr %i.ao, align 1, !tbaa !1150
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !1150
  %i.as = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.au = load i64, ptr %i.as, align 16, !tbaa !25
  %i.av = load i64, ptr %i.at, align 16, !tbaa !25
  store i64 %i.av, ptr %i.as, align 16, !tbaa !25
  store i64 %i.au, ptr %i.at, align 16, !tbaa !25
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 58 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 58 ; 2 uses
  %i.ay = load i8, ptr %i.aw, align 2, !tbaa !1150, !range !13, !noundef !14
  %i.az = load i8, ptr %i.ax, align 2, !tbaa !1150, !range !13, !noundef !14 ; 2 uses
  store i8 %i.az, ptr %i.aw, align 2, !tbaa !1150
  store i8 %i.ay, ptr %i.ax, align 2, !tbaa !1150
  %i.ba = or i8 %i.az, %i.ar
  %or.cond.i1.i.i.not = icmp eq i8 %i.ba, 0
  br i1 %or.cond.i1.i.i.not, label %bb.c, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

bb.c:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusENSD_10expressionINSD_5minusENSF_INSD_19multiply_immediatesESB_SB_vvEESI_vvEESI_vvEERKNSF_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSP_11result_typeESB_EE5valueEvE4typeE.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.ai, align 16
  %i.be = shl i64 %i.bd, 3
  call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #40
  %.pre = load i8, ptr %i.w, align 1, !tbaa !9, !range !13
  %.pre67 = load i8, ptr %i.ae, align 2, !range !13
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i: ; preds = %bb.c, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusENSD_10expressionINSD_5minusENSF_INSD_19multiply_immediatesESB_SB_vvEESI_vvEESI_vvEERKNSF_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSP_11result_typeESB_EE5valueEvE4typeE.exit
  %i.bf = phi i8 [ %.pre67, %bb.c ], [ %i.ah, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusENSD_10expressionINSD_5minusENSF_INSD_19multiply_immediatesESB_SB_vvEESI_vvEESI_vvEERKNSF_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSP_11result_typeESB_EE5valueEvE4typeE.exit ]
  %i.bg = phi i8 [ %.pre, %bb.c ], [ %i.z, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail4plusENSD_10expressionINSD_5minusENSF_INSD_19multiply_immediatesESB_SB_vvEESI_vvEESI_vvEERKNSF_IT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSP_11result_typeESB_EE5valueEvE4typeE.exit ]
  %i.bh = trunc nuw i8 %i.bg to i1
  %i.bi = trunc nuw i8 %i.bf to i1
  %or.cond.i.i.i = select i1 %i.bh, i1 true, i1 %i.bi
  br i1 %or.cond.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = load i64, ptr %8, align 16
  %i.bm = shl i64 %i.bl, 3
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bm) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %bb.h

.critedge:                                        ; preds = %_ZNK5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE13contains_selfINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEEEEbRKT_RKSt17integral_constantIiLi2EE.exit3.i.thread
  br i1 %spec.select, label %bb.e, label %.critedge3

.critedge3:                                       ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.a, ptr %9, align 8, !tbaa !2694, !alias.scope !3403
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.c, ptr %i.bn, align 8, !tbaa !2694, !alias.scope !3403
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.e, ptr %i.bo, align 8, !tbaa !2694, !alias.scope !3403
  %i.bp = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.g, ptr %i.bp, align 8, !tbaa !2694, !alias.scope !3403
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_5minusENSE_INSD_19multiply_immediatesESB_SB_vvEESH_vvEEEEvRKT_RKSF_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(1) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !3406)
  %i.bq = load <2 x ptr>, ptr %i.l, align 8, !tbaa !2694, !noalias !3406
  store <2 x ptr> %i.bq, ptr %11, align 16, !tbaa !2694, !alias.scope !3406
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEESF_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %11, ptr noundef nonnull align 1 dereferenceable(1) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.h

bb.e:                                             ; preds = %.critedge
  %i.br = icmp eq ptr %i.m, %i.o
  br i1 %i.br, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %i.m, ptr noundef nonnull align 16 dereferenceable(64) %i.o)
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @_ZN5boost14multiprecision8backends13eval_multiplyILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELm0ELm0ELS3_1ELS4_0ES5_Lm0ELm0ELS3_1ELS4_0ES5_EENSt9enable_ifIXaaaantsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT4_EXT5_EXT6_EXT7_ET8_EEEE5valuentsr18is_trivial_cpp_intINS7_IXT9_EXT10_EXT11_EXT12_ET13_EEEE5valueEvE4typeERS9_RKSB_RKSD_(ptr noundef nonnull align 16 dereferenceable(27) %i.bs, ptr noundef nonnull align 16 dereferenceable(27) %i.bt, ptr noundef nonnull align 16 dereferenceable(27) %i.bu)
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEEEEvRKT_RKSF_.exit

bb.g:                                             ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  tail call void @_ZN5boost14multiprecision8backends17eval_multiply_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_RKS9_SF_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %i.m, ptr noundef nonnull align 16 dereferenceable(64) %i.o, ptr noundef nonnull align 16 dereferenceable(27) %i.bv)
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEEEEvRKT_RKSF_.exit

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEEEEvRKT_RKSF_.exit: ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.bw = load <2 x ptr>, ptr %1, align 8, !tbaa !2694, !noalias !3409
  store <2 x ptr> %i.bw, ptr %4, align 16, !tbaa !2694, !alias.scope !3412
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bx = load <2 x ptr>, ptr %i.d, align 8, !tbaa !2694, !noalias !3409
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE6do_addINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEESF_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store <2 x ptr> %i.bx, ptr %6, align 16, !tbaa !2694, !alias.scope !3415
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE11do_subtractINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEESF_EEvRKT_RKT0_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 1 dereferenceable(1) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.h

bb.h:                                             ; preds = %.critedge3, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EE9do_assignINS0_6detail10expressionINSD_19multiply_immediatesESB_SB_vvEEEEvRKT_RKSF_.exit, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_7Point_3IS1_EEST_EEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Segment_3.850") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %5 = alloca %class.anon.725, align 8            ; 5 uses
  %6 = alloca %class.anon.724, align 8            ; 4 uses
  %7 = alloca %class.anon.725, align 8            ; 5 uses
  %8 = alloca %class.anon.724, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %.sroa.0.i = alloca [2 x %"class.CGAL::Point_3.276"], align 16 ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.CGAL::SegmentC3.869", align 16 ; 55 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.m = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #44
          to label %bb.b unwind label %bb.e       ; 9 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %3, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %4, align 8, !tbaa !109    ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(48) %i.o, i64 48, i1 false)
  %.sroa.0.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.0.i, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.0.48..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %i.q, i64 48, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.r, align 4, !tbaa !2970
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.s, ptr noundef nonnull align 16 dereferenceable(96) %.sroa.0.i, i64 96, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 112
  store ptr %i.s, ptr %i.t, align 8, !tbaa !3418
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store i32 0, ptr %i.u, align 8, !tbaa !2974
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors19Construct_segment_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_15Return_base_tagENS_7Point_3INS_5EpeckEEESX_EEE, i64 16), ptr %i.m, align 16, !tbaa !92
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 128
  store ptr %i.p, ptr %i.v, align 16, !tbaa !109
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = add nsw i32 %i.y, 1
  store atomic i32 %i.z, ptr %i.x monotonic, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ab = load ptr, ptr %3, align 8, !tbaa !109   ; 2 uses
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !109
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.af = atomicrmw add ptr %i.x, i32 1 monotonic, align 4 ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 136
  %i.ah = load ptr, ptr %3, align 8, !tbaa !109   ; 2 uses
  store ptr %i.ah, ptr %i.ag, align 8, !tbaa !109
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ak = load i32, ptr %i.c, align 4
  %i.al = and i32 %i.ak, -24577
  %i.am = or disjoint i32 %i.al, %i.i
  store i32 %i.am, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  %.011 = extractvalue { ptr, i32 } %i.an, 1
  %i.ao = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ap = icmp eq i32 %.011, %i.ao
  br i1 %i.ap, label %bb.f, label %bb.ac

bb.f:                                             ; preds = %bb.e
  %.012 = extractvalue { ptr, i32 } %i.an, 0
  %i.aq = call ptr @__cxa_begin_catch(ptr %.012) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.ab

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.ar = load i32, ptr %i.c, align 4
  %i.as = and i32 %i.ar, -24577
  %i.at = or disjoint i32 %i.as, %i.i
  store i32 %i.at, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.au = call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #44 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.av = load ptr, ptr %3, align 8, !tbaa !109   ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.av, ptr %8, align 8, !tbaa !2959
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %8, ptr %7, align 8, !tbaa !15
  %i.ax = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %7, ptr %i.ax, align 8, !tbaa !15
  %i.ay = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !15
  %i.az = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.aw, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.j ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.g
  %.not.i.i.i.i = icmp eq i32 %i.az, 0
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.az) #43
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ba = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !15
  store ptr null, ptr %i.ay, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.k:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.ax, align 8, !tbaa !15
  store ptr null, ptr %i.ay, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  %i.bc = load atomic ptr, ptr %i.bb monotonic, align 8
  %i.bd = load ptr, ptr %4, align 8, !tbaa !109   ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %i.bd, ptr %6, align 8, !tbaa !2959
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  store ptr %6, ptr %5, align 8, !tbaa !15
  store ptr %5, ptr %i.ax, align 8, !tbaa !15
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ay, align 8, !tbaa !15
  %i.bf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.be, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20 unwind label %bb.n ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20:        ; preds = %bb.k
  %.not.i.i.i.i21 = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i.i21, label %bb.o, label %bb.l

bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bf) #43
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.bg = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ax, align 8, !tbaa !15
  store ptr null, ptr %i.ay, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i20
  store ptr null, ptr %i.ax, align 8, !tbaa !15
  store ptr null, ptr %i.ay, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 64
  %i.bi = load atomic ptr, ptr %i.bh monotonic, align 8
  invoke void @_ZN4CGAL9SegmentC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_3ISF_EESK_(ptr noundef nonnull align 16 dereferenceable(384) %9, ptr noundef nonnull align 16 dereferenceable(192) %i.bc, ptr noundef nonnull align 16 dereferenceable(192) %i.bi)
          to label %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_3ISG_EESM_.exit unwind label %bb.ad

_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_3ISG_EESM_.exit: ; preds = %bb.o
  invoke void @_ZN4CGAL10Lazy_rep_0INS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2INS_9SegmentC3ISK_EEEEOT_(ptr noundef nonnull align 16 dereferenceable(128) %i.au, ptr noundef nonnull align 16 dereferenceable(384) %9)
          to label %_ZN4CGAL6HandleD2Ev.exit27 unwind label %bb.ae

_ZN4CGAL6HandleD2Ev.exit27:                       ; preds = %_ZNK4CGAL20CommonKernelFunctors19Construct_segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclENS_15Return_base_tagERKNS_7Point_3ISG_EESM_.exit
  store ptr %i.au, ptr %0, align 8, !tbaa !109
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 192
  %i.bk = getelementptr inbounds nuw i8, ptr %9, i64 320
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 377
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bn = trunc nuw i8 %i.bm to i1
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 378
  %i.bp = load i8, ptr %i.bo, align 2, !range !13
  %i.bq = trunc nuw i8 %i.bp to i1
  %or.cond.i1.i.i.i28 = select i1 %i.bn, i1 true, i1 %i.bq
  br i1 %or.cond.i1.i.i.i28, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29, label %bb.p

bb.p:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit27
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 352
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 360
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load i64, ptr %i.br, align 16
  %i.bv = shl i64 %i.bu, 3
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bv) #40
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29: ; preds = %bb.p, %_ZN4CGAL6HandleD2Ev.exit27
  %i.bw = getelementptr inbounds nuw i8, ptr %9, i64 345
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9, !range !13, !noundef !14
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %9, i64 346
  %i.ca = load i8, ptr %i.bz, align 2, !range !13
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond.i.i.i.i30 = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond.i.i.i.i30, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i31, label %bb.q

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 328
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = load i64, ptr %i.bk, align 16
  %i.cf = shl i64 %i.ce, 3
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cf) #40
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i31

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i31: ; preds = %bb.q, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i29
  %i.cg = getelementptr inbounds nuw i8, ptr %9, i64 256
  %i.ch = getelementptr inbounds nuw i8, ptr %9, i64 313
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %9, i64 314
  %i.cl = load i8, ptr %i.ck, align 2, !range !13
  %i.cm = trunc nuw i8 %i.cl to i1
  %or.cond.i1.i.i.1.i32 = select i1 %i.cj, i1 true, i1 %i.cm
  br i1 %or.cond.i1.i.i.1.i32, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i33, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i31
  %i.cn = getelementptr inbounds nuw i8, ptr %9, i64 288
  %i.co = getelementptr inbounds nuw i8, ptr %9, i64 296
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = load i64, ptr %i.cn, align 16
  %i.cr = shl i64 %i.cq, 3
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal17SelfIntersectMeshIN4CGAL5EpeckEN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS6_IiLin1ELin1ELi0ELin1ELin1EEENS6_IdLin1ELi3ELi0ELin1ELi3EEENS6_IiLin1ELi3ELi0ELin1ELi3EEES8_NS6_IiLin1ELi1ELi0ELin1ELi1EEESB_E14mark_offensiveEl:bb.a
  %i.ae = icmp eq ptr %.19.i.i.i, %i.aa
  br i1 %i.ae, label %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread, label %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit

_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !25
  %.not = icmp slt i64 %1, %i.ag
  br i1 %.not, label %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread, label %bb.g

_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread: ; preds = %_ZNKSt8_Rb_treeIlSt4pairIKlSt6vectorIS0_IlN4CGAL6ObjectEESaIS5_EEESt10_Select1stIS8_ESt4lessIlESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZNSt6vectorIlSaIlEE9push_backERKl.exit, %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit
  %i.ah = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEEixERS9_(ptr noundef nonnull align 8 dereferenceable(48) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @_ZNSt6vectorISt4pairIlN4CGAL6ObjectEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef null, ptr noundef null)
  br label %bb.g

bb.g:                                             ; preds = %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit.thread, %_ZNKSt3mapIlSt6vectorISt4pairIlN4CGAL6ObjectEESaIS4_EESt4lessIlESaIS1_IKlS6_EEE5countERS9_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_10Triangle_3IS1_EESR_EEDcRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.748") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.anon.1310, align 1           ; 3 uses
  %5 = alloca %class.anon.1163, align 1           ; 3 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"struct.CGAL::Simple_cartesian.660", align 1 ; 3 uses
  %7 = alloca %class.anon.671, align 8            ; 5 uses
  %8 = alloca %class.anon.670, align 8            ; 4 uses
  %9 = alloca %class.anon.671, align 8            ; 5 uses
  %10 = alloca %class.anon.670, align 8           ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %11 = alloca %class.anon.1163, align 1          ; 3 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %12 = alloca %"class.CGAL::Lazy.900", align 8   ; 8 uses
  %13 = alloca %"class.CGAL::CommonKernelFunctors::Intersect_3.948", align 1 ; 4 uses
  %14 = alloca %"class.CGAL::CommonKernelFunctors::Intersect_3.943", align 1 ; 4 uses
  %15 = alloca %"class.std::optional.904", align 16 ; 15 uses
  %16 = alloca %"class.std::optional.748", align 16 ; 18 uses
  %17 = alloca %"struct.CGAL::internal::Fill_lazy_variant_visitor_2", align 8 ; 10 uses
  %18 = alloca %"class.std::optional.949", align 16 ; 9 uses
  %19 = alloca %"class.std::optional.748", align 16 ; 18 uses
  %20 = alloca %"struct.CGAL::internal::Fill_lazy_variant_visitor_0", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.m = invoke noalias noundef nonnull dereferenceable(224) ptr @_Znwm(i64 noundef 224) #44
          to label %bb.b unwind label %bb.d       ; 4 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EEC2IJRKS1C_S1G_EEERKS15_RKS16_DpOT_(ptr noundef nonnull align 16 dereferenceable(224) %i.m, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  store ptr %i.m, ptr %12, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.o = load atomic ptr, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 160
  %i.q = load i8, ptr %i.p, align 16, !tbaa !3599, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  invoke void @_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEC2EbRKSG_(ptr noundef nonnull align 16 dereferenceable(176) %15, i1 noundef zeroext %i.r, ptr noundef nonnull align 16 dereferenceable(176) %i.o)
          to label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEC2ERKSG_.exit unwind label %bb.f

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEC2ERKSG_.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.s = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 3 uses
  store i8 0, ptr %i.s, align 16, !tbaa !2949
  %i.t = getelementptr inbounds nuw i8, ptr %15, i64 160 ; 5 uses
  %i.u = load i8, ptr %i.t, align 16, !tbaa !3599, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.g, label %.thread

.thread:                                          ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEC2ERKSG_.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.w, align 8, !tbaa !2949
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.ai

bb.e:                                             ; preds = %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 224) #40
  br label %bb.ai

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEC2ERKSG_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  store ptr %16, ptr %17, align 8, !tbaa !3601
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %12, ptr %i.aa, align 8, !tbaa !3605
  %i.ab = getelementptr inbounds nuw i8, ptr %15, i64 144 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 16, !tbaa !3606
  switch i8 %i.ac, label %bb.l [
    i8 0, label %bb.h
    i8 1, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclISZ_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(145) %15)
          to label %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISK_EENS8_ISK_EENSA_ISK_EESC_IS10_SaIS10_EEEEES3_IS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS17_SaIS17_EEEEENS0_19Cartesian_converterISY_SK_NS0_12NT_converterISX_SJ_EEEEEEEEJRS15_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1P_EEEEE4typeEE4typeEOS1Y_EEEE4typeEOS1N_DpOS1P_.exit unwind label %bb.s

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclIS10_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(145) %15)
          to label %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISK_EENS8_ISK_EENSA_ISK_EESC_IS10_SaIS10_EEEEES3_IS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS17_SaIS17_EEEEENS0_19Cartesian_converterISY_SK_NS0_12NT_converterISX_SJ_EEEEEEEEJRS15_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1P_EEEEE4typeEE4typeEOS1Y_EEEE4typeEOS1N_DpOS1P_.exit unwind label %bb.s

bb.j:                                             ; preds = %bb.g
  invoke void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclIS11_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(145) %15)
          to label %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISK_EENS8_ISK_EENSA_ISK_EESC_IS10_SaIS10_EEEEES3_IS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS17_SaIS17_EEEEENS0_19Cartesian_converterISY_SK_NS0_12NT_converterISX_SJ_EEEEEEEEJRS15_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1P_EEEEE4typeEE4typeEOS1Y_EEEE4typeEOS1N_DpOS1P_.exit unwind label %bb.s

bb.k:                                             ; preds = %bb.g
  invoke void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclISZ_EEvRKSB_IT_SaIS1K_EE(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef nonnull align 16 dereferenceable(145) %15)
          to label %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISK_EENS8_ISK_EENSA_ISK_EESC_IS10_SaIS10_EEEEES3_IS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS17_SaIS17_EEEEENS0_19Cartesian_converterISY_SK_NS0_12NT_converterISX_SJ_EEEEEEEEJRS15_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1P_EEEEE4typeEE4typeEOS1Y_EEEE4typeEOS1N_DpOS1P_.exit unwind label %bb.s

bb.l:                                             ; preds = %bb.g
  unreachable

_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISK_EENS8_ISK_EENSA_ISK_EESC_IS10_SaIS10_EEEEES3_IS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS17_SaIS17_EEEEENS0_19Cartesian_converterISY_SK_NS0_12NT_converterISX_SJ_EEEEEEEEJRS15_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1P_EEEEE4typeEE4typeEOS1Y_EEEE4typeEOS1N_DpOS1P_.exit: ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.ad, align 8, !tbaa !2949
  %i.ae = load i8, ptr %i.s, align 16, !tbaa !2949, !range !13, !noundef !14
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.m, label %.thread51

.thread51:                                        ; preds = %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISK_EENS8_ISK_EENSA_ISK_EESC_IS10_SaIS10_EEEEES3_IS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS17_SaIS17_EEEEENS0_19Cartesian_converterISY_SK_NS0_12NT_converterISX_SJ_EEEEEEEEJRS15_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1P_EEEEE4typeEE4typeEOS1Y_EEEE4typeEOS1N_DpOS1P_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit

bb.m:                                             ; preds = %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISK_EENS8_ISK_EENSA_ISK_EESC_IS10_SaIS10_EEEEES3_IS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS17_SaIS17_EEEEENS0_19Cartesian_converterISY_SK_NS0_12NT_converterISX_SJ_EEEEEEEEJRS15_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1P_EEEEE4typeEE4typeEOS1Y_EEEE4typeEOS1N_DpOS1P_.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.ag, align 8, !tbaa !2951
  %i.ah = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !2951 ; 2 uses
  switch i8 %i.ai, label %bb.r [
    i8 0, label %bb.n
    i8 1, label %bb.o
    i8 2, label %bb.p
    i8 3, label %bb.q
    i8 -1, label %bb.v
  ]

bb.n:                                             ; preds = %bb.m
  %i.aj = load ptr, ptr %16, align 16, !tbaa !109
  store ptr %i.aj, ptr %0, align 8, !tbaa !109
  store ptr null, ptr %16, align 16, !tbaa !109
  br label %bb.v

bb.o:                                             ; preds = %bb.m
  %i.ak = load ptr, ptr %16, align 16, !tbaa !109
  store ptr %i.ak, ptr %0, align 8, !tbaa !109
  store ptr null, ptr %16, align 16, !tbaa !109
  br label %bb.v

bb.p:                                             ; preds = %bb.m
  %i.al = load ptr, ptr %16, align 16, !tbaa !109
  store ptr %i.al, ptr %0, align 8, !tbaa !109
  store ptr null, ptr %16, align 16, !tbaa !109
  br label %bb.v

bb.q:                                             ; preds = %bb.m
  %i.am = load <2 x ptr>, ptr %16, align 16, !tbaa !3608
  store <2 x ptr> %i.am, ptr %0, align 8, !tbaa !3608
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.ap = load ptr, ptr %i.ao, align 16, !tbaa !3610
  store ptr %i.ap, ptr %i.an, align 8, !tbaa !3610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %16, i8 0, i64 24, i1 false)
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  unreachable

bb.s:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %16) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.ar = load i8, ptr %i.t, align 16, !tbaa !3599, !range !13, !noundef !14
  %i.as = trunc nuw i8 %i.ar to i1
  store i8 0, ptr %i.t, align 16, !tbaa !3599
  %i.at = load i8, ptr %i.ab, align 16
  %i.au = icmp eq i8 %i.at, 3
  %or.cond.i.i.i = select i1 %i.as, i1 %i.au, i1 false
  br i1 %or.cond.i.i.i, label %bb.t, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.s
  %i.av = load ptr, ptr %15, align 16, !tbaa !3612 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ax = load ptr, ptr %i.aw, align 16, !tbaa !3615
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.av to i64
  %i.ba = sub i64 %i.ay, %i.az
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ba) #40
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

bb.v:                                             ; preds = %bb.m, %bb.n, %bb.o, %bb.p, %bb.q
  store i8 %i.ai, ptr %i.ag, align 8, !tbaa !2951
  store i8 1, ptr %i.ad, align 8, !tbaa !2949
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #23
  store i8 0, ptr %i.s, align 16, !tbaa !2949
  %i.bb = getelementptr inbounds nuw i8, ptr %16, i64 24
  %i.bc = load i8, ptr %i.bb, align 8
  %.not.i.i.i.i.i.i.not = icmp eq i8 %i.bc, -1
  br i1 %.not.i.i.i.i.i.i.not, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit, label %bb.w, !prof !3616

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull align 8 dereferenceable(40) %16)
          to label %.noexc.i.i.i.i.i unwind label %bb.x

.noexc.i.i.i.i.i:                                 ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          catch ptr null
  %i.be = extractvalue { ptr, i32 } %i.bd, 0
  call void @__clang_call_terminate(ptr %i.be) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit: ; preds = %.thread51, %.thread, %bb.v, %.noexc.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23
  %i.bf = load i8, ptr %i.t, align 16, !tbaa !3599, !range !13, !noundef !14
  %i.bg = trunc nuw i8 %i.bf to i1
  store i8 0, ptr %i.t, align 16, !tbaa !3599
  %i.bh = getelementptr inbounds nuw i8, ptr %15, i64 144
  %i.bi = load i8, ptr %i.bh, align 16
  %i.bj = icmp eq i8 %i.bi, 3
  %or.cond.i.i.i23 = select i1 %i.bg, i1 %i.bj, i1 false
  br i1 %or.cond.i.i.i23, label %bb.y, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit25

bb.y:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit
  %i.bk = load ptr, ptr %15, align 16, !tbaa !3612 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i24 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i24, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit25, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.bm = load ptr, ptr %i.bl, align 16, !tbaa !3615
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.bp) #40
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit25

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit25: ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit, %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.bq = load ptr, ptr %12, align 8, !tbaa !109  ; 4 uses
  %.not.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit25
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.br, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 3 uses
  %i.bt = load atomic i32, ptr %i.bs monotonic, align 4 ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %i.bu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bv = load ptr, ptr %i.bq, align 8, !tbaa !92
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(12) %i.bq) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.ad:                                            ; preds = %bb.ab
  %i.by = add nsw i32 %i.bt, -1
  store atomic i32 %i.by, ptr %i.bs monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.ae:                                            ; preds = %bb.aa
  br i1 %i.bu, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bz = atomicrmw sub ptr %i.bs, i32 1 release, align 4
  %i.ca = icmp eq i32 %i.bz, 1
  br i1 %i.ca, label %bb.ag, label %_ZN4CGAL6HandleD2Ev.exit

bb.ag:                                            ; preds = %bb.af, %bb.ae
  fence acquire
  %i.cb = load ptr, ptr %12, align 8, !tbaa !109  ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cd = load ptr, ptr %i.cb, align 8, !tbaa !92
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(12) %i.cb) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit25, %bb.ac, %bb.ad, %bb.af, %bb.ag, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.cg = load i32, ptr %i.c, align 4
  %i.ch = and i32 %i.cg, -24577
  %i.ci = or disjoint i32 %i.ch, %i.i
  store i32 %i.ci, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.bh

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit: ; preds = %bb.u, %bb.t, %bb.s, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.aq, %bb.s ], [ %i.aq, %bb.t ], [ %i.aq, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %12) #23
  br label %bb.ai

bb.ai:                                            ; preds = %bb.e, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit ], [ %i.y, %bb.e ], [ %i.x, %bb.d ] ; 3 uses
  %.110 = extractvalue { ptr, i32 } %.pn.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.cj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ck = icmp eq i32 %.110, %i.cj
  br i1 %i.ck, label %bb.aj, label %bb.as

bb.aj:                                            ; preds = %bb.ai
  %.112 = extractvalue { ptr, i32 } %.pn.pn, 0
  %i.cl = call ptr @__cxa_begin_catch(ptr %.112) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.ak unwind label %bb.ar

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.cm = load i32, ptr %i.c, align 4
  %i.cn = and i32 %i.cm, -24577
  %i.co = or disjoint i32 %i.cn, %i.i
  store i32 %i.co, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.cp = load ptr, ptr %2, align 8, !tbaa !109   ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %i.cp, ptr %10, align 8, !tbaa !2691
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %10, ptr %9, align 8, !tbaa !15
  %i.cr = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %9, ptr %i.cr, align 8, !tbaa !15
  %i.cs = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.cs, align 8, !tbaa !15
  %i.ct = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cq, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.an ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.ak
  %.not.i.i.i.i = icmp eq i32 %i.ct, 0
  br i1 %.not.i.i.i.i, label %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit, label %bb.al

bb.al:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ct) #43
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  unreachable

common.resume:                                    ; preds = %bb.as, %bb.bb, %bb.aq, %bb.an
  %common.resume.op = phi { ptr, i32 } [ %i.cu, %bb.an ], [ %i.db, %bb.aq ], [ %i.eb, %bb.bb ], [ %.merged17, %bb.as ]
  resume { ptr, i32 } %common.resume.op

bb.an:                                            ; preds = %bb.al, %bb.ak
  %i.cu = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.cr, align 8, !tbaa !15
  store ptr null, ptr %i.cs, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %common.resume

_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.cr, align 8, !tbaa !15
  store ptr null, ptr %i.cs, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 160
  %i.cw = load atomic ptr, ptr %i.cv monotonic, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 144
  %i.cy = load ptr, ptr %3, align 8, !tbaa !109   ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.cy, ptr %8, align 8, !tbaa !2691
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %8, ptr %7, align 8, !tbaa !15
  store ptr %7, ptr %i.cr, align 8, !tbaa !15
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.cs, align 8, !tbaa !15
  %i.da = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.cz, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i26 unwind label %bb.aq ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i26:        ; preds = %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit
  %.not.i.i.i.i27 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i.i.i27, label %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit28, label %bb.ao

bb.ao:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i26
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.da) #43
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  unreachable

bb.aq:                                            ; preds = %bb.ao, %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit
  %i.db = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.cr, align 8, !tbaa !15
  store ptr null, ptr %i.cs, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %common.resume

_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit28: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i26
  store ptr null, ptr %i.cr, align 8, !tbaa !15
  store ptr null, ptr %i.cs, align 8, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 160
  %i.dd = load atomic ptr, ptr %i.dc monotonic, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !3617
  call void @_ZN4CGAL13Intersections8internal12intersectionINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS_19Intersection_traitsIT_NSJ_10Triangle_3ESK_E11result_typeERKSK_SO_RKSJ_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.949") align 16 %18, ptr noundef nonnull align 16 dereferenceable(576) %i.cx, ptr noundef nonnull align 16 dereferenceable(576) %i.de, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !3617
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 32 ; 3 uses
  store i8 0, ptr %i.df, align 16, !tbaa !2949
  %i.dg = getelementptr inbounds nuw i8, ptr %18, i64 592 ; 3 uses
  %i.dh = load i8, ptr %i.dg, align 16, !tbaa !3620, !range !13, !noundef !14
  %i.di = trunc nuw i8 %i.dh to i1
  br i1 %i.di, label %bb.at, label %.thread54

.thread54:                                        ; preds = %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit28
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 0, ptr %i.dj, align 8, !tbaa !2949
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36

bb.ar:                                            ; preds = %bb.aj
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ai
  %.merged17 = phi { ptr, i32 } [ %i.dk, %bb.ar ], [ %.pn.pn, %bb.ai ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.dl = load i32, ptr %i.a, align 4
  %i.dm = and i32 %i.dl, -24577
  %i.dn = or disjoint i32 %i.dm, %i.i
  store i32 %i.dn, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %common.resume

bb.at:                                            ; preds = %_ZN4CGAL5exactINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEERKT0_RKNS_4LazyIT_SQ_T1_EE.exit28
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  store ptr %19, ptr %20, align 8, !tbaa !3622
  invoke void @_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_0ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EENS0_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSH_IN5boost14multiprecision6numberINSM_8backends16rational_adaptorINSO_15cpp_int_backendILm0ELm0ELNSM_16cpp_integer_typeE1ELNSM_18cpp_int_check_typeE0ESaIyEEEEELNSM_26expression_template_optionE1EEEEEEEJRS4_IJNS5_ISY_EENS8_ISY_EENSA_ISY_EESC_IS11_SaIS11_EEEEEENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1B_EEEEE4typeEE4typeEOS1K_EEEE4typeEOS19_DpOS1B_(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 16 dereferenceable(577) %18)
          to label %bb.au unwind label %bb.bb

bb.au:                                            ; preds = %bb.at
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store i8 0, ptr %i.do, align 8, !tbaa !2949
  %i.dp = load i8, ptr %i.df, align 16, !tbaa !2949, !range !13, !noundef !14
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %bb.av, label %.thread57

.thread57:                                        ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36

bb.av:                                            ; preds = %bb.au
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 -1, ptr %i.dr, align 8, !tbaa !2951
  %i.ds = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !2951 ; 2 uses
  switch i8 %i.dt, label %bb.ba [
    i8 0, label %bb.aw
    i8 1, label %bb.ax
    i8 2, label %bb.ay
    i8 3, label %bb.az
    i8 -1, label %bb.bc
  ]

bb.aw:                                            ; preds = %bb.av
  %i.du = load ptr, ptr %19, align 16, !tbaa !109
  store ptr %i.du, ptr %0, align 8, !tbaa !109
  store ptr null, ptr %19, align 16, !tbaa !109
  br label %bb.bc

bb.ax:                                            ; preds = %bb.av
  %i.dv = load ptr, ptr %19, align 16, !tbaa !109
  store ptr %i.dv, ptr %0, align 8, !tbaa !109
  store ptr null, ptr %19, align 16, !tbaa !109
  br label %bb.bc

bb.ay:                                            ; preds = %bb.av
  %i.dw = load ptr, ptr %19, align 16, !tbaa !109
  store ptr %i.dw, ptr %0, align 8, !tbaa !109
  store ptr null, ptr %19, align 16, !tbaa !109
  br label %bb.bc

bb.az:                                            ; preds = %bb.av
  %i.dx = load <2 x ptr>, ptr %19, align 16, !tbaa !3608
  store <2 x ptr> %i.dx, ptr %0, align 8, !tbaa !3608
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.ea = load ptr, ptr %i.dz, align 16, !tbaa !3610
  store ptr %i.ea, ptr %i.dy, align 8, !tbaa !3610
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %19, i8 0, i64 24, i1 false)
  br label %bb.bc

bb.ba:                                            ; preds = %bb.av
  unreachable

bb.bb:                                            ; preds = %bb.at
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 16 dead_on_return(608) dereferenceable(608) %18) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %common.resume

bb.bc:                                            ; preds = %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  store i8 %i.dt, ptr %i.dr, align 8, !tbaa !2951
  store i8 1, ptr %i.do, align 8, !tbaa !2949
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  store i8 0, ptr %i.df, align 16, !tbaa !2949
  %i.ec = getelementptr inbounds nuw i8, ptr %19, i64 24
  %i.ed = load i8, ptr %i.ec, align 8
  %.not.i.i.i.i.i.i33.not = icmp eq i8 %i.ed, -1
  br i1 %.not.i.i.i.i.i.i33.not, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36, label %bb.bd, !prof !3616

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(40) %19)
          to label %.noexc.i.i.i.i.i35 unwind label %bb.be

.noexc.i.i.i.i.i35:                               ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36

bb.be:                                            ; preds = %bb.bd
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36: ; preds = %.thread57, %.thread54, %bb.bc, %.noexc.i.i.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.eg = load i8, ptr %i.dg, align 16, !tbaa !3620, !range !13, !noundef !14
  %i.eh = trunc nuw i8 %i.eg to i1
  store i8 0, ptr %i.dg, align 16, !tbaa !3620
  %i.ei = getelementptr inbounds nuw i8, ptr %18, i64 576
  %i.ej = load i8, ptr %i.ei, align 16
  %.not.i.i.i.i.i.i37 = icmp ne i8 %i.ej, -1
  %or.cond.not.i.i.i38 = select i1 %i.eh, i1 %.not.i.i.i.i.i.i37, i1 false
  br i1 %or.cond.not.i.i.i38, label %bb.bf, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit, !prof !2953

bb.bf:                                            ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_16Simple_cartesianIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEEEENS3_9Segment_3ISJ_EENS3_10Triangle_3ISJ_EESt6vectorISK_SaISK_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJSK_SM_SO_SR_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(608) %18)
          to label %.noexc.i.i.i.i.i39 unwind label %bb.bg

.noexc.i.i.i.i.i39:                               ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit

bb.bg:                                            ; preds = %bb.bf
  %i.ek = landingpad { ptr, i32 }
          catch ptr null
  %i.el = extractvalue { ptr, i32 } %i.ek, 0
  call void @__clang_call_terminate(ptr %i.el) #41
  unreachable

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEELb0ELb0EED2Ev.exit36, %.noexc.i.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.bh

bb.bh:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEENS1_9Segment_3ISH_EENS1_10Triangle_3ISH_EESt6vectorISI_SaISI_EEEELb0ELb0EED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EEC2IJRKS1C_S1G_EEERKS15_RKS16_DpOT_(ptr noundef nonnull align 16 dereferenceable(224) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.CGAL::Simple_cartesian", align 1 ; 3 uses
  %6 = alloca %"class.std::optional.904", align 16 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.a = load ptr, ptr %3, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load atomic ptr, ptr %i.b acquire, align 8
  %i.d = load ptr, ptr %4, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160
  %i.f = load atomic ptr, ptr %i.e acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !3624
  call void @_ZN4CGAL13Intersections8internal12intersectionINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_19Intersection_traitsIT_NS8_10Triangle_3ES9_E11result_typeERKS9_SD_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.904") align 16 %6, ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull align 16 dereferenceable(144) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !3624
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.g, align 8, !tbaa !2970
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 160 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  store i8 0, ptr %i.j, align 16, !tbaa !3599
  %i.k = load i8, ptr %i.i, align 16, !tbaa !3599, !range !13, !noundef !14
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.h, ptr %i.m, align 16, !tbaa !3627
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.n, align 8, !tbaa !2974
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 144
  %i.q = load i8, ptr %i.p, align 16, !tbaa !3606 ; 3 uses
  switch i8 %i.q, label %bb.f [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.h, ptr noundef nonnull align 16 dereferenceable(176) %6, i64 48, i1 false)
  br label %.thread17

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.h, ptr noundef nonnull align 16 dereferenceable(176) %6, i64 96, i1 false)
  br label %.thread17

bb.e:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %i.h, ptr noundef nonnull align 16 dereferenceable(176) %6, i64 144, i1 false)
  br label %.thread17

bb.f:                                             ; preds = %bb.b
  unreachable

.thread17:                                        ; preds = %bb.c, %bb.d, %bb.e
  store i8 %i.q, ptr %i.o, align 16, !tbaa !3606
  store i8 1, ptr %i.j, align 16, !tbaa !3599
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.h, ptr %i.r, align 16, !tbaa !3627
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.s, align 8, !tbaa !2974
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

bb.g:                                             ; preds = %bb.b
  %i.t = load <2 x ptr>, ptr %6, align 16, !tbaa !3630
  store <2 x ptr> %i.t, ptr %i.h, align 16, !tbaa !3630
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !3615
  store ptr %i.w, ptr %i.u, align 16, !tbaa !3615
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %6, i8 0, i64 24, i1 false)
  store i8 %i.q, ptr %i.o, align 16, !tbaa !3606
  store i8 1, ptr %i.j, align 16, !tbaa !3599
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %i.h, ptr %i.x, align 16, !tbaa !3627
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 0, ptr %i.y, align 8, !tbaa !2974
  store i8 0, ptr %i.i, align 16, !tbaa !3599
  %i.z = load ptr, ptr %6, align 16, !tbaa !3612  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !3615
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %i.z to i64
  %i.ae = sub i64 %i.ac, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ae) #40
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit: ; preds = %.thread17, %.thread, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EENS_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSJ_8backends16rational_adaptorINSL_15cpp_int_backendILm0ELm0ELNSJ_16cpp_integer_typeE1ELNSJ_18cpp_int_check_typeE0ESaIyEEEEELNSJ_26expression_template_optionE1EEEEEEENS9_ISV_EENSB_ISV_EESD_ISW_SaISW_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENS14_ISV_EENS_19Cartesian_converterISV_S7_NS_12NT_converterISU_S6_EEEELb0EJNSB_INS_5EpeckEEES1C_EEE, i64 16), ptr %0, align 16, !tbaa !92
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ag = load ptr, ptr %4, align 8, !tbaa !109   ; 2 uses
  store ptr %i.ag, ptr %i.af, align 16, !tbaa !109
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = add nsw i32 %i.aj, 1
  store atomic i32 %i.ak, ptr %i.ai monotonic, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.am = load ptr, ptr %3, align 8, !tbaa !109   ; 2 uses
  store ptr %i.am, ptr %i.al, align 8, !tbaa !109
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.ao = load atomic i32, ptr %i.an monotonic, align 4
  %i.ap = add nsw i32 %i.ao, 1
  store atomic i32 %i.ap, ptr %i.an monotonic, align 4
  br label %bb.k

bb.j:                                             ; preds = %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEELb0ELb0EED2Ev.exit
  %i.aq = atomicrmw add ptr %i.ai, i32 1 monotonic, align 4 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.as = load ptr, ptr %3, align 8, !tbaa !109   ; 2 uses
end_hunk_3
begin_hunk_4_@_ZSt10__do_visitINSt8__detail9__variant20__variant_idx_cookieEZNS1_17_Move_assign_baseILb0EJN4CGAL7Point_3INS4_16Simple_cartesianINS4_11Interval_ntILb0EEEEEEENS4_9Segment_3IS9_EENS4_10Triangle_3IS9_EESt6vectorISA_SaISA_EEEEaSEOSI_EUlOT_T0_E_JRSt7variantIJSA_SC_SE_SH_EEEEDcOSM_DpOT1_:bb.a
  %i.aa = load ptr, ptr %i.z, align 16, !tbaa !3615
  %i.ab = load <2 x ptr>, ptr %1, align 16, !tbaa !3630
  store <2 x ptr> %i.ab, ptr %i.c, align 16, !tbaa !3630
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 16, !tbaa !3615
  store ptr %i.ad, ptr %i.z, align 16, !tbaa !3615
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.y, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = ptrtoint ptr %i.aa to i64
  %i.af = ptrtoint ptr %i.y to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ag) #40
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i: ; preds = %bb.n
  %i.ah = load <2 x ptr>, ptr %1, align 16, !tbaa !3630
  store <2 x ptr> %i.ah, ptr %i.c, align 16, !tbaa !3630
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !3615
  store ptr %i.ak, ptr %i.ai, align 16, !tbaa !3615
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(145) %1, i8 0, i64 24, i1 false)
  store i8 3, ptr %i.d, align 16, !tbaa !3606
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit

bb.q:                                             ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_17_Move_assign_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEaSEOSJ_EUlOT_T0_E_RSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESP_SS_.exit: ; preds = %_ZNSt8__detail9__variant9__emplaceILm3ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSF_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.p, %bb.o, %_ZNSt8__detail9__variant9__emplaceILm2ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSC_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.k, %_ZNSt8__detail9__variant9__emplaceILm1ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJSA_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.g, %_ZNSt8__detail9__variant9__emplaceILm0ELb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEJS8_EEEvRNS0_16_Variant_storageIXT0_EJDpT1_EEEDpOT2_.exit.i.i.i.i, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(145) dereferenceable(145) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i8, ptr %i.a, align 16, !tbaa !3606
  %i.c = icmp eq i8 %i.b, 3
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 16, !tbaa !3612  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 16, !tbaa !3615
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #40
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEEC2EbRKSG_(ptr noundef nonnull align 16 dereferenceable(161) %0, i1 noundef zeroext %1, ptr noundef nonnull align 16 dereferenceable(161) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  store i8 0, ptr %i.a, align 16, !tbaa !3599
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.c = load i8, ptr %i.b, align 16, !tbaa !3599, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  store i8 -1, ptr %i.e, align 16, !tbaa !3606
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.g = load i8, ptr %i.f, align 16, !tbaa !3606
  switch i8 %i.g, label %bb.h [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 48, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 96, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.e:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, ptr noundef nonnull align 16 dereferenceable(145) %2, i64 144, i1 false)
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !3940 ; 2 uses
  %i.j = load ptr, ptr %2, align 16, !tbaa !3612  ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(161) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.i, %i.j
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.noexc4.i.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = sdiv exact i64 %i.m, 48
  %i.o = icmp ugt i64 %i.n, 192153584101141162
  br i1 %i.o, label %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !prof !1143

.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #43
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %.body

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.p = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #44
          to label %.noexc4.i.i.i.i.i.i.i.i unwind label %.body

.noexc4.i.i.i.i.i.i.i.i:                          ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.f
  %i.q = phi ptr [ null, %bb.f ], [ %i.p, %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %i.q, ptr %0, align 16, !tbaa !3612
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.q, ptr %i.r, align 8, !tbaa !3940
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.m
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.s, ptr %i.t, align 16, !tbaa !3615
  %i.u = load ptr, ptr %2, align 16, !tbaa !3630  ; 2 uses
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !3630 ; 2 uses
  %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.u, %i.v
  br i1 %.not7.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc4.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.q, %.noexc4.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.u, %.noexc4.i.i.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, %i.v
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !4103

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc4.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.q, %.noexc4.i.i.i.i.i.i.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.r, align 8, !tbaa !3940
  br label %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit

bb.h:                                             ; preds = %bb.b
  unreachable

.body:                                            ; preds = %_ZNSt15__new_allocatorIN4CGAL7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEEE8allocateEmPKv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_16Simple_cartesianINS2_11Interval_ntILb0EEEEEEENS2_9Segment_3IS7_EENS2_10Triangle_3IS7_EESt6vectorIS8_SaIS8_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(145) dereferenceable(161) %0) #23
  resume { ptr, i32 } %i.y

_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit: ; preds = %bb.c, %bb.d, %bb.e, %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_20__variant_idx_cookieEOZNS0_15_Copy_ctor_baseILb0EJN4CGAL7Point_3INS5_16Simple_cartesianINS5_11Interval_ntILb0EEEEEEENS5_9Segment_3ISA_EENS5_10Triangle_3ISA_EESt6vectorISB_SaISB_EEEEC1ERKSJ_EUlOT_T0_E_RKSt7variantIJSB_SD_SF_SI_EEEJEEESt16integer_sequenceImJLm3EEEE14__visit_invokeESQ_SU_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = load i8, ptr %i.f, align 16, !tbaa !3606
  store i8 %i.z, ptr %i.e, align 16, !tbaa !3606
  store i8 1, ptr %i.a, align 16, !tbaa !3599
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt22_Optional_payload_baseISt7variantIJN4CGAL7Point_3INS1_16Simple_cartesianINS1_11Interval_ntILb0EEEEEEENS1_9Segment_3IS6_EENS1_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEE12_M_constructIJRKSF_EEEvDpOT_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclISZ_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1163, align 1           ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #44 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3605 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i8, ptr %i.g, align 16, !tbaa !3606
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.137, ptr %i.j, align 8, !tbaa !2375
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !2970
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.m, align 8, !tbaa !2972
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.n, align 8, !tbaa !2974
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !109
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EENS_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !3601   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !2949, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !2951
  switch i8 %i.aa, label %bb.f [
    i8 0, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
    i8 -1, label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i
  ], !prof !4108

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %.noexc4.i.i unwind label %bb.g

.noexc4.i.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i

_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i: ; preds = %.noexc4.i.i, %bb.e
  store ptr %i.a, ptr %i.v, align 8, !tbaa !109
  store i8 0, ptr %i.z, align 8, !tbaa !2951
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !109
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i8 0, ptr %i.ad, align 8, !tbaa !2951
  store i8 1, ptr %i.w, align 8, !tbaa !2949
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !4109 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !4109
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ah, -1
  store atomic i32 %i.am, ptr %i.ag monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = atomicrmw sub ptr %i.ag, i32 1 release, align 4
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #40
  resume { ptr, i32 } %i.as
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !4110
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !109 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !4110
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit
  fence acquire
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.s) #23, !inline_history !2982
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 192) #40, !inline_history !2982
  br label %_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEESV_ISW_IJSL_NSX_ISK_EENSZ_ISK_EES11_ISL_SaISL_EEEEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_:bb.a

bb.al:                                            ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !3610
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = ptrtoint ptr %i.bp to i64
  %i.bu = sub i64 %i.bs, %i.bt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bu) #40
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4CGAL7Point_3INS4_5EpeckEEENS4_9Segment_3IS6_EENS4_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S9_SB_SE_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit

bb.am:                                            ; preds = %bb.a
  unreachable

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFvOZNS0_16_Variant_storageILb0EJN4CGAL7Point_3INS4_5EpeckEEENS4_9Segment_3IS6_EENS4_10Triangle_3IS6_EESt6vectorIS7_SaIS7_EEEE8_M_resetEvEUlOT_E_RSt7variantIJS7_S9_SB_SE_EEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeESJ_SM_.exit: ; preds = %bb.al, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit.i.i.i.i.i.i, %bb.ab, %bb.aa, %bb.z, %bb.x, %bb.w, %bb.t, %bb.s, %bb.r, %bb.q, %bb.o, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !4128   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !4125 ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !109 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #23, !inline_history !4129
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.l = add nsw i32 %i.g, -1
  store atomic i32 %i.l, ptr %i.f monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = atomicrmw sub ptr %i.f, i32 1 release, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.h, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.o = load ptr, ptr %.05.i.i, align 8, !tbaa !109 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #23, !inline_history !4129
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i

_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %.lr.ph.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !4127

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !4128
  br label %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit

_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.u = phi ptr [ %.pr, %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !3610
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = ptrtoint ptr %i.u to i64
  %i.z = sub i64 %i.x, %i.y
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.z) #40
  br label %_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseIN4CGAL7Point_3INS0_5EpeckEEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEES3_EvT_S5_RSaIT0_E.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt8_DestroyIPN4CGAL7Point_3INS0_5EpeckEEEEvT_S5_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %.not4.i = icmp eq ptr %0, %1
  br i1 %.not4.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4CGAL7Point_3INS2_5EpeckEEEEEvT_S7_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i
  %.05.i = phi ptr [ %i.q, %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i ], [ %0, %bb.a ] ; 3 uses
  %i.a = load ptr, ptr %.05.i, align 8, !tbaa !109 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.b = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #23, !inline_history !4130
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = add nsw i32 %i.d, -1
  store atomic i32 %i.i, ptr %i.c monotonic, align 4
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = atomicrmw sub ptr %i.c, i32 1 release, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.h, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.l = load ptr, ptr %.05.i, align 8, !tbaa !109 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = load ptr, ptr %i.l, align 8, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(12) %i.l) #23, !inline_history !4130
  br label %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i

_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.q, %1
  br i1 %.not.i, label %_ZNSt12_Destroy_auxILb0EE9__destroyIPN4CGAL7Point_3INS2_5EpeckEEEEEvT_S7_.exit, label %.lr.ph.i, !llvm.loop !4127

_ZNSt12_Destroy_auxILb0EE9__destroyIPN4CGAL7Point_3INS2_5EpeckEEEEEvT_S7_.exit: ; preds = %_ZSt8_DestroyIN4CGAL7Point_3INS0_5EpeckEEEEvPT_.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclIS10_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(96) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1163, align 1           ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #44 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3605 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i8, ptr %i.g, align 16, !tbaa !3606
  %.not.i.i.i.i = icmp eq i8 %i.h, 1
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EES7_NS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.137, ptr %i.j, align 8, !tbaa !2375
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EES7_NS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !2970
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3418
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 0, ptr %i.n, align 8, !tbaa !2974
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !109
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EES7_NS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EES7_NS_10Triangle_3IS6_EESt6vectorISB_SaISB_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !3601   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !2949, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !2951
  switch i8 %i.aa, label %bb.f [
    i8 1, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
    i8 -1, label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i
  ], !prof !4108

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %.noexc4.i.i unwind label %bb.g

.noexc4.i.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i

_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i: ; preds = %.noexc4.i.i, %bb.e
  store ptr %i.a, ptr %i.v, align 8, !tbaa !109
  store i8 1, ptr %i.z, align 8, !tbaa !2951
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEEC2IJRS1C_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !109
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i8 1, ptr %i.ad, align 8, !tbaa !2951
  store i8 1, ptr %i.w, align 8, !tbaa !2949
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit: ; preds = %bb.e
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !4109 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !4109
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
  %i.af = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 3 uses
  %i.ah = load atomic i32, ptr %i.ag monotonic, align 4 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.am = add nsw i32 %i.ah, -1
  store atomic i32 %i.am, ptr %i.ag monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.ai, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = atomicrmw sub ptr %i.ag, i32 1 release, align 4
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.ap = load ptr, ptr %i.ae, align 8, !tbaa !92
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(12) %i.ae) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #40
  resume { ptr, i32 } %i.as
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(136) dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !4110
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !109 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !4110
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit
  fence acquire
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.w) #23, !inline_history !3431
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(384) %i.v) #23, !inline_history !3431
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 480) #40, !inline_history !3431
  br label %_ZN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit, %bb.j, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
end_hunk_5
begin_hunk_6_@_ZNK4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_NS_10Triangle_3IS5_EESt6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EESL_NSZ_ISK_EES11_IS16_SaIS16_EEEEEST_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
  %i.ax = insertelement <2 x double> %i.aw, double %i.au, i64 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 416
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23, !noalias !4137
  %i.az = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.ay), !noalias !4137 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23, !noalias !4137
  %i.ba = extractvalue { double, double } %i.az, 0
  %i.bb = extractvalue { double, double } %i.az, 1
  %i.bc = fneg double %i.ba
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bb, i64 1
  store <2 x double> %i.v, ptr %i.a, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store <2 x double> %i.ac, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store <2 x double> %i.aj, ptr %.sroa.5.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store <2 x double> %i.aq, ptr %.sroa.6.0..sroa_idx.i, align 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> %i.ax, ptr %.sroa.7.0..sroa_idx.i, align 16
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x double> %i.be, ptr %.sroa.8.0..sroa_idx.i, align 16
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 112
  store atomic ptr %i.a, ptr %i.bf release, align 16
  %i.bg = load ptr, ptr %i.b, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i, label %_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS8_EENS_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS_19Cartesian_converterISW_S8_NS_12NT_converterISV_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bh, 0
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 3 uses
  %i.bj = load atomic i32, ptr %i.bi monotonic, align 4 ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !92
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #23, !inline_history !4118
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.bo = add nsw i32 %i.bj, -1
  store atomic i32 %i.bo, ptr %i.bi monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.k:                                             ; preds = %bb.g
  br i1 %i.bk, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = atomicrmw sub ptr %i.bi, i32 1 release, align 4
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.m, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.m:                                             ; preds = %bb.l, %bb.k
  fence acquire
  %i.br = load ptr, ptr %i.b, align 16, !tbaa !109 ; 3 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !92
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(12) %i.br) #23, !inline_history !4118
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.n, %bb.m, %bb.l, %bb.j, %bb.i
  store ptr null, ptr %i.b, align 16, !tbaa !109
  br label %_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS8_EENS_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS_19Cartesian_converterISW_S8_NS_12NT_converterISV_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS8_EENS_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS_19Cartesian_converterISW_S8_NS_12NT_converterISV_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %bb.f, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.o:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke, %_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEclIJNS_7Point_3ISH_EESI_NS_10Triangle_3ISH_EESt6vectorISM_SaISM_EEEEERKSI_RKSt8optionalISt7variantIJDpT_EEE.exit
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.o
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.o ], [ %i.h, %bb.d ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 480) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10AT_ET_wrapINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEEEC2ERKSL_(ptr noundef nonnull align 16 dereferenceable(480) %0, ptr noundef nonnull align 16 dereferenceable(384) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.ptr6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(384) %.ptr6, ptr noundef nonnull align 16 dereferenceable(384) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.b)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(64) %i.d)
          to label %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

.preheader.preheader.i.i.i.i.i.i.i.i:             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i, %.noexc.1.i.i.i, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i, %bb.a
  %.lcssa12.i.i.i = phi i1 [ true, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ true, %bb.a ], [ false, %.noexc.1.i.i.i ], [ false, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ]
  %.lcssa9.i.i.i.idx = phi i64 [ 96, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ 96, %bb.a ], [ 288, %.noexc.1.i.i.i ], [ 288, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ] ; 2 uses
  %.lcssa.ph.i.i.i.i.i.i.i.i = phi ptr [ %i.c, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i ], [ %i.a, %bb.a ], [ %i.i, %.noexc.1.i.i.i ], [ %i.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i ]
  %lpad.thr_comm.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.lcssa9.i.i.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.lcssa9.i.i.i.idx
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i
  %i.e = phi ptr [ %i.f, %.preheader.i.i.i.i.i.i.i.i ], [ %.lcssa.ph.i.i.i.i.i.i.i.i, %.preheader.preheader.i.i.i.i.i.i.i.i ]
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -64 ; 3 uses
  tail call void @_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.f) #23
  %i.g = icmp eq ptr %i.f, %.lcssa9.i.i.i.ptr
  br i1 %i.g, label %.body.i.i.i, label %.preheader.i.i.i.i.i.i.i.i

_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.i.i.i
  %.ptr5 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 192
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(192) %.ptr5, ptr noundef nonnull align 16 dereferenceable(192) %i.h)
          to label %.noexc.1.i.i.i unwind label %.split.i.i.i

.noexc.1.i.i.i:                                   ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i: ; preds = %.noexc.1.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 320
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.k, ptr noundef nonnull align 16 dereferenceable(64) %i.l)
          to label %_ZN4CGAL9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit unwind label %.preheader.preheader.i.i.i.i.i.i.i.i

.split.i.i.i:                                     ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.preheader.preheader.i.i.i

.body.i.i.i:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i
  br i1 %.lcssa12.i.i.i, label %.loopexit.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %.body.i.i.i, %.split.i.i.i
  %eh.lpad-body15.i.i.i = phi { ptr, i32 } [ %i.m, %.split.i.i.i ], [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %.body.i.i.i ]
  %.idx2 = phi i64 [ 288, %.split.i.i.i ], [ %.lcssa9.i.i.i.idx, %.body.i.i.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i, %.preheader.preheader.i.i.i
  %.idx = phi i64 [ %.add, %.preheader.i.i.i ], [ %.idx2, %.preheader.preheader.i.i.i ]
  %.add = add nsw i64 %.idx, -192                 ; 3 uses
  %.ptr3 = getelementptr inbounds i8, ptr %0, i64 %.add
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %.ptr3) #23
  %i.n = icmp eq i64 %.add, 96
  br i1 %i.n, label %.loopexit.i.i.i, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %.preheader.i.i.i, %.body.i.i.i
  %eh.lpad-body16.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i.i.i, %.body.i.i.i ], [ %eh.lpad-body15.i.i.i, %.preheader.i.i.i ]
  resume { ptr, i32 } %eh.lpad-body16.i.i.i

_ZN4CGAL9Segment_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit: ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2ERKSB_.exit.1.i.i.i.i.i.1.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EENS_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSG_IN5boost14multiprecision6numberINSL_8backends16rational_adaptorINSN_15cpp_int_backendILm0ELm0ELNSL_16cpp_integer_typeE1ELNSL_18cpp_int_check_typeE0ESaIyEEEEELNSL_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISJ_EENS7_ISJ_EENS9_ISJ_EESB_ISZ_SaISZ_EEEEES2_IS3_IJNS4_ISX_EENS7_ISX_EENS9_ISX_EESB_IS16_SaIS16_EEEEENS_19Cartesian_converterISX_SJ_NS_12NT_converterISW_SI_EEEEEEEclIS11_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(144) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.1163, align 1           ; 3 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #44 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3605 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.h = load i8, ptr %i.g, align 16, !tbaa !3606
  %.not.i.i.i.i = icmp eq i8 %i.h, 2
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EENS_9Segment_3IS6_EES7_St6vectorISB_SaISB_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.137, ptr %i.j, align 8, !tbaa !2375
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.v

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EENS_9Segment_3IS6_EES7_St6vectorISB_SaISB_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 7 uses
  store i32 1, ptr %i.k, align 4, !tbaa !2970
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.l, ptr noundef nonnull align 16 dereferenceable(144) %i.f, i64 144, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.l, ptr %i.m, align 8, !tbaa !4140
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store i32 0, ptr %i.n, align 8, !tbaa !2974
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EENS_9Segment_3IS5_EES6_St6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EENSZ_ISK_EESL_S11_IS16_SaIS16_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !109
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EENS_9Segment_3IS6_EES7_St6vectorISB_SaISB_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  %i.u = load atomic i32, ptr %i.k monotonic, align 8
  %i.v = add nsw i32 %i.u, 1
  store atomic i32 %i.v, ptr %i.k monotonic, align 8
  br label %_ZN4CGAL10Triangle_3INS_5EpeckEEC2ERKNS_4LazyINS0_INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS0_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISM_S7_NS_12NT_converterISL_S6_EEEEEE.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EENS_9Segment_3IS6_EES7_St6vectorISB_SaISB_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.w = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  %i.x = atomicrmw add ptr %i.k, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Triangle_3INS_5EpeckEEC2ERKNS_4LazyINS0_INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS0_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISM_S7_NS_12NT_converterISL_S6_EEEEEE.exit

_ZN4CGAL10Triangle_3INS_5EpeckEEC2ERKNS_4LazyINS0_INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS0_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISM_S7_NS_12NT_converterISL_S6_EEEEEE.exit: ; preds = %bb.c, %bb.d
  %i.y = load ptr, ptr %0, align 8, !tbaa !3601   ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !2949, !range !13, !noundef !14
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Triangle_3INS_5EpeckEEC2ERKNS_4LazyINS0_INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS0_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISM_S7_NS_12NT_converterISL_S6_EEEEEE.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !2951
  switch i8 %i.ad, label %bb.f [
    i8 2, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
    i8 -1, label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i
  ], !prof !4108

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EENS3_10Triangle_3IS5_EESt6vectorIS6_SaIS6_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_SA_SD_EEEEDcOT0_DpOT1_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %.noexc4.i.i unwind label %bb.g

.noexc4.i.i:                                      ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i

_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i: ; preds = %.noexc4.i.i, %bb.e
  store ptr %i.a, ptr %i.y, align 8, !tbaa !109
  store i8 2, ptr %i.ac, align 8, !tbaa !2951
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Triangle_3INS_5EpeckEEC2ERKNS_4LazyINS0_INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS0_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISM_S7_NS_12NT_converterISL_S6_EEEEEE.exit
  store ptr %i.a, ptr %i.y, align 8, !tbaa !109
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 2, ptr %i.ag, align 8, !tbaa !2951
  store i8 1, ptr %i.z, align 8, !tbaa !2949
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit: ; preds = %bb.e
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !4109 ; 6 uses
  store ptr %i.a, ptr %i.y, align 8, !tbaa !4109
  %.not.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
  %i.ai = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.ai, 0
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 3 uses
  %i.ak = load atomic i32, ptr %i.aj monotonic, align 4 ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = add nsw i32 %i.ak, -1
  store atomic i32 %i.ap, ptr %i.aj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.m:                                             ; preds = %bb.i
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = atomicrmw sub ptr %i.aj, i32 1 release, align 4
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.as = load ptr, ptr %i.ah, align 8, !tbaa !92
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.ah) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EENS0_10Triangle_3IS2_EESt6vectorIS3_SaIS3_EEEE7emplaceILm2EJS7_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_S7_SA_EE4typeEDpT0_EERSG_E4typeEDpOSH_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EENS1_10Triangle_3IS3_EESt6vectorIS4_SaIS4_EEEEEaSIS8_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameISD_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESG_ISt6__and_IJSt9is_scalarISC_ESH_ISC_NSt5decayISK_E4typeEEEEESt16is_constructibleISC_JSK_EESt13is_assignableIRSC_SK_EEERSD_E4typeEOSK_.exit
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i6 = icmp eq i8 %i.av, 0
  %i.aw = load atomic i32, ptr %i.k monotonic, align 8 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 1                    ; 2 uses
  br i1 %.not.i.i.i6, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  br i1 %i.ax, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %i.a, align 16, !tbaa !92
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit7

bb.r:                                             ; preds = %bb.p
  %i.bb = add nsw i32 %i.aw, -1
  store atomic i32 %i.bb, ptr %i.k monotonic, align 8
  br label %_ZN4CGAL6HandleD2Ev.exit7

bb.s:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  br i1 %i.ax, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = atomicrmw sub ptr %i.k, i32 1 release, align 4
  %i.bd = icmp eq i32 %i.bc, 1
  br i1 %i.bd, label %bb.u, label %_ZN4CGAL6HandleD2Ev.exit7

bb.u:                                             ; preds = %bb.s, %bb.t
  fence acquire
  %i.be = load ptr, ptr %i.a, align 16, !tbaa !92
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.a) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit7

_ZN4CGAL6HandleD2Ev.exit7:                        ; preds = %bb.q, %bb.r, %bb.t, %bb.u
  ret void

bb.v:                                             ; preds = %bb.b
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 192) #40
  resume { ptr, i32 } %i.bh
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_10Triangle_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EENS_9Segment_3IS5_EES6_St6vectorISY_SaISY_EEEEESV_ISW_IJNSX_ISK_EENSZ_ISK_EESL_S11_IS16_SaIS16_EEEEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(184) dereferenceable(192) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !4110
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EENS0_10Triangle_3IS8_EESt6vectorIS9_SaIS9_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSK_8backends16rational_adaptorINSM_15cpp_int_backendILm0ELm0ELNSK_16cpp_integer_typeE1ELNSK_18cpp_int_check_typeE0ESaIyEEEEELNSK_26expression_template_optionE1EEEEEEENSA_ISW_EENSC_ISW_EESE_ISX_SaISX_EEEEENS0_19Cartesian_converterISW_S8_NS0_12NT_converterISV_S7_EEEEEELb0EED2Ev.exit

end_hunk_6
begin_hunk_7_@_ZN4CGAL13Intersections8internal21do_intersect_coplanarINS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEbRKNT_7Point_3ESL_SL_SL_SL_RKSI_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %i.bx, ptr %14, align 8, !tbaa !2694, !alias.scope !5284
  %i.sc = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %i.ba, ptr %i.sc, align 8, !tbaa !2694, !alias.scope !5284
  %i.sd = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.ac, ptr %i.sd, align 8, !tbaa !2694, !alias.scope !5284
  %i.se = getelementptr inbounds nuw i8, ptr %14, i64 24
  store ptr %i.bb, ptr %i.se, align 8, !tbaa !2694, !alias.scope !5284
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  store ptr %i.ab, ptr %15, align 8, !tbaa !2694, !alias.scope !5287
  %i.sf = getelementptr inbounds nuw i8, ptr %15, i64 8
  store ptr %i.ba, ptr %i.sf, align 8, !tbaa !2694, !alias.scope !5287
  %i.sg = getelementptr inbounds nuw i8, ptr %15, i64 16
  store ptr %i.by, ptr %i.sg, align 8, !tbaa !2694, !alias.scope !5287
  %i.sh = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.bb, ptr %i.sh, align 8, !tbaa !2694, !alias.scope !5287
  %i.si = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %15) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %.not24.i.i228 = icmp eq i32 %i.si, 0
  br i1 %.not24.i.i228, label %bb.ch, label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit229

bb.ch:                                            ; preds = %bb.cg
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  store ptr %spec.select145, ptr %12, align 8, !tbaa !2694, !alias.scope !5290
  %i.sj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %spec.select, ptr %i.sj, align 8, !tbaa !2694, !alias.scope !5290
  %i.sk = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.ac, ptr %i.sk, align 8, !tbaa !2694, !alias.scope !5290
  %i.sl = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %i.bb, ptr %i.sl, align 8, !tbaa !2694, !alias.scope !5290
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr %3, ptr %13, align 8, !tbaa !2694, !alias.scope !5293
  %i.sm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %spec.select, ptr %i.sm, align 8, !tbaa !2694, !alias.scope !5293
  %i.sn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.by, ptr %i.sn, align 8, !tbaa !2694, !alias.scope !5293
  %i.so = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %i.bb, ptr %i.so, align 8, !tbaa !2694, !alias.scope !5293
  %i.sp = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit229

_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit229: ; preds = %bb.cf, %bb.cg, %bb.ch
  %.1.i.i227 = phi i32 [ %i.sb, %bb.cf ], [ %i.sp, %bb.ch ], [ %i.si, %bb.cg ]
  %.not130 = icmp eq i32 %.1.i.i227, -1
  br i1 %.not130, label %bb.cn, label %bb.ci

bb.ci:                                            ; preds = %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit229
  %i.sq = call noundef i32 @_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_(ptr noundef nonnull align 1 dereferenceable(1) %144, ptr noundef nonnull align 16 dereferenceable(192) %spec.select145, ptr noundef nonnull align 16 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(192) %4)
  %i.sr = icmp ne i32 %i.sq, -1
  br label %bb.cn

bb.cj:                                            ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  store ptr %spec.select145, ptr %10, align 8, !tbaa !2694, !alias.scope !5296
  %i.ss = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %spec.select, ptr %i.ss, align 8, !tbaa !2694, !alias.scope !5296
  %i.st = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.ad, ptr %i.st, align 8, !tbaa !2694, !alias.scope !5296
  %i.su = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.ba, ptr %i.su, align 8, !tbaa !2694, !alias.scope !5296
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  store ptr %4, ptr %11, align 8, !tbaa !2694, !alias.scope !5299
  %i.sv = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %spec.select, ptr %i.sv, align 8, !tbaa !2694, !alias.scope !5299
  %i.sw = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.bx, ptr %i.sw, align 8, !tbaa !2694, !alias.scope !5299
  %i.sx = getelementptr inbounds nuw i8, ptr %11, i64 24
  store ptr %i.ba, ptr %i.sx, align 8, !tbaa !2694, !alias.scope !5299
  %i.sy = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %11) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %.not.i.i230 = icmp eq i32 %i.sy, 0
  br i1 %.not.i.i230, label %bb.ck, label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit233

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.bx, ptr %8, align 8, !tbaa !2694, !alias.scope !5302
  %i.sz = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.ba, ptr %i.sz, align 8, !tbaa !2694, !alias.scope !5302
  %i.ta = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.ae, ptr %i.ta, align 8, !tbaa !2694, !alias.scope !5302
  %i.tb = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %i.bb, ptr %i.tb, align 8, !tbaa !2694, !alias.scope !5302
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  store ptr %i.ad, ptr %9, align 8, !tbaa !2694, !alias.scope !5305
  %i.tc = getelementptr inbounds nuw i8, ptr %9, i64 8
  store ptr %i.ba, ptr %i.tc, align 8, !tbaa !2694, !alias.scope !5305
  %i.td = getelementptr inbounds nuw i8, ptr %9, i64 16
  store ptr %i.by, ptr %i.td, align 8, !tbaa !2694, !alias.scope !5305
  %i.te = getelementptr inbounds nuw i8, ptr %9, i64 24
  store ptr %i.bb, ptr %i.te, align 8, !tbaa !2694, !alias.scope !5305
  %i.tf = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %9) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %.not24.i.i232 = icmp eq i32 %i.tf, 0
  br i1 %.not24.i.i232, label %bb.cl, label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit233

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  store ptr %spec.select145, ptr %6, align 8, !tbaa !2694, !alias.scope !5308
  %i.tg = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %spec.select, ptr %i.tg, align 8, !tbaa !2694, !alias.scope !5308
  %i.th = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ae, ptr %i.th, align 8, !tbaa !2694, !alias.scope !5308
  %i.ti = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.bb, ptr %i.ti, align 8, !tbaa !2694, !alias.scope !5308
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %4, ptr %7, align 8, !tbaa !2694, !alias.scope !5311
  %i.tj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %spec.select, ptr %i.tj, align 8, !tbaa !2694, !alias.scope !5311
  %i.tk = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.by, ptr %i.tk, align 8, !tbaa !2694, !alias.scope !5311
  %i.tl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %i.bb, ptr %i.tl, align 8, !tbaa !2694, !alias.scope !5311
  %i.tm = call noundef i32 @_ZN4CGAL7compareIN5boost14multiprecision6detail10expressionINS3_10multipliesENS4_INS3_19subtract_immediatesENS2_6numberINS2_8backends16rational_adaptorINS8_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESH_vvEESI_vvEESJ_EENS_22Real_embeddable_traitsINS_15Coercion_traitsIT_T0_E4TypeEE7Compare11result_typeERKSM_RKSN_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit233

_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit233: ; preds = %bb.cj, %bb.ck, %bb.cl
  %.1.i.i231 = phi i32 [ %i.sy, %bb.cj ], [ %i.tm, %bb.cl ], [ %i.tf, %bb.ck ]
  %.not129 = icmp eq i32 %.1.i.i231, -1
  br i1 %.not129, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit233
  %i.tn = call noundef i32 @_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_(ptr noundef nonnull align 1 dereferenceable(1) %144, ptr noundef nonnull align 16 dereferenceable(192) %spec.select145, ptr noundef nonnull align 16 dereferenceable(192) %0, ptr noundef nonnull align 16 dereferenceable(192) %3)
  %i.to = icmp ne i32 %i.tn, -1
  br label %bb.cn

bb.cn:                                            ; preds = %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit157, %bb.bj, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit233, %bb.cm, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit229, %bb.ci, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit221, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit225, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit217, %bb.bx, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit213, %bb.bs, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit209, %bb.bo, %bb.ah, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit201, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit205, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit197, %bb.bc, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit189, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit193, %bb.ar, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit185, %bb.aq, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit181, %bb.am, %bb.j, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit177, %bb.ag, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit173, %bb.ac, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit169, %bb.x, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit165, %bb.t, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit161, %bb.o, %bb.k
  %.0128 = phi i1 [ false, %bb.bj ], [ %i.hh, %bb.ag ], [ %i.sr, %bb.ci ], [ false, %bb.k ], [ %i.dr, %bb.o ], [ %i.ep, %bb.t ], [ %i.fm, %bb.x ], [ %i.gk, %bb.ac ], [ %i.nj, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit205 ], [ false, %bb.j ], [ %i.if, %bb.am ], [ %i.jc, %bb.aq ], [ false, %bb.ar ], [ %i.ku, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit193 ], [ %i.ls, %bb.bc ], [ %i.to, %bb.cm ], [ false, %bb.ah ], [ %i.oh, %bb.bo ], [ %i.pe, %bb.bs ], [ %i.qc, %bb.bx ], [ %i.rt, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit225 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit161 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit165 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit169 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit173 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit177 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit181 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit185 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit189 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit197 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit201 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit209 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit213 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit217 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit221 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit229 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit233 ], [ false, %_ZNK4CGAL23CartesianKernelFunctors22Coplanar_orientation_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Point_3ISG_EESL_SL_.exit157 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %144) #23
  ret i1 %.0128
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL25Lazy_construction_variantINS_5EpeckENS_20CommonKernelFunctors11Intersect_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclINS_9Segment_3IS1_EENS_10Triangle_3IS1_EEEEDcRKT_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.std::optional.1338") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %4 = alloca %"struct.CGAL::Simple_cartesian.660", align 1 ; 3 uses
  %5 = alloca %class.anon.671, align 8            ; 5 uses
  %6 = alloca %class.anon.670, align 8            ; 4 uses
  %7 = alloca %class.anon.897, align 8            ; 5 uses
  %8 = alloca %class.anon.896, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"struct.CGAL::Simple_cartesian", align 1 ; 3 uses
  %10 = alloca %"class.std::optional.1017", align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %11 = alloca %"class.CGAL::Lazy.1367", align 8  ; 8 uses
  %12 = alloca %"class.std::optional.1017", align 16 ; 8 uses
  %13 = alloca %"class.std::optional.1338", align 8 ; 13 uses
  %14 = alloca %"struct.CGAL::internal::Fill_lazy_variant_visitor_2.1377", align 8 ; 8 uses
  %15 = alloca %"class.std::optional.1225", align 16 ; 58 uses
  %16 = alloca %"class.std::optional.1338", align 8 ; 13 uses
  %17 = alloca %"struct.CGAL::internal::Fill_lazy_variant_visitor_0.1378", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.g)
  %i.h = load i32, ptr %i.g, align 4
  %i.i = and i32 %i.h, 24576                      ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.j = load i32, ptr %i.e, align 4
  %i.k = and i32 %i.j, -24577
  %i.l = or disjoint i32 %i.k, 16384
  store i32 %i.l, ptr %i.f, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.m = invoke noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #44
          to label %bb.b unwind label %bb.f       ; 10 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.n = load ptr, ptr %2, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  %i.p = load atomic ptr, ptr %i.o acquire, align 8
  %i.q = load ptr, ptr %3, align 8, !tbaa !109
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 160
  %i.s = load atomic ptr, ptr %i.r acquire, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !5314
  invoke void @_ZN4CGAL13Intersections8internal12intersectionINS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_19Intersection_traitsIT_NS8_9Segment_3ENS8_10Triangle_3EE11result_typeERKSA_RKS9_RKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::optional.1017") align 16 %10, ptr noundef nonnull align 16 dereferenceable(144) %i.s, ptr noundef nonnull align 16 dereferenceable(96) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !5314
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.t, align 4, !tbaa !2970
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.u, ptr noundef nonnull align 16 dereferenceable(128) %10, i64 128, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !5317
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 152
  store i32 0, ptr %i.w, align 8, !tbaa !2974
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS7_EEEEES1_IS2_IJNS3_INS4_IN5boost14multiprecision6numberINSE_8backends16rational_adaptorINSG_15cpp_int_backendILm0ELm0ELNSE_16cpp_integer_typeE1ELNSE_18cpp_int_check_typeE0ESaIyEEEEELNSE_26expression_template_optionE1EEEEEEENS9_ISQ_EEEEENS_20CommonKernelFunctors11Intersect_3IS7_EENSW_ISQ_EENS_19Cartesian_converterISQ_S7_NS_12NT_converterISP_S6_EEEELb0EJNS9_INS_5EpeckEEENS_10Triangle_3IS13_EEEEE, i64 16), ptr %i.m, align 16, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 160
  %i.y = load ptr, ptr %3, align 8, !tbaa !109    ; 2 uses
  store ptr %i.y, ptr %i.x, align 16, !tbaa !109
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = add nsw i32 %i.ab, 1
  store atomic i32 %i.ac, ptr %i.aa monotonic, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.ae = load ptr, ptr %2, align 8, !tbaa !109   ; 2 uses
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !109
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %i.ag = load atomic i32, ptr %i.af monotonic, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store atomic i32 %i.ah, ptr %i.af monotonic, align 4
  br label %bb.e

bb.d:                                             ; preds = %.noexc
  %i.ai = atomicrmw add ptr %i.aa, i32 1 monotonic, align 4 ; 0 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 168
  %i.ak = load ptr, ptr %2, align 8, !tbaa !109   ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !109
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = atomicrmw add ptr %i.al, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %11, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.an = load atomic ptr, ptr %i.v acquire, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %12, ptr noundef nonnull align 16 dereferenceable(128) %i.an, i64 128, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ao = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  store i8 0, ptr %i.ao, align 8, !tbaa !4867
  %i.ap = getelementptr inbounds nuw i8, ptr %12, i64 112
  %i.aq = load i8, ptr %i.ap, align 16, !tbaa !3668, !range !13, !noundef !14
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %i.as, align 8, !tbaa !4867
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.at = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.ap

bb.g:                                             ; preds = %bb.b
  %i.au = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 176) #40
  br label %bb.ap

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  store ptr %13, ptr %14, align 8, !tbaa !5320
  %i.av = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %11, ptr %i.av, align 8, !tbaa !5324
  %i.aw = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.ax = load i8, ptr %i.aw, align 16, !tbaa !3673
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISU_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(97) %12)
          to label %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISF_EENS8_ISF_EEEEES3_IS4_IJNS5_IST_EENS8_IST_EEEEENS0_19Cartesian_converterIST_SF_NS0_12NT_converterISS_SE_EEEEEEEEJRSX_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1E_EEEEE4typeEE4typeEOS1N_EEEE4typeEOS1C_DpOS1E_.exit unwind label %bb.l

bb.j:                                             ; preds = %bb.h
  invoke void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISV_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 16 dereferenceable(97) %12)
          to label %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISF_EENS8_ISF_EEEEES3_IS4_IJNS5_IST_EENS8_IST_EEEEENS0_19Cartesian_converterIST_SF_NS0_12NT_converterISS_SE_EEEEEEEEJRSX_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1E_EEEEE4typeEE4typeEOS1N_EEEE4typeEOS1C_DpOS1E_.exit unwind label %bb.l

_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISF_EENS8_ISF_EEEEES3_IS4_IJNS5_IST_EENS8_IST_EEEEENS0_19Cartesian_converterIST_SF_NS0_12NT_converterISS_SE_EEEEEEEEJRSX_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1E_EEEEE4typeEE4typeEOS1N_EEEE4typeEOS1C_DpOS1E_.exit: ; preds = %bb.i, %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.az, align 8, !tbaa !4867
  %i.ba = load i8, ptr %i.ao, align 8, !tbaa !4867, !range !13, !noundef !14
  %i.bb = trunc nuw i8 %i.ba to i1
  br i1 %i.bb, label %bb.k, label %bb.m

bb.k:                                             ; preds = %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISF_EENS8_ISF_EEEEES3_IS4_IJNS5_IST_EENS8_IST_EEEEENS0_19Cartesian_converterIST_SF_NS0_12NT_converterISS_SE_EEEEEEEEJRSX_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1E_EEEEE4typeEE4typeEOS1N_EEEE4typeEOS1C_DpOS1E_.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !4869 ; 2 uses
  %i.bf = icmp eq i8 %i.be, -1
  br i1 %i.bf, label %bb.n, label %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i20

.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i20:        ; preds = %bb.k
  %i.bg = load ptr, ptr %13, align 8, !tbaa !109
  store ptr %i.bg, ptr %0, align 8, !tbaa !109
  store ptr null, ptr %13, align 8, !tbaa !109
  br label %bb.n

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %11) #23
  br label %bb.ap

bb.m:                                             ; preds = %_ZSt5visitIRN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS0_7Point_3INS0_5EpeckEEENS0_9Segment_3IS6_EEEEENS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEES6_NSC_IN5boost14multiprecision6numberINSH_8backends16rational_adaptorINSJ_15cpp_int_backendILm0ELm0ELNSH_16cpp_integer_typeE1ELNSH_18cpp_int_check_typeE0ESaIyEEEEELNSH_26expression_template_optionE1EEEEENS0_4LazyIS3_IS4_IJNS5_ISF_EENS8_ISF_EEEEES3_IS4_IJNS5_IST_EENS8_IST_EEEEENS0_19Cartesian_converterIST_SF_NS0_12NT_converterISS_SE_EEEEEEEEJRSX_EENSt13invoke_resultIT_JDpNSt13__conditionalIX21is_lvalue_reference_vIT0_EEE4typeIRNSt19variant_alternativeILm0ENSt16remove_referenceIDTclsr9__variantE4__asclsr3stdE7declvalIS1E_EEEEE4typeEE4typeEOS1N_EEEE4typeEOS1C_DpOS1E_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit

bb.n:                                             ; preds = %bb.k, %.sink.split.i.i.i.i.i.i.i.i.i.i.i.i.i.i20
  store i8 %i.be, ptr %i.bc, align 8, !tbaa !4869
  store i8 1, ptr %i.az, align 8, !tbaa !4867
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  store i8 0, ptr %i.ao, align 8, !tbaa !4867
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !4869 ; 2 uses
  %.not.i = icmp eq i8 %i.bj, -1
  br i1 %.not.i, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit, label %bb.o, !prof !1143

bb.o:                                             ; preds = %bb.n
  %i.bk = icmp eq i8 %i.bj, 0
  %i.bl = load ptr, ptr %13, align 8, !tbaa !109  ; 7 uses
  %.not.i.i.i.i.i.i.i.i.i35 = icmp eq ptr %i.bl, null ; 2 uses
  br i1 %i.bk, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  br i1 %.not.i.i.i.i.i.i.i.i.i35, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.bo = load atomic i32, ptr %i.bn monotonic, align 4 ; 2 uses
  %i.bp = icmp eq i32 %i.bo, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = load ptr, ptr %i.bl, align 8, !tbaa !92
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(12) %i.bl) #23, !inline_history !4871
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit

bb.t:                                             ; preds = %bb.r
  %i.bt = add nsw i32 %i.bo, -1
  store atomic i32 %i.bt, ptr %i.bn monotonic, align 4
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit

bb.u:                                             ; preds = %bb.q
  br i1 %i.bp, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bu = atomicrmw sub ptr %i.bn, i32 1 release, align 4
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.w, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit

bb.w:                                             ; preds = %bb.v, %bb.u
  fence acquire
  %i.bw = load ptr, ptr %13, align 8, !tbaa !109  ; 3 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !92
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(12) %i.bw) #23, !inline_history !4871
  br label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit

bb.y:                                             ; preds = %bb.o
  br i1 %.not.i.i.i.i.i.i.i.i.i35, label %_ZNSt14_Optional_baseISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEELb0ELb0EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i7.i.i = icmp eq i8 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 3 uses
  %i.cd = load atomic i32, ptr %i.cc monotonic, align 4 ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i.i, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  br i1 %i.ce, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cf = load ptr, ptr %i.bl, align 8, !tbaa !92
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(12) %i.bl) #23, !inline_history !4872
end_hunk_7
begin_hunk_8_@_ZSt10__do_visitINSt8__detail9__variant21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS4_19Cartesian_converterINS4_16Simple_cartesianIN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEENS8_INS4_11Interval_ntILb0EEEEENS4_12NT_converterISL_SO_EEEESt8optionalISt7variantIJNS4_7Point_3ISP_EENS4_9Segment_3ISP_EEEEEEEJRKSU_IJNSV_ISM_EENSX_ISM_EEEEEEDcOT0_DpOT1_:bb.a
  %8 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %9 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %10 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 384
  %i.b = load i8, ptr %i.a, align 16, !tbaa !4208
  %i.c = icmp eq i8 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !5504
  %i.f = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 16 dereferenceable(385) %1), !noalias !5504 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !5504
  %i.g = extractvalue { double, double } %i.f, 0
  %i.h = extractvalue { double, double } %i.f, 1
  %i.i = fneg double %i.g
  %i.j = insertelement <2 x double> poison, double %i.i, i64 0
  %i.k = insertelement <2 x double> %i.j, double %i.h, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !5504
  %i.l = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !5504 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !5504
  %i.m = extractvalue { double, double } %i.l, 0
  %i.n = extractvalue { double, double } %i.l, 1
  %i.o = fneg double %i.m
  %i.p = insertelement <2 x double> poison, double %i.o, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.n, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !5504
  %i.r = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 16 dereferenceable(64) %i.e), !noalias !5504 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !5504
  %i.s = extractvalue { double, double } %i.r, 0
  %i.t = extractvalue { double, double } %i.r, 1
  %i.u = fneg double %i.s
  %i.v = insertelement <2 x double> poison, double %i.u, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.t, i64 1 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !5501 ; 9 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 112 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 16, !tbaa !3668, !range !13, !noundef !14
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 96 ; 2 uses
  %i.ad = load i8, ptr %i.ac, align 16, !tbaa !3673
  %i.ae = icmp eq i8 %i.ad, 0
  store <2 x double> %i.k, ptr %i.y, align 16
  %.sroa.6.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.q, ptr %.sroa.6.0..sroa_idx6.i.i.i.i, align 16
  %.sroa.7.0..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store <2 x double> %i.w, ptr %.sroa.7.0..sroa_idx10.i.i.i.i, align 16
  br i1 %i.ae, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_3ISQ_EENS5_9Segment_3ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.ac, align 16, !tbaa !3673
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_3ISQ_EENS5_9Segment_3ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.e:                                             ; preds = %bb.b
  store <2 x double> %i.k, ptr %i.y, align 16
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x double> %i.q, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 16
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  store <2 x double> %i.w, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 96
  store i8 0, ptr %i.af, align 16, !tbaa !3673
  store i8 1, ptr %i.z, align 16, !tbaa !3668
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_3ISQ_EENS5_9Segment_3ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !5507
  %i.ag = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 16 dereferenceable(385) %1), !noalias !5507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !5507
  %i.ah = extractvalue { double, double } %i.ag, 0
  %i.ai = extractvalue { double, double } %i.ag, 1
  %i.aj = fneg double %i.ah
  %i.ak = insertelement <2 x double> poison, double %i.aj, i64 0
  %i.al = insertelement <2 x double> %i.ak, double %i.ai, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !5507
  %i.am = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(64) %i.d), !noalias !5507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !5507
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  %i.ap = fneg double %i.an
  %i.aq = insertelement <2 x double> poison, double %i.ap, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.ao, i64 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !5507
  %i.as = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.e), !noalias !5507 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !5507
  %i.at = extractvalue { double, double } %i.as, 0
  %i.au = extractvalue { double, double } %i.as, 1
  %i.av = fneg double %i.at
  %i.aw = insertelement <2 x double> poison, double %i.av, i64 0
  %i.ax = insertelement <2 x double> %i.aw, double %i.au, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !5512
  %i.az = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(192) %i.ay), !noalias !5512 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !5512
  %i.ba = extractvalue { double, double } %i.az, 0
  %i.bb = extractvalue { double, double } %i.az, 1
  %i.bc = fneg double %i.ba
  %i.bd = insertelement <2 x double> poison, double %i.bc, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.bb, i64 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 256
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !5512
  %i.bg = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.bf), !noalias !5512 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !5512
  %i.bh = extractvalue { double, double } %i.bg, 0
  %i.bi = extractvalue { double, double } %i.bg, 1
  %i.bj = fneg double %i.bh
  %i.bk = insertelement <2 x double> poison, double %i.bj, i64 0
  %i.bl = insertelement <2 x double> %i.bk, double %i.bi, i64 1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 320
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23, !noalias !5512
  %i.bn = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 16 dereferenceable(64) %i.bm), !noalias !5512 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23, !noalias !5512
  %i.bo = extractvalue { double, double } %i.bn, 0
  %i.bp = extractvalue { double, double } %i.bn, 1
  %i.bq = fneg double %i.bo
  %i.br = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bp, i64 1 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !5501 ; 15 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 112 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 16, !tbaa !3668, !range !13, !noundef !14
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 96 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 16, !tbaa !3673
  %i.ca = icmp eq i8 %i.bz, 1
  store <2 x double> %i.al, ptr %i.bu, align 16
  %.sroa.6.0..sroa_idx6.i.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x double> %i.ar, ptr %.sroa.6.0..sroa_idx6.i.i.i.i8, align 16
  %.sroa.7.0..sroa_idx10.i.i.i.i9 = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store <2 x double> %i.ax, ptr %.sroa.7.0..sroa_idx10.i.i.i.i9, align 16
  %.sroa.8.0..sroa_idx14.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store <2 x double> %i.be, ptr %.sroa.8.0..sroa_idx14.i.i.i.i, align 16
  %.sroa.9.0..sroa_idx18.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store <2 x double> %i.bl, ptr %.sroa.9.0..sroa_idx18.i.i.i.i, align 16
  %.sroa.10.0..sroa_idx22.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  store <2 x double> %i.bs, ptr %.sroa.10.0..sroa_idx22.i.i.i.i, align 16
  br i1 %i.ca, label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_3ISQ_EENS5_9Segment_3ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.by, align 16, !tbaa !3673
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_3ISQ_EENS5_9Segment_3ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

bb.i:                                             ; preds = %bb.f
  store <2 x double> %i.al, ptr %i.bu, align 16
  %.sroa.6.0..sroa_idx.i.i.i.i6 = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store <2 x double> %i.ar, ptr %.sroa.6.0..sroa_idx.i.i.i.i6, align 16
  %.sroa.7.0..sroa_idx.i.i.i.i7 = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store <2 x double> %i.ax, ptr %.sroa.7.0..sroa_idx.i.i.i.i7, align 16
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  store <2 x double> %i.be, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 16
  %.sroa.9.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 64
  store <2 x double> %i.bl, ptr %.sroa.9.0..sroa_idx.i.i.i.i, align 16
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bu, i64 80
  store <2 x double> %i.bs, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 96
  store i8 1, ptr %i.cb, align 16, !tbaa !3673
  store i8 1, ptr %i.bv, align 16, !tbaa !3668
  br label %_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_3ISQ_EENS5_9Segment_3ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit

_ZNSt8__detail9__variant17__gen_vtable_implINS0_12_Multi_arrayIPFNS0_21__deduce_visit_resultIvEERN4CGAL8internal18Converting_visitorINS5_19Cartesian_converterINS5_16Simple_cartesianIN5boost14multiprecision6numberINSB_8backends16rational_adaptorINSD_15cpp_int_backendILm0ELm0ELNSB_16cpp_integer_typeE1ELNSB_18cpp_int_check_typeE0ESaIyEEEEELNSB_26expression_template_optionE1EEEEENS9_INS5_11Interval_ntILb0EEEEENS5_12NT_converterISM_SP_EEEESt8optionalISt7variantIJNS5_7Point_3ISQ_EENS5_9Segment_3ISQ_EEEEEEERKSV_IJNSW_ISN_EENSY_ISN_EEEEEJEEESt16integer_sequenceImJLm0EEEE14__visit_invokeES13_S18_.exit: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISU_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(48) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #44 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5324 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i8, ptr %i.g, align 16, !tbaa !3673
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.137, ptr %i.j, align 8, !tbaa !2375
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !2970
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.l, ptr noundef nonnull align 16 dereferenceable(48) %i.f, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr null, ptr %i.m, align 8, !tbaa !2972
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.n, align 8, !tbaa !2974
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !109
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJS7_NS_9Segment_3IS6_EEEEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !5320   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !4867, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !4869
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_5EpeckEEENS2_9Segment_3IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !109
  store i8 0, ptr %i.z, align 8, !tbaa !4869
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 0, ptr %i.ae, align 8, !tbaa !4869
  store i8 1, ptr %i.w, align 8, !tbaa !4867
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !4109 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !4109
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EEEE7emplaceILm0EJS3_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEEEaSIS4_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #40
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !5515
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !109 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !5515
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEE, i64 16), ptr %0, align 16, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 3 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit
  fence acquire
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.s) #23, !inline_history !2982
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 192) #40, !inline_history !2982
  br label %_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(96) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

end_hunk_8
begin_hunk_9_@_ZNK4CGAL10Lazy_rep_nINS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJS6_NS_9Segment_3IS5_EEEEESV_ISW_IJSL_NSX_ISK_EEEEEST_EEEE19update_exact_helperIJLm0EEEEvSt16integer_sequenceImJXspT_EEE:bb.a
bb.j:                                             ; preds = %bb.f
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = atomicrmw sub ptr %i.as, i32 1 release, align 4
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.l, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k, %bb.j
  fence acquire
  %i.bb = load ptr, ptr %i.b, align 16, !tbaa !109 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !92
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(12) %i.bb) #23, !inline_history !5523
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i:          ; preds = %bb.m, %bb.l, %bb.k, %bb.i, %bb.h
  store ptr null, ptr %i.b, align 16, !tbaa !109
  br label %_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS_19Cartesian_converterISR_S8_NS_12NT_converterISQ_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit

_ZN4CGAL17lazy_reset_memberIJNS_4LazyISt8optionalISt7variantIJNS_7Point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS_19Cartesian_converterISR_S8_NS_12NT_converterISQ_S7_EEEEEEEEEvRSt5tupleIJDpT_EE.exit: ; preds = %_ZN4CGAL7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKSG_.exit, %_ZN4CGAL6Handle6decrefEv.exit.i.i.i.i.i
  ret void

bb.n:                                             ; preds = %_ZSt26__throw_bad_variant_accessb.exit.i.i.i.invoke, %_ZNK4CGAL8internal12Variant_castINS_7Point_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEEEEEclIJSI_NS_9Segment_3ISH_EEEEERKSI_RKSt8optionalISt7variantIJDpT_EEE.exit
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.preheader.i.i.i.i.i, %bb.n, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.bg, %bb.n ], [ %lpad.thr_comm.i.i.i.i.i, %.preheader.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 192) #40
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repISt8optionalISt7variantIJNS3_7Point_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS3_9Segment_3ISB_EEEEES5_IS6_IJNS7_INS8_IN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEEEENSD_ISU_EEEEENS3_19Cartesian_converterISU_SB_NS3_12NT_converterIST_SA_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERS16_ENUlvE_8__invokeEv() #5 comdat align 2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5524, !nonnull !14, !align !1503
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !5517 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !92
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 16 dereferenceable(156) %i.d), !inline_history !5526
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_5EpeckEEENS2_9Segment_3IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !4869  ; 2 uses
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.u, label %bb.b, !prof !1143

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i8 %i.b, 0
  %i.d = load ptr, ptr %0, align 8, !tbaa !109    ; 7 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.d, null  ; 2 uses
  br i1 %i.c, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.g = load atomic i32, ptr %i.f monotonic, align 4 ; 2 uses
  %i.h = icmp eq i32 %i.g, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #23, !inline_history !5527
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.g:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.g, -1
  store atomic i32 %i.l, ptr %i.f monotonic, align 4
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.h:                                             ; preds = %bb.d
  br i1 %i.h, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = atomicrmw sub ptr %i.f, i32 1 release, align 4
  %i.n = icmp eq i32 %i.m, 1
  br i1 %i.n, label %bb.j, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  fence acquire
  %i.o = load ptr, ptr %0, align 8, !tbaa !109    ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(12) %i.o) #23, !inline_history !5527
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.l:                                             ; preds = %bb.b
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i.i7.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i7.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.w, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.d) #23, !inline_history !5528
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.p:                                             ; preds = %bb.n
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.q:                                             ; preds = %bb.m
  br i1 %i.w, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.s, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

bb.s:                                             ; preds = %bb.r, %bb.q
  fence acquire
  %i.ad = load ptr, ptr %0, align 8, !tbaa !109   ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !92
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #23, !inline_history !5528
  br label %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit

_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit: ; preds = %bb.c, %bb.f, %bb.g, %bb.i, %bb.j, %bb.k, %bb.l, %bb.o, %bb.p, %bb.r, %bb.s, %bb.t
  store i8 -1, ptr %i.a, align 8, !tbaa !4869
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %_ZSt10__do_visitIvZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS3_5EpeckEEENS3_9Segment_3IS5_EEEE8_M_resetEvEUlOT_E_JRSt7variantIJS6_S8_EEEEDcOT0_DpOT1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL8internal27Fill_lazy_variant_visitor_2ISt8optionalISt7variantIJNS_7Point_3INS_5EpeckEEENS_9Segment_3IS5_EEEEENS_16Simple_cartesianINS_11Interval_ntILb0EEEEES5_NSB_IN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEENS_4LazyIS2_IS3_IJNS4_ISE_EENS7_ISE_EEEEES2_IS3_IJNS4_ISS_EENS7_ISS_EEEEENS_19Cartesian_converterISS_SE_NS_12NT_converterISR_SD_EEEEEEEclISV_EEvRKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(96) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #44 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !5324 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !109
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.f = load atomic ptr, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i8, ptr %i.g, align 16, !tbaa !3673
  %.not.i.i.i.i = icmp eq i8 %i.h, 1
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt18bad_variant_access, i64 16), ptr %i.i, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @.str.137, ptr %i.j, align 8, !tbaa !2375
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt18bad_variant_access, ptr nonnull @_ZNSt9exceptionD2Ev) #43
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i: ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.k, align 4, !tbaa !2970
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.l, ptr noundef nonnull align 16 dereferenceable(96) %i.f, i64 96, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store ptr %i.l, ptr %i.m, align 8, !tbaa !3418
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i32 0, ptr %i.n, align 8, !tbaa !2974
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEE, i64 16), ptr %i.a, align 16, !tbaa !92
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !109  ; 2 uses
  store ptr %i.p, ptr %i.o, align 16, !tbaa !109
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.s = load atomic i32, ptr %i.r monotonic, align 4
  %i.t = add nsw i32 %i.s, 1
  store atomic i32 %i.t, ptr %i.r monotonic, align 4
  br label %_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

bb.d:                                             ; preds = %_ZNK4CGAL8internal12Variant_castINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEEEclIJNS_7Point_3IS6_EES7_EEERKS7_RKSt8optionalISt7variantIJDpT_EEE.exit.i
  %i.u = atomicrmw add ptr %i.r, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit

_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit: ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %0, align 8, !tbaa !5320   ; 8 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i8, ptr %i.w, align 8, !tbaa !4867, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.e, label %bb.h

bb.e:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !4869
  %i.ab = icmp eq i8 %i.aa, 1
  br i1 %i.ab, label %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt8__detail9__variant16_Variant_storageILb0EJN4CGAL7Point_3INS2_5EpeckEEENS2_9Segment_3IS4_EEEE8_M_resetEv(ptr noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i unwind label %bb.g

_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i: ; preds = %bb.f
  store ptr %i.a, ptr %i.v, align 8, !tbaa !109
  store i8 1, ptr %i.z, align 8, !tbaa !4869
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.g:                                             ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          catch ptr null
  %i.ad = extractvalue { ptr, i32 } %i.ac, 0
  tail call void @__clang_call_terminate(ptr %i.ad) #41
  unreachable

bb.h:                                             ; preds = %_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEEC2IJRS14_EEERKSO_RKSP_DpOT_.exit
  store ptr %i.a, ptr %i.v, align 8, !tbaa !109
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store i8 1, ptr %i.ae, align 8, !tbaa !4869
  store i8 1, ptr %i.w, align 8, !tbaa !4867
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit: ; preds = %bb.e
  %i.af = load ptr, ptr %i.v, align 8, !tbaa !4109 ; 6 uses
  store ptr %i.a, ptr %i.v, align 8, !tbaa !4109
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.i

bb.i:                                             ; preds = %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.l:                                             ; preds = %bb.j
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.m:                                             ; preds = %bb.i
  br i1 %i.aj, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.o, label %_ZN4CGAL6HandleD2Ev.exit6

bb.o:                                             ; preds = %bb.m, %bb.n
  fence acquire
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !92
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #23, !inline_history !1284
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %bb.h, %_ZNSt7variantIJN4CGAL7Point_3INS0_5EpeckEEENS0_9Segment_3IS2_EEEE7emplaceILm1EJS5_EEENSt9enable_ifIX18is_constructible_vINSt9_Nth_typeIXT_EJS3_S5_EE4typeEDpT0_EERSB_E4typeEDpOSC_.exit.i.i, %bb.o, %bb.n, %bb.l, %bb.k, %_ZNSt8optionalISt7variantIJN4CGAL7Point_3INS1_5EpeckEEENS1_9Segment_3IS3_EEEEEaSIS6_EENSt9enable_ifIX7__and_vISt6__not_ISt7is_sameIS8_NSt9remove_cvINSt16remove_referenceIT_E4typeEE4typeEEESB_ISt6__and_IJSt9is_scalarIS7_ESC_IS7_NSt5decayISF_E4typeEEEEESt16is_constructibleIS7_JSF_EESt13is_assignableIRS7_SF_EEERS8_E4typeEOSF_.exit
  ret void

bb.p:                                             ; preds = %bb.b
  %i.at = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 144) #40
  resume { ptr, i32 } %i.at
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(136) dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #23, !inline_history !5515
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !109 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !92
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #23, !inline_history !5515
  br label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit

_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %0, align 16, !tbaa !92
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.s = load atomic ptr, ptr %i.r monotonic, align 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i = icmp eq ptr %i.s, %i.t
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit
  fence acquire
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %_ZN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 288
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(192) %i.w) #23, !inline_history !3431
  tail call void @_ZNSt5arrayIN5boost14multiprecision6numberINS1_8backends16rational_adaptorINS3_15cpp_int_backendILm0ELm0ELNS1_16cpp_integer_typeE1ELNS1_18cpp_int_check_typeE0ESaIyEEEEELNS1_26expression_template_optionE1EEELm3EED2Ev(ptr noundef nonnull align 16 dead_on_return(192) dereferenceable(384) %i.v) #23, !inline_history !3431
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 480) #40, !inline_history !3431
  br label %_ZN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit

_ZN4CGAL8Lazy_repINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EED2Ev.exit: ; preds = %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit, %bb.j, %bb.k
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_9Segment_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_8internal12Variant_castIS6_EENSN_ISL_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_4LazyISt8optionalISt7variantIJNS_7Point_3IS5_EES6_EEESV_ISW_IJNSX_ISK_EESL_EEEST_EEEED0Ev(ptr noundef nonnull align 16 dereferenceable(144) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !109 ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL4LazyISt8optionalISt7variantIJNS0_7Point_3INS0_16Simple_cartesianINS0_11Interval_ntILb0EEEEEEENS0_9Segment_3IS8_EEEEES2_IS3_IJNS4_INS5_IN5boost14multiprecision6numberINSF_8backends16rational_adaptorINSH_15cpp_int_backendILm0ELm0ELNSF_16cpp_integer_typeE1ELNSF_18cpp_int_check_typeE0ESaIyEEEEELNSF_26expression_template_optionE1EEEEEEENSA_ISR_EEEEENS0_19Cartesian_converterISR_S8_NS0_12NT_converterISQ_S7_EEEEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i.i.i = icmp eq i8 %i.c, 0
end_hunk_9
