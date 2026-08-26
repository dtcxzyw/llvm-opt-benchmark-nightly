Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/remesh_intersections?download=true
inline.NumInlined: 39101
inline.NumDeleted: 8957
loop-unroll.NumCompletelyUnrolled: 154
loop-unroll.NumRuntimeUnrolled: 153
loop-unroll.NumUnrolled: 307
begin_hunk_0_@_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors30Construct_projected_xy_point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_7Plane_3IS1_EENS_7Point_3IS1_EEEEEDcDpRKT_:bb.a
bb.l:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ak) #39
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.al = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ab, align 8, !tbaa !59
  store ptr null, ptr %i.ac, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.o:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i19
  store ptr null, ptr %i.ab, align 8, !tbaa !59
  store ptr null, ptr %i.ac, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %i.an = load atomic ptr, ptr %i.am monotonic, align 8
  invoke void @_ZNK4CGAL7PlaneC3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEE5to_2dERKNS_7Point_3ISF_EE(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_2.1284") align 16 %11, ptr noundef nonnull align 16 dereferenceable(256) %i.ah, ptr noundef nonnull align 16 dereferenceable(192) %i.an)
          to label %_ZNK4CGAL20CommonKernelFunctors30Construct_projected_xy_point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EERKNS_7Point_3ISG_EE.exit unwind label %bb.v

_ZNK4CGAL20CommonKernelFunctors30Construct_projected_xy_point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EERKNS_7Point_3ISG_EE.exit: ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !8154)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !8154
  %i.ao = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(128) %11)
          to label %.noexc unwind label %bb.w     ; 2 uses

.noexc:                                           ; preds = %_ZNK4CGAL20CommonKernelFunctors30Construct_projected_xy_point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EERKNS_7Point_3ISG_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !8154
  %i.ap = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !8154
  %i.aq = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.ap)
          to label %.noexc23 unwind label %bb.w   ; 2 uses

.noexc23:                                         ; preds = %.noexc
  %i.ar = extractvalue { double, double } %i.ao, 0
  %i.as = fneg double %i.ar
  %i.at = insertelement <2 x double> poison, double %i.as, i64 0
  %i.au = extractvalue { double, double } %i.ao, 1
  %i.av = insertelement <2 x double> %i.at, double %i.au, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !8154
  %i.aw = extractvalue { double, double } %i.aq, 0
  %i.ax = extractvalue { double, double } %i.aq, 1
  %i.ay = fneg double %i.aw
  %i.az = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.ba = insertelement <2 x double> %i.az, double %i.ax, i64 1
  store <2 x double> %i.av, ptr %6, align 16, !alias.scope !8154
  %.sroa.03.i.i.i.i.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store <2 x double> %i.ba, ptr %.sroa.03.i.i.i.i.sroa.4.0..sroa_idx.i.i, align 16, !alias.scope !8154
  invoke void @_ZN4CGAL8Lazy_repINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi1EEC2IS6_SL_EEOT_OT0_(ptr noundef nonnull align 16 dereferenceable(64) %i.y, ptr noundef nonnull align 16 dereferenceable(32) %6, ptr noundef nonnull align 16 dereferenceable(128) %11)
          to label %_ZN4CGAL6HandleD2Ev.exit27 unwind label %bb.w

_ZN4CGAL6HandleD2Ev.exit27:                       ; preds = %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_0INS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEE, i64 16), ptr %i.y, align 16, !tbaa !67
  store ptr %i.y, ptr %0, align 8, !tbaa !101
  %i.bb = getelementptr inbounds nuw i8, ptr %11, i64 121
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = getelementptr inbounds nuw i8, ptr %11, i64 122
  %i.bf = load i8, ptr %i.be, align 2, !range !13
  %i.bg = trunc nuw i8 %i.bf to i1
  %or.cond.i1.i.i.i.i.i = select i1 %i.bd, i1 true, i1 %i.bg
  br i1 %or.cond.i1.i.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit27
  %i.bh = getelementptr inbounds nuw i8, ptr %11, i64 96
  %i.bi = getelementptr inbounds nuw i8, ptr %11, i64 104
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = load i64, ptr %i.bh, align 16
  %i.bl = shl i64 %i.bk, 3
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bl) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i: ; preds = %bb.p, %_ZN4CGAL6HandleD2Ev.exit27
  %i.bm = getelementptr inbounds nuw i8, ptr %11, i64 89
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !9, !range !13, !noundef !14
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %11, i64 90
  %i.bq = load i8, ptr %i.bp, align 2, !range !13
  %i.br = trunc nuw i8 %i.bq to i1
  %or.cond.i.i.i.i.i.i = select i1 %i.bo, i1 true, i1 %i.br
  br i1 %or.cond.i.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load i64, ptr %i.ap, align 16
  %i.bv = shl i64 %i.bu, 3
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bv) #37
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i: ; preds = %bb.q, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %11, i64 57
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9, !range !13, !noundef !14
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %11, i64 58
  %i.ca = load i8, ptr %i.bz, align 2, !range !13
  %i.cb = trunc nuw i8 %i.ca to i1
  %or.cond.i1.i.i.1.i.i.i = select i1 %i.by, i1 true, i1 %i.cb
  br i1 %or.cond.i1.i.i.1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i, label %bb.r

bb.r:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = load i64, ptr %i.cc, align 16
  %i.cg = shl i64 %i.cf, 3
  call void @_ZdlPvm(ptr noundef %i.ce, i64 noundef %i.cg) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i: ; preds = %bb.r, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %11, i64 25
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !9, !range !13, !noundef !14
  %i.cj = trunc nuw i8 %i.ci to i1
  %i.ck = getelementptr inbounds nuw i8, ptr %11, i64 26
  %i.cl = load i8, ptr %i.ck, align 2, !range !13
  %i.cm = trunc nuw i8 %i.cl to i1
  %or.cond.i.i.i.1.i.i.i = select i1 %i.cj, i1 true, i1 %i.cm
  br i1 %or.cond.i.i.i.1.i.i.i, label %_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = load i64, ptr %11, align 16
  %i.cq = shl i64 %i.cp, 3
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cq) #37
  br label %_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit

_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.x

bb.t:                                             ; preds = %bb.f
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.e
  %.merged18 = phi { ptr, i32 } [ %i.cr, %bb.t ], [ %.pn, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.cs = load i32, ptr %i.a, align 4
  %i.ct = and i32 %i.cs, -24577
  %i.cu = or disjoint i32 %i.ct, %i.i
  store i32 %i.cu, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.y

bb.v:                                             ; preds = %bb.o
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.w:                                             ; preds = %.noexc23, %.noexc, %_ZNK4CGAL20CommonKernelFunctors30Construct_projected_xy_point_2INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_7Plane_3ISG_EERKNS_7Point_3ISG_EE.exit
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(128) %11) #23
  br label %.body

.body:                                            ; preds = %bb.j, %bb.n, %bb.v, %bb.w
  %.pn16 = phi { ptr, i32 } [ %i.cw, %bb.w ], [ %i.ae, %bb.j ], [ %i.cv, %bb.v ], [ %i.al, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef 64) #37
  br label %bb.y

bb.x:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit, %_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit
  ret void

bb.y:                                             ; preds = %.body, %bb.u
  %.merged = phi { ptr, i32 } [ %.pn16, %.body ], [ %.merged18, %bb.u ]
  resume { ptr, i32 } %.merged
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors30Construct_projected_xy_point_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Plane_3INS_5EpeckEEENS_7Point_3ISV_EEEEC2IJRKSW_RKSY_EEERKSO_RKSP_DpOT_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.03.i.i.i.i.i.i.i = alloca [2 x %"class.CGAL::Interval_nt"], align 16 ; 5 uses
  %.sroa.04.i.i.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %5 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %6 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %.sroa.04.i.i.i.i.i = alloca [3 x %"class.CGAL::Interval_nt"], align 16 ; 6 uses
  %7 = alloca %"class.CGAL::CartesianKernelFunctors::Construct_base_vector_3", align 1 ; 3 uses
  %8 = alloca %"class.CGAL::Plane_3.1222", align 16 ; 4 uses
  %9 = alloca %"class.CGAL::CartesianKernelFunctors::Construct_base_vector_3", align 1 ; 3 uses
  %10 = alloca %"class.CGAL::Plane_3.1222", align 16 ; 4 uses
  %11 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %12 = alloca %"class.CGAL::Interval_nt", align 16 ; 3 uses
  %13 = alloca %"class.CGAL::Vector_3.933", align 16 ; 6 uses
  %14 = alloca %"class.CGAL::Vector_3.933", align 16 ; 6 uses
  %15 = alloca %"class.CGAL::Vector_3.933", align 16 ; 6 uses
  %16 = alloca %"class.CGAL::Vector_3.933", align 16 ; 6 uses
  %.sroa.0 = alloca [2 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  %i.a = load ptr, ptr %3, align 8, !tbaa !101
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load atomic ptr, ptr %i.b acquire, align 8 ; 7 uses
  %i.d = load ptr, ptr %4, align 8, !tbaa !101    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !8157
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !8157
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23, !noalias !8157
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !8162
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !8162
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %10, ptr noundef nonnull align 16 dereferenceable(64) %i.c, i64 64, i1 false), !tbaa.struct !7426, !noalias !8162
  call void @_ZNK4CGAL23CartesianKernelFunctors23Construct_base_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS5_EEi(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Vector_3.933") align 16 %13, ptr noundef nonnull align 1 dereferenceable(2) %9, ptr noundef nonnull align 16 dereferenceable(64) %10, i32 noundef 1), !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !8162
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !8162
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23, !noalias !8157
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23, !noalias !8165
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23, !noalias !8165
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, ptr noundef nonnull align 16 dereferenceable(64) %i.c, i64 64, i1 false), !tbaa.struct !7426, !noalias !8165
  call void @_ZNK4CGAL23CartesianKernelFunctors23Construct_base_vector_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEclERKNS_7Plane_3IS5_EEi(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Vector_3.933") align 16 %14, ptr noundef nonnull align 1 dereferenceable(2) %7, ptr noundef nonnull align 16 dereferenceable(64) %8, i32 noundef 2), !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23, !noalias !8165
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23, !noalias !8165
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23, !noalias !8157
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.c, i64 16, i1 false), !noalias !8168
  %.sroa.04.16..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i.i, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.f, i64 16, i1 false), !noalias !8168
  %.sroa.04.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i.i, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false), !noalias !8168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %15, ptr noundef nonnull align 16 dereferenceable(48) %.sroa.04.i.i.i.i.i, i64 48, i1 false), !tbaa.struct !8171, !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23, !noalias !8157
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !8172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !8172
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i.i.i.i.i.i), !noalias !8172
  call void @_ZN4CGAL16point_on_planeC3INS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_RS3_S6_S6_(ptr noundef nonnull align 16 dereferenceable(64) %i.c, ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) %i.h, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 16 dereferenceable(16) %6), !noalias !8172
  %.sroa.04.16..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i.i.i, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.16..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !7062, !noalias !8172
  %.sroa.04.32..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.04.i.i.i.i.i.i, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.04.32..sroa_idx.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !7062, !noalias !8172
  %.sroa.0.0.copyload.i.i = load <2 x double>, ptr %.sroa.04.i.i.i.i.i.i, align 16, !noalias !8157
  %.sroa.4.0.copyload.i.i = load <2 x double>, ptr %.sroa.04.16..sroa_idx.i.i.i.i.i.i, align 16, !noalias !8157
  %.sroa.5.0.copyload.i.i = load <2 x double>, ptr %.sroa.04.32..sroa_idx.i.i.i.i.i.i, align 16, !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i.i.i.i.i.i), !noalias !8172
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !8172
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !8172
  call void @llvm.experimental.noalias.scope.decl(metadata !8177)
  call void @llvm.experimental.noalias.scope.decl(metadata !8180)
  %i.i = shufflevector <2 x double> %.sroa.0.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.j = load <2 x double>, ptr %i.e, align 16, !tbaa !60, !noalias !8183
  %i.k = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.j) #23, !noalias !8183, !srcloc !141
  %i.l = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.i) #29, !srcloc !140
  %i.m = fadd <2 x double> %i.k, %i.l
  %i.n = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.m) #23, !noalias !8183, !srcloc !141
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.p = shufflevector <2 x double> %.sroa.4.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = load <2 x double>, ptr %i.o, align 16, !tbaa !60, !noalias !8183
  %i.r = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #23, !noalias !8183, !srcloc !141
  %i.s = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.p) #29, !srcloc !140
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.t) #23, !noalias !8183, !srcloc !141
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.w = shufflevector <2 x double> %.sroa.5.0.copyload.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.x = load <2 x double>, ptr %i.v, align 16, !tbaa !60, !noalias !8183
  %i.y = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.x) #23, !noalias !8183, !srcloc !141
  %i.z = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.w) #29, !srcloc !140
  %i.aa = fadd <2 x double> %i.y, %i.z
  %i.ab = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.aa) #23, !noalias !8183, !srcloc !141
  store <2 x double> %i.n, ptr %16, align 16, !alias.scope !8186, !noalias !8157
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  store <2 x double> %i.u, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !alias.scope !8186, !noalias !8157
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 32 ; 2 uses
  store <2 x double> %i.ab, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 16, !tbaa !60, !alias.scope !8186, !noalias !8157
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %15, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i), !noalias !8157
  call void @_ZN4CGAL5solveINS_11Interval_ntILb0EEEEEvRKT_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_S5_RS3_S6_S6_(ptr noundef nonnull align 16 dereferenceable(48) %13, ptr noundef nonnull align 16 dereferenceable(16) %i.ac, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, ptr noundef nonnull align 16 dereferenceable(48) %14, ptr noundef nonnull align 16 dereferenceable(16) %i.ae, ptr noundef nonnull align 16 dereferenceable(16) %i.af, ptr noundef nonnull align 16 dereferenceable(48) %15, ptr noundef nonnull align 16 dereferenceable(16) %i.ag, ptr noundef nonnull align 16 dereferenceable(16) %i.ah, ptr noundef nonnull align 16 dereferenceable(48) %16, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %11, ptr noundef nonnull align 16 dereferenceable(16) %12), !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #23, !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23, !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23, !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23, !noalias !8157
  %.sroa.03.16..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.i.i.i.i.i.i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.03.16..sroa_idx.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !noalias !8187
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.03.i.i.i.i.i.i.i, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.03.i.i.i.i.i.i.i), !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !8157
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !8157
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ai, align 8, !tbaa !350
  %17 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %17, ptr noundef nonnull align 16 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.aj, align 16, !tbaa !8190
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 0, ptr %i.ak, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors30Construct_projected_xy_point_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Plane_3INS_5EpeckEEENS_7Point_3ISV_EEEEE, i64 16), ptr %0, align 16, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load ptr, ptr %4, align 8, !tbaa !101   ; 2 uses
  store ptr %i.am, ptr %i.al, align 16, !tbaa !101
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = load atomic i32, ptr %i.ao monotonic, align 4
  %i.aq = add nsw i32 %i.ap, 1
  store atomic i32 %i.aq, ptr %i.ao monotonic, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  store ptr %i.as, ptr %i.ar, align 8, !tbaa !101
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 2 uses
  %i.au = load atomic i32, ptr %i.at monotonic, align 4
  %i.av = add nsw i32 %i.au, 1
  store atomic i32 %i.av, ptr %i.at monotonic, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.aw = atomicrmw add ptr %i.ao, i32 1 monotonic, align 4 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ay = load ptr, ptr %3, align 8, !tbaa !101   ; 2 uses
  store ptr %i.ay, ptr %i.ax, align 8, !tbaa !101
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = atomicrmw add ptr %i.az, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL7PointC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(128) dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121
  %i.c = load i8, ptr %i.b, align 1, !tbaa !9, !range !13, !noundef !14
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 122
  %i.f = load i8, ptr %i.e, align 2, !range !13
  %i.g = trunc nuw i8 %i.f to i1
  %or.cond.i1.i.i.i.i = select i1 %i.d, i1 true, i1 %i.g
  br i1 %or.cond.i1.i.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i64, ptr %i.h, align 16
  %i.l = shl i64 %i.k, 3
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i: ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.n = load i8, ptr %i.m, align 1, !tbaa !9, !range !13, !noundef !14
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.q = load i8, ptr %i.p, align 2, !range !13
  %i.r = trunc nuw i8 %i.q to i1
  %or.cond.i.i.i.i.i = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond.i.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i64, ptr %i.a, align 16
  %i.v = shl i64 %i.u, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.v) #37
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i: ; preds = %bb.c, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.x = load i8, ptr %i.w, align 1, !tbaa !9, !range !13, !noundef !14
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 58
  %i.aa = load i8, ptr %i.z, align 2, !range !13
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond.i1.i.i.1.i.i = select i1 %i.y, i1 true, i1 %i.ab
  br i1 %or.cond.i1.i.i.1.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i, label %bb.d

bb.d:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i64, ptr %i.ac, align 16
  %i.ag = shl i64 %i.af, 3
  tail call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ag) #37
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i: ; preds = %bb.d, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9, !range !13, !noundef !14
  %i.aj = trunc nuw i8 %i.ai to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.al = load i8, ptr %i.ak, align 2, !range !13
  %i.am = trunc nuw i8 %i.al to i1
  %or.cond.i.i.i.1.i.i = select i1 %i.aj, i1 true, i1 %i.am
  br i1 %or.cond.i.i.i.1.i.i, label %_ZN4CGAL8VectorC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = load i64, ptr %0, align 16
  %i.aq = shl i64 %i.ap, 3
  tail call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.aq) #37
  br label %_ZN4CGAL8VectorC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit

_ZN4CGAL8VectorC2INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.1.i.i, %bb.e
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL10Lazy_rep_nINS_7Point_2INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors30Construct_projected_xy_point_2IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_7Plane_3INS_5EpeckEEENS_7Point_3ISV_EEEED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !101  ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i = icmp eq i8 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 4 ; 2 uses
  %i.g = icmp eq i32 %i.f, 1                      ; 2 uses
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(12) %i.c) #23, !inline_history !8193
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = add nsw i32 %i.f, -1
  store atomic i32 %i.k, ptr %i.e monotonic, align 4
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = atomicrmw sub ptr %i.e, i32 1 release, align 4
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.h, label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !101  ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #23, !inline_history !8193
  br label %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i

_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.a
  %i.s = load ptr, ptr %i.a, align 16, !tbaa !101 ; 4 uses
  %.not.i.i.i1.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i1.i, label %_ZNSt11_Tuple_implILm0EJN4CGAL7Plane_3INS0_5EpeckEEENS0_7Point_3IS2_EEEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt10_Head_baseILm0EN4CGAL7Plane_3INS0_5EpeckEEELb0EED2Ev.exit.i
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i2.i = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
  %i.v = load atomic i32, ptr %i.u monotonic, align 4 ; 2 uses
  %i.w = icmp eq i32 %i.v, 1                      ; 2 uses
  br i1 %.not.i.i.i.i2.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #23, !inline_history !8194
  br label %_ZNSt11_Tuple_implILm0EJN4CGAL7Plane_3INS0_5EpeckEEENS0_7Point_3IS2_EEEED2Ev.exit

bb.m:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZNSt11_Tuple_implILm0EJN4CGAL7Plane_3INS0_5EpeckEEENS0_7Point_3IS2_EEEED2Ev.exit

bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

end_hunk_0
begin_hunk_1_@_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS8_10_Hash_nodeIS6_Lb1EEEm:bb.a

bb.h:                                             ; preds = %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit, %bb.a
  %.0 = phi i64 [ %i.s, %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_rehashEmRKm.exit ], [ %1, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  store i64 %2, ptr %i.t, align 8, !tbaa !7224
  %i.u = load ptr, ptr %0, align 8, !tbaa !6823   ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %.0 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !175  ; 2 uses
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !173
  store ptr %i.x, ptr %3, align 8, !tbaa !173
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !175
  store ptr %3, ptr %i.y, align 8, !tbaa !173
  br label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !6891
  store ptr %i.aa, ptr %3, align 8, !tbaa !173
  store ptr %3, ptr %i.z, align 8, !tbaa !6891
  %i.ab = load ptr, ptr %3, align 8, !tbaa !173   ; 2 uses
  %.not11.i = icmp eq ptr %i.ab, null
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !6825
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !7224
  %i.af = urem i64 %i.ae, %i.ac
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.af
  store ptr %3, ptr %i.ag, align 8, !tbaa !175
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  store ptr %i.z, ptr %i.v, align 8, !tbaa !175
  br label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit

_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE22_M_insert_bucket_beginEmPNS8_10_Hash_nodeIS6_Lb1EEE.exit: ; preds = %bb.i, %bb.l
  %i.ah = load i64, ptr %i.f, align 8, !tbaa !10256
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.f, align 8, !tbaa !10256
  ret ptr %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10276 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !188
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #37
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 56) #37
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE18_M_deallocate_nodeEPS9_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i64 %1, 1
  br i1 %i.a, label %bb.b, label %bb.c, !prof !48

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !10278
  br label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.c, label %bb.d, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE19_M_allocate_bucketsEm.exit.i, !prof !48

bb.d:                                             ; preds = %bb.c
  %i.d = icmp ugt i64 %1, 2305843009213693951
  br i1 %i.d, label %.noexc.i.i, label %.noexc7.i.i

.noexc.i.i:                                       ; preds = %bb.d
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #39
  unreachable

.noexc7.i.i:                                      ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #39
  unreachable

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE19_M_allocate_bucketsEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %1, 3                    ; 2 uses
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #38 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.f, i8 0, i64 %i.e, i1 false)
  br label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit

_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit: ; preds = %bb.b, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE19_M_allocate_bucketsEm.exit.i
  %.0.i = phi ptr [ %i.b, %bb.b ], [ %i.f, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKS2_IllESt6vectorIlSaIlEEELb1EEEEE19_M_allocate_bucketsEm.exit.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !6891 ; 2 uses
  store ptr null, ptr %i.g, align 8, !tbaa !6891
  %.not29 = icmp eq ptr %i.h, null
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit, %bb.h
  %.031 = phi ptr [ %i.i, %bb.h ], [ %i.h, %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 8 uses
  %.02530 = phi i64 [ %.1, %bb.h ], [ 0, %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit ] ; 2 uses
  %i.i = load ptr, ptr %.031, align 8, !tbaa !173 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.031, i64 48
  %i.k = load i64, ptr %i.j, align 8, !tbaa !7224
  %i.l = urem i64 %i.k, %1                        ; 3 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %i.l ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !175  ; 2 uses
  %.not27 = icmp eq ptr %i.n, null
  br i1 %.not27, label %bb.e, label %bb.g

bb.e:                                             ; preds = %.lr.ph
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !6891
  store ptr %i.o, ptr %.031, align 8, !tbaa !173
  store ptr %.031, ptr %i.g, align 8, !tbaa !6891
  store ptr %i.g, ptr %i.m, align 8, !tbaa !175
  %i.p = load ptr, ptr %.031, align 8, !tbaa !173
  %.not28 = icmp eq ptr %i.p, null
  br i1 %.not28, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.0.i, i64 %.02530
  store ptr %.031, ptr %i.q, align 8, !tbaa !175
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !173
  store ptr %i.r, ptr %.031, align 8, !tbaa !173
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !175
  store ptr %.031, ptr %i.s, align 8, !tbaa !173
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.1 = phi i64 [ %.02530, %bb.g ], [ %i.l, %bb.f ], [ %i.l, %bb.e ]
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !10279

._crit_edge:                                      ; preds = %bb.h, %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_allocate_bucketsEm.exit
  %i.t = load ptr, ptr %0, align 8, !tbaa !6823   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !6825
  %i.y = shl i64 %i.x, 3
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.y) #37
  br label %_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit

_ZNSt10_HashtableISt4pairIllES0_IKS1_St6vectorIlSaIlEEESaIS6_ENSt8__detail10_Select1stESt8equal_toIS1_EZN3igl8copyleft4cgal20remesh_intersectionsIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSH_IiLin1ELin1ELi0ELin1ELin1EEEN4CGAL5EpickENSH_INSK_13Lazy_exact_ntIN5boost14multiprecision6numberINSO_8backends16rational_adaptorINSQ_15cpp_int_backendILm0ELm0ELNSO_16cpp_integer_typeE1ELNSO_18cpp_int_check_typeE0ESaIyEEEEELNSO_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEESJ_NSH_IlLin1ELi1ELi0ELin1ELi1EEENSH_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSG_10MatrixBaseIT_EERKNS14_IT0_EERKS3_INSK_10Triangle_3IT1_EESaIS1F_EERKSt3mapINS19_5IndexES3_IS0_IS1L_NSK_6ObjectEESaIS1N_EESt4lessIS1L_ESaIS0_IKS1L_S1P_EEEbbRNSG_15PlainObjectBaseIT2_EERNS1Y_IT3_EERNS1Y_IT4_EERNS1Y_IT5_EEE8EdgeHashNS8_18_Mod_range_hashingENS8_20_Default_ranged_hashENS8_20_Prime_rehash_policyENS8_17_Hashtable_traitsILb1ELb0ELb1EEEE21_M_deallocate_bucketsEv.exit: ; preds = %._crit_edge, %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.z, align 8, !tbaa !6825
  store ptr %.0.i, ptr %0, align 8, !tbaa !6823
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #21

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #33

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_10Triangle_3IS1_EEEEEDcDpRKT_(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Plane_3") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::RET_boost_mp<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>::To_interval", align 1 ; 3 uses
  %7 = alloca %class.anon.971, align 8            ; 5 uses
  %8 = alloca %class.anon.970, align 8            ; 4 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 8 uses
  %9 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %10 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %11 = alloca %"class.CGAL::Interval_nt", align 16 ; 4 uses
  %12 = alloca %"class.CGAL::PlaneC3.1223", align 16 ; 7 uses
  %.sroa.0.i = alloca [4 x %"class.CGAL::Interval_nt"], align 16 ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.CGAL::Plane_3.1225", align 16 ; 48 uses
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
  %i.m = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #38
          to label %bb.b unwind label %bb.e       ; 8 uses

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.n = load ptr, ptr %2, align 8, !tbaa !101
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 160
  %i.p = load atomic ptr, ptr %i.o acquire, align 8 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 96
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23, !noalias !10280
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23, !noalias !10287
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23, !noalias !10287
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23, !noalias !10287
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
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.y, ptr noundef nonnull align 16 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !7062, !noalias !10280
  %i.z = getelementptr inbounds nuw i8, ptr %12, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false), !tbaa.struct !7062, !noalias !10280
  %i.aa = getelementptr inbounds nuw i8, ptr %12, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef nonnull align 16 dereferenceable(16) %11, i64 16, i1 false), !tbaa.struct !7062, !noalias !10280
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23, !noalias !10287
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23, !noalias !10287
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23, !noalias !10287
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(64) %12, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23, !noalias !10280
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i32 1, ptr %i.ab, align 4, !tbaa !350
  %14 = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %14, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.0.i, i64 64, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store ptr %14, ptr %i.ac, align 16, !tbaa !10290
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 88
  store i32 0, ptr %i.ad, align 8, !tbaa !355
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL10Lazy_rep_nINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_20CommonKernelFunctors28Construct_supporting_plane_3IS5_EENSN_ISK_EENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELb0EJNS_10Triangle_3INS_5EpeckEEEEEE, i64 16), ptr %i.m, align 16, !tbaa !67
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.af = load ptr, ptr %2, align 8, !tbaa !101   ; 2 uses
  store ptr %i.af, ptr %i.ae, align 16, !tbaa !101
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !60
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.noexc
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store atomic i32 %i.aj, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.d:                                             ; preds = %.noexc
  %i.ak = atomicrmw add ptr %i.ah, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.c, %bb.d
  store ptr %i.m, ptr %0, align 8, !tbaa !101
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
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %i.ap = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN4CGAL30Uncertain_conversion_exceptionE
  call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 112) #37
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ap, %bb.f ], [ %i.ao, %bb.e ] ; 3 uses
  %.09 = extractvalue { ptr, i32 } %.pn, 1
  %i.aq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN4CGAL30Uncertain_conversion_exceptionE) #23
  %i.ar = icmp eq i32 %.09, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.ae

bb.h:                                             ; preds = %bb.g
  %.0 = extractvalue { ptr, i32 } %.pn, 0
  %i.as = call ptr @__cxa_begin_catch(ptr %.0) #23 ; 0 uses
  invoke void @__cxa_end_catch()
          to label %bb.i unwind label %bb.ad

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.at = load i32, ptr %i.c, align 4
  %i.au = and i32 %i.at, -24577
  %i.av = or disjoint i32 %i.au, %i.i
  store i32 %i.av, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aw = call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #38 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.ax = load ptr, ptr %2, align 8, !tbaa !101   ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  store ptr %i.ax, ptr %8, align 8, !tbaa !7123
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store ptr %8, ptr %7, align 8, !tbaa !59
  %i.az = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 3 uses
  store ptr %7, ptr %i.az, align 8, !tbaa !59
  %i.ba = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 3 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_10Triangle_3INS3_16Simple_cartesianINS3_11Interval_ntILb0EEEEEEENS5_INS6_IN5boost14multiprecision6numberINSC_8backends16rational_adaptorINSE_15cpp_int_backendILm0ELm0ELNSC_16cpp_integer_typeE1ELNSC_18cpp_int_check_typeE0ESaIyEEEEELNSC_26expression_template_optionE1EEEEEEENS3_19Cartesian_converterISO_S9_NS3_12NT_converterISN_S8_EEEELi0EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSX_ENUlvE_8__invokeEv, ptr %i.ba, align 8, !tbaa !59
  %i.bb = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ay, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.i
  %.not.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bb) #39
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.bc = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.az, align 8, !tbaa !59
  store ptr null, ptr %i.ba, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %.body

bb.m:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.az, align 8, !tbaa !59
  store ptr null, ptr %i.ba, align 8, !tbaa !59
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 160
  %i.be = load atomic ptr, ptr %i.bd monotonic, align 8 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 144
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 336
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 528
  invoke void @_ZN4CGAL7Plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEEC2ERKNS_7Point_3ISF_EESK_SK_(ptr noundef nonnull align 16 dereferenceable(256) %13, ptr noundef nonnull align 16 dereferenceable(576) %i.bf, ptr noundef nonnull align 16 dereferenceable(192) %i.bg, ptr noundef nonnull align 16 dereferenceable(192) %i.bh)
          to label %_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit unwind label %bb.af

_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit: ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23, !noalias !10293
  %i.bi = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 16 dereferenceable(256) %13)
          to label %.noexc18 unwind label %bb.ag  ; 2 uses

.noexc18:                                         ; preds = %_ZNK4CGAL20CommonKernelFunctors28Construct_supporting_plane_3INS_16Simple_cartesianIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEEEclERKNS_10Triangle_3ISG_EE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23, !noalias !10293
  %i.bj = extractvalue { double, double } %i.bi, 0
  %i.bk = extractvalue { double, double } %i.bi, 1
  %i.bl = fneg double %i.bj
  %i.bm = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bk, i64 1
  %i.bo = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23, !noalias !10293
  %i.bp = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 16 dereferenceable(64) %i.bo)
          to label %.noexc19 unwind label %bb.ag  ; 2 uses

.noexc19:                                         ; preds = %.noexc18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23, !noalias !10293
  %i.bq = extractvalue { double, double } %i.bp, 0
  %i.br = extractvalue { double, double } %i.bp, 1
  %i.bs = fneg double %i.bq
  %i.bt = insertelement <2 x double> poison, double %i.bs, i64 0
  %i.bu = insertelement <2 x double> %i.bt, double %i.br, i64 1
  %i.bv = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !10293
  %i.bw = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 16 dereferenceable(64) %i.bv)
          to label %.noexc20 unwind label %bb.ag  ; 2 uses

.noexc20:                                         ; preds = %.noexc19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !10293
  %i.bx = extractvalue { double, double } %i.bw, 0
  %i.by = extractvalue { double, double } %i.bw, 1
  %i.bz = fneg double %i.bx
  %i.ca = insertelement <2 x double> poison, double %i.bz, i64 0
  %i.cb = insertelement <2 x double> %i.ca, double %i.by, i64 1
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 192 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23, !noalias !10293
  %i.cd = invoke { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 16 dereferenceable(64) %i.cc)
          to label %.noexc21 unwind label %bb.ag  ; 2 uses

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !10293
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 1, ptr %i.ce, align 4, !tbaa !350
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEELi0EEE, i64 16), ptr %i.aw, align 16, !tbaa !67
  %i.cf = invoke noalias noundef nonnull dereferenceable(320) ptr @_Znwm(i64 noundef 320) #38
          to label %_ZN4CGAL10Lazy_rep_0INS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit unwind label %bb.ag ; 45 uses

_ZN4CGAL10Lazy_rep_0INS_7Plane_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS1_INS2_IN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEEEENS_19Cartesian_converterISK_S5_NS_12NT_converterISJ_S4_EEEEEC2ISL_EEOT_.exit: ; preds = %.noexc21
  %i.cg = extractvalue { double, double } %i.cd, 0
  %i.ch = fneg double %i.cg
  %i.ci = insertelement <2 x double> poison, double %i.ch, i64 0
  %i.cj = extractvalue { double, double } %i.cd, 1
  %i.ck = insertelement <2 x double> %i.ci, double %i.cj, i64 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  store <2 x double> %i.bn, ptr %i.cf, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <2 x double> %i.bu, ptr %.sroa.4.0..sroa_idx.i, align 16
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store <2 x double> %i.cb, ptr %.sroa.5.0..sroa_idx.i, align 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store <2 x double> %i.ck, ptr %.sroa.6.0..sroa_idx.i, align 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cf, i64 64 ; 3 uses
  store i64 0, ptr %i.cm, align 16, !tbaa !60
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %i.co = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 16, !tbaa !6971 ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 16, !tbaa !6971
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.cs = load i8, ptr %i.cr, align 8, !tbaa !6980, !range !13, !noundef !14
  store i8 %i.cs, ptr %i.cq, align 8, !tbaa !6980
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 89
  %i.cu = getelementptr inbounds nuw i8, ptr %13, i64 25 ; 2 uses
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9, !range !13, !noundef !14 ; 2 uses
  store i8 %i.cv, ptr %i.ct, align 1, !tbaa !9
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 90
  %i.cx = getelementptr inbounds nuw i8, ptr %13, i64 26
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !6981, !range !13, !noundef !14
  store i8 %i.cy, ptr %i.cw, align 2, !tbaa !6981
  %i.cz = trunc nuw i8 %i.cv to i1
  br i1 %i.cz, label %bb.n, label %bb.o
end_hunk_1
