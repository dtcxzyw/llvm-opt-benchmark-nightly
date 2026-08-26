Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/submesh_aabb_tree?download=true
inline.NumInlined: 3808
inline.NumDeleted: 1518
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN4CGAL23set_bounds_from_pointerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueEPKSF_NS_13Lazy_exact_ntIN5boost14multiprecision6numberINSV_8backends16rational_adaptorINSX_15cpp_int_backendILm0ELm0ELNSV_16cpp_integer_typeE1ELNSV_18cpp_int_check_typeE0ESaIyEEEEELNSV_26expression_template_optionE1EEEEEEclESS_:bb.a
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(12) %i.aw) #21, !inline_history !73
  br label %_ZN4CGAL6HandleD2Ev.exit16

_ZN4CGAL6HandleD2Ev.exit16:                       ; preds = %bb.n, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bb = load ptr, ptr %i.s, align 8, !tbaa !652
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.bb, i64 %indvars.iv
  %i.bd = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %2, ptr noundef nonnull align 8 dereferenceable(9) %i.bc)
          to label %bb.w unwind label %bb.af

bb.w:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit16
  br i1 %i.bd, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.be = load ptr, ptr %i.s, align 8, !tbaa !652
  %i.bf = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv ; 4 uses
  %i.bg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i17 = icmp eq i8 %i.bg, 0
  %i.bh = load ptr, ptr %2, align 8, !tbaa !64
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i17, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %bb.x
  %i.bj = atomicrmw add ptr %i.bi, i32 1 monotonic, align 4 ; 0 uses
  %i.bk = load ptr, ptr %i.bf, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i18, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.aa

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %bb.x
  %i.bl = load atomic i32, ptr %i.bi monotonic, align 4
  %i.bm = add nsw i32 %i.bl, 1
  store atomic i32 %i.bm, ptr %i.bi monotonic, align 4
  %i.bn = load ptr, ptr %i.bf, align 8, !tbaa !64 ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.bn, null
  br i1 %.not4.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8 ; 2 uses
  %i.bp = load atomic i32, ptr %i.bo monotonic, align 4 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.thread.i.i.i
  %i.br = load ptr, ptr %i.bn, align 8, !tbaa !71
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(12) %i.bn) #21, !inline_history !604
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.z:                                             ; preds = %.thread.i.i.i
  %i.bu = add nsw i32 %i.bp, -1
  store atomic i32 %i.bu, ptr %i.bo monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.aa:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  %i.bw = load atomic i32, ptr %i.bv monotonic, align 4
  %i.bx = icmp eq i32 %i.bw, 1
  br i1 %i.bx, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = atomicrmw sub ptr %i.bv, i32 1 release, align 4
  %i.bz = icmp eq i32 %i.by, 1
  br i1 %i.bz, label %bb.ac, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  fence acquire
  %i.ca = load ptr, ptr %i.bf, align 8, !tbaa !64 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !71
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(12) %i.ca) #21, !inline_history !604
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.ad
  %i.cf = load ptr, ptr %2, align 8, !tbaa !64
  store ptr %i.cf, ptr %i.bf, align 8, !tbaa !64
  br label %bb.ag

bb.ae:                                            ; preds = %bb.m
  %i.cg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.ap

bb.af:                                            ; preds = %bb.ag, %_ZN4CGAL6HandleD2Ev.exit16
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ag:                                            ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, %bb.w
  %i.ci = load ptr, ptr %i.t, align 8, !tbaa !653
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %indvars.iv
  %i.ck = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.cj, ptr noundef nonnull align 8 dereferenceable(9) %2)
          to label %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit unwind label %bb.af

_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit: ; preds = %bb.ag
  br i1 %i.ck, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit
  %i.cl = load ptr, ptr %i.t, align 8, !tbaa !653
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %indvars.iv ; 4 uses
  %i.cn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i19 = icmp eq i8 %i.cn, 0
  %i.co = load ptr, ptr %2, align 8, !tbaa !64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i19, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i23, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i20

_ZNK4CGAL6Handle6increfEv.exit.i.i.i23:           ; preds = %bb.ah
  %i.cq = atomicrmw add ptr %i.cp, i32 1 monotonic, align 4 ; 0 uses
  %i.cr = load ptr, ptr %i.cm, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i24 = icmp eq ptr %i.cr, null
  br i1 %.not.i.i.i24, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25, label %bb.ak

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i20:    ; preds = %bb.ah
  %i.cs = load atomic i32, ptr %i.cp monotonic, align 4
  %i.ct = add nsw i32 %i.cs, 1
  store atomic i32 %i.ct, ptr %i.cp monotonic, align 4
  %i.cu = load ptr, ptr %i.cm, align 8, !tbaa !64 ; 4 uses
  %.not4.i.i.i21 = icmp eq ptr %i.cu, null
  br i1 %.not4.i.i.i21, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25, label %.thread.i.i.i22

.thread.i.i.i22:                                  ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load atomic i32, ptr %i.cv monotonic, align 4 ; 2 uses
  %i.cx = icmp eq i32 %i.cw, 1
  br i1 %i.cx, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.thread.i.i.i22
  %i.cy = load ptr, ptr %i.cu, align 8, !tbaa !71
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(12) %i.cu) #21, !inline_history !604
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25

bb.aj:                                            ; preds = %.thread.i.i.i22
  %i.db = add nsw i32 %i.cw, -1
  store atomic i32 %i.db, ptr %i.cv monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25

bb.ak:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i23
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cr, i64 8 ; 2 uses
  %i.dd = load atomic i32, ptr %i.dc monotonic, align 4
  %i.de = icmp eq i32 %i.dd, 1
  br i1 %i.de, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = atomicrmw sub ptr %i.dc, i32 1 release, align 4
  %i.dg = icmp eq i32 %i.df, 1
  br i1 %i.dg, label %bb.am, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25

bb.am:                                            ; preds = %bb.al, %bb.ak
  fence acquire
  %i.dh = load ptr, ptr %i.cm, align 8, !tbaa !64 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !71
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8
  call void %i.dl(ptr noundef nonnull align 8 dereferenceable(12) %i.dh) #21, !inline_history !604
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i23, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i20, %bb.ai, %bb.aj, %bb.al, %bb.am, %bb.an
  %i.dm = load ptr, ptr %2, align 8, !tbaa !64
  store ptr %i.dm, ptr %i.cm, align 8, !tbaa !64
  br label %bb.ao

bb.ao:                                            ; preds = %_ZN4CGALgtIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE.exit, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dn = load i32, ptr %i.p, align 8, !tbaa !592
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.p, align 8, !tbaa !592
  %i.dp = load i32, ptr %0, align 8, !tbaa !649
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %bb.m, label %._crit_edge.loopexit, !llvm.loop !654

bb.ap:                                            ; preds = %bb.ae, %bb.af
  %.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.ae ], [ %i.ch, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.230, align 8            ; 5 uses
  %3 = alloca %class.anon.229, align 8            ; 4 uses
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %5 = alloca %class.anon.229, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !64     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !70
  %6 = load double, ptr %i.d, align 16, !tbaa !70
  %i.g = fneg double %6
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = load double, ptr %i.i, align 16, !tbaa !70
  %8 = fneg double %7
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %10 = load double, ptr %9, align 8, !tbaa !70
  %i.j = fcmp ugt double %10, %8
  br i1 %i.j, label %bb.d, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

bb.d:                                             ; preds = %bb.c
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.4.0.i = phi i16 [ 257, %bb.b ], [ 256, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.k = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.l = trunc i16 %.sroa.4.0.i to i1
  br label %bb.m

bb.f:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.a, ptr %5, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !253
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !253
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !253
  %i.p = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.i ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.p) #33
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.w, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8, !tbaa !253
  store ptr null, ptr %i.o, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.n, align 8, !tbaa !253
  store ptr null, ptr %i.o, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8
  %i.t = load ptr, ptr %1, align 8, !tbaa !64     ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.t, ptr %3, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %3, ptr %2, align 8, !tbaa !253
  store ptr %2, ptr %i.n, align 8, !tbaa !253
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !253
  %i.v = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.u, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.v, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.v) #33
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.n, align 8, !tbaa !253
  store ptr null, ptr %i.o, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.n, align 8, !tbaa !253
  store ptr null, ptr %i.o, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.y = load atomic ptr, ptr %i.x monotonic, align 8
  %i.z = call noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.s, ptr noundef nonnull align 16 dereferenceable(64) %i.y)
  %i.aa = icmp slt i32 %i.z, 0
  br label %bb.m

bb.m:                                             ; preds = %bb.e, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.l, %bb.e ], [ %i.aa, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 32 uses
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !103 ; 6 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %0, ptr %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !104
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !112, !range !13, !noundef !14
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !103
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52: ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !9, !range !13, !noundef !14
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.v, ptr %1, ptr %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !104
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !112, !range !13, !noundef !14
  %i.ad = trunc nuw i8 %i.ac to i1
  %i.ae = select i1 %i.ad, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51
  %i.af = phi i32 [ %i.ae, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51 ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52 ] ; 2 uses
  %.not = icmp eq i32 %i.p, %i.af
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53
  %i.ag = icmp slt i32 %i.p, %i.af
  %i.ah = select i1 %i.ag, i32 -1, i32 1
  br label %bb.at

bb.c:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53
  %i.ai = icmp eq i32 %i.p, 0
  br i1 %i.ai, label %bb.at, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aj = icmp slt i32 %i.p, 0                    ; 3 uses
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.am = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.al)
  %i.an = add i64 %i.am, %i.ak
  %i.ao = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %1)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aq = tail call noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %i.ap)
  %i.ar = add i64 %i.aq, %i.ao
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store i64 0, ptr %2, align 16, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.au = load i8, ptr %i.at, align 2, !tbaa !113, !range !13, !noundef !14
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.b, ptr %i.as, align 16, !tbaa !103
end_hunk_0
begin_hunk_1_@_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_:bb.a

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGALmiIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EENS_13Lazy_exact_ntINS_15Coercion_traitsIT_T0_E4TypeEEERKNSE_ISG_EERKNSE_ISH_EE(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = tail call noalias noundef nonnull dereferenceable(80) ptr @_Znwm(i64 noundef 80) #34 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.g = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.h = load i32, ptr %i.c, align 4
  %i.i = and i32 %i.h, -24577
  %i.j = or disjoint i32 %i.i, 16384
  store i32 %i.j, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load ptr, ptr %1, align 8, !tbaa !64
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %2, align 8, !tbaa !64
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load <2 x double>, ptr %i.n, align 16, !tbaa !70
  %i.p = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.q = load <2 x double>, ptr %i.l, align 16, !tbaa !70
  %i.r = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.q) #21, !srcloc !655
  %i.s = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.p) #25, !srcloc !656
  %i.t = fadd <2 x double> %i.r, %i.s
  %i.u = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.t) #21, !srcloc !655
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 1, ptr %i.v, align 4, !tbaa !243
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store <2 x double> %i.u, ptr %i.w, align 16, !tbaa !70
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.x, align 16, !tbaa !461
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 0, ptr %i.y, align 8, !tbaa !248
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.aa = load ptr, ptr %1, align 8, !tbaa !64    ; 2 uses
  store ptr %i.aa, ptr %i.z, align 16, !tbaa !64
  %i.ab = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ab, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = load atomic i32, ptr %i.ac monotonic, align 4
  %i.ae = add nsw i32 %i.ad, 1
  store atomic i32 %i.ae, ptr %i.ac monotonic, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ag = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  store ptr %i.ag, ptr %i.af, align 16, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4
  %i.aj = add nsw i32 %i.ai, 1
  store atomic i32 %i.aj, ptr %i.ah monotonic, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ak = atomicrmw add ptr %i.ac, i32 1 monotonic, align 4 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.am = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  store ptr %i.am, ptr %i.al, align 16, !tbaa !64
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = atomicrmw add ptr %i.an, i32 1 monotonic, align 4 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ap = and i32 %i.g, 24576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.aq = load i32, ptr %i.a, align 4
  %i.ar = and i32 %i.aq, -24577
  %i.as = or disjoint i32 %i.ar, %i.ap
  store i32 %i.as, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %i.f, align 16, !tbaa !71
  store ptr %i.f, ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_SubIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.230, align 8            ; 5 uses
  %3 = alloca %class.anon.229, align 8            ; 4 uses
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %5 = alloca %class.anon.229, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !64  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.c, ptr %5, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !253
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !253
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !253
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #33
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !64  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.l, ptr %3, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %3, ptr %2, align 8, !tbaa !253
  store ptr %2, ptr %i.e, align 8, !tbaa !253
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !253
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i5:           ; preds = %bb.e
  %.not.i.i.i6 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #33
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN5boost14multiprecision8backends21eval_add_subtract_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_b(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q, i1 noundef zeroext false)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #21
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !70
  %6 = load double, ptr %i.s, align 16, !tbaa !70
  %i.v = fneg double %6
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.x = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  %i.aa = fneg double %i.y
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  store <2 x double> %i.ac, ptr %i.s, align 16, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ad, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail19subtract_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ae release, align 16
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !64 ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i12 = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.r:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !64 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !64
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.av = load ptr, ptr %i.k, align 16, !tbaa !64 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i2.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.ay, -1
  store atomic i32 %i.bd, ptr %i.ax monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.z:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = atomicrmw sub ptr %i.ax, i32 1 release, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !64 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !71
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !64
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #35
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt5arrayIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEELm3EEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i = icmp eq i8 %i.a, 0
  %i.b = load ptr, ptr %1, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.c, i32 1 monotonic, align 4 ; 0 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !64     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %bb.d

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %bb.a
  %i.f = load atomic i32, ptr %i.c monotonic, align 4
  %i.g = add nsw i32 %i.f, 1
  store atomic i32 %i.g, ptr %i.c monotonic, align 4
  %i.h = load ptr, ptr %0, align 8, !tbaa !64     ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not4.i.i.i, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4 ; 2 uses
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.thread.i.i.i
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !71
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(12) %i.h) #21, !inline_history !604
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.c:                                             ; preds = %.thread.i.i.i
  %i.o = add nsw i32 %i.j, -1
  store atomic i32 %i.o, ptr %i.i monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.d:                                             ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.q = load atomic i32, ptr %i.p monotonic, align 4
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = atomicrmw sub ptr %i.p, i32 1 release, align 4
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.f, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  fence acquire
  %i.u = load ptr, ptr %0, align 8, !tbaa !64     ; 3 uses
  %i.v = icmp eq ptr %i.u, null
end_hunk_1
begin_hunk_2_@_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE5splitINS_15Plane_separatorINS_13Lazy_exact_ntIN5boost14multiprecision6numberINSV_8backends16rational_adaptorINSX_15cpp_int_backendILm0ELm0ELNSV_16cpp_integer_typeE1ELNSV_18cpp_int_check_typeE0ESaIyEEEEELNSV_26expression_template_optionE1EEEEEEEEEvRSQ_RT_b:bb.a

bb.cj:                                            ; preds = %_ZN4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE15set_lower_boundEiRKSF_.exit
  %i.jc = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.jd = getelementptr inbounds nuw [16 x i8], ptr %i.jc, i64 %i.hz ; 4 uses
  %i.je = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i107 = icmp eq i8 %i.je, 0
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i107, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i112, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i108

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i112:        ; preds = %bb.cj
  %i.jg = atomicrmw add ptr %i.jf, i32 1 monotonic, align 4 ; 0 uses
  %i.jh = load ptr, ptr %i.jd, align 8, !tbaa !64 ; 2 uses
  %.not.i.i.i.i113 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i.i113, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111, label %bb.cm

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i108: ; preds = %bb.cj
  %i.ji = load atomic i32, ptr %i.jf monotonic, align 4
  %i.jj = add nsw i32 %i.ji, 1
  store atomic i32 %i.jj, ptr %i.jf monotonic, align 4
  %i.jk = load ptr, ptr %i.jd, align 8, !tbaa !64 ; 4 uses
  %.not4.i.i.i.i109 = icmp eq ptr %i.jk, null
  br i1 %.not4.i.i.i.i109, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111, label %.thread.i.i.i.i110

.thread.i.i.i.i110:                               ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i108
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 8 ; 2 uses
  %i.jm = load atomic i32, ptr %i.jl monotonic, align 4 ; 2 uses
  %i.jn = icmp eq i32 %i.jm, 1
  br i1 %i.jn, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.thread.i.i.i.i110
  %i.jo = load ptr, ptr %i.jk, align 8, !tbaa !71
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8
  %i.jq = load ptr, ptr %i.jp, align 8
  call void %i.jq(ptr noundef nonnull align 8 dereferenceable(12) %i.jk) #21, !inline_history !810
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111

bb.cl:                                            ; preds = %.thread.i.i.i.i110
  %i.jr = add nsw i32 %i.jm, -1
  store atomic i32 %i.jr, ptr %i.jl monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111

bb.cm:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i112
  %i.js = getelementptr inbounds nuw i8, ptr %i.jh, i64 8 ; 2 uses
  %i.jt = load atomic i32, ptr %i.js monotonic, align 4
  %i.ju = icmp eq i32 %i.jt, 1
  br i1 %i.ju, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.jv = atomicrmw sub ptr %i.js, i32 1 release, align 4
  %i.jw = icmp eq i32 %i.jv, 1
  br i1 %i.jw, label %bb.co, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111

bb.co:                                            ; preds = %bb.cn, %bb.cm
  fence acquire
  %i.jx = load ptr, ptr %i.jd, align 8, !tbaa !64 ; 3 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jz = load ptr, ptr %i.jx, align 8, !tbaa !71
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 8
  %i.kb = load ptr, ptr %i.ka, align 8
  call void %i.kb(ptr noundef nonnull align 8 dereferenceable(12) %i.jx) #21, !inline_history !810
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111: ; preds = %bb.cp, %bb.co, %bb.cn, %bb.cl, %bb.ck, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i108, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i112
  %i.kc = load ptr, ptr %6, align 8, !tbaa !64
  store ptr %i.kc, ptr %i.jd, align 8, !tbaa !64
  invoke void @_ZN4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE12set_max_spanEv(ptr noundef nonnull align 8 dereferenceable(100) %i.b)
          to label %_ZN4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE15set_upper_boundEiRKSF_.exit unwind label %bb.w

_ZN4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE15set_upper_boundEiRKSF_.exit: ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit.i111
  %i.kd = getelementptr inbounds nuw i8, ptr %1, i64 152
  %.sroa.0.0.copyload.i115 = load ptr, ptr %i.hi, align 8, !tbaa !523
  %.sroa.0.0.copyload.i116 = load ptr, ptr %i.hr, align 8, !tbaa !523
  invoke void @_ZN4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE26update_from_point_pointersINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3ISN_EESt6vectorISS_SaISS_EEEEENS_26First_of_pair_property_mapISY_EENS_13AABB_traits_3ISN_NS_25AABB_triangle_primitive_3ISN_SX_St17integral_constantIbLb0EEEENS_7DefaultEEEE43Construct_cartesian_const_iterator_d_lvalueENSQ_IPPKSY_SU_IS1B_SaIS1B_EEEEEEvT0_S1G_RKT_(ptr noundef nonnull align 8 dereferenceable(100) %i.kd, ptr %.sroa.0.0.copyload.i115, ptr %.sroa.0.0.copyload.i116, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.cq unwind label %bb.w

bb.cq:                                            ; preds = %_ZN4CGAL17Kd_tree_rectangleINS_13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEENS_13Dimension_tagILi3EEEE15set_upper_boundEiRKSF_.exit
  %i.ke = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 4 uses
  %.not.i.i.i117 = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i117, label %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.kf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i118 = icmp eq i8 %i.kf, 0
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ke, i64 8 ; 3 uses
  %i.kh = load atomic i32, ptr %i.kg monotonic, align 4 ; 2 uses
  %i.ki = icmp eq i32 %i.kh, 1                    ; 2 uses
  br i1 %.not.i.i.i.i118, label %bb.cv, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  br i1 %i.ki, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.kj = load ptr, ptr %i.ke, align 8, !tbaa !71
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 8
  %i.kl = load ptr, ptr %i.kk, align 8
  call void %i.kl(ptr noundef nonnull align 8 dereferenceable(12) %i.ke) #21, !inline_history !800
  br label %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119

bb.cu:                                            ; preds = %bb.cs
  %i.km = add nsw i32 %i.kh, -1
  store atomic i32 %i.km, ptr %i.kg monotonic, align 4
  br label %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119

bb.cv:                                            ; preds = %bb.cr
  br i1 %i.ki, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.kn = atomicrmw sub ptr %i.kg, i32 1 release, align 4
  %i.ko = icmp eq i32 %i.kn, 1
  br i1 %i.ko, label %bb.cx, label %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  fence acquire
  %i.kp = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 3 uses
  %i.kq = icmp eq ptr %i.kp, null
  br i1 %i.kq, label %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kr = load ptr, ptr %i.kp, align 8, !tbaa !71
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kt = load ptr, ptr %i.ks, align 8
  call void %i.kt(ptr noundef nonnull align 8 dereferenceable(12) %i.kp) #21, !inline_history !800
  br label %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119

_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119: ; preds = %bb.cq, %bb.ct, %bb.cu, %bb.cw, %bb.cx, %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.ku = load ptr, ptr %6, align 8, !tbaa !64    ; 4 uses
  %.not.i.i120 = icmp eq ptr %i.ku, null
  br i1 %.not.i.i120, label %_ZN4CGAL6HandleD2Ev.exit122, label %bb.cz

bb.cz:                                            ; preds = %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119
  %i.kv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i121 = icmp eq i8 %i.kv, 0
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ku, i64 8 ; 3 uses
  %i.kx = load atomic i32, ptr %i.kw monotonic, align 4 ; 2 uses
  %i.ky = icmp eq i32 %i.kx, 1                    ; 2 uses
  br i1 %.not.i.i.i121, label %bb.dd, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %i.ky, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.kz = load ptr, ptr %i.ku, align 8, !tbaa !71
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lb = load ptr, ptr %i.la, align 8
  call void %i.lb(ptr noundef nonnull align 8 dereferenceable(12) %i.ku) #21, !inline_history !73
  br label %_ZN4CGAL6HandleD2Ev.exit122

bb.dc:                                            ; preds = %bb.da
  %i.lc = add nsw i32 %i.kx, -1
  store atomic i32 %i.lc, ptr %i.kw monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit122

bb.dd:                                            ; preds = %bb.cz
  br i1 %i.ky, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.ld = atomicrmw sub ptr %i.kw, i32 1 release, align 4
  %i.le = icmp eq i32 %i.ld, 1
  br i1 %i.le, label %bb.df, label %_ZN4CGAL6HandleD2Ev.exit122

bb.df:                                            ; preds = %bb.de, %bb.dd
  fence acquire
  %i.lf = load ptr, ptr %6, align 8, !tbaa !64    ; 3 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %_ZN4CGAL6HandleD2Ev.exit122, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.lh = load ptr, ptr %i.lf, align 8, !tbaa !71
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(12) %i.lf) #21, !inline_history !73
  br label %_ZN4CGAL6HandleD2Ev.exit122

_ZN4CGAL6HandleD2Ev.exit122:                      ; preds = %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev.exit119, %bb.db, %bb.dc, %bb.de, %bb.df, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.dh:                                            ; preds = %bb.ba, %bb.by, %bb.y, %bb.aw, %bb.x, %bb.w
  %.pn40 = phi { ptr, i32 } [ %i.cf, %bb.w ], [ %i.ch, %bb.y ], [ %i.cg, %bb.x ], [ %i.eo, %bb.aw ], [ %i.hh, %bb.by ], [ %i.fb, %bb.ba ]
  call void @_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_ED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn40
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALeqIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #26 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.230, align 8            ; 5 uses
  %3 = alloca %class.anon.229, align 8            ; 4 uses
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %5 = alloca %class.anon.229, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !64     ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !64     ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %6 = load double, ptr %i.d, align 16, !tbaa !70
  %i.e = fneg double %6                           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = load double, ptr %i.f, align 8, !tbaa !70 ; 2 uses
  %i.h = fcmp olt double %i.g, %i.e
  br i1 %i.h, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %8 = load double, ptr %7, align 8, !tbaa !70    ; 2 uses
  %9 = load double, ptr %i.i, align 16, !tbaa !70
  %i.j = fneg double %9                           ; 2 uses
  %i.k = fcmp olt double %8, %i.j
  br i1 %i.k, label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = fcmp oeq double %i.g, %i.e
  %i.m = fcmp oeq double %8, %i.j
  %or.cond.i = and i1 %i.l, %i.m
  %i.n = zext i1 %or.cond.i to i16
  %i.o = or disjoint i16 %i.n, 256
  br label %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c, %bb.d
  %.sroa.4.0.i = phi i16 [ %i.o, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.4.0.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.4.0.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.p = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit
  %i.q = trunc i16 %.sroa.4.0.i to i1
  br label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.f:                                             ; preds = %_ZN4CGALeqERKNS_11Interval_ntILb0EEES3_.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.a, ptr %5, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !253
  %i.s = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.s, align 8, !tbaa !253
  %i.t = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.t, align 8, !tbaa !253
  %i.u = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.r, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.i ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.f
  %.not.i.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.g

bb.g:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.u) #33
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

common.resume:                                    ; preds = %bb.l, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.i ], [ %i.ab, %bb.l ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.g, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.s, align 8, !tbaa !253
  store ptr null, ptr %i.t, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.s, align 8, !tbaa !253
  store ptr null, ptr %i.t, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.x = load atomic ptr, ptr %i.w monotonic, align 8 ; 10 uses
  %i.y = load ptr, ptr %1, align 8, !tbaa !64     ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.y, ptr %3, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %3, ptr %2, align 8, !tbaa !253
  store ptr %2, ptr %i.s, align 8, !tbaa !253
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.t, align 8, !tbaa !253
  %i.aa = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.z, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.l ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.aa, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.j

bb.j:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.aa) #33
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.s, align 8, !tbaa !253
  store ptr null, ptr %i.t, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.s, align 8, !tbaa !253
  store ptr null, ptr %i.t, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load atomic ptr, ptr %i.ac monotonic, align 8 ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !112, !range !13, !noundef !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !112, !range !13, !noundef !14
  %.not.i.i = icmp eq i8 %i.af, %i.ah
  br i1 %.not.i.i, label %bb.m, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.m:                                             ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !103 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.al = load i64, ptr %i.ak, align 16, !tbaa !103
  %i.am = icmp eq i64 %i.aj, %i.al
  br i1 %i.am, label %bb.n, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ap = trunc nuw i8 %i.ao to i1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = select i1 %i.ap, ptr %i.x, ptr %i.ar    ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.aj, 3
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %.idx.i.i
  %.not10.i.i.i = icmp eq i64 %i.aj, 0
  br i1 %.not10.i.i.i, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, label %.lr.ph.i.preheader.i.i

.lr.ph.i.preheader.i.i:                           ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 25
  %i.av = load i8, ptr %i.au, align 1, !tbaa !9, !range !13, !noundef !14
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = select i1 %i.aw, ptr %i.ad, ptr %i.ay
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.o, %.lr.ph.i.preheader.i.i
  %.012.i.i.i = phi ptr [ %i.bd, %bb.o ], [ %i.az, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %.0811.i.i.i = phi ptr [ %i.bc, %bb.o ], [ %i.as, %.lr.ph.i.preheader.i.i ] ; 2 uses
  %i.ba = load i64, ptr %.0811.i.i.i, align 8, !tbaa !104
  %i.bb = load i64, ptr %.012.i.i.i, align 8, !tbaa !104
  %.not9.i.i.i = icmp eq i64 %i.ba, %i.bb
  br i1 %.not9.i.i.i, label %bb.o, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %.0811.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %.not.i.i.i13 = icmp eq ptr %i.bc, %i.at
  br i1 %.not.i.i.i13, label %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, label %.lr.ph.i.i.i, !llvm.loop !220

_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i: ; preds = %bb.o, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bh = load i8, ptr %i.bg, align 8, !tbaa !112, !range !13, !noundef !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !112, !range !13, !noundef !14
  %.not13.i.i = icmp eq i8 %i.bh, %i.bj
  br i1 %.not13.i.i, label %bb.p, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.p:                                             ; preds = %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.bl = load i64, ptr %i.bk, align 16, !tbaa !103 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.bn = load i64, ptr %i.bm, align 16, !tbaa !103
  %i.bo = icmp eq i64 %i.bl, %i.bn
  br i1 %i.bo, label %bb.q, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.x, i64 57
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !9, !range !13, !noundef !14
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = select i1 %i.br, ptr %i.be, ptr %i.bt   ; 2 uses
  %.idx14.i.i = shl nuw nsw i64 %i.bl, 3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %.idx14.i.i
  %.not10.i5.i.i = icmp eq i64 %i.bl, 0
  br i1 %.not10.i5.i.i, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, label %.lr.ph.i6.preheader.i.i

.lr.ph.i6.preheader.i.i:                          ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ad, i64 57
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !9, !range !13, !noundef !14
  %i.by = trunc nuw i8 %i.bx to i1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = select i1 %i.by, ptr %i.bf, ptr %i.ca
  br label %.lr.ph.i6.i.i

.lr.ph.i6.i.i:                                    ; preds = %.lr.ph.i6.i.i, %.lr.ph.i6.preheader.i.i
  %.012.i7.i.i = phi ptr [ %i.cf, %.lr.ph.i6.i.i ], [ %i.cb, %.lr.ph.i6.preheader.i.i ] ; 2 uses
  %.0811.i8.i.i = phi ptr [ %i.ce, %.lr.ph.i6.i.i ], [ %i.bu, %.lr.ph.i6.preheader.i.i ] ; 2 uses
  %i.cc = load i64, ptr %.0811.i8.i.i, align 8, !tbaa !104
  %i.cd = load i64, ptr %.012.i7.i.i, align 8, !tbaa !104
  %.not9.i9.i.i = icmp eq i64 %i.cc, %i.cd        ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i8.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i7.i.i, i64 8
  %.not.i11.i.i = icmp ne ptr %i.ce, %i.bv
  %or.cond.not = select i1 %.not9.i9.i.i, i1 %.not.i11.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i6.i.i, label %_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit, !llvm.loop !220

_ZN5boost14multiprecisioneqINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1ES9_LSA_1EEEbRKNS0_6numberIT_XT0_EEERKNSB_IT1_XT2_EEE.exit: ; preds = %.lr.ph.i.i.i, %.lr.ph.i6.i.i, %bb.q, %bb.p, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i, %bb.m, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.e, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %i.q, %bb.e ], [ false, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ], [ false, %bb.p ], [ false, %_ZN5boost14multiprecision8backends7eval_eqILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_SD_.exit4.i.i ], [ true, %bb.q ], [ %.not9.i9.i.i, %.lr.ph.i6.i.i ], [ false, %bb.m ], [ false, %.lr.ph.i.i.i ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_DivIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EC2ERKNS_13Lazy_exact_ntISD_EESI_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.e)
  %i.f = load i32, ptr %i.e, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.c)
  %i.g = load i32, ptr %i.c, align 4
  %i.h = and i32 %i.g, -24577
  %i.i = or disjoint i32 %i.h, 16384
  store i32 %i.i, ptr %i.d, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.j = load ptr, ptr %1, align 8, !tbaa !64     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !64     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %3 = load double, ptr %i.m, align 16, !tbaa !70 ; 2 uses
  %4 = fneg double %3                             ; 6 uses
  %5 = fcmp olt double %3, 0.000000e+00
  %6 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %7 = load double, ptr %6, align 8, !tbaa !70    ; 7 uses
  br i1 %5, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %8 = load double, ptr %i.k, align 16, !tbaa !70 ; 2 uses
  %i.n = fcmp ogt double %8, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %9 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %10 = load double, ptr %9, align 8, !tbaa !70
  %i.o = fcmp olt double %10, 0.000000e+00
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.024.i = phi double [ %4, %bb.d ], [ %4, %bb.c ], [ %7, %bb.b ]
  %.023.i = phi double [ %7, %bb.d ], [ %4, %bb.c ], [ %4, %bb.b ]
  %i.p = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %8) #21, !srcloc !811
  %i.q = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %.024.i) #21, !srcloc !811
  %i.r = fdiv double %i.p, %i.q
  %i.s = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.r) #21, !srcloc !811
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !70
  %i.v = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.u) #21, !srcloc !811
  %i.w = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %.023.i) #21, !srcloc !811
  %i.x = fdiv double %i.v, %i.w
  %i.y = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.x) #21, !srcloc !811
  %i.z = insertelement <2 x double> poison, double %i.s, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.y, i64 1
  br label %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = fcmp olt double %7, 0.000000e+00
  br i1 %i.ab, label %bb.g, label %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit

bb.g:                                             ; preds = %bb.f
  %11 = load double, ptr %i.k, align 16, !tbaa !70
  %12 = fcmp ogt double %11, 0.000000e+00
  %13 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %14 = load double, ptr %13, align 8, !tbaa !70  ; 2 uses
  br i1 %12, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = fcmp olt double %14, 0.000000e+00
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.022.i = phi double [ %4, %bb.i ], [ %7, %bb.h ], [ %7, %bb.g ]
  %.0.i = phi double [ %7, %bb.i ], [ %7, %bb.h ], [ %4, %bb.g ]
  %i.ad = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %14) #21, !srcloc !811
  %i.ae = fneg double %.022.i
  %i.af = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.ae) #21, !srcloc !811
  %i.ag = fdiv double %i.ad, %i.af
  %i.ah = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.ag) #21, !srcloc !811
  %15 = load double, ptr %i.k, align 16, !tbaa !70
  %i.ai = fneg double %15
  %i.aj = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.ai) #21, !srcloc !811
  %i.ak = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %.0.i) #21, !srcloc !811
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.al) #21, !srcloc !811
  %i.an = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  br label %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.j, %bb.f, %bb.e
  %.sroa.025.0.i = phi <2 x double> [ %i.aa, %bb.e ], [ %i.ao, %bb.j ], [ splat (double +inf), %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ap, align 8, !tbaa !243
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %.sroa.025.0.i, ptr %i.aq, align 16, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.ar, align 16, !tbaa !461
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.as, align 8, !tbaa !248
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %0, align 16, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %1, align 8, !tbaa !64    ; 2 uses
  store ptr %i.au, ptr %i.at, align 16, !tbaa !64
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4
  %i.ay = add nsw i32 %i.ax, 1
  store atomic i32 %i.ay, ptr %i.aw monotonic, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  store ptr %i.ba, ptr %i.az, align 16, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 4
  %i.bd = add nsw i32 %i.bc, 1
  store atomic i32 %i.bd, ptr %i.bb monotonic, align 4
  br label %_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EC2ERKNS_11Interval_ntILb0EEERKNS_13Lazy_exact_ntISD_EESM_.exit

bb.l:                                             ; preds = %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit
  %i.be = atomicrmw add ptr %i.aw, i32 1 monotonic, align 4 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load ptr, ptr %2, align 8, !tbaa !64    ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 16, !tbaa !64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = atomicrmw add ptr %i.bh, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EC2ERKNS_11Interval_ntILb0EEERKNS_13Lazy_exact_ntISD_EESM_.exit

_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EC2ERKNS_11Interval_ntILb0EEERKNS_13Lazy_exact_ntISD_EESM_.exit: ; preds = %bb.l, %bb.k
  %i.bj = and i32 %i.f, 24576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a)
  %i.bk = load i32, ptr %i.a, align 4
  %i.bl = and i32 %i.bk, -24577
  %i.bm = or disjoint i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.b, align 4
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_DivIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %0, align 16, !tbaa !71
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_DivIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_DivIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.230, align 8            ; 5 uses
  %3 = alloca %class.anon.229, align 8            ; 4 uses
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %5 = alloca %class.anon.229, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !64  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.c, ptr %5, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !253
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !253
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !253
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #33
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !64  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.l, ptr %3, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %3, ptr %2, align 8, !tbaa !253
  store ptr %2, ptr %i.e, align 8, !tbaa !253
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !253
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i5:           ; preds = %bb.e
  %.not.i.i.i6 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #33
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail17divide_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #21
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail17divide_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !70
  %6 = load double, ptr %i.s, align 16, !tbaa !70
  %i.v = fneg double %6
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail17divide_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.x = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  %i.aa = fneg double %i.y
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  store <2 x double> %i.ac, ptr %i.s, align 16, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ad, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail17divide_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ae release, align 16
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !64 ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i12 = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.r:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !64 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !64
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.av = load ptr, ptr %i.k, align 16, !tbaa !64 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i2.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.ay, -1
  store atomic i32 %i.bd, ptr %i.ax monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.z:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = atomicrmw sub ptr %i.ax, i32 1 release, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !64 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !71
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !64
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %0, align 16, !tbaa !71
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !64  ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #21, !inline_history !73
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.f:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.h, label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.g, %bb.f
  fence acquire
  %i.m = load ptr, ptr %i.a, align 16, !tbaa !64  ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #21, !inline_history !73
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.a, %bb.d, %bb.e, %bb.g, %bb.h, %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 16, !tbaa !64  ; 4 uses
  %.not.i.i1 = icmp eq ptr %i.s, null
  br i1 %.not.i.i1, label %_ZN4CGAL6HandleD2Ev.exit3, label %bb.j

bb.j:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i2 = icmp eq i8 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev:bb.a

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !71
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #21, !inline_history !73
  br label %_ZN4CGAL6HandleD2Ev.exit3

bb.m:                                             ; preds = %bb.k
  %i.aa = add nsw i32 %i.v, -1
  store atomic i32 %i.aa, ptr %i.u monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit3

bb.n:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = atomicrmw sub ptr %i.u, i32 1 release, align 4
  %i.ac = icmp eq i32 %i.ab, 1
  br i1 %i.ac, label %bb.p, label %_ZN4CGAL6HandleD2Ev.exit3

bb.p:                                             ; preds = %bb.o, %bb.n
  fence acquire
  %i.ad = load ptr, ptr %i.r, align 16, !tbaa !64 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6HandleD2Ev.exit3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !71
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #21, !inline_history !73
  br label %_ZN4CGAL6HandleD2Ev.exit3

_ZN4CGAL6HandleD2Ev.exit3:                        ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !71
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit3
  fence acquire
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9, !range !13, !noundef !14
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.ao = load i8, ptr %i.an, align 2, !range !13
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.i1.i.i.i = select i1 %i.am, i1 true, i1 %i.ap
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 16
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #32, !inline_history !472
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.s, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9, !range !13, !noundef !14
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 26
  %i.az = load i8, ptr %i.ay, align 2, !range !13
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i.i = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.aj, align 16
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #32, !inline_history !472
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.t, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #32, !inline_history !472
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit3, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.230, align 8            ; 5 uses
  %3 = alloca %class.anon.229, align 8            ; 4 uses
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %5 = alloca %class.anon.229, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #34 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !64  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  store ptr %i.c, ptr %5, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  store ptr %5, ptr %4, align 8, !tbaa !253
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !253
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !253
  %i.g = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.d, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.d ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.a
  %.not.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.g) #33
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !64  ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr %i.l, ptr %3, align 8, !tbaa !250
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  store ptr %3, ptr %2, align 8, !tbaa !253
  store ptr %2, ptr %i.e, align 8, !tbaa !253
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !253
  %i.n = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.m, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5 unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i5:           ; preds = %bb.e
  %.not.i.i.i6 = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.n) #33
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !253
  store ptr null, ptr %i.f, align 8, !tbaa !253
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.q = load atomic ptr, ptr %i.p monotonic, align 8
  invoke void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2Ev(ptr noundef nonnull align 16 dereferenceable(64) %i.a)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.i
  invoke void @_ZN5boost14multiprecision8backends21eval_add_subtract_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_b(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %i.j, ptr noundef nonnull align 16 dereferenceable(64) %i.q, i1 noundef zeroext true)
          to label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit unwind label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #21
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !70
  %6 = load double, ptr %i.s, align 16, !tbaa !70
  %i.v = fneg double %6
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.x = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  %i.aa = fneg double %i.y
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  store <2 x double> %i.ac, ptr %i.s, align 16, !tbaa !70
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ad, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ae release, align 16
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !64 ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i12 = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !71
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.an = add nsw i32 %i.ai, -1
  store atomic i32 %i.an, ptr %i.ah monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.r:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = atomicrmw sub ptr %i.ah, i32 1 release, align 4
  %i.ap = icmp eq i32 %i.ao, 1
  br i1 %i.ap, label %bb.t, label %_ZN4CGAL6Handle6decrefEv.exit.i.i

bb.t:                                             ; preds = %bb.s, %bb.r
  fence acquire
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !64 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !71
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !64
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.av = load ptr, ptr %i.k, align 16, !tbaa !64 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i2.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !71
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.y:                                             ; preds = %bb.w
  %i.bd = add nsw i32 %i.ay, -1
  store atomic i32 %i.bd, ptr %i.ax monotonic, align 4
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.z:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = atomicrmw sub ptr %i.ax, i32 1 release, align 4
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.ab, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

bb.ab:                                            ; preds = %bb.aa, %bb.z
  fence acquire
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !64 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !71
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #21, !inline_history !657
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !64
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local ptr @_ZSt9partitionIN9__gnu_cxx17__normal_iteratorIPPKSt4pairIN4CGAL7Point_3INS3_5EpeckEEENS1_IPNS3_10Triangle_3IS5_EESt6vectorIS8_SaIS8_EEEEESA_ISG_SaISG_EEEENS3_15Point_containerINS3_21Search_traits_adapterISE_NS3_26First_of_pair_property_mapISE_EENS3_13AABB_traits_3IS5_NS3_25AABB_triangle_primitive_3IS5_SD_St17integral_constantIbLb0EEEENS3_7DefaultEEEEEE3CmpISW_EEET_S10_S10_T0_(ptr %0, ptr %1, ptr noundef align 8 %2) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.CGAL::Point_container<CGAL::Search_traits_adapter<std::pair<CGAL::Point_3<CGAL::Epeck>, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>, CGAL::First_of_pair_property_map<std::pair<CGAL::Point_3<CGAL::Epeck>, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>>, CGAL::AABB_traits_3<CGAL::Epeck, CGAL::AABB_triangle_primitive_3<CGAL::Epeck, __gnu_cxx::__normal_iterator<CGAL::Triangle_3<CGAL::Epeck> *, std::vector<CGAL::Triangle_3<CGAL::Epeck>>>>>>>::Cmp", align 8 ; 6 uses
  %i.a = load i32, ptr %2, align 8, !tbaa !795
  store i32 %i.a, ptr %3, align 8, !tbaa !795
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !64   ; 2 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !64
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !70
  %.not.i.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load atomic i32, ptr %i.f monotonic, align 4
  %i.h = add nsw i32 %i.g, 1
  store atomic i32 %i.h, ptr %i.f monotonic, align 4
  br label %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_EC2ERKSS_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = atomicrmw add ptr %i.f, i32 1 monotonic, align 4 ; 0 uses
  br label %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_EC2ERKSS_.exit

_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_EC2ERKSS_.exit: ; preds = %bb.b, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !799, !nonnull !14
  store ptr %i.l, ptr %i.j, align 8, !tbaa !798
  %i.m = icmp eq ptr %0, %1
  br i1 %i.m, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPPKSt4pairIN4CGAL7Point_3INS3_5EpeckEEENS1_IPNS3_10Triangle_3IS5_EESt6vectorIS8_SaIS8_EEEEESA_ISG_SaISG_EEEENS3_15Point_containerINS3_21Search_traits_adapterISE_NS3_26First_of_pair_property_mapISE_EENS3_13AABB_traits_3IS5_NS3_25AABB_triangle_primitive_3IS5_SD_St17integral_constantIbLb0EEEENS3_7DefaultEEEEEE3CmpISW_EEET_S10_S10_T0_St26bidirectional_iterator_tag.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_EC2ERKSS_.exit, %bb.g
  %.sroa.0.021.i = phi ptr [ %.sroa.0.1.i, %bb.g ], [ %1, %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_EC2ERKSS_.exit ] ; 2 uses
  %.sroa.08.020.i = phi ptr [ %i.w, %bb.g ], [ %0, %_ZN4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_EC2ERKSS_.exit ]
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.sroa.08.117.i = phi ptr [ %.sroa.08.020.i, %.lr.ph.i ], [ %i.p, %bb.e ] ; 7 uses
  %i.n = load ptr, ptr %.sroa.08.117.i, align 8, !tbaa !419
  %i.o = invoke noundef zeroext i1 @_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_EclEPKSF_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.n)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.d
  br i1 %i.o, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %.noexc
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.08.117.i, i64 8 ; 3 uses
  %i.q = icmp eq ptr %i.p, %.sroa.0.021.i
  br i1 %i.q, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPPKSt4pairIN4CGAL7Point_3INS3_5EpeckEEENS1_IPNS3_10Triangle_3IS5_EESt6vectorIS8_SaIS8_EEEEESA_ISG_SaISG_EEEENS3_15Point_containerINS3_21Search_traits_adapterISE_NS3_26First_of_pair_property_mapISE_EENS3_13AABB_traits_3IS5_NS3_25AABB_triangle_primitive_3IS5_SD_St17integral_constantIbLb0EEEENS3_7DefaultEEEEEE3CmpISW_EEET_S10_S10_T0_St26bidirectional_iterator_tag.exit, label %bb.d, !llvm.loop !812

.preheader.i:                                     ; preds = %.noexc, %.noexc4
  %.sroa.0.0.pn.i = phi ptr [ %.sroa.0.1.i, %.noexc4 ], [ %.sroa.0.021.i, %.noexc ]
  %.sroa.0.1.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i, i64 -8 ; 7 uses
  %i.r = icmp eq ptr %.sroa.08.117.i, %.sroa.0.1.i
  br i1 %i.r, label %_ZSt11__partitionIN9__gnu_cxx17__normal_iteratorIPPKSt4pairIN4CGAL7Point_3INS3_5EpeckEEENS1_IPNS3_10Triangle_3IS5_EESt6vectorIS8_SaIS8_EEEEESA_ISG_SaISG_EEEENS3_15Point_containerINS3_21Search_traits_adapterISE_NS3_26First_of_pair_property_mapISE_EENS3_13AABB_traits_3IS5_NS3_25AABB_triangle_primitive_3IS5_SD_St17integral_constantIbLb0EEEENS3_7DefaultEEEEEE3CmpISW_EEET_S10_S10_T0_St26bidirectional_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %.preheader.i
  %i.s = load ptr, ptr %.sroa.0.1.i, align 8, !tbaa !419
  %i.t = invoke noundef zeroext i1 @_ZNK4CGAL15Point_containerINS_21Search_traits_adapterISt4pairINS_7Point_3INS_5EpeckEEEN9__gnu_cxx17__normal_iteratorIPNS_10Triangle_3IS4_EESt6vectorIS9_SaIS9_EEEEENS_26First_of_pair_property_mapISF_EENS_13AABB_traits_3IS4_NS_25AABB_triangle_primitive_3IS4_SE_St17integral_constantIbLb0EEEENS_7DefaultEEEEEE3CmpISP_EclEPKSF_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.s)
          to label %.noexc4 unwind label %.loopexit

end_hunk_3
