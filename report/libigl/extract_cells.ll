Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/extract_cells?download=true
inline.NumInlined: 3670
inline.NumDeleted: 1517
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a
  %i.abs = load ptr, ptr %47, align 8, !tbaa !154 ; 3 uses
  %i.abt = load i64, ptr %i.kc, align 8, !tbaa !155 ; 2 uses
  %i.abu = icmp ne ptr %i.abs, null
  %i.abv = icmp ne i64 %i.abt, 0
  %or.cond.i.i.i.i416 = and i1 %i.abu, %i.abv
  br i1 %or.cond.i.i.i.i416, label %.preheader.i.i.i.i417, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit

.preheader.i.i.i.i417:                            ; preds = %bb.fs, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421
  %.0.i.i.i.i418 = phi i64 [ %i.abw, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421 ], [ %i.abt, %bb.fs ]
  %i.abw = add i64 %.0.i.i.i.i418, -1             ; 3 uses
  %i.abx = getelementptr inbounds nuw [16 x i8], ptr %i.abs, i64 %i.abw ; 2 uses
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i.i.i.i419 = icmp eq ptr %i.aby, null
  br i1 %.not.i.i.i.i.i.i419, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421, label %bb.ft

bb.ft:                                            ; preds = %.preheader.i.i.i.i417
  %i.abz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i420 = icmp eq i8 %i.abz, 0
  %i.aca = getelementptr inbounds nuw i8, ptr %i.aby, i64 8 ; 3 uses
  %i.acb = load atomic i32, ptr %i.aca monotonic, align 4 ; 2 uses
  %i.acc = icmp eq i32 %i.acb, 1                  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i420, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  br i1 %i.acc, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.acd = load ptr, ptr %i.aby, align 8, !tbaa !45
  %i.ace = getelementptr inbounds nuw i8, ptr %i.acd, i64 8
  %i.acf = load ptr, ptr %i.ace, align 8
  call void %i.acf(ptr noundef nonnull align 8 dereferenceable(12) %i.aby) #22, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421

bb.fw:                                            ; preds = %bb.fu
  %i.acg = add nsw i32 %i.acb, -1
  store atomic i32 %i.acg, ptr %i.aca monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421

bb.fx:                                            ; preds = %bb.ft
  br i1 %i.acc, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.ach = atomicrmw sub ptr %i.aca, i32 1 release, align 4
  %i.aci = icmp eq i32 %i.ach, 1
  br i1 %i.aci, label %bb.fz, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  fence acquire
  %i.acj = load ptr, ptr %i.abx, align 8, !tbaa !145 ; 3 uses
  %i.ack = icmp eq ptr %i.acj, null
  br i1 %i.ack, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.acl = load ptr, ptr %i.acj, align 8, !tbaa !45
  %i.acm = getelementptr inbounds nuw i8, ptr %i.acl, i64 8
  %i.acn = load ptr, ptr %i.acm, align 8
  call void %i.acn(ptr noundef nonnull align 8 dereferenceable(12) %i.acj) #22, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421:              ; preds = %bb.ga, %bb.fz, %bb.fy, %bb.fw, %bb.fv, %.preheader.i.i.i.i417
  %.old1.not.i.i.i.i422 = icmp eq i64 %i.abw, 0
  br i1 %.old1.not.i.i.i.i422, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit, label %.preheader.i.i.i.i417

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i421, %bb.fs
  call void @free(ptr noundef %i.abs) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  %i.aco = add nuw i64 %.01451649, 1              ; 2 uses
  %exitcond1742.not = icmp eq i64 %i.aco, %i.sy
  br i1 %exitcond1742.not, label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit408._crit_edge, label %.lr.ph1650, !llvm.loop !293

bb.gb:                                            ; preds = %.lr.ph1650
  %i.acp = landingpad { ptr, i32 }
          cleanup
  br label %.body413

.body413:                                         ; preds = %bb.gb, %.body.i
  %.pn227 = phi { ptr, i32 } [ %i.xt, %.body.i ], [ %i.acp, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %.body406

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit408._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit
  %i.acq = load ptr, ptr %36, align 8, !tbaa !79
  %i.acr = getelementptr inbounds nuw [16 x i8], ptr %i.acq, i64 %storemerge2061654
  %i.acs = load ptr, ptr %37, align 8, !tbaa !111
  %i.act = getelementptr inbounds nuw [24 x i8], ptr %i.acs, i64 %storemerge2061654
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi0ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.acr, ptr noundef nonnull align 1 dereferenceable(1) %46, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(107) %i.wr, ptr noundef nonnull align 8 dereferenceable(24) %i.act, ptr noundef nonnull align 8 dereferenceable(40) %i.wu, ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %49)
          to label %.lr.ph1652 unwind label %bb.gk

._crit_edge1653:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit455
  %i.acu = load ptr, ptr %49, align 8, !tbaa !48
  call void @free(ptr noundef %i.acu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  %i.acv = load ptr, ptr %48, align 8, !tbaa !48
  call void @free(ptr noundef %i.acv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  %i.acw = load ptr, ptr %46, align 8, !tbaa !147 ; 3 uses
  %i.acx = load i64, ptr %i.kb, align 8, !tbaa !148 ; 2 uses
  %i.acy = icmp ne ptr %i.acw, null
  %i.acz = icmp ne i64 %i.acx, 0
  %or.cond.i.i.i.i423 = and i1 %i.acy, %i.acz
  br i1 %or.cond.i.i.i.i423, label %.preheader.i.i.preheader.i.i424, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit431

.preheader.i.i.preheader.i.i424:                  ; preds = %._crit_edge1653
  %i.ada = mul nsw i64 %i.acx, 3
  br label %.preheader.i.i.i.i425

.preheader.i.i.i.i425:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429, %.preheader.i.i.preheader.i.i424
  %.0.i.i.i.i426 = phi i64 [ %i.adb, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429 ], [ %i.ada, %.preheader.i.i.preheader.i.i424 ]
  %i.adb = add i64 %.0.i.i.i.i426, -1             ; 3 uses
  %i.adc = getelementptr inbounds nuw [16 x i8], ptr %i.acw, i64 %i.adb ; 2 uses
  %i.add = load ptr, ptr %i.adc, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i.i.i.i427 = icmp eq ptr %i.add, null
  br i1 %.not.i.i.i.i.i.i427, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429, label %bb.gc

bb.gc:                                            ; preds = %.preheader.i.i.i.i425
  %i.ade = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i428 = icmp eq i8 %i.ade, 0
  %i.adf = getelementptr inbounds nuw i8, ptr %i.add, i64 8 ; 3 uses
  %i.adg = load atomic i32, ptr %i.adf monotonic, align 4 ; 2 uses
  %i.adh = icmp eq i32 %i.adg, 1                  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i428, label %bb.gg, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.adh, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.adi = load ptr, ptr %i.add, align 8, !tbaa !45
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 8
  %i.adk = load ptr, ptr %i.adj, align 8
  call void %i.adk(ptr noundef nonnull align 8 dereferenceable(12) %i.add) #22, !inline_history !279
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429

bb.gf:                                            ; preds = %bb.gd
  %i.adl = add nsw i32 %i.adg, -1
  store atomic i32 %i.adl, ptr %i.adf monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429

bb.gg:                                            ; preds = %bb.gc
  br i1 %i.adh, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.adm = atomicrmw sub ptr %i.adf, i32 1 release, align 4
  %i.adn = icmp eq i32 %i.adm, 1
  br i1 %i.adn, label %bb.gi, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  fence acquire
  %i.ado = load ptr, ptr %i.adc, align 8, !tbaa !145 ; 3 uses
  %i.adp = icmp eq ptr %i.ado, null
  br i1 %i.adp, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.adq = load ptr, ptr %i.ado, align 8, !tbaa !45
  %i.adr = getelementptr inbounds nuw i8, ptr %i.adq, i64 8
  %i.ads = load ptr, ptr %i.adr, align 8
  call void %i.ads(ptr noundef nonnull align 8 dereferenceable(12) %i.ado) #22, !inline_history !279
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429:              ; preds = %bb.gj, %bb.gi, %bb.gh, %bb.gf, %bb.ge, %.preheader.i.i.i.i425
  %.old1.not.i.i.i.i430 = icmp eq i64 %i.adb, 0
  br i1 %.old1.not.i.i.i.i430, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit431, label %.preheader.i.i.i.i425

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit431: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i429, %._crit_edge1653
  call void @free(ptr noundef %i.acw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.gk:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit408._crit_edge
  %i.adt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

.lr.ph1652:                                       ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit408._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit455
  %.01441651 = phi i64 [ %i.ahr, %_ZNSt6vectorImSaImEE9push_backERKm.exit455 ], [ 0, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit408._crit_edge ] ; 4 uses
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0820.1, i64 %.01441651
  %i.adv = load i64, ptr %i.adu, align 8, !tbaa !60 ; 3 uses
  %i.adw = load ptr, ptr %48, align 8, !tbaa !48
  %i.adx = getelementptr inbounds [4 x i8], ptr %i.adw, i64 %.01441651
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !50
  %i.adz = sext i32 %i.ady to i64
  %i.aea = load ptr, ptr %2, align 8, !tbaa !48
  %i.aeb = getelementptr inbounds [4 x i8], ptr %i.aea, i64 %i.adz
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !50
  %i.aed = load ptr, ptr %49, align 8, !tbaa !48
  %i.aee = getelementptr inbounds [4 x i8], ptr %i.aed, i64 %.01441651
  %i.aef = sext i32 %i.aec to i64
  %i.aeg = load i32, ptr %i.aee, align 4, !tbaa !50
  %.not218 = icmp eq i32 %i.aeg, 0
  %i.aeh = load ptr, ptr %25, align 8, !tbaa !46
  %i.aei = load i64, ptr %i.kd, align 8, !tbaa !43
  %i.aej = select i1 %.not218, i64 %i.aei, i64 0
  %i.aek = getelementptr [4 x i8], ptr %i.aeh, i64 %i.aef
  %i.ael = getelementptr [4 x i8], ptr %i.aek, i64 %i.aej
  %i.aem = load i32, ptr %i.ael, align 4, !tbaa !50 ; 2 uses
  %i.aen = sext i32 %i.aem to i64                 ; 3 uses
  %i.aeo = load ptr, ptr %40, align 8, !tbaa !48  ; 2 uses
  %i.aep = getelementptr inbounds nuw [4 x i8], ptr %i.aeo, i64 %storemerge2061654
  %i.aeq = load i32, ptr %i.aep, align 4, !tbaa !50
  %.not219 = icmp eq i32 %i.aem, %i.aeq
  br i1 %.not219, label %_ZNSt6vectorImSaImEE9push_backERKm.exit455, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph1652
  %i.aer = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0887.01258, i64 %i.aen ; 4 uses
  %i.aes = getelementptr inbounds [4 x i8], ptr %i.aeo, i64 %i.adv
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !50
  %i.aeu = sext i32 %i.aet to i64                 ; 3 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aer, i64 8 ; 3 uses
  %i.aew = load ptr, ptr %i.aev, align 8, !tbaa !74 ; 4 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aer, i64 16 ; 3 uses
  %i.aey = load ptr, ptr %i.aex, align 8, !tbaa !75
  %.not.i.i432 = icmp eq ptr %i.aew, %i.aey
  br i1 %.not.i.i432, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  store i64 %i.aeu, ptr %i.aew, align 8, !tbaa !60
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aew, i64 8
  store ptr %i.aez, ptr %i.aev, align 8, !tbaa !74
  br label %bb.gr

bb.gn:                                            ; preds = %bb.gl
  %i.afa = load ptr, ptr %i.aer, align 8, !tbaa !76 ; 4 uses
  %i.afb = ptrtoint ptr %i.aew to i64
  %i.afc = ptrtoint ptr %i.afa to i64             ; 2 uses
  %i.afd = sub i64 %i.afb, %i.afc                 ; 5 uses
  %i.afe = icmp eq i64 %i.afd, 9223372036854775800
  br i1 %i.afe, label %bb.go, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.noexc434 unwind label %.loopexit.split-lp

.noexc434:                                        ; preds = %bb.go
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.gn
  %i.aff = ashr exact i64 %i.afd, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aff, i64 1)
  %i.afg = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aff ; 2 uses
  %i.afh = icmp ult i64 %i.afg, %i.aff
  %i.afi = call i64 @llvm.umin.i64(i64 %i.afg, i64 1152921504606846975)
  %i.afj = select i1 %i.afh, i64 1152921504606846975, i64 %i.afi ; 3 uses
  %.not.i.i.i.i433 = icmp ne i64 %i.afj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i433)
  %i.afk = shl nuw nsw i64 %i.afj, 3
  %i.afl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afk) #35
          to label %.noexc435 unwind label %.loopexit1492 ; 4 uses

.noexc435:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.afm = getelementptr inbounds i8, ptr %i.afl, i64 %i.afd ; 2 uses
  store i64 %i.aeu, ptr %i.afm, align 8, !tbaa !60
  %i.afn = icmp sgt i64 %i.afd, 0
  br i1 %i.afn, label %bb.gp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.gp:                                            ; preds = %.noexc435
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.afl, ptr align 8 %i.afa, i64 %i.afd, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.gp, %.noexc435
  %i.afo = getelementptr inbounds nuw i8, ptr %i.afm, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.afa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.afp = load ptr, ptr %i.aex, align 8, !tbaa !75
  %i.afq = ptrtoint ptr %i.afp to i64
  %i.afr = sub i64 %i.afq, %i.afc
  call void @_ZdlPvm(ptr noundef nonnull %i.afa, i64 noundef %i.afr) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.gq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.afl, ptr %i.aer, align 8, !tbaa !76
  store ptr %i.afo, ptr %i.aev, align 8, !tbaa !74
  %i.afs = getelementptr inbounds nuw [8 x i8], ptr %i.afl, i64 %i.afj
  store ptr %i.afs, ptr %i.aex, align 8, !tbaa !75
  %.pre1753 = load ptr, ptr %40, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre1753, i64 %i.adv
  %.pre1754 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !50
  %.pre1758 = sext i32 %.pre1754 to i64
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.pre-phi = phi i64 [ %i.aeu, %bb.gm ], [ %.pre1758, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.aft = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0878.0, i64 %.pre-phi ; 4 uses
  %i.afu = getelementptr inbounds nuw i8, ptr %i.aft, i64 8 ; 3 uses
  %i.afv = load ptr, ptr %i.afu, align 8, !tbaa !74 ; 4 uses
  %i.afw = getelementptr inbounds nuw i8, ptr %i.aft, i64 16 ; 3 uses
  %i.afx = load ptr, ptr %i.afw, align 8, !tbaa !75
  %.not.i436 = icmp eq ptr %i.afv, %i.afx
  br i1 %.not.i436, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i64 %i.aen, ptr %i.afv, align 8, !tbaa !60
  %i.afy = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  store ptr %i.afy, ptr %i.afu, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit445

bb.gt:                                            ; preds = %bb.gr
  %i.afz = load ptr, ptr %i.aft, align 8, !tbaa !76 ; 4 uses
  %i.aga = ptrtoint ptr %i.afv to i64
  %i.agb = ptrtoint ptr %i.afz to i64             ; 2 uses
  %i.agc = sub i64 %i.aga, %i.agb                 ; 5 uses
  %i.agd = icmp eq i64 %i.agc, 9223372036854775800
  br i1 %i.agd, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i437

.invoke:                                          ; preds = %bb.gx, %bb.gt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.cont unwind label %.loopexit.split-lp1494

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i437: ; preds = %bb.gt
  %i.age = ashr exact i64 %i.agc, 3               ; 3 uses
  %.sroa.speculated.i.i.i438 = call i64 @llvm.umax.i64(i64 %i.age, i64 1)
  %i.agf = add nsw i64 %.sroa.speculated.i.i.i438, %i.age ; 2 uses
  %i.agg = icmp ult i64 %i.agf, %i.age
  %i.agh = call i64 @llvm.umin.i64(i64 %i.agf, i64 1152921504606846975)
  %i.agi = select i1 %i.agg, i64 1152921504606846975, i64 %i.agh ; 3 uses
  %.not.i.i.i439 = icmp ne i64 %i.agi, 0
  call void @llvm.assume(i1 %.not.i.i.i439)
  %i.agj = shl nuw nsw i64 %i.agi, 3
  %i.agk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agj) #35
          to label %.noexc444 unwind label %.loopexit1493 ; 4 uses

.noexc444:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i437
  %i.agl = getelementptr inbounds i8, ptr %i.agk, i64 %i.agc ; 2 uses
  store i64 %i.aen, ptr %i.agl, align 8, !tbaa !60
  %i.agm = icmp sgt i64 %i.agc, 0
  br i1 %i.agm, label %bb.gu, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440

bb.gu:                                            ; preds = %.noexc444
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.agk, ptr align 8 %i.afz, i64 %i.agc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440: ; preds = %bb.gu, %.noexc444
  %i.agn = getelementptr inbounds nuw i8, ptr %i.agl, i64 8
  %.not.i17.i.i441 = icmp eq ptr %i.afz, null
  br i1 %.not.i17.i.i441, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i442, label %bb.gv

bb.gv:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440
  %i.ago = load ptr, ptr %i.afw, align 8, !tbaa !75
  %i.agp = ptrtoint ptr %i.ago to i64
  %i.agq = sub i64 %i.agp, %i.agb
  call void @_ZdlPvm(ptr noundef nonnull %i.afz, i64 noundef %i.agq) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i442

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i442: ; preds = %bb.gv, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i440
  store ptr %i.agk, ptr %i.aft, align 8, !tbaa !76
  store ptr %i.agn, ptr %i.afu, align 8, !tbaa !74
  %i.agr = getelementptr inbounds nuw [8 x i8], ptr %i.agk, i64 %i.agi
  store ptr %i.agr, ptr %i.afw, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit445

_ZNSt6vectorImSaImEE9push_backERKm.exit445:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i442, %bb.gs
  %i.ags = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %i.adv ; 4 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %i.ags, i64 8 ; 3 uses
  %i.agu = load ptr, ptr %i.agt, align 8, !tbaa !74 ; 4 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.ags, i64 16 ; 3 uses
  %i.agw = load ptr, ptr %i.agv, align 8, !tbaa !75
  %.not.i446 = icmp eq ptr %i.agu, %i.agw
  br i1 %.not.i446, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit445
  store i64 %storemerge2061654, ptr %i.agu, align 8, !tbaa !60
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 8
  store ptr %i.agx, ptr %i.agt, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit455

bb.gx:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit445
  %i.agy = load ptr, ptr %i.ags, align 8, !tbaa !76 ; 4 uses
  %i.agz = ptrtoint ptr %i.agu to i64
  %i.aha = ptrtoint ptr %i.agy to i64             ; 2 uses
  %i.ahb = sub i64 %i.agz, %i.aha                 ; 5 uses
  %i.ahc = icmp eq i64 %i.ahb, 9223372036854775800
  br i1 %i.ahc, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i447

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i447: ; preds = %bb.gx
  %i.ahd = ashr exact i64 %i.ahb, 3               ; 3 uses
  %.sroa.speculated.i.i.i448 = call i64 @llvm.umax.i64(i64 %i.ahd, i64 1)
  %i.ahe = add nsw i64 %.sroa.speculated.i.i.i448, %i.ahd ; 2 uses
  %i.ahf = icmp ult i64 %i.ahe, %i.ahd
  %i.ahg = call i64 @llvm.umin.i64(i64 %i.ahe, i64 1152921504606846975)
  %i.ahh = select i1 %i.ahf, i64 1152921504606846975, i64 %i.ahg ; 3 uses
  %.not.i.i.i449 = icmp ne i64 %i.ahh, 0
  call void @llvm.assume(i1 %.not.i.i.i449)
  %i.ahi = shl nuw nsw i64 %i.ahh, 3
  %i.ahj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahi) #35
          to label %.noexc454 unwind label %.loopexit1493 ; 4 uses

.noexc454:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i447
  %i.ahk = getelementptr inbounds i8, ptr %i.ahj, i64 %i.ahb ; 2 uses
  store i64 %storemerge2061654, ptr %i.ahk, align 8, !tbaa !60
  %i.ahl = icmp sgt i64 %i.ahb, 0
  br i1 %i.ahl, label %bb.gy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i450

bb.gy:                                            ; preds = %.noexc454
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahj, ptr align 8 %i.agy, i64 %i.ahb, i1 false)
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a
  %i.abb = load ptr, ptr %47, align 8, !tbaa !154 ; 3 uses
  %i.abc = load i64, ptr %i.jy, align 8, !tbaa !155 ; 2 uses
  %i.abd = icmp ne ptr %i.abb, null
  %i.abe = icmp ne i64 %i.abc, 0
  %or.cond.i.i.i.i419 = and i1 %i.abd, %i.abe
  br i1 %or.cond.i.i.i.i419, label %.preheader.i.i.i.i420, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit

.preheader.i.i.i.i420:                            ; preds = %bb.fs, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424
  %.0.i.i.i.i421 = phi i64 [ %i.abf, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424 ], [ %i.abc, %bb.fs ]
  %i.abf = add i64 %.0.i.i.i.i421, -1             ; 3 uses
  %i.abg = getelementptr inbounds nuw [16 x i8], ptr %i.abb, i64 %i.abf ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i.i.i.i422 = icmp eq ptr %i.abh, null
  br i1 %.not.i.i.i.i.i.i422, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424, label %bb.ft

bb.ft:                                            ; preds = %.preheader.i.i.i.i420
  %i.abi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i423 = icmp eq i8 %i.abi, 0
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abh, i64 8 ; 3 uses
  %i.abk = load atomic i32, ptr %i.abj monotonic, align 4 ; 2 uses
  %i.abl = icmp eq i32 %i.abk, 1                  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i423, label %bb.fx, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  br i1 %i.abl, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu
  %i.abm = load ptr, ptr %i.abh, align 8, !tbaa !45
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abm, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8
  call void %i.abo(ptr noundef nonnull align 8 dereferenceable(12) %i.abh) #22, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424

bb.fw:                                            ; preds = %bb.fu
  %i.abp = add nsw i32 %i.abk, -1
  store atomic i32 %i.abp, ptr %i.abj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424

bb.fx:                                            ; preds = %bb.ft
  br i1 %i.abl, label %bb.fz, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.abq = atomicrmw sub ptr %i.abj, i32 1 release, align 4
  %i.abr = icmp eq i32 %i.abq, 1
  br i1 %i.abr, label %bb.fz, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424

bb.fz:                                            ; preds = %bb.fy, %bb.fx
  fence acquire
  %i.abs = load ptr, ptr %i.abg, align 8, !tbaa !145 ; 3 uses
  %i.abt = icmp eq ptr %i.abs, null
  br i1 %i.abt, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.abu = load ptr, ptr %i.abs, align 8, !tbaa !45
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abu, i64 8
  %i.abw = load ptr, ptr %i.abv, align 8
  call void %i.abw(ptr noundef nonnull align 8 dereferenceable(12) %i.abs) #22, !inline_history !4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424:              ; preds = %bb.ga, %bb.fz, %bb.fy, %bb.fw, %bb.fv, %.preheader.i.i.i.i420
  %.old1.not.i.i.i.i425 = icmp eq i64 %i.abf, 0
  br i1 %.old1.not.i.i.i.i425, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit, label %.preheader.i.i.i.i420

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i424, %bb.fs
  call void @free(ptr noundef %i.abb) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  %i.abx = add nuw i64 %.01451650, 1              ; 2 uses
  %exitcond1743.not = icmp eq i64 %i.abx, %i.sn
  br i1 %exitcond1743.not, label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit411._crit_edge, label %.lr.ph1651, !llvm.loop !337

bb.gb:                                            ; preds = %.lr.ph1651
  %i.aby = landingpad { ptr, i32 }
          cleanup
  br label %.body415

.body415:                                         ; preds = %bb.gb, %.body.i
  %.pn227 = phi { ptr, i32 } [ %i.xd, %.body.i ], [ %i.aby, %bb.gb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #22
  br label %.body409

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit411._crit_edge: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELi1ELin1ELi1ELi1ELin1EEEED2Ev.exit
  %i.abz = load ptr, ptr %36, align 8, !tbaa !79
  %i.aca = getelementptr inbounds nuw [16 x i8], ptr %i.abz, i64 %storemerge2061655
  %i.acb = load ptr, ptr %37, align 8, !tbaa !111
  %i.acc = getelementptr inbounds nuw [24 x i8], ptr %i.acb, i64 %storemerge2061655
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %48, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal13closest_facetIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEENS4_ISK_Lin1ELi3ELi1ELin1ELi3EEESN_SN_SN_NS5_5EpeckESN_SN_EEvRKNS3_10MatrixBaseIT_EERKNSQ_IT0_EERKNSQ_IT1_EERKNSQ_IT2_EERKNSQ_IT3_EERKNSQ_IT4_EERKNSQ_IT5_EERKSt6vectorIS1J_ImSaImEESaIS1L_EES1P_RKNS5_9AABB_treeINS5_13AABB_traits_3IT6_NS5_25AABB_triangle_primitive_3IS1S_NS1J_INS1S_10Triangle_3ESaIS1U_EE8iteratorESt17integral_constantIbLb0EEEENS5_7DefaultEEEEERKS1W_RKS1J_IbSaIbEERNS3_15PlainObjectBaseIT7_EERNS2C_IT8_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.aca, ptr noundef nonnull align 1 dereferenceable(1) %46, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %35, ptr noundef nonnull align 8 dereferenceable(107) %i.vy, ptr noundef nonnull align 8 dereferenceable(24) %i.acc, ptr noundef nonnull align 8 dereferenceable(40) %i.wb, ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull align 8 dereferenceable(16) %49)
          to label %.lr.ph1653 unwind label %bb.gk

._crit_edge1654:                                  ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit458
  %i.acd = load ptr, ptr %49, align 8, !tbaa !48
  call void @free(ptr noundef %i.acd) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #22
  %i.ace = load ptr, ptr %48, align 8, !tbaa !48
  call void @free(ptr noundef %i.ace) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %48) #22
  %i.acf = load ptr, ptr %46, align 8, !tbaa !177 ; 3 uses
  %i.acg = load i64, ptr %i.ka, align 8, !tbaa !179 ; 2 uses
  %i.ach = icmp ne ptr %i.acf, null
  %i.aci = icmp ne i64 %i.acg, 0
  %or.cond.i.i.i.i426 = and i1 %i.ach, %i.aci
  br i1 %or.cond.i.i.i.i426, label %.preheader.i.i.preheader.i.i427, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit434

.preheader.i.i.preheader.i.i427:                  ; preds = %._crit_edge1654
  %i.acj = mul nsw i64 %i.acg, 3
  br label %.preheader.i.i.i.i428

.preheader.i.i.i.i428:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432, %.preheader.i.i.preheader.i.i427
  %.0.i.i.i.i429 = phi i64 [ %i.ack, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432 ], [ %i.acj, %.preheader.i.i.preheader.i.i427 ]
  %i.ack = add i64 %.0.i.i.i.i429, -1             ; 3 uses
  %i.acl = getelementptr inbounds nuw [16 x i8], ptr %i.acf, i64 %i.ack ; 2 uses
  %i.acm = load ptr, ptr %i.acl, align 8, !tbaa !145 ; 4 uses
  %.not.i.i.i.i.i.i430 = icmp eq ptr %i.acm, null
  br i1 %.not.i.i.i.i.i.i430, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432, label %bb.gc

bb.gc:                                            ; preds = %.preheader.i.i.i.i428
  %i.acn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !56
  %.not.i.i.i.i.i.i.i431 = icmp eq i8 %i.acn, 0
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acm, i64 8 ; 3 uses
  %i.acp = load atomic i32, ptr %i.aco monotonic, align 4 ; 2 uses
  %i.acq = icmp eq i32 %i.acp, 1                  ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i431, label %bb.gg, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  br i1 %i.acq, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.acr = load ptr, ptr %i.acm, align 8, !tbaa !45
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 8
  %i.act = load ptr, ptr %i.acs, align 8
  call void %i.act(ptr noundef nonnull align 8 dereferenceable(12) %i.acm) #22, !inline_history !323
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432

bb.gf:                                            ; preds = %bb.gd
  %i.acu = add nsw i32 %i.acp, -1
  store atomic i32 %i.acu, ptr %i.aco monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432

bb.gg:                                            ; preds = %bb.gc
  br i1 %i.acq, label %bb.gi, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  %i.acv = atomicrmw sub ptr %i.aco, i32 1 release, align 4
  %i.acw = icmp eq i32 %i.acv, 1
  br i1 %i.acw, label %bb.gi, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432

bb.gi:                                            ; preds = %bb.gh, %bb.gg
  fence acquire
  %i.acx = load ptr, ptr %i.acl, align 8, !tbaa !145 ; 3 uses
  %i.acy = icmp eq ptr %i.acx, null
  br i1 %i.acy, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.acz = load ptr, ptr %i.acx, align 8, !tbaa !45
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acz, i64 8
  %i.adb = load ptr, ptr %i.ada, align 8
  call void %i.adb(ptr noundef nonnull align 8 dereferenceable(12) %i.acx) #22, !inline_history !323
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432:              ; preds = %bb.gj, %bb.gi, %bb.gh, %bb.gf, %bb.ge, %.preheader.i.i.i.i428
  %.old1.not.i.i.i.i433 = icmp eq i64 %i.ack, 0
  br i1 %.old1.not.i.i.i.i433, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit434, label %.preheader.i.i.i.i428

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit434: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i432, %._crit_edge1654
  call void @free(ptr noundef %i.acf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %46) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit

bb.gk:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit411._crit_edge
  %i.adc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ha

.lr.ph1653:                                       ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit411._crit_edge, %_ZNSt6vectorImSaImEE9push_backERKm.exit458
  %.01441652 = phi i64 [ %i.aha, %_ZNSt6vectorImSaImEE9push_backERKm.exit458 ], [ 0, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit411._crit_edge ] ; 4 uses
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0823.1, i64 %.01441652
  %i.ade = load i64, ptr %i.add, align 8, !tbaa !60 ; 3 uses
  %i.adf = load ptr, ptr %48, align 8, !tbaa !48
  %i.adg = getelementptr inbounds [4 x i8], ptr %i.adf, i64 %.01441652
  %i.adh = load i32, ptr %i.adg, align 4, !tbaa !50
  %i.adi = sext i32 %i.adh to i64
  %i.adj = load ptr, ptr %2, align 8, !tbaa !48
  %i.adk = getelementptr inbounds [4 x i8], ptr %i.adj, i64 %i.adi
  %i.adl = load i32, ptr %i.adk, align 4, !tbaa !50
  %i.adm = load ptr, ptr %49, align 8, !tbaa !48
  %i.adn = getelementptr inbounds [4 x i8], ptr %i.adm, i64 %.01441652
  %i.ado = sext i32 %i.adl to i64
  %i.adp = load i32, ptr %i.adn, align 4, !tbaa !50
  %.not218 = icmp eq i32 %i.adp, 0
  %i.adq = load ptr, ptr %25, align 8, !tbaa !46
  %i.adr = load i64, ptr %i.jz, align 8, !tbaa !43
  %i.ads = select i1 %.not218, i64 %i.adr, i64 0
  %i.adt = getelementptr [4 x i8], ptr %i.adq, i64 %i.ado
  %i.adu = getelementptr [4 x i8], ptr %i.adt, i64 %i.ads
  %i.adv = load i32, ptr %i.adu, align 4, !tbaa !50 ; 2 uses
  %i.adw = sext i32 %i.adv to i64                 ; 3 uses
  %i.adx = load ptr, ptr %40, align 8, !tbaa !48  ; 2 uses
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adx, i64 %storemerge2061655
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !50
  %.not219 = icmp eq i32 %i.adv, %i.adz
  br i1 %.not219, label %_ZNSt6vectorImSaImEE9push_backERKm.exit458, label %bb.gl

bb.gl:                                            ; preds = %.lr.ph1653
  %i.aea = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0890.01259, i64 %i.adw ; 4 uses
  %i.aeb = getelementptr inbounds [4 x i8], ptr %i.adx, i64 %i.ade
  %i.aec = load i32, ptr %i.aeb, align 4, !tbaa !50
  %i.aed = sext i32 %i.aec to i64                 ; 3 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aea, i64 8 ; 3 uses
  %i.aef = load ptr, ptr %i.aee, align 8, !tbaa !74 ; 4 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aea, i64 16 ; 3 uses
  %i.aeh = load ptr, ptr %i.aeg, align 8, !tbaa !75
  %.not.i.i435 = icmp eq ptr %i.aef, %i.aeh
  br i1 %.not.i.i435, label %bb.gn, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  store i64 %i.aed, ptr %i.aef, align 8, !tbaa !60
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aef, i64 8
  store ptr %i.aei, ptr %i.aee, align 8, !tbaa !74
  br label %bb.gr

bb.gn:                                            ; preds = %bb.gl
  %i.aej = load ptr, ptr %i.aea, align 8, !tbaa !76 ; 4 uses
  %i.aek = ptrtoint ptr %i.aef to i64
  %i.ael = ptrtoint ptr %i.aej to i64             ; 2 uses
  %i.aem = sub i64 %i.aek, %i.ael                 ; 5 uses
  %i.aen = icmp eq i64 %i.aem, 9223372036854775800
  br i1 %i.aen, label %bb.go, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.noexc437 unwind label %.loopexit.split-lp

.noexc437:                                        ; preds = %bb.go
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.gn
  %i.aeo = ashr exact i64 %i.aem, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.aeo, i64 1)
  %i.aep = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aeo ; 2 uses
  %i.aeq = icmp ult i64 %i.aep, %i.aeo
  %i.aer = call i64 @llvm.umin.i64(i64 %i.aep, i64 1152921504606846975)
  %i.aes = select i1 %i.aeq, i64 1152921504606846975, i64 %i.aer ; 3 uses
  %.not.i.i.i.i436 = icmp ne i64 %i.aes, 0
  call void @llvm.assume(i1 %.not.i.i.i.i436)
  %i.aet = shl nuw nsw i64 %i.aes, 3
  %i.aeu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aet) #35
          to label %.noexc438 unwind label %.loopexit1493 ; 4 uses

.noexc438:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aev = getelementptr inbounds i8, ptr %i.aeu, i64 %i.aem ; 2 uses
  store i64 %i.aed, ptr %i.aev, align 8, !tbaa !60
  %i.aew = icmp sgt i64 %i.aem, 0
  br i1 %i.aew, label %bb.gp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.gp:                                            ; preds = %.noexc438
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aeu, ptr align 8 %i.aej, i64 %i.aem, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.gp, %.noexc438
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.aej, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.gq

bb.gq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.aey = load ptr, ptr %i.aeg, align 8, !tbaa !75
  %i.aez = ptrtoint ptr %i.aey to i64
  %i.afa = sub i64 %i.aez, %i.ael
  call void @_ZdlPvm(ptr noundef nonnull %i.aej, i64 noundef %i.afa) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.gq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aeu, ptr %i.aea, align 8, !tbaa !76
  store ptr %i.aex, ptr %i.aee, align 8, !tbaa !74
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.aeu, i64 %i.aes
  store ptr %i.afb, ptr %i.aeg, align 8, !tbaa !75
  %.pre1754 = load ptr, ptr %40, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %.pre1754, i64 %i.ade
  %.pre1755 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !50
  %.pre1759 = sext i32 %.pre1755 to i64
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gm, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i
  %.pre-phi = phi i64 [ %i.aed, %bb.gm ], [ %.pre1759, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ]
  %i.afc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0881.0, i64 %.pre-phi ; 4 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 8 ; 3 uses
  %i.afe = load ptr, ptr %i.afd, align 8, !tbaa !74 ; 4 uses
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 16 ; 3 uses
  %i.afg = load ptr, ptr %i.aff, align 8, !tbaa !75
  %.not.i439 = icmp eq ptr %i.afe, %i.afg
  br i1 %.not.i439, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  store i64 %i.adw, ptr %i.afe, align 8, !tbaa !60
  %i.afh = getelementptr inbounds nuw i8, ptr %i.afe, i64 8
  store ptr %i.afh, ptr %i.afd, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit448

bb.gt:                                            ; preds = %bb.gr
  %i.afi = load ptr, ptr %i.afc, align 8, !tbaa !76 ; 4 uses
  %i.afj = ptrtoint ptr %i.afe to i64
  %i.afk = ptrtoint ptr %i.afi to i64             ; 2 uses
  %i.afl = sub i64 %i.afj, %i.afk                 ; 5 uses
  %i.afm = icmp eq i64 %i.afl, 9223372036854775800
  br i1 %i.afm, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i440

.invoke:                                          ; preds = %bb.gx, %bb.gt
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
          to label %.cont unwind label %.loopexit.split-lp1495

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i440: ; preds = %bb.gt
  %i.afn = ashr exact i64 %i.afl, 3               ; 3 uses
  %.sroa.speculated.i.i.i441 = call i64 @llvm.umax.i64(i64 %i.afn, i64 1)
  %i.afo = add nsw i64 %.sroa.speculated.i.i.i441, %i.afn ; 2 uses
  %i.afp = icmp ult i64 %i.afo, %i.afn
  %i.afq = call i64 @llvm.umin.i64(i64 %i.afo, i64 1152921504606846975)
  %i.afr = select i1 %i.afp, i64 1152921504606846975, i64 %i.afq ; 3 uses
  %.not.i.i.i442 = icmp ne i64 %i.afr, 0
  call void @llvm.assume(i1 %.not.i.i.i442)
  %i.afs = shl nuw nsw i64 %i.afr, 3
  %i.aft = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afs) #35
          to label %.noexc447 unwind label %.loopexit1494 ; 4 uses

.noexc447:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i440
  %i.afu = getelementptr inbounds i8, ptr %i.aft, i64 %i.afl ; 2 uses
  store i64 %i.adw, ptr %i.afu, align 8, !tbaa !60
  %i.afv = icmp sgt i64 %i.afl, 0
  br i1 %i.afv, label %bb.gu, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443

bb.gu:                                            ; preds = %.noexc447
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aft, ptr align 8 %i.afi, i64 %i.afl, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443: ; preds = %bb.gu, %.noexc447
  %i.afw = getelementptr inbounds nuw i8, ptr %i.afu, i64 8
  %.not.i17.i.i444 = icmp eq ptr %i.afi, null
  br i1 %.not.i17.i.i444, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i445, label %bb.gv

bb.gv:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443
  %i.afx = load ptr, ptr %i.aff, align 8, !tbaa !75
  %i.afy = ptrtoint ptr %i.afx to i64
  %i.afz = sub i64 %i.afy, %i.afk
  call void @_ZdlPvm(ptr noundef nonnull %i.afi, i64 noundef %i.afz) #34
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i445

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i445: ; preds = %bb.gv, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i443
  store ptr %i.aft, ptr %i.afc, align 8, !tbaa !76
  store ptr %i.afw, ptr %i.afd, align 8, !tbaa !74
  %i.aga = getelementptr inbounds nuw [8 x i8], ptr %i.aft, i64 %i.afr
  store ptr %i.aga, ptr %i.aff, align 8, !tbaa !75
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit448

_ZNSt6vectorImSaImEE9push_backERKm.exit448:       ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i445, %bb.gs
  %i.agb = getelementptr inbounds nuw [24 x i8], ptr %i.hq, i64 %i.ade ; 4 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %i.agb, i64 8 ; 3 uses
  %i.agd = load ptr, ptr %i.agc, align 8, !tbaa !74 ; 4 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.agb, i64 16 ; 3 uses
  %i.agf = load ptr, ptr %i.age, align 8, !tbaa !75
  %.not.i449 = icmp eq ptr %i.agd, %i.agf
  br i1 %.not.i449, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit448
  store i64 %storemerge2061655, ptr %i.agd, align 8, !tbaa !60
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  store ptr %i.agg, ptr %i.agc, align 8, !tbaa !74
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit458

bb.gx:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit448
  %i.agh = load ptr, ptr %i.agb, align 8, !tbaa !76 ; 4 uses
  %i.agi = ptrtoint ptr %i.agd to i64
  %i.agj = ptrtoint ptr %i.agh to i64             ; 2 uses
  %i.agk = sub i64 %i.agi, %i.agj                 ; 5 uses
  %i.agl = icmp eq i64 %i.agk, 9223372036854775800
  br i1 %i.agl, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i450

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i450: ; preds = %bb.gx
  %i.agm = ashr exact i64 %i.agk, 3               ; 3 uses
  %.sroa.speculated.i.i.i451 = call i64 @llvm.umax.i64(i64 %i.agm, i64 1)
  %i.agn = add nsw i64 %.sroa.speculated.i.i.i451, %i.agm ; 2 uses
  %i.ago = icmp ult i64 %i.agn, %i.agm
  %i.agp = call i64 @llvm.umin.i64(i64 %i.agn, i64 1152921504606846975)
  %i.agq = select i1 %i.ago, i64 1152921504606846975, i64 %i.agp ; 3 uses
  %.not.i.i.i452 = icmp ne i64 %i.agq, 0
  call void @llvm.assume(i1 %.not.i.i.i452)
  %i.agr = shl nuw nsw i64 %i.agq, 3
  %i.ags = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agr) #35
          to label %.noexc457 unwind label %.loopexit1494 ; 4 uses

.noexc457:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i450
  %i.agt = getelementptr inbounds i8, ptr %i.ags, i64 %i.agk ; 2 uses
  store i64 %storemerge2061655, ptr %i.agt, align 8, !tbaa !60
  %i.agu = icmp sgt i64 %i.agk, 0
  br i1 %i.agu, label %bb.gy, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i453

bb.gy:                                            ; preds = %.noexc457
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ags, ptr align 8 %i.agh, i64 %i.agk, i1 false)
end_hunk_1
