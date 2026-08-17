inline.NumInlined: 10255
inline.NumDeleted: 2799
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 74
loop-unroll.NumUnrolled: 95
begin_hunk_0_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  br i1 %i.bq, label %_ZN4CGAL6HandleD2Ev.exit142, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !24
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(12) %i.bp) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit142

_ZN4CGAL6HandleD2Ev.exit142:                      ; preds = %_ZN4CGAL6HandleD2Ev.exit139, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27 ; 3 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 11 uses
  %i.ca = ashr exact i64 %i.bz, 2                 ; 21 uses
  %i.cb = add nsw i64 %i.ca, 1                    ; 26 uses
  %i.cc = icmp ugt i64 %i.ca, 1152921504606846975
  br i1 %i.cc, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bw        ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i, label %.noexc143

.noexc143:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cd = shl nuw nsw i64 %i.bz, 1
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #36 ; 12 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ca ; 3 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !31
  %i.cg = getelementptr i8, ptr %i.ce, i64 8      ; 3 uses
  %i.ch = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ch, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cg, %.noexc143 ], [ %i.cj, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.ca, 4
  br i1 %min.iters.check, label %.lr.ph.preheader395, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ca, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x i64> %vec.ind, ptr %i.ck, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.cl, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !32

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader395

.lr.ph.preheader395:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110263.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.ce, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.cn = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.co = ptrtoint ptr %i.ce to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 3
  %i.cr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = shl nuw nsw i64 %i.cr, 1
  %i.ct = xor i64 %i.cs, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESV_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSY_IT0_EEmmRKS3_IiSaIiEERKNSY_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSZ_SZ_S13_S1B_(ptr nonnull %i.ce, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.ct, ptr nonnull %24, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESV_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSY_IT0_EEmmRKS3_IiSaIiEERKNSY_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSZ_SZ_S13_(ptr nonnull %i.ce, ptr %.0.i.i.i.i.i.ph, ptr nonnull %24, ptr nonnull %4)
          to label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i unwind label %.thread

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit177

.lr.ph:                                           ; preds = %.lr.ph.preheader395, %.lr.ph
  %.0110263 = phi i64 [ %i.cv, %.lr.ph ], [ %.0110263.ph, %.lr.ph.preheader395 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0110263
  store i64 %.0110263, ptr %i.cu, align 8, !tbaa !31
  %i.cv = add nuw i64 %.0110263, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %i.ca
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc145, %._crit_edge
  %.sroa.15.0367384 = phi ptr [ %i.cf, %.noexc145 ], [ %i.cf, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0215.0370382 = phi ptr [ %i.ce, %.noexc145 ], [ %i.ce, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.cw = add nuw nsw i64 %i.ca, 3                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.cx = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 6 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.cz = mul nuw nsw i64 %i.cw, 3
  %i.da = invoke noundef ptr @_ZN5Eigen8internal28conditional_aligned_new_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEPT_m(i64 noundef %i.cz)
          to label %bb.ao unwind label %bb.an     ; 2 uses

bb.an:                                            ; preds = %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ao:                                            ; preds = %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i
  store ptr %i.da, ptr %28, align 8, !tbaa !15
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !19
  store i64 3, ptr %i.cy, align 8, !tbaa !37
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, label %.lr.ph266

.lr.ph266:                                        ; preds = %bb.ao
  %i.dc = trunc i64 %2 to i32                     ; 3 uses
  %i.dd = trunc i64 %3 to i32                     ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.ap

.thread:                                          ; preds = %bb.aj, %.noexc145
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ap:                                            ; preds = %.lr.ph266, %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit
  %.091264 = phi i64 [ 0, %.lr.ph266 ], [ %i.fy, %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0370382, i64 %.091264
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  %i.di = load ptr, ptr %4, align 8, !tbaa !30
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !38
  %i.dl = call i32 @llvm.abs.i32(i32 %i.dk, i1 true)
  %i.dm = load ptr, ptr %1, align 8, !tbaa !39
  %i.dn = zext nneg i32 %i.dl to i64
  %i.do = getelementptr [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 -4     ; 3 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.dq, %i.dc
  %.not10.i = icmp eq i32 %i.dq, %i.dd
  %or.cond254 = or i1 %.not.i, %.not10.i
  br i1 %or.cond254, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.dr = load i64, ptr %i.de, align 8, !tbaa !41 ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr %i.dp, i64 %i.dr
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.dt, %i.dc
  %.not12.i = icmp eq i32 %i.dt, %i.dd
  %or.cond255 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond255, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %.idx.i = shl i64 %i.dr, 3
  %i.du = getelementptr i8, ptr %i.dp, i64 %.idx.i
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.dv, %i.dc
  br i1 %.not13.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not14.i = icmp eq i32 %i.dv, %i.dd
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.dv
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ap, %bb.as, %bb.ar
  %.0.i = phi i32 [ -1, %bb.ar ], [ %i.dq, %bb.ap ], [ %i.dt, %bb.aq ], [ %spec.select.i, %bb.as ]
  %i.dw = sext i32 %.0.i to i64
  %i.dx = load ptr, ptr %0, align 8, !tbaa !15, !noalias !42
  %i.dy = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.dw
  %i.dz = load ptr, ptr %28, align 8, !tbaa !15, !noalias !45
  %i.ea = getelementptr inbounds nuw [16 x i8], ptr %i.dz, i64 %.091264
  %i.eb = load i64, ptr %i.cy, align 8, !tbaa !37, !noalias !45 ; 2 uses
  %i.ec = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ed = load i64, ptr %i.cx, align 8, !tbaa !19
  %i.ee = icmp sgt i64 %i.eb, 0
  br i1 %i.ee, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.at, %.noexc147
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fx, %.noexc147 ], [ 0, %bb.at ] ; 3 uses
  %i.ef = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.ed
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %i.ef ; 5 uses
  %i.eh = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.ec
  %i.ei = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.eh
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !20, !noalias !48 ; 8 uses
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !48
  %.not.i.i.i.i.i.i181 = icmp eq i8 %i.ek, 0
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 9 uses
  br i1 %.not.i.i.i.i.i.i181, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.em = atomicrmw add ptr %i.el, i32 1 monotonic, align 4, !noalias !48 ; 0 uses
  %i.en = atomicrmw add ptr %i.el, i32 1 monotonic, align 4 ; 0 uses
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i183 = icmp eq ptr %i.eo, null
  br i1 %.not.i.i.i.i.i183, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, label %bb.aw

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ep = load atomic i32, ptr %i.el monotonic, align 4, !noalias !48
  %i.eq = add nsw i32 %i.ep, 1
  store atomic i32 %i.eq, ptr %i.el monotonic, align 4, !noalias !48
  %i.er = load atomic i32, ptr %i.el monotonic, align 4
  %i.es = add nsw i32 %i.er, 1
  store atomic i32 %i.es, ptr %i.el monotonic, align 4
  %i.et = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.et, null
  br i1 %.not4.i.i.i.i.i, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = load atomic i32, ptr %i.eu monotonic, align 4 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 1
  br i1 %i.ew, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread.i.i.i.i.i
  %i.ex = load ptr, ptr %i.et, align 8, !tbaa !24
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(12) %i.et) #22, !inline_history !51
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i

bb.av:                                            ; preds = %.thread.i.i.i.i.i
  %i.fa = add nsw i32 %i.ev, -1
  store atomic i32 %i.fa, ptr %i.eu monotonic, align 4
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i

bb.aw:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.fc = load atomic i32, ptr %i.fb monotonic, align 4
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fe = atomicrmw sub ptr %i.fb, i32 1 release, align 4
  %i.ff = icmp eq i32 %i.fe, 1
  br i1 %i.ff, label %bb.ay, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  fence acquire
  %i.fg = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fi = load ptr, ptr %i.fg, align 8, !tbaa !24
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8
  call void %i.fk(ptr noundef nonnull align 8 dereferenceable(12) %i.fg) #22, !inline_history !51
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i

_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i: ; preds = %bb.av, %bb.au, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !20
  br label %bb.ba

_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i
  store ptr %i.ej, ptr %i.eg, align 8, !tbaa !20
  %.not.i.i.i184 = icmp eq ptr %i.ej, null
  br i1 %.not.i.i.i184, label %.noexc147, label %bb.ba

bb.ba:                                            ; preds = %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i
  %i.fl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i182 = icmp eq i8 %i.fl, 0
  %i.fm = load atomic i32, ptr %i.el monotonic, align 4 ; 2 uses
  %i.fn = icmp eq i32 %i.fm, 1                    ; 2 uses
  br i1 %.not.i.i.i.i182, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.fn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fo = load ptr, ptr %i.ej, align 8, !tbaa !24
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(12) %i.ej) #22, !inline_history !52
  br label %.noexc147

bb.bd:                                            ; preds = %bb.bb
  %i.fr = add nsw i32 %i.fm, -1
  store atomic i32 %i.fr, ptr %i.el monotonic, align 4
  br label %.noexc147

bb.be:                                            ; preds = %bb.ba
  br i1 %i.fn, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fs = atomicrmw sub ptr %i.el, i32 1 release, align 4
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.bg, label %.noexc147

bb.bg:                                            ; preds = %bb.bf, %bb.be
  fence acquire
  %i.fu = load ptr, ptr %i.ej, align 8, !tbaa !24
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(12) %i.ej) #22, !inline_history !52
  br label %.noexc147

.noexc147:                                        ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bc, %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i
  %i.fx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fx, %i.eb
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !53

_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit: ; preds = %.noexc147, %bb.at
  %i.fy = add nuw i64 %.091264, 1                 ; 2 uses
  %exitcond291.not = icmp eq i64 %i.fy, %i.ca
  br i1 %exitcond291.not, label %._crit_edge267, label %bb.ap, !llvm.loop !54

._crit_edge267:                                   ; preds = %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit
  %.pre = load ptr, ptr %28, align 8, !tbaa !15, !noalias !55 ; 2 uses
  %.pre301 = load i64, ptr %i.cy, align 8, !tbaa !37, !noalias !55 ; 3 uses
  %.pre302 = load i64, ptr %i.cx, align 8, !tbaa !19 ; 2 uses
  %i.fz = icmp sgt i64 %.pre301, 0
  br i1 %i.fz, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, label %.loopexit262

.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader:          ; preds = %bb.ao, %._crit_edge267
  %.pn = phi ptr [ %.pre, %._crit_edge267 ], [ %i.da, %bb.ao ]
  %i.ga = phi i64 [ %.pre301, %._crit_edge267 ], [ 3, %bb.ao ]
  %i.gb = phi i64 [ %.pre302, %._crit_edge267 ], [ %i.cw, %bb.ao ]
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %.pn, i64 %i.ca
  %i.gd = load ptr, ptr %5, align 8, !tbaa !15
  %i.ge = load i64, ptr %i.n, align 8, !tbaa !19
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i148

.lr.ph.i.i.i.i.i.i.i.i.i.i148:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hj, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader ] ; 3 uses
  %i.gf = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, %i.gb
  %i.gg = getelementptr [16 x i8], ptr %i.gc, i64 %i.gf ; 4 uses
  %i.gh = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, %i.ge
  %i.gi = getelementptr [16 x i8], ptr %i.gd, i64 %i.gh ; 2 uses
  %i.gj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gj, 0
  %i.gk = load ptr, ptr %i.gi, align 8, !tbaa !20
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gm = atomicrmw add ptr %i.gl, i32 1 monotonic, align 4 ; 0 uses
  %i.gn = load ptr, ptr %i.gg, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gn, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bj

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.go = load atomic i32, ptr %i.gl monotonic, align 4
  %i.gp = add nsw i32 %i.go, 1
  store atomic i32 %i.gp, ptr %i.gl monotonic, align 4
  %i.gq = load ptr, ptr %i.gg, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gq, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 2 uses
  %i.gs = load atomic i32, ptr %i.gr monotonic, align 4 ; 2 uses
  %i.gt = icmp eq i32 %i.gs, 1
  br i1 %i.gt, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = load ptr, ptr %i.gq, align 8, !tbaa !24
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  %i.gw = load ptr, ptr %i.gv, align 8
  call void %i.gw(ptr noundef nonnull align 8 dereferenceable(12) %i.gq) #22, !inline_history !58
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gx = add nsw i32 %i.gs, -1
  store atomic i32 %i.gx, ptr %i.gr monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_ISL_EENS0_9assign_opISK_SK_EELi0EE23assignCoeffByOuterInnerEll.exit.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gn, i64 8 ; 2 uses
  %i.gz = load atomic i32, ptr %i.gy monotonic, align 4
  %i.ha = icmp eq i32 %i.gz, 1
  br i1 %i.ha, label %bb.bl, label %bb.bk
end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a

._crit_edge271:                                   ; preds = %.epil.preheader, %._crit_edge271.loopexit.unr-lcssa, %.._crit_edge271_crit_edge
  %.idx259.pre-phi = phi i64 [ %.pre316, %.._crit_edge271_crit_edge ], [ %.idx260, %._crit_edge271.loopexit.unr-lcssa ], [ %.idx260, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre313, %.._crit_edge271_crit_edge ], [ %i.jf, %._crit_edge271.loopexit.unr-lcssa ], [ %i.jf, %.epil.preheader ]
  %i.kn = getelementptr i8, ptr %i.iy, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.kn, align 4, !tbaa !38
  %i.ko = getelementptr [4 x i8], ptr %i.kn, i64 %i.cb
  store i32 %.pre314, ptr %i.ko, align 4, !tbaa !38
  %i.kp = getelementptr i8, ptr %i.kn, i64 %.idx259.pre-phi
  %i.kq = trunc i64 %i.ca to i32
  store i32 %i.kq, ptr %i.kp, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.kr = shl nuw nsw i64 %i.cb, 2
  %i.ks = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kr) #36
          to label %.noexc167 unwind label %bb.bt ; 7 uses

.noexc167:                                        ; preds = %._crit_edge271
  store ptr %i.ks, ptr %32, align 8, !tbaa !30
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.cb
  %i.ku = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !96
  store i32 0, ptr %i.ks, align 4, !tbaa !38
  %i.kv = getelementptr i8, ptr %i.ks, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph274, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc167
  call void @llvm.memset.p0.i64(ptr align 4 %i.kv, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 %i.bz
  br label %.lr.ph274

.lr.ph274:                                        ; preds = %.noexc167, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i165 = phi ptr [ %i.kw, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.kv, %.noexc167 ]
  %i.kx = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.0.i.i.i.i.i165, ptr %i.kx, align 8, !tbaa !27
  %i.ky = icmp eq ptr %i.bv, %i.bw
  br i1 %i.ky, label %.epil.preheader397, label %.lr.ph274.new

.lr.ph274.new:                                    ; preds = %.lr.ph274
  %unroll_iter401 = and i64 %i.cb, 2305843009213693950
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge271
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit175

bb.bu:                                            ; preds = %bb.cc, %.lr.ph274.new
  %.088272 = phi i64 [ 0, %.lr.ph274.new ], [ %i.mb, %bb.cc ] ; 6 uses
  %niter402 = phi i64 [ 0, %.lr.ph274.new ], [ %niter402.next.1, %bb.cc ]
  %i.la = getelementptr [4 x i8], ptr %i.iy, i64 %.088272 ; 2 uses
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !38
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp eq i64 %i.cb, %i.lc
  br i1 %i.ld, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.le = getelementptr [4 x i8], ptr %i.la, i64 %i.cb
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !38
  %i.lg = sext i32 %i.lf to i64
  %i.lh = icmp eq i64 %i.ij, %i.lg
  br i1 %i.lh, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.li = trunc i64 %.088272 to i32
  %i.lj = xor i32 %i.li, -1
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.lk = trunc i64 %.088272 to i32
  %i.ll = or disjoint i32 %i.lk, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.sink392 = phi i32 [ %i.lj, %bb.bw ], [ %i.ll, %bb.bx ]
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.088272
  store i32 %.sink392, ptr %i.lm, align 4, !tbaa !38
  %i.ln = or disjoint i64 %.088272, 1             ; 4 uses
  %i.lo = getelementptr [4 x i8], ptr %i.iy, i64 %i.ln ; 2 uses
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !38
  %i.lq = sext i32 %i.lp to i64
  %i.lr = icmp eq i64 %i.cb, %i.lq
  br i1 %i.lr, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ls = getelementptr [4 x i8], ptr %i.lo, i64 %i.cb
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !38
  %i.lu = sext i32 %i.lt to i64
  %i.lv = icmp eq i64 %i.ij, %i.lu
  br i1 %i.lv, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lw = trunc i64 %i.ln to i32
  %i.lx = add i32 %i.lw, 1
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ly = trunc i64 %i.ln to i32
  %i.lz = xor i32 %i.ly, -1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sink392.1 = phi i32 [ %i.lz, %bb.cb ], [ %i.lx, %bb.ca ]
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %i.ln
  store i32 %.sink392.1, ptr %i.ma, align 4, !tbaa !38
  %i.mb = add nuw i64 %.088272, 2                 ; 2 uses
  %niter402.next.1 = add i64 %niter402, 2         ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %._crit_edge275.unr-lcssa, label %bb.bu, !llvm.loop !97

._crit_edge275.unr-lcssa:                         ; preds = %bb.cc
  %i.mc = and i64 %i.bz, 4
  %lcmp.mod399.not.not = icmp eq i64 %i.mc, 0
  br i1 %lcmp.mod399.not.not, label %.epil.preheader397, label %._crit_edge275

.epil.preheader397:                               ; preds = %._crit_edge275.unr-lcssa, %.lr.ph274
  %.088272.epil.init = phi i64 [ 0, %.lr.ph274 ], [ %i.mb, %._crit_edge275.unr-lcssa ] ; 4 uses
  %lcmp.mod400 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod400)
  %i.md = getelementptr [4 x i8], ptr %i.iy, i64 %.088272.epil.init ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !38
  %i.mf = sext i32 %i.me to i64
  %i.mg = icmp eq i64 %i.cb, %i.mf
  br i1 %i.mg, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.epil.preheader397
  %i.mh = getelementptr [4 x i8], ptr %i.md, i64 %i.cb
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !38
  %i.mj = sext i32 %i.mi to i64
  %i.mk = icmp eq i64 %i.ij, %i.mj
  br i1 %i.mk, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.epil.preheader397
  %i.ml = trunc i64 %.088272.epil.init to i32
  %i.mm = add i32 %i.ml, 1
  br label %._crit_edge275.epilog-lcssa

bb.cf:                                            ; preds = %bb.cd
  %i.mn = trunc i64 %.088272.epil.init to i32
  %i.mo = xor i32 %i.mn, -1
  br label %._crit_edge275.epilog-lcssa

._crit_edge275.epilog-lcssa:                      ; preds = %bb.cf, %bb.ce
  %.sink392.epil = phi i32 [ %i.mo, %bb.cf ], [ %i.mm, %bb.ce ]
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ks, i64 %.088272.epil.init
  store i32 %.sink392.epil, ptr %i.mp, align 4, !tbaa !38
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %._crit_edge275.unr-lcssa, %._crit_edge275.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %31, i64 noundef %i.cb, i64 noundef %i.ij, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, i1 noundef zeroext false)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %._crit_edge275
  %i.mq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !98
  %.not.i.i168 = icmp eq i64 %i.ca, %i.mr
  br i1 %.not.i.i168, label %.lr.ph278, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ms = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.ms) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.ch
  %i.mt = call noalias ptr @malloc(i64 noundef %i.bz) #37 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.ci, label %.sink.split.i.i

bb.ci:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.mv = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.mv, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.mv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc170 unwind label %bb.cj

.noexc170:                                        ; preds = %bb.ci
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.ch
  %.sink.i.i = phi ptr [ %i.mt, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.ch ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph278

.lr.ph278:                                        ; preds = %bb.cg, %.sink.split.i.i
  store i64 %i.ca, ptr %i.mq, align 8, !tbaa !98
  %i.mw = load ptr, ptr %33, align 8, !tbaa !100  ; 5 uses
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %._crit_edge275
  %i.mx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.my = load ptr, ptr %33, align 8, !tbaa !100
  call void @free(ptr noundef %i.my) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.mz = load ptr, ptr %32, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i174 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorIiSaIiEED2Ev.exit175, label %bb.cx

bb.ck:                                            ; preds = %.lr.ph278, %bb.cl
  %.086276 = phi i64 [ 0, %.lr.ph278 ], [ %i.ne, %bb.cl ] ; 4 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %.086276
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !38
  %i.nc = sext i32 %i.nb to i64
  %i.nd = icmp eq i64 %i.ca, %i.nc
  br i1 %i.nd, label %._crit_edge279, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ne = add nuw i64 %.086276, 1
  %exitcond298.not = icmp eq i64 %.086276, %i.ca
  br i1 %exitcond298.not, label %._crit_edge279, label %bb.ck, !llvm.loop !101

._crit_edge279:                                   ; preds = %bb.cl, %bb.ck
  %.087.ph = phi i64 [ %i.ij, %bb.cl ], [ %.086276, %bb.ck ]
  br i1 %.not.i.i.i.i, label %._crit_edge285, label %.lr.ph284

.lr.ph284:                                        ; preds = %._crit_edge279
  %i.nf = add i64 %.087.ph, 1                     ; 3 uses
  %i.ng = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.nh = icmp eq i64 %i.bz, 4
  br i1 %i.nh, label %.epil.preheader403, label %.lr.ph284.new

.lr.ph284.new:                                    ; preds = %.lr.ph284
  %unroll_iter407 = and i64 %i.ca, 1152921504606846974
  br label %bb.cw

._crit_edge285.loopexit.unr-lcssa:                ; preds = %bb.cw
  %i.ni = and i64 %i.bz, 4
  %lcmp.mod405.not = icmp eq i64 %i.ni, 0
  br i1 %lcmp.mod405.not, label %._crit_edge285, label %.epil.preheader403

.epil.preheader403:                               ; preds = %._crit_edge285.loopexit.unr-lcssa, %.lr.ph284
  %.0282.epil.init = phi i64 [ 0, %.lr.ph284 ], [ %i.ps, %._crit_edge285.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod406 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod406)
  %i.nj = add i64 %i.nf, %.0282.epil.init
  %i.nk = urem i64 %i.nj, %i.cb
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.nk
  %i.nm = load i32, ptr %i.nl, align 4, !tbaa !38
  %i.nn = sext i32 %i.nm to i64
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0370382, i64 %i.nn
  %i.np = load i64, ptr %i.no, align 8, !tbaa !31
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %.0282.epil.init
  %i.nr = trunc i64 %i.np to i32
  store i32 %i.nr, ptr %i.nq, align 4, !tbaa !38
  br label %._crit_edge285

._crit_edge285:                                   ; preds = %.epil.preheader403, %._crit_edge285.loopexit.unr-lcssa, %._crit_edge279
  call void @free(ptr noundef nonnull %i.mw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.ns = load ptr, ptr %32, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i171 = icmp eq ptr %i.ns, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge285
  %i.nt = load ptr, ptr %i.ku, align 8, !tbaa !96
  %i.nu = ptrtoint ptr %i.nt to i64
  %i.nv = ptrtoint ptr %i.ns to i64
  %i.nw = sub i64 %i.nu, %i.nv
  call void @_ZdlPvm(ptr noundef nonnull %i.ns, i64 noundef %i.nw) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge285, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.nx = load ptr, ptr %31, align 8, !tbaa !39
  call void @free(ptr noundef %i.nx) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.ny = load ptr, ptr %28, align 8, !tbaa !15   ; 3 uses
  %i.nz = load i64, ptr %i.cx, align 8, !tbaa !19
  %i.oa = load i64, ptr %i.cy, align 8, !tbaa !37
  %i.ob = mul nsw i64 %i.oa, %i.nz                ; 2 uses
  %i.oc = icmp ne ptr %i.ny, null
  %i.od = icmp ne i64 %i.ob, 0
  %or.cond.i.i.i.i172 = and i1 %i.oc, %i.od
  br i1 %or.cond.i.i.i.i172, label %.preheader.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit

.preheader.i.i.i.i:                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.oe, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.ob, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.oe = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.of = getelementptr inbounds nuw [16 x i8], ptr %i.ny, i64 %i.oe ; 2 uses
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !20 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.og, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.preheader.i.i.i.i
  %i.oh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.oh, 0
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 8 ; 3 uses
  %i.oj = load atomic i32, ptr %i.oi monotonic, align 4 ; 2 uses
  %i.ok = icmp eq i32 %i.oj, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  br i1 %i.ok, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.ol = load ptr, ptr %i.og, align 8, !tbaa !24
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(12) %i.og) #22, !inline_history !102
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.oo = add nsw i32 %i.oj, -1
  store atomic i32 %i.oo, ptr %i.oi monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cn
  br i1 %i.ok, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.op = atomicrmw sub ptr %i.oi, i32 1 release, align 4
  %i.oq = icmp eq i32 %i.op, 1
  br i1 %i.oq, label %bb.ct, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  fence acquire
  %i.or = load ptr, ptr %i.of, align 8, !tbaa !20 ; 3 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ot = load ptr, ptr %i.or, align 8, !tbaa !24
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 8
  %i.ov = load ptr, ptr %i.ou, align 8
  call void %i.ov(ptr noundef nonnull align 8 dereferenceable(12) %i.or) #22, !inline_history !102
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.oe, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.ny) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %.not.i.i.i173 = icmp eq ptr %.sroa.0215.0370382, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit
  %i.ow = ptrtoint ptr %.sroa.15.0367384 to i64
  %i.ox = ptrtoint ptr %.sroa.0215.0370382 to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0370382, i64 noundef %i.oy) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  ret void

bb.cw:                                            ; preds = %bb.cw, %.lr.ph284.new
  %.0282 = phi i64 [ 0, %.lr.ph284.new ], [ %i.ps, %bb.cw ] ; 4 uses
  %niter408 = phi i64 [ 0, %.lr.ph284.new ], [ %niter408.next.1, %bb.cw ]
  %i.oz = add i64 %i.nf, %.0282
  %i.pa = urem i64 %i.oz, %i.cb
  %i.pb = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.pa
  %i.pc = load i32, ptr %i.pb, align 4, !tbaa !38
  %i.pd = sext i32 %i.pc to i64
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0370382, i64 %i.pd
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !31
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %.0282
  %i.ph = trunc i64 %i.pf to i32
  store i32 %i.ph, ptr %i.pg, align 4, !tbaa !38
  %i.pi = or disjoint i64 %.0282, 1               ; 2 uses
  %i.pj = add i64 %i.nf, %i.pi
  %i.pk = urem i64 %i.pj, %i.cb
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.mw, i64 %i.pk
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !38
  %i.pn = sext i32 %i.pm to i64
  %i.po = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0215.0370382, i64 %i.pn
  %i.pp = load i64, ptr %i.po, align 8, !tbaa !31
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.ng, i64 %i.pi
  %i.pr = trunc i64 %i.pp to i32
  store i32 %i.pr, ptr %i.pq, align 4, !tbaa !38
  %i.ps = add nuw i64 %.0282, 2                   ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %._crit_edge285.loopexit.unr-lcssa, label %bb.cw, !llvm.loop !103

bb.cx:                                            ; preds = %bb.cj
  %i.pt = load ptr, ptr %i.ku, align 8, !tbaa !96
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = ptrtoint ptr %i.mz to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %i.mz, i64 noundef %i.pw) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit175

_ZNSt6vectorIiSaIiEED2Ev.exit175:                 ; preds = %bb.cx, %bb.cj, %bb.bt
  %.pn119.pn = phi { ptr, i32 } [ %i.kz, %bb.bt ], [ %i.mx, %bb.cj ], [ %i.mx, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.body161

.body161:                                         ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEED2Ev.exit175
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit175 ], [ %i.jb, %bb.bo ]
  %i.px = load ptr, ptr %31, align 8, !tbaa !39
  call void @free(ptr noundef %i.px) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.cy

bb.cy:                                            ; preds = %.body161, %bb.bq, %bb.br, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.db, %bb.an ], [ %i.ji, %bb.br ], [ %.pn122.pn, %.body161 ], [ %i.jh, %bb.bq ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %.not.i.i.i176 = icmp eq ptr %.sroa.0215.0370382, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorImSaImEED2Ev.exit177, label %bb.cz

bb.cz:                                            ; preds = %.thread, %bb.cy
  %.pn125.pn.pn.pn391 = phi { ptr, i32 } [ %i.df, %.thread ], [ %.pn125.pn.pn, %bb.cy ]
  %.sroa.0215.0371390 = phi ptr [ %i.ce, %.thread ], [ %.sroa.0215.0370382, %bb.cy ] ; 2 uses
  %.sroa.15.0367383389 = phi ptr [ %i.cf, %.thread ], [ %.sroa.15.0367384, %bb.cy ]
  %i.py = ptrtoint ptr %.sroa.15.0367383389 to i64
  %i.pz = ptrtoint ptr %.sroa.0215.0371390 to i64
  %i.qa = sub i64 %i.py, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0215.0371390, i64 noundef %i.qa) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit177

_ZNSt6vectorImSaImEED2Ev.exit177:                 ; preds = %bb.cy, %bb.cz, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn391, %bb.cz ], [ %.pn125.pn.pn, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.da:                                            ; preds = %bb.f
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %8 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %9 = alloca %"class.CGAL::Static_filtered_predicate.683", align 1 ; 5 uses
  %10 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %11 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %12 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %13 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %14 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %15 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %16 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %17 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %18 = alloca %"struct.std::pair.610", align 8   ; 8 uses
  %19 = alloca %"struct.std::pair.437", align 8   ; 7 uses
  %20 = alloca %"class.CGAL::Static_filtered_predicate.646", align 1 ; 5 uses
  %21 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %22 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %23 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %24 = alloca %"class.CGAL::Static_filtered_predicate.606", align 1 ; 4 uses
  %25 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %26 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %27 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %28 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %29 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %30 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %31 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %32 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %33 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %34 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %35 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %36 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %37 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %38 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %39 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %40 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %41 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %42 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %43 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %44 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %45 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %46 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %47 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %48 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %49 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %50 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %51 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %52 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %53 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %54 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %55 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %56 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %57 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %58 = alloca %"class.CGAL::Plane_3", align 8    ; 11 uses
  %59 = alloca %"class.std::vector.93", align 8   ; 14 uses
  %60 = alloca %"class.std::vector", align 8      ; 17 uses
  %61 = alloca %"class.std::vector", align 8      ; 17 uses
  %62 = alloca %"class.std::vector", align 8      ; 21 uses
  %63 = alloca %"class.std::vector", align 8      ; 21 uses
  %64 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %65 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %66 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %67 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %68 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %69 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 10 uses
  switch i64 %i.g, label %bb.bt [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %5, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.j) #22
  store ptr null, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !98
  br label %bb.kt

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98
  %.not.i.i269 = icmp eq i64 %i.l, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  br i1 %.not.i.i269, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %.pre) #22
  %i.m = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #37 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i.i:                                  ; preds = %bb.e
  store ptr %i.m, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270: ; preds = %bb.d, %.sink.split.i.i
  %i.p = phi ptr [ %.pre, %bb.d ], [ %i.m, %.sink.split.i.i ]
  store i64 1, ptr %i.k, align 8, !tbaa !98
  store i32 0, ptr %i.p, align 4, !tbaa !38
  br label %bb.kt

bb.g:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.c, align 4, !tbaa !38
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr [4 x i8], ptr %i.s, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4       ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 3 uses
  %i.y = trunc i64 %2 to i32                      ; 6 uses
  %.not.i = icmp eq i32 %i.x, %i.y
end_hunk_1
begin_hunk_2_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELin1ELi1ELi1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  br i1 %i.bo, label %_ZN4CGAL6HandleD2Ev.exit142, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !24
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dereferenceable(12) %i.bn) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit142

_ZN4CGAL6HandleD2Ev.exit142:                      ; preds = %_ZN4CGAL6HandleD2Ev.exit139, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !27 ; 3 uses
  %i.bu = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 11 uses
  %i.by = ashr exact i64 %i.bx, 2                 ; 21 uses
  %i.bz = add nsw i64 %i.by, 1                    ; 26 uses
  %i.ca = icmp ugt i64 %i.by, 1152921504606846975
  br i1 %i.ca, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  %.not.i.i.i.i = icmp eq ptr %i.bt, %i.bu        ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i, label %.noexc143

.noexc143:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cb = shl nuw nsw i64 %i.bx, 1
  %i.cc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cb) #36 ; 12 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.by ; 3 uses
  store i64 0, ptr %i.cc, align 8, !tbaa !31
  %i.ce = getelementptr i8, ptr %i.cc, i64 8      ; 3 uses
  %i.cf = add nsw i64 %i.by, -1                   ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.cf, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ce, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ce, %.noexc143 ], [ %i.ch, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.by, 4
  br i1 %min.iters.check, label %.lr.ph.preheader395, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.by, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x i64> %vec.ind, ptr %i.ci, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.cj, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !193

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader395

.lr.ph.preheader395:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110264.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.cc, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.cl = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.cm = ptrtoint ptr %i.cc to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = ashr exact i64 %i.cn, 3
  %i.cp = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.co, i1 true)
  %i.cq = shl nuw nsw i64 %i.cp, 1
  %i.cr = xor i64 %i.cq, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_ISU_Li1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSZ_IT0_EEmmRKS3_IiSaIiEERKNSZ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvS10_S10_S14_S1C_(ptr nonnull %i.cc, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.cr, ptr nonnull %24, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_ISU_Li1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSZ_IT0_EEmmRKS3_IiSaIiEERKNSZ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvS10_S10_S14_(ptr nonnull %i.cc, ptr %.0.i.i.i.i.i.ph, ptr nonnull %24, ptr nonnull %4)
          to label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i unwind label %.thread

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.v, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit179

.lr.ph:                                           ; preds = %.lr.ph.preheader395, %.lr.ph
  %.0110264 = phi i64 [ %i.ct, %.lr.ph ], [ %.0110264.ph, %.lr.ph.preheader395 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.0110264
  store i64 %.0110264, ptr %i.cs, align 8, !tbaa !31
  %i.ct = add nuw i64 %.0110264, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ct, %i.by
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !194

_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc145, %._crit_edge
  %.sroa.15.0367384 = phi ptr [ %i.cd, %.noexc145 ], [ %i.cd, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0216.0370382 = phi ptr [ %i.cc, %.noexc145 ], [ %i.cc, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.cu = add nuw nsw i64 %i.by, 3                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 6 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.cx = mul nuw nsw i64 %i.cu, 3
  %i.cy = invoke noundef ptr @_ZN5Eigen8internal28conditional_aligned_new_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEPT_m(i64 noundef %i.cx)
          to label %bb.ao unwind label %bb.an     ; 2 uses

bb.an:                                            ; preds = %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ao:                                            ; preds = %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i
  store ptr %i.cy, ptr %28, align 8, !tbaa !15
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !19
  store i64 3, ptr %i.cw, align 8, !tbaa !37
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.ao
  %i.da = trunc i64 %2 to i32                     ; 3 uses
  %i.db = trunc i64 %3 to i32                     ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.ap

.thread:                                          ; preds = %bb.aj, %.noexc145
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ap:                                            ; preds = %.lr.ph267, %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit
  %.091265 = phi i64 [ 0, %.lr.ph267 ], [ %i.fw, %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0370382, i64 %.091265
  %i.df = load i64, ptr %i.de, align 8, !tbaa !31
  %i.dg = load ptr, ptr %4, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.df
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !38
  %i.dj = call i32 @llvm.abs.i32(i32 %i.di, i1 true)
  %i.dk = load ptr, ptr %1, align 8, !tbaa !39
  %i.dl = zext nneg i32 %i.dj to i64
  %i.dm = getelementptr [4 x i8], ptr %i.dk, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4     ; 3 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.do, %i.da
  %.not10.i = icmp eq i32 %i.do, %i.db
  %or.cond256 = or i1 %.not.i, %.not10.i
  br i1 %or.cond256, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.dp = load i64, ptr %i.dc, align 8, !tbaa !41 ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.dn, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.dr, %i.da
  %.not12.i = icmp eq i32 %i.dr, %i.db
  %or.cond257 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond257, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %.idx.i = shl i64 %i.dp, 3
  %i.ds = getelementptr i8, ptr %i.dn, i64 %.idx.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.dt, %i.da
  br i1 %.not13.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not14.i = icmp eq i32 %i.dt, %i.db
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.dt
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ap, %bb.as, %bb.ar
  %.0.i = phi i32 [ -1, %bb.ar ], [ %i.do, %bb.ap ], [ %i.dr, %bb.aq ], [ %spec.select.i, %bb.as ]
  %i.du = sext i32 %.0.i to i64
  %i.dv = load ptr, ptr %0, align 8, !tbaa !15, !noalias !195
  %i.dw = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %i.du
  %i.dx = load ptr, ptr %28, align 8, !tbaa !15, !noalias !198
  %i.dy = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.091265
  %i.dz = load i64, ptr %i.cw, align 8, !tbaa !37, !noalias !198 ; 2 uses
  %i.ea = load i64, ptr %i.b, align 8, !tbaa !19
  %i.eb = load i64, ptr %i.cv, align 8, !tbaa !19
  %i.ec = icmp sgt i64 %i.dz, 0
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.at, %.noexc147
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fv, %.noexc147 ], [ 0, %bb.at ] ; 3 uses
  %i.ed = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.eb
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.dy, i64 %i.ed ; 5 uses
  %i.ef = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.ea
  %i.eg = getelementptr inbounds [16 x i8], ptr %i.dw, i64 %i.ef
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !20, !noalias !201 ; 8 uses
  %i.ei = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !201
  %.not.i.i.i.i.i.i183 = icmp eq i8 %i.ei, 0
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 8 ; 9 uses
  br i1 %.not.i.i.i.i.i.i183, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ek = atomicrmw add ptr %i.ej, i32 1 monotonic, align 4, !noalias !201 ; 0 uses
  %i.el = atomicrmw add ptr %i.ej, i32 1 monotonic, align 4 ; 0 uses
  %i.em = load ptr, ptr %i.ee, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i185 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i.i.i185, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, label %bb.aw

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.en = load atomic i32, ptr %i.ej monotonic, align 4, !noalias !201
  %i.eo = add nsw i32 %i.en, 1
  store atomic i32 %i.eo, ptr %i.ej monotonic, align 4, !noalias !201
  %i.ep = load atomic i32, ptr %i.ej monotonic, align 4
  %i.eq = add nsw i32 %i.ep, 1
  store atomic i32 %i.eq, ptr %i.ej monotonic, align 4
  %i.er = load ptr, ptr %i.ee, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.er, null
  br i1 %.not4.i.i.i.i.i, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = load atomic i32, ptr %i.es monotonic, align 4 ; 2 uses
  %i.eu = icmp eq i32 %i.et, 1
  br i1 %i.eu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread.i.i.i.i.i
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !24
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(12) %i.er) #22, !inline_history !51
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i

bb.av:                                            ; preds = %.thread.i.i.i.i.i
  %i.ey = add nsw i32 %i.et, -1
  store atomic i32 %i.ey, ptr %i.es monotonic, align 4
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i

bb.aw:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 8 ; 2 uses
  %i.fa = load atomic i32, ptr %i.ez monotonic, align 4
  %i.fb = icmp eq i32 %i.fa, 1
  br i1 %i.fb, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fc = atomicrmw sub ptr %i.ez, i32 1 release, align 4
  %i.fd = icmp eq i32 %i.fc, 1
  br i1 %i.fd, label %bb.ay, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  fence acquire
  %i.fe = load ptr, ptr %i.ee, align 8, !tbaa !20 ; 3 uses
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !24
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8
  call void %i.fi(ptr noundef nonnull align 8 dereferenceable(12) %i.fe) #22, !inline_history !51
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i

_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i: ; preds = %bb.av, %bb.au, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !20
  br label %bb.ba

_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !20
  %.not.i.i.i186 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i.i186, label %.noexc147, label %bb.ba

bb.ba:                                            ; preds = %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i
  %i.fj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i184 = icmp eq i8 %i.fj, 0
  %i.fk = load atomic i32, ptr %i.ej monotonic, align 4 ; 2 uses
  %i.fl = icmp eq i32 %i.fk, 1                    ; 2 uses
  br i1 %.not.i.i.i.i184, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.fl, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fm = load ptr, ptr %i.eh, align 8, !tbaa !24
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(12) %i.eh) #22, !inline_history !52
  br label %.noexc147

bb.bd:                                            ; preds = %bb.bb
  %i.fp = add nsw i32 %i.fk, -1
  store atomic i32 %i.fp, ptr %i.ej monotonic, align 4
  br label %.noexc147

bb.be:                                            ; preds = %bb.ba
  br i1 %i.fl, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fq = atomicrmw sub ptr %i.ej, i32 1 release, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.bg, label %.noexc147

bb.bg:                                            ; preds = %bb.bf, %bb.be
  fence acquire
  %i.fs = load ptr, ptr %i.eh, align 8, !tbaa !24
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8
  call void %i.fu(ptr noundef nonnull align 8 dereferenceable(12) %i.eh) #22, !inline_history !52
  br label %.noexc147

.noexc147:                                        ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bc, %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i
  %i.fv = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fv, %i.dz
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !53

_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit: ; preds = %.noexc147, %bb.at
  %i.fw = add nuw i64 %.091265, 1                 ; 2 uses
  %exitcond292.not = icmp eq i64 %i.fw, %i.by
  br i1 %exitcond292.not, label %._crit_edge268, label %bb.ap, !llvm.loop !204

._crit_edge268:                                   ; preds = %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit
  %.pre = load ptr, ptr %28, align 8, !tbaa !15, !noalias !205 ; 2 uses
  %.pre301 = load i64, ptr %i.cw, align 8, !tbaa !37, !noalias !205 ; 3 uses
  %.pre302 = load i64, ptr %i.cv, align 8, !tbaa !19 ; 2 uses
  %i.fx = icmp sgt i64 %.pre301, 0
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, label %.loopexit263

.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader:          ; preds = %bb.ao, %._crit_edge268
  %.pn = phi ptr [ %.pre, %._crit_edge268 ], [ %i.cy, %bb.ao ]
  %i.fy = phi i64 [ %.pre301, %._crit_edge268 ], [ 3, %bb.ao ]
  %i.fz = phi i64 [ %.pre302, %._crit_edge268 ], [ %i.cu, %bb.ao ]
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.pn, i64 %i.by
  %i.gb = load ptr, ptr %5, align 8, !tbaa !191
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i148

.lr.ph.i.i.i.i.i.i.i.i.i.i148:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i149 = phi i64 [ %i.hf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader ] ; 3 uses
  %i.gc = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, %i.fz
  %i.gd = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %i.gc ; 4 uses
  %i.ge = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %.05.i.i.i.i.i.i.i.i.i.i149 ; 2 uses
  %i.gf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gf, 0
  %i.gg = load ptr, ptr %i.ge, align 8, !tbaa !20
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gi = atomicrmw add ptr %i.gh, i32 1 monotonic, align 4 ; 0 uses
  %i.gj = load ptr, ptr %i.gd, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gj, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bj

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gk = load atomic i32, ptr %i.gh monotonic, align 4
  %i.gl = add nsw i32 %i.gk, 1
  store atomic i32 %i.gl, ptr %i.gh monotonic, align 4
  %i.gm = load ptr, ptr %i.gd, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gm, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8 ; 2 uses
  %i.go = load atomic i32, ptr %i.gn monotonic, align 4 ; 2 uses
  %i.gp = icmp eq i32 %i.go, 1
  br i1 %i.gp, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gq = load ptr, ptr %i.gm, align 8, !tbaa !24
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8
  call void %i.gs(ptr noundef nonnull align 8 dereferenceable(12) %i.gm) #22, !inline_history !208
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gt = add nsw i32 %i.go, -1
  store atomic i32 %i.gt, ptr %i.gn monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELin1ELi1ELi1ELin1EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gj, i64 8 ; 2 uses
  %i.gv = load atomic i32, ptr %i.gu monotonic, align 4
  %i.gw = icmp eq i32 %i.gv, 1
  br i1 %i.gw, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
end_hunk_2
begin_hunk_3_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELin1ELi1ELi1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a

._crit_edge272:                                   ; preds = %.epil.preheader, %._crit_edge272.loopexit.unr-lcssa, %.._crit_edge272_crit_edge
  %.idx260.pre-phi = phi i64 [ %.pre316, %.._crit_edge272_crit_edge ], [ %.idx261, %._crit_edge272.loopexit.unr-lcssa ], [ %.idx261, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre313, %.._crit_edge272_crit_edge ], [ %i.jb, %._crit_edge272.loopexit.unr-lcssa ], [ %i.jb, %.epil.preheader ]
  %i.kj = getelementptr i8, ptr %i.iu, i64 %i.bx  ; 3 uses
  store i32 %.pre-phi, ptr %i.kj, align 4, !tbaa !38
  %i.kk = getelementptr [4 x i8], ptr %i.kj, i64 %i.bz
  store i32 %.pre314, ptr %i.kk, align 4, !tbaa !38
  %i.kl = getelementptr i8, ptr %i.kj, i64 %.idx260.pre-phi
  %i.km = trunc i64 %i.by to i32
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.kn = shl nuw nsw i64 %i.bz, 2
  %i.ko = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kn) #36
          to label %.noexc169 unwind label %bb.bt ; 7 uses

.noexc169:                                        ; preds = %._crit_edge272
  store ptr %i.ko, ptr %32, align 8, !tbaa !30
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.bz
  %i.kq = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.kp, ptr %i.kq, align 8, !tbaa !96
  store i32 0, ptr %i.ko, align 4, !tbaa !38
  %i.kr = getelementptr i8, ptr %i.ko, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph275, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc169
  call void @llvm.memset.p0.i64(ptr align 4 %i.kr, i8 0, i64 %i.bx, i1 false), !tbaa !38
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %i.bx
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.noexc169, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i167 = phi ptr [ %i.ks, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.kr, %.noexc169 ]
  %i.kt = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.0.i.i.i.i.i167, ptr %i.kt, align 8, !tbaa !27
  %i.ku = icmp eq ptr %i.bt, %i.bu
  br i1 %i.ku, label %.epil.preheader397, label %.lr.ph275.new

.lr.ph275.new:                                    ; preds = %.lr.ph275
  %unroll_iter401 = and i64 %i.bz, 2305843009213693950
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge272
  %i.kv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit177

bb.bu:                                            ; preds = %bb.cc, %.lr.ph275.new
  %.088273 = phi i64 [ 0, %.lr.ph275.new ], [ %i.lx, %bb.cc ] ; 6 uses
  %niter402 = phi i64 [ 0, %.lr.ph275.new ], [ %niter402.next.1, %bb.cc ]
  %i.kw = getelementptr [4 x i8], ptr %i.iu, i64 %.088273 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !38
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp eq i64 %i.bz, %i.ky
  br i1 %i.kz, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.la = getelementptr [4 x i8], ptr %i.kw, i64 %i.bz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !38
  %i.lc = sext i32 %i.lb to i64
  %i.ld = icmp eq i64 %i.if, %i.lc
  br i1 %i.ld, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.le = trunc i64 %.088273 to i32
  %i.lf = xor i32 %i.le, -1
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.lg = trunc i64 %.088273 to i32
  %i.lh = or disjoint i32 %i.lg, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.sink392 = phi i32 [ %i.lf, %bb.bw ], [ %i.lh, %bb.bx ]
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.088273
  store i32 %.sink392, ptr %i.li, align 4, !tbaa !38
  %i.lj = or disjoint i64 %.088273, 1             ; 4 uses
  %i.lk = getelementptr [4 x i8], ptr %i.iu, i64 %i.lj ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !38
  %i.lm = sext i32 %i.ll to i64
  %i.ln = icmp eq i64 %i.bz, %i.lm
  br i1 %i.ln, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lo = getelementptr [4 x i8], ptr %i.lk, i64 %i.bz
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !38
  %i.lq = sext i32 %i.lp to i64
  %i.lr = icmp eq i64 %i.if, %i.lq
  br i1 %i.lr, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.ls = trunc i64 %i.lj to i32
  %i.lt = add i32 %i.ls, 1
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.lu = trunc i64 %i.lj to i32
  %i.lv = xor i32 %i.lu, -1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sink392.1 = phi i32 [ %i.lv, %bb.cb ], [ %i.lt, %bb.ca ]
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %i.lj
  store i32 %.sink392.1, ptr %i.lw, align 4, !tbaa !38
  %i.lx = add nuw i64 %.088273, 2                 ; 2 uses
  %niter402.next.1 = add i64 %niter402, 2         ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %._crit_edge276.unr-lcssa, label %bb.bu, !llvm.loop !223

._crit_edge276.unr-lcssa:                         ; preds = %bb.cc
  %i.ly = and i64 %i.bx, 4
  %lcmp.mod399.not.not = icmp eq i64 %i.ly, 0
  br i1 %lcmp.mod399.not.not, label %.epil.preheader397, label %._crit_edge276

.epil.preheader397:                               ; preds = %._crit_edge276.unr-lcssa, %.lr.ph275
  %.088273.epil.init = phi i64 [ 0, %.lr.ph275 ], [ %i.lx, %._crit_edge276.unr-lcssa ] ; 4 uses
  %lcmp.mod400 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod400)
  %i.lz = getelementptr [4 x i8], ptr %i.iu, i64 %.088273.epil.init ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !38
  %i.mb = sext i32 %i.ma to i64
  %i.mc = icmp eq i64 %i.bz, %i.mb
  br i1 %i.mc, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.epil.preheader397
  %i.md = getelementptr [4 x i8], ptr %i.lz, i64 %i.bz
  %i.me = load i32, ptr %i.md, align 4, !tbaa !38
  %i.mf = sext i32 %i.me to i64
  %i.mg = icmp eq i64 %i.if, %i.mf
  br i1 %i.mg, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.epil.preheader397
  %i.mh = trunc i64 %.088273.epil.init to i32
  %i.mi = add i32 %i.mh, 1
  br label %._crit_edge276.epilog-lcssa

bb.cf:                                            ; preds = %bb.cd
  %i.mj = trunc i64 %.088273.epil.init to i32
  %i.mk = xor i32 %i.mj, -1
  br label %._crit_edge276.epilog-lcssa

._crit_edge276.epilog-lcssa:                      ; preds = %bb.cf, %bb.ce
  %.sink392.epil = phi i32 [ %i.mk, %bb.cf ], [ %i.mi, %bb.ce ]
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.ko, i64 %.088273.epil.init
  store i32 %.sink392.epil, ptr %i.ml, align 4, !tbaa !38
  br label %._crit_edge276

._crit_edge276:                                   ; preds = %._crit_edge276.unr-lcssa, %._crit_edge276.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %31, i64 noundef %i.bz, i64 noundef %i.if, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, i1 noundef zeroext false)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %._crit_edge276
  %i.mm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !98
  %.not.i.i170 = icmp eq i64 %i.by, %i.mn
  br i1 %.not.i.i170, label %.lr.ph279, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mo = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.mo) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.ch
  %i.mp = call noalias ptr @malloc(i64 noundef %i.bx) #37 ; 2 uses
  %i.mq = icmp eq ptr %i.mp, null
  br i1 %i.mq, label %bb.ci, label %.sink.split.i.i

bb.ci:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.mr = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.mr, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.mr, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc172 unwind label %bb.cj

.noexc172:                                        ; preds = %bb.ci
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.ch
  %.sink.i.i = phi ptr [ %i.mp, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.ch ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph279

.lr.ph279:                                        ; preds = %bb.cg, %.sink.split.i.i
  store i64 %i.by, ptr %i.mm, align 8, !tbaa !98
  %i.ms = load ptr, ptr %33, align 8, !tbaa !100  ; 5 uses
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %._crit_edge276
  %i.mt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mu = load ptr, ptr %33, align 8, !tbaa !100
  call void @free(ptr noundef %i.mu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.mv = load ptr, ptr %32, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i176 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIiSaIiEED2Ev.exit177, label %bb.cx

bb.ck:                                            ; preds = %.lr.ph279, %bb.cl
  %.086277 = phi i64 [ 0, %.lr.ph279 ], [ %i.na, %bb.cl ] ; 4 uses
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %.086277
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !38
  %i.my = sext i32 %i.mx to i64
  %i.mz = icmp eq i64 %i.by, %i.my
  br i1 %i.mz, label %._crit_edge280, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.na = add nuw i64 %.086277, 1
  %exitcond298.not = icmp eq i64 %.086277, %i.by
  br i1 %exitcond298.not, label %._crit_edge280, label %bb.ck, !llvm.loop !224

._crit_edge280:                                   ; preds = %bb.cl, %bb.ck
  %.087.ph = phi i64 [ %i.if, %bb.cl ], [ %.086277, %bb.ck ]
  br i1 %.not.i.i.i.i, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %._crit_edge280
  %i.nb = add i64 %.087.ph, 1                     ; 3 uses
  %i.nc = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.nd = icmp eq i64 %i.bx, 4
  br i1 %i.nd, label %.epil.preheader403, label %.lr.ph285.new

.lr.ph285.new:                                    ; preds = %.lr.ph285
  %unroll_iter407 = and i64 %i.by, 1152921504606846974
  br label %bb.cw

._crit_edge286.loopexit.unr-lcssa:                ; preds = %bb.cw
  %i.ne = and i64 %i.bx, 4
  %lcmp.mod405.not = icmp eq i64 %i.ne, 0
  br i1 %lcmp.mod405.not, label %._crit_edge286, label %.epil.preheader403

.epil.preheader403:                               ; preds = %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285
  %.0283.epil.init = phi i64 [ 0, %.lr.ph285 ], [ %i.po, %._crit_edge286.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod406 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod406)
  %i.nf = add i64 %i.nb, %.0283.epil.init
  %i.ng = urem i64 %i.nf, %i.bz
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.ng
  %i.ni = load i32, ptr %i.nh, align 4, !tbaa !38
  %i.nj = sext i32 %i.ni to i64
  %i.nk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0370382, i64 %i.nj
  %i.nl = load i64, ptr %i.nk, align 8, !tbaa !31
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %.0283.epil.init
  %i.nn = trunc i64 %i.nl to i32
  store i32 %i.nn, ptr %i.nm, align 4, !tbaa !38
  br label %._crit_edge286

._crit_edge286:                                   ; preds = %.epil.preheader403, %._crit_edge286.loopexit.unr-lcssa, %._crit_edge280
  call void @free(ptr noundef nonnull %i.ms) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.no = load ptr, ptr %32, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i173 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge286
  %i.np = load ptr, ptr %i.kq, align 8, !tbaa !96
  %i.nq = ptrtoint ptr %i.np to i64
  %i.nr = ptrtoint ptr %i.no to i64
  %i.ns = sub i64 %i.nq, %i.nr
  call void @_ZdlPvm(ptr noundef nonnull %i.no, i64 noundef %i.ns) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge286, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.nt = load ptr, ptr %31, align 8, !tbaa !39
  call void @free(ptr noundef %i.nt) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.nu = load ptr, ptr %28, align 8, !tbaa !15   ; 3 uses
  %i.nv = load i64, ptr %i.cv, align 8, !tbaa !19
  %i.nw = load i64, ptr %i.cw, align 8, !tbaa !37
  %i.nx = mul nsw i64 %i.nw, %i.nv                ; 2 uses
  %i.ny = icmp ne ptr %i.nu, null
  %i.nz = icmp ne i64 %i.nx, 0
  %or.cond.i.i.i.i174 = and i1 %i.ny, %i.nz
  br i1 %or.cond.i.i.i.i174, label %.preheader.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit

.preheader.i.i.i.i:                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.oa, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.nx, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.oa = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.ob = getelementptr inbounds nuw [16 x i8], ptr %i.nu, i64 %i.oa ; 2 uses
  %i.oc = load ptr, ptr %i.ob, align 8, !tbaa !20 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.preheader.i.i.i.i
  %i.od = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.od, 0
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 8 ; 3 uses
  %i.of = load atomic i32, ptr %i.oe monotonic, align 4 ; 2 uses
  %i.og = icmp eq i32 %i.of, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  br i1 %i.og, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.oh = load ptr, ptr %i.oc, align 8, !tbaa !24
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8
  call void %i.oj(ptr noundef nonnull align 8 dereferenceable(12) %i.oc) #22, !inline_history !102
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.ok = add nsw i32 %i.of, -1
  store atomic i32 %i.ok, ptr %i.oe monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cn
  br i1 %i.og, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ol = atomicrmw sub ptr %i.oe, i32 1 release, align 4
  %i.om = icmp eq i32 %i.ol, 1
  br i1 %i.om, label %bb.ct, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  fence acquire
  %i.on = load ptr, ptr %i.ob, align 8, !tbaa !20 ; 3 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.op = load ptr, ptr %i.on, align 8, !tbaa !24
  %i.oq = getelementptr inbounds nuw i8, ptr %i.op, i64 8
  %i.or = load ptr, ptr %i.oq, align 8
  call void %i.or(ptr noundef nonnull align 8 dereferenceable(12) %i.on) #22, !inline_history !102
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.oa, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.nu) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %.not.i.i.i175 = icmp eq ptr %.sroa.0216.0370382, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit
  %i.os = ptrtoint ptr %.sroa.15.0367384 to i64
  %i.ot = ptrtoint ptr %.sroa.0216.0370382 to i64
  %i.ou = sub i64 %i.os, %i.ot
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.0370382, i64 noundef %i.ou) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  ret void

bb.cw:                                            ; preds = %bb.cw, %.lr.ph285.new
  %.0283 = phi i64 [ 0, %.lr.ph285.new ], [ %i.po, %bb.cw ] ; 4 uses
  %niter408 = phi i64 [ 0, %.lr.ph285.new ], [ %niter408.next.1, %bb.cw ]
  %i.ov = add i64 %i.nb, %.0283
  %i.ow = urem i64 %i.ov, %i.bz
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !38
  %i.oz = sext i32 %i.oy to i64
  %i.pa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0370382, i64 %i.oz
  %i.pb = load i64, ptr %i.pa, align 8, !tbaa !31
  %i.pc = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %.0283
  %i.pd = trunc i64 %i.pb to i32
  store i32 %i.pd, ptr %i.pc, align 4, !tbaa !38
  %i.pe = or disjoint i64 %.0283, 1               ; 2 uses
  %i.pf = add i64 %i.nb, %i.pe
  %i.pg = urem i64 %i.pf, %i.bz
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.ms, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !38
  %i.pj = sext i32 %i.pi to i64
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0370382, i64 %i.pj
  %i.pl = load i64, ptr %i.pk, align 8, !tbaa !31
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.nc, i64 %i.pe
  %i.pn = trunc i64 %i.pl to i32
  store i32 %i.pn, ptr %i.pm, align 4, !tbaa !38
  %i.po = add nuw i64 %.0283, 2                   ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %._crit_edge286.loopexit.unr-lcssa, label %bb.cw, !llvm.loop !225

bb.cx:                                            ; preds = %bb.cj
  %i.pp = load ptr, ptr %i.kq, align 8, !tbaa !96
  %i.pq = ptrtoint ptr %i.pp to i64
  %i.pr = ptrtoint ptr %i.mv to i64
  %i.ps = sub i64 %i.pq, %i.pr
  call void @_ZdlPvm(ptr noundef nonnull %i.mv, i64 noundef %i.ps) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit177

_ZNSt6vectorIiSaIiEED2Ev.exit177:                 ; preds = %bb.cx, %bb.cj, %bb.bt
  %.pn119.pn = phi { ptr, i32 } [ %i.kv, %bb.bt ], [ %i.mt, %bb.cj ], [ %i.mt, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.body163

.body163:                                         ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEED2Ev.exit177
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit177 ], [ %i.ix, %bb.bo ]
  %i.pt = load ptr, ptr %31, align 8, !tbaa !39
  call void @free(ptr noundef %i.pt) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.cy

bb.cy:                                            ; preds = %.body163, %bb.bq, %bb.br, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.an ], [ %i.je, %bb.br ], [ %.pn122.pn, %.body163 ], [ %i.jd, %bb.bq ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %.not.i.i.i178 = icmp eq ptr %.sroa.0216.0370382, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorImSaImEED2Ev.exit179, label %bb.cz

bb.cz:                                            ; preds = %.thread, %bb.cy
  %.pn125.pn.pn.pn391 = phi { ptr, i32 } [ %i.dd, %.thread ], [ %.pn125.pn.pn, %bb.cy ]
  %.sroa.0216.0371390 = phi ptr [ %i.cc, %.thread ], [ %.sroa.0216.0370382, %bb.cy ] ; 2 uses
  %.sroa.15.0367383389 = phi ptr [ %i.cd, %.thread ], [ %.sroa.15.0367384, %bb.cy ]
  %i.pu = ptrtoint ptr %.sroa.15.0367383389 to i64
  %i.pv = ptrtoint ptr %.sroa.0216.0371390 to i64
  %i.pw = sub i64 %i.pu, %i.pv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.0371390, i64 noundef %i.pw) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit179

_ZNSt6vectorImSaImEED2Ev.exit179:                 ; preds = %bb.cy, %bb.cz, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn391, %bb.cz ], [ %.pn125.pn.pn, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.da:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.Eigen::internal::evaluator.517", align 8 ; 5 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.520", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.517", align 8 ; 5 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.520", align 8 ; 5 uses
  %13 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %14 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %15 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 3 uses
  %16 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %17 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %18 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %19 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %20 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %21 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %22 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %23 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %24 = alloca %class.anon.79, align 1            ; 5 uses
  %25 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %26 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %27 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %28 = alloca %"class.Eigen::Matrix", align 8    ; 16 uses
  %29 = alloca %"class.Eigen::Block.46", align 8  ; 10 uses
  %30 = alloca %"class.Eigen::Block.46", align 8  ; 10 uses
  %31 = alloca %"class.Eigen::Matrix.57", align 8 ; 10 uses
  %32 = alloca %"class.std::vector", align 8      ; 9 uses
  %33 = alloca %"class.Eigen::Matrix.60", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr [16 x i8], ptr %i.a, i64 %2 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.e = getelementptr [16 x i8], ptr %i.c, i64 %i.d
  %.idx = shl i64 %i.d, 5
  %i.f = getelementptr i8, ptr %i.c, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %25, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 1 dereferenceable(1) %23, ptr noundef nonnull align 8 dereferenceable(9) %i.c, ptr noundef nonnull align 8 dereferenceable(9) %i.e, ptr noundef nonnull align 8 dereferenceable(9) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  %i.g = load ptr, ptr %0, align 8, !tbaa !15
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %3 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %i.j = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  %.idx259 = shl i64 %i.i, 5
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx259
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %19, ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 8 dereferenceable(9) %i.h, ptr noundef nonnull align 8 dereferenceable(9) %i.j, ptr noundef nonnull align 8 dereferenceable(9) %i.k)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %19, align 8, !tbaa !20
  store ptr %i.l, ptr %26, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.m = getelementptr i8, ptr %5, i64 16
  %i.n = getelementptr i8, ptr %5, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %16, ptr noundef nonnull align 1 dereferenceable(1) %17, ptr noundef nonnull align 1 dereferenceable(1) %18, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(9) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %i.n)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %16, align 8, !tbaa !20
  store ptr %i.o, ptr %27, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.p = invoke noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates11Collinear_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_3ISP_EES18_S18_EEbRKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %15, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br i1 %i.p, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.q = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull @.str.22)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.da unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.h:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.i:                                             ; preds = %bb.c, %bb.f
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.j:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.q) #22
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %27, align 8, !tbaa !20    ; 4 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.w, 0
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.y = load atomic i32, ptr %i.x monotonic, align 4 ; 2 uses
  %i.z = icmp eq i32 %i.y, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(12) %i.v) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %i.y, -1
  store atomic i32 %i.ad, ptr %i.x monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.p:                                             ; preds = %bb.l
  br i1 %i.z, label %bb.r, label %bb.q

end_hunk_3
begin_hunk_4_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  br i1 %i.bn, label %_ZN4CGAL6HandleD2Ev.exit142, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(12) %i.bm) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit142

_ZN4CGAL6HandleD2Ev.exit142:                      ; preds = %_ZN4CGAL6HandleD2Ev.exit139, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27 ; 3 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 11 uses
  %i.bx = ashr exact i64 %i.bw, 2                 ; 21 uses
  %i.by = add nsw i64 %i.bx, 1                    ; 26 uses
  %i.bz = icmp ugt i64 %i.bx, 1152921504606846975
  br i1 %i.bz, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bt        ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i, label %.noexc143

.noexc143:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.bw, 1
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #36 ; 12 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !31
  %i.cd = getelementptr i8, ptr %i.cb, i64 8      ; 3 uses
  %i.ce = add nsw i64 %i.bx, -1                   ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ce, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cd, %.noexc143 ], [ %i.cg, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.bx, 4
  br i1 %min.iters.check, label %.lr.ph.preheader395, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bx, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x i64> %vec.ind, ptr %i.ch, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.ci, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !226

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader395

.lr.ph.preheader395:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110264.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.cb, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.ck = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = xor i64 %i.cp, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_ISU_Li1ELi3ELi1ELi1ELi3EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSZ_IT0_EEmmRKS3_IiSaIiEERKNSZ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvS10_S10_S14_S1C_(ptr nonnull %i.cb, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.cq, ptr nonnull %24, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_ISU_Li1ELi3ELi1ELi1ELi3EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSZ_IT0_EEmmRKS3_IiSaIiEERKNSZ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvS10_S10_S14_(ptr nonnull %i.cb, ptr %.0.i.i.i.i.i.ph, ptr nonnull %24, ptr nonnull %4)
          to label %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i unwind label %.thread

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.u, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %27) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %26) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit179

.lr.ph:                                           ; preds = %.lr.ph.preheader395, %.lr.ph
  %.0110264 = phi i64 [ %i.cs, %.lr.ph ], [ %.0110264.ph, %.lr.ph.preheader395 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0110264
  store i64 %.0110264, ptr %i.cr, align 8, !tbaa !31
  %i.cs = add nuw i64 %.0110264, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !227

_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %.noexc145, %._crit_edge
  %.sroa.15.0367384 = phi ptr [ %i.cc, %.noexc145 ], [ %i.cc, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0216.0370382 = phi ptr [ %i.cb, %.noexc145 ], [ %i.cb, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.ct = add nuw nsw i64 %i.bx, 3                ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 6 uses
  %i.cw = mul nuw nsw i64 %i.ct, 3
  %i.cx = invoke noundef ptr @_ZN5Eigen8internal28conditional_aligned_new_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEPT_m(i64 noundef %i.cw)
          to label %bb.ao unwind label %bb.an     ; 2 uses

bb.an:                                            ; preds = %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.ao:                                            ; preds = %_ZN5Eigen8internal31conditional_aligned_delete_autoIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELb1EEEvPT_m.exit.i
  store ptr %i.cx, ptr %28, align 8, !tbaa !15
  store i64 %i.ct, ptr %i.cu, align 8, !tbaa !19
  store i64 3, ptr %i.cv, align 8, !tbaa !37
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, label %.lr.ph267

.lr.ph267:                                        ; preds = %bb.ao
  %i.cz = trunc i64 %2 to i32                     ; 3 uses
  %i.da = trunc i64 %3 to i32                     ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.ap

.thread:                                          ; preds = %bb.aj, %.noexc145
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.cz

bb.ap:                                            ; preds = %.lr.ph267, %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit
  %.091265 = phi i64 [ 0, %.lr.ph267 ], [ %i.fv, %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0370382, i64 %.091265
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !31
  %i.df = load ptr, ptr %4, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.de
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !38
  %i.di = call i32 @llvm.abs.i32(i32 %i.dh, i1 true)
  %i.dj = load ptr, ptr %1, align 8, !tbaa !39
  %i.dk = zext nneg i32 %i.di to i64
  %i.dl = getelementptr [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = getelementptr i8, ptr %i.dl, i64 -4     ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.dn, %i.cz
  %.not10.i = icmp eq i32 %i.dn, %i.da
  %or.cond256 = or i1 %.not.i, %.not10.i
  br i1 %or.cond256, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.do = load i64, ptr %i.db, align 8, !tbaa !41 ; 2 uses
  %i.dp = getelementptr [4 x i8], ptr %i.dm, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.dq, %i.cz
  %.not12.i = icmp eq i32 %i.dq, %i.da
  %or.cond257 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond257, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %.idx.i = shl i64 %i.do, 3
  %i.dr = getelementptr i8, ptr %i.dm, i64 %.idx.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.ds, %i.cz
  br i1 %.not13.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %.not14.i = icmp eq i32 %i.ds, %i.da
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.ds
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ap, %bb.as, %bb.ar
  %.0.i = phi i32 [ -1, %bb.ar ], [ %i.dn, %bb.ap ], [ %i.dq, %bb.aq ], [ %spec.select.i, %bb.as ]
  %i.dt = sext i32 %.0.i to i64
  %i.du = load ptr, ptr %0, align 8, !tbaa !15, !noalias !228
  %i.dv = getelementptr inbounds [16 x i8], ptr %i.du, i64 %i.dt
  %i.dw = load ptr, ptr %28, align 8, !tbaa !15, !noalias !231
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dw, i64 %.091265
  %i.dy = load i64, ptr %i.cv, align 8, !tbaa !37, !noalias !231 ; 2 uses
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !19
  %i.ea = load i64, ptr %i.cu, align 8, !tbaa !19
  %i.eb = icmp sgt i64 %i.dy, 0
  br i1 %i.eb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.at, %.noexc147
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fu, %.noexc147 ], [ 0, %bb.at ] ; 3 uses
  %i.ec = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.ea
  %i.ed = getelementptr inbounds [16 x i8], ptr %i.dx, i64 %i.ec ; 5 uses
  %i.ee = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.dz
  %i.ef = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %i.ee
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !20, !noalias !234 ; 8 uses
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23, !noalias !234
  %.not.i.i.i.i.i.i183 = icmp eq i8 %i.eh, 0
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 9 uses
  br i1 %.not.i.i.i.i.i.i183, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ej = atomicrmw add ptr %i.ei, i32 1 monotonic, align 4, !noalias !234 ; 0 uses
  %i.ek = atomicrmw add ptr %i.ei, i32 1 monotonic, align 4 ; 0 uses
  %i.el = load ptr, ptr %i.ed, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i185 = icmp eq ptr %i.el, null
  br i1 %.not.i.i.i.i.i185, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, label %bb.aw

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i:  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.em = load atomic i32, ptr %i.ei monotonic, align 4, !noalias !234
  %i.en = add nsw i32 %i.em, 1
  store atomic i32 %i.en, ptr %i.ei monotonic, align 4, !noalias !234
  %i.eo = load atomic i32, ptr %i.ei monotonic, align 4
  %i.ep = add nsw i32 %i.eo, 1
  store atomic i32 %i.ep, ptr %i.ei monotonic, align 4
  %i.eq = load ptr, ptr %i.ed, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.eq, null
  br i1 %.not4.i.i.i.i.i, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i, label %.thread.i.i.i.i.i

.thread.i.i.i.i.i:                                ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  %i.es = load atomic i32, ptr %i.er monotonic, align 4 ; 2 uses
  %i.et = icmp eq i32 %i.es, 1
  br i1 %i.et, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread.i.i.i.i.i
  %i.eu = load ptr, ptr %i.eq, align 8, !tbaa !24
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(12) %i.eq) #22, !inline_history !51
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i

bb.av:                                            ; preds = %.thread.i.i.i.i.i
  %i.ex = add nsw i32 %i.es, -1
  store atomic i32 %i.ex, ptr %i.er monotonic, align 4
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i

bb.aw:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.ez = load atomic i32, ptr %i.ey monotonic, align 4
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fb = atomicrmw sub ptr %i.ey, i32 1 release, align 4
  %i.fc = icmp eq i32 %i.fb, 1
  br i1 %i.fc, label %bb.ay, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  fence acquire
  %i.fd = load ptr, ptr %i.ed, align 8, !tbaa !20 ; 3 uses
  %i.fe = icmp eq ptr %i.fd, null
  br i1 %i.fe, label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ff = load ptr, ptr %i.fd, align 8, !tbaa !24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(12) %i.fd) #22, !inline_history !51
  br label %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i

_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i: ; preds = %bb.av, %bb.au, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !20
  br label %bb.ba

_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i
  store ptr %i.eg, ptr %i.ed, align 8, !tbaa !20
  %.not.i.i.i186 = icmp eq ptr %i.eg, null
  br i1 %.not.i.i.i186, label %.noexc147, label %bb.ba

bb.ba:                                            ; preds = %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i, %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.thread.i
  %i.fi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i184 = icmp eq i8 %i.fi, 0
  %i.fj = load atomic i32, ptr %i.ei monotonic, align 4 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 1                    ; 2 uses
  br i1 %.not.i.i.i.i184, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.fk, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.fl = load ptr, ptr %i.eg, align 8, !tbaa !24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(12) %i.eg) #22, !inline_history !52
  br label %.noexc147

bb.bd:                                            ; preds = %bb.bb
  %i.fo = add nsw i32 %i.fj, -1
  store atomic i32 %i.fo, ptr %i.ei monotonic, align 4
  br label %.noexc147

bb.be:                                            ; preds = %bb.ba
  br i1 %i.fk, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.fp = atomicrmw sub ptr %i.ei, i32 1 release, align 4
  %i.fq = icmp eq i32 %i.fp, 1
  br i1 %i.fq, label %bb.bg, label %.noexc147

bb.bg:                                            ; preds = %bb.bf, %bb.be
  fence acquire
  %i.fr = load ptr, ptr %i.eg, align 8, !tbaa !24
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(12) %i.eg) #22, !inline_history !52
  br label %.noexc147

.noexc147:                                        ; preds = %bb.bg, %bb.bf, %bb.bd, %bb.bc, %_ZNK5Eigen8internal9assign_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEESH_E11assignCoeffERSH_RKSH_.exit.i
  %i.fu = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fu, %i.dy
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !53

_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit: ; preds = %.noexc147, %bb.at
  %i.fv = add nuw i64 %.091265, 1                 ; 2 uses
  %exitcond292.not = icmp eq i64 %i.fv, %i.bx
  br i1 %exitcond292.not, label %._crit_edge268, label %bb.ap, !llvm.loop !237

._crit_edge268:                                   ; preds = %_ZN5Eigen5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKSI_Li1ELin1ELb0EEEEERSJ_RKNS_9DenseBaseIT_EE.exit
  %.pre = load ptr, ptr %28, align 8, !tbaa !15, !noalias !238 ; 2 uses
  %.pre301 = load i64, ptr %i.cv, align 8, !tbaa !37, !noalias !238 ; 3 uses
  %.pre302 = load i64, ptr %i.cu, align 8, !tbaa !19 ; 2 uses
  %i.fw = icmp sgt i64 %.pre301, 0
  br i1 %i.fw, label %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, label %.loopexit263

.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader:          ; preds = %bb.ao, %._crit_edge268
  %.pn = phi ptr [ %.pre, %._crit_edge268 ], [ %i.cx, %bb.ao ]
  %i.fx = phi i64 [ %.pre301, %._crit_edge268 ], [ 3, %bb.ao ]
  %i.fy = phi i64 [ %.pre302, %._crit_edge268 ], [ %i.ct, %bb.ao ]
  %i.fz = getelementptr inbounds nuw [16 x i8], ptr %.pn, i64 %i.bx
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i148

.lr.ph.i.i.i.i.i.i.i.i.i.i148:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i149 = phi i64 [ %i.hd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i148.preheader ] ; 3 uses
  %i.ga = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i149, %i.fy
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.fz, i64 %i.ga ; 4 uses
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %5, i64 %.05.i.i.i.i.i.i.i.i.i.i149 ; 2 uses
  %i.gd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.gd, 0
  %i.ge = load ptr, ptr %i.gc, align 8, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gg = atomicrmw add ptr %i.gf, i32 1 monotonic, align 4 ; 0 uses
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gh, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %bb.bj

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i148
  %i.gi = load atomic i32, ptr %i.gf monotonic, align 4
  %i.gj = add nsw i32 %i.gi, 1
  store atomic i32 %i.gj, ptr %i.gf monotonic, align 4
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.gk, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 8 ; 2 uses
  %i.gm = load atomic i32, ptr %i.gl monotonic, align 4 ; 2 uses
  %i.gn = icmp eq i32 %i.gm, 1
  br i1 %i.gn, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.go = load ptr, ptr %i.gk, align 8, !tbaa !24
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(12) %i.gk) #22, !inline_history !241
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bi:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gr = add nsw i32 %i.gm, -1
  store atomic i32 %i.gr, ptr %i.gl monotonic, align 4
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEEENS2_INS4_ISK_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISK_SK_EELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i

bb.bj:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gt = load atomic i32, ptr %i.gs monotonic, align 4
  %i.gu = icmp eq i32 %i.gt, 1
  br i1 %i.gu, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gv = atomicrmw sub ptr %i.gs, i32 1 release, align 4
end_hunk_4
begin_hunk_5_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a

._crit_edge272:                                   ; preds = %.epil.preheader, %._crit_edge272.loopexit.unr-lcssa, %.._crit_edge272_crit_edge
  %.idx260.pre-phi = phi i64 [ %.pre316, %.._crit_edge272_crit_edge ], [ %.idx261, %._crit_edge272.loopexit.unr-lcssa ], [ %.idx261, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre313, %.._crit_edge272_crit_edge ], [ %i.iz, %._crit_edge272.loopexit.unr-lcssa ], [ %i.iz, %.epil.preheader ]
  %i.kh = getelementptr i8, ptr %i.is, i64 %i.bw  ; 3 uses
  store i32 %.pre-phi, ptr %i.kh, align 4, !tbaa !38
  %i.ki = getelementptr [4 x i8], ptr %i.kh, i64 %i.by
  store i32 %.pre314, ptr %i.ki, align 4, !tbaa !38
  %i.kj = getelementptr i8, ptr %i.kh, i64 %.idx260.pre-phi
  %i.kk = trunc i64 %i.bx to i32
  store i32 %i.kk, ptr %i.kj, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  %i.kl = shl nuw nsw i64 %i.by, 2
  %i.km = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kl) #36
          to label %.noexc169 unwind label %bb.bt ; 7 uses

.noexc169:                                        ; preds = %._crit_edge272
  store ptr %i.km, ptr %32, align 8, !tbaa !30
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.by
  %i.ko = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 3 uses
  store ptr %i.kn, ptr %i.ko, align 8, !tbaa !96
  store i32 0, ptr %i.km, align 4, !tbaa !38
  %i.kp = getelementptr i8, ptr %i.km, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph275, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc169
  call void @llvm.memset.p0.i64(ptr align 4 %i.kp, i8 0, i64 %i.bw, i1 false), !tbaa !38
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.bw
  br label %.lr.ph275

.lr.ph275:                                        ; preds = %.noexc169, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i167 = phi ptr [ %i.kq, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.kp, %.noexc169 ]
  %i.kr = getelementptr inbounds nuw i8, ptr %32, i64 8
  store ptr %.0.i.i.i.i.i167, ptr %i.kr, align 8, !tbaa !27
  %i.ks = icmp eq ptr %i.bs, %i.bt
  br i1 %i.ks, label %.epil.preheader397, label %.lr.ph275.new

.lr.ph275.new:                                    ; preds = %.lr.ph275
  %unroll_iter401 = and i64 %i.by, 2305843009213693950
  br label %bb.bu

bb.bt:                                            ; preds = %._crit_edge272
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit177

bb.bu:                                            ; preds = %bb.cc, %.lr.ph275.new
  %.088273 = phi i64 [ 0, %.lr.ph275.new ], [ %i.lv, %bb.cc ] ; 6 uses
  %niter402 = phi i64 [ 0, %.lr.ph275.new ], [ %niter402.next.1, %bb.cc ]
  %i.ku = getelementptr [4 x i8], ptr %i.is, i64 %.088273 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !38
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp eq i64 %i.by, %i.kw
  br i1 %i.kx, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.ky = getelementptr [4 x i8], ptr %i.ku, i64 %i.by
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !38
  %i.la = sext i32 %i.kz to i64
  %i.lb = icmp eq i64 %i.id, %i.la
  br i1 %i.lb, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.lc = trunc i64 %.088273 to i32
  %i.ld = xor i32 %i.lc, -1
  br label %bb.by

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.le = trunc i64 %.088273 to i32
  %i.lf = or disjoint i32 %i.le, 1
  br label %bb.by

bb.by:                                            ; preds = %bb.bw, %bb.bx
  %.sink392 = phi i32 [ %i.ld, %bb.bw ], [ %i.lf, %bb.bx ]
  %i.lg = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.088273
  store i32 %.sink392, ptr %i.lg, align 4, !tbaa !38
  %i.lh = or disjoint i64 %.088273, 1             ; 4 uses
  %i.li = getelementptr [4 x i8], ptr %i.is, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !38
  %i.lk = sext i32 %i.lj to i64
  %i.ll = icmp eq i64 %i.by, %i.lk
  br i1 %i.ll, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.lm = getelementptr [4 x i8], ptr %i.li, i64 %i.by
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !38
  %i.lo = sext i32 %i.ln to i64
  %i.lp = icmp eq i64 %i.id, %i.lo
  br i1 %i.lp, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.lq = trunc i64 %i.lh to i32
  %i.lr = add i32 %i.lq, 1
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bz
  %i.ls = trunc i64 %i.lh to i32
  %i.lt = xor i32 %i.ls, -1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.sink392.1 = phi i32 [ %i.lt, %bb.cb ], [ %i.lr, %bb.ca ]
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %i.lh
  store i32 %.sink392.1, ptr %i.lu, align 4, !tbaa !38
  %i.lv = add nuw i64 %.088273, 2                 ; 2 uses
  %niter402.next.1 = add i64 %niter402, 2         ; 2 uses
  %niter402.ncmp.1 = icmp eq i64 %niter402.next.1, %unroll_iter401
  br i1 %niter402.ncmp.1, label %._crit_edge276.unr-lcssa, label %bb.bu, !llvm.loop !256

._crit_edge276.unr-lcssa:                         ; preds = %bb.cc
  %i.lw = and i64 %i.bw, 4
  %lcmp.mod399.not.not = icmp eq i64 %i.lw, 0
  br i1 %lcmp.mod399.not.not, label %.epil.preheader397, label %._crit_edge276

.epil.preheader397:                               ; preds = %._crit_edge276.unr-lcssa, %.lr.ph275
  %.088273.epil.init = phi i64 [ 0, %.lr.ph275 ], [ %i.lv, %._crit_edge276.unr-lcssa ] ; 4 uses
  %lcmp.mod400 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod400)
  %i.lx = getelementptr [4 x i8], ptr %i.is, i64 %.088273.epil.init ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !38
  %i.lz = sext i32 %i.ly to i64
  %i.ma = icmp eq i64 %i.by, %i.lz
  br i1 %i.ma, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.epil.preheader397
  %i.mb = getelementptr [4 x i8], ptr %i.lx, i64 %i.by
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !38
  %i.md = sext i32 %i.mc to i64
  %i.me = icmp eq i64 %i.id, %i.md
  br i1 %i.me, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.epil.preheader397
  %i.mf = trunc i64 %.088273.epil.init to i32
  %i.mg = add i32 %i.mf, 1
  br label %._crit_edge276.epilog-lcssa

bb.cf:                                            ; preds = %bb.cd
  %i.mh = trunc i64 %.088273.epil.init to i32
  %i.mi = xor i32 %i.mh, -1
  br label %._crit_edge276.epilog-lcssa

._crit_edge276.epilog-lcssa:                      ; preds = %bb.cf, %bb.ce
  %.sink392.epil = phi i32 [ %i.mi, %bb.cf ], [ %i.mg, %bb.ce ]
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %.088273.epil.init
  store i32 %.sink392.epil, ptr %i.mj, align 4, !tbaa !38
  br label %._crit_edge276

._crit_edge276:                                   ; preds = %._crit_edge276.unr-lcssa, %._crit_edge276.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %33, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %31, i64 noundef %i.by, i64 noundef %i.id, ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(16) %33, i1 noundef zeroext false)
          to label %bb.cg unwind label %bb.cj

bb.cg:                                            ; preds = %._crit_edge276
  %i.mk = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !98
  %.not.i.i170 = icmp eq i64 %i.bx, %i.ml
  br i1 %.not.i.i170, label %.lr.ph279, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mm = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.mm) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.ch
  %i.mn = call noalias ptr @malloc(i64 noundef %i.bw) #37 ; 2 uses
  %i.mo = icmp eq ptr %i.mn, null
  br i1 %i.mo, label %bb.ci, label %.sink.split.i.i

bb.ci:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.mp = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.mp, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.mp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc172 unwind label %bb.cj

.noexc172:                                        ; preds = %bb.ci
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.ch
  %.sink.i.i = phi ptr [ %i.mn, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.ch ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph279

.lr.ph279:                                        ; preds = %bb.cg, %.sink.split.i.i
  store i64 %i.bx, ptr %i.mk, align 8, !tbaa !98
  %i.mq = load ptr, ptr %33, align 8, !tbaa !100  ; 5 uses
  br label %bb.ck

bb.cj:                                            ; preds = %bb.ci, %._crit_edge276
  %i.mr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ms = load ptr, ptr %33, align 8, !tbaa !100
  call void @free(ptr noundef %i.ms) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.mt = load ptr, ptr %32, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i176 = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i176, label %_ZNSt6vectorIiSaIiEED2Ev.exit177, label %bb.cx

bb.ck:                                            ; preds = %.lr.ph279, %bb.cl
  %.086277 = phi i64 [ 0, %.lr.ph279 ], [ %i.my, %bb.cl ] ; 4 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %.086277
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !38
  %i.mw = sext i32 %i.mv to i64
  %i.mx = icmp eq i64 %i.bx, %i.mw
  br i1 %i.mx, label %._crit_edge280, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.my = add nuw i64 %.086277, 1
  %exitcond298.not = icmp eq i64 %.086277, %i.bx
  br i1 %exitcond298.not, label %._crit_edge280, label %bb.ck, !llvm.loop !257

._crit_edge280:                                   ; preds = %bb.cl, %bb.ck
  %.087.ph = phi i64 [ %i.id, %bb.cl ], [ %.086277, %bb.ck ]
  br i1 %.not.i.i.i.i, label %._crit_edge286, label %.lr.ph285

.lr.ph285:                                        ; preds = %._crit_edge280
  %i.mz = add i64 %.087.ph, 1                     ; 3 uses
  %i.na = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.nb = icmp eq i64 %i.bw, 4
  br i1 %i.nb, label %.epil.preheader403, label %.lr.ph285.new

.lr.ph285.new:                                    ; preds = %.lr.ph285
  %unroll_iter407 = and i64 %i.bx, 1152921504606846974
  br label %bb.cw

._crit_edge286.loopexit.unr-lcssa:                ; preds = %bb.cw
  %i.nc = and i64 %i.bw, 4
  %lcmp.mod405.not = icmp eq i64 %i.nc, 0
  br i1 %lcmp.mod405.not, label %._crit_edge286, label %.epil.preheader403

.epil.preheader403:                               ; preds = %._crit_edge286.loopexit.unr-lcssa, %.lr.ph285
  %.0283.epil.init = phi i64 [ 0, %.lr.ph285 ], [ %i.pm, %._crit_edge286.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod406 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod406)
  %i.nd = add i64 %i.mz, %.0283.epil.init
  %i.ne = urem i64 %i.nd, %i.by
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !38
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0370382, i64 %i.nh
  %i.nj = load i64, ptr %i.ni, align 8, !tbaa !31
  %i.nk = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %.0283.epil.init
  %i.nl = trunc i64 %i.nj to i32
  store i32 %i.nl, ptr %i.nk, align 4, !tbaa !38
  br label %._crit_edge286

._crit_edge286:                                   ; preds = %.epil.preheader403, %._crit_edge286.loopexit.unr-lcssa, %._crit_edge280
  call void @free(ptr noundef nonnull %i.mq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.nm = load ptr, ptr %32, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i173 = icmp eq ptr %i.nm, null
  br i1 %.not.i.i.i173, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %._crit_edge286
  %i.nn = load ptr, ptr %i.ko, align 8, !tbaa !96
  %i.no = ptrtoint ptr %i.nn to i64
  %i.np = ptrtoint ptr %i.nm to i64
  %i.nq = sub i64 %i.no, %i.np
  call void @_ZdlPvm(ptr noundef nonnull %i.nm, i64 noundef %i.nq) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge286, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %i.nr = load ptr, ptr %31, align 8, !tbaa !39
  call void @free(ptr noundef %i.nr) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  %i.ns = load ptr, ptr %28, align 8, !tbaa !15   ; 3 uses
  %i.nt = load i64, ptr %i.cu, align 8, !tbaa !19
  %i.nu = load i64, ptr %i.cv, align 8, !tbaa !37
  %i.nv = mul nsw i64 %i.nu, %i.nt                ; 2 uses
  %i.nw = icmp ne ptr %i.ns, null
  %i.nx = icmp ne i64 %i.nv, 0
  %or.cond.i.i.i.i174 = and i1 %i.nw, %i.nx
  br i1 %or.cond.i.i.i.i174, label %.preheader.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit

.preheader.i.i.i.i:                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.ny, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.nv, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.ny = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.nz = getelementptr inbounds nuw [16 x i8], ptr %i.ns, i64 %i.ny ; 2 uses
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !20 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cn

bb.cn:                                            ; preds = %.preheader.i.i.i.i
  %i.ob = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ob, 0
  %i.oc = getelementptr inbounds nuw i8, ptr %i.oa, i64 8 ; 3 uses
  %i.od = load atomic i32, ptr %i.oc monotonic, align 4 ; 2 uses
  %i.oe = icmp eq i32 %i.od, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  br i1 %i.oe, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.of = load ptr, ptr %i.oa, align 8, !tbaa !24
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 8
  %i.oh = load ptr, ptr %i.og, align 8
  call void %i.oh(ptr noundef nonnull align 8 dereferenceable(12) %i.oa) #22, !inline_history !102
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cq:                                            ; preds = %bb.co
  %i.oi = add nsw i32 %i.od, -1
  store atomic i32 %i.oi, ptr %i.oc monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cr:                                            ; preds = %bb.cn
  br i1 %i.oe, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.oj = atomicrmw sub ptr %i.oc, i32 1 release, align 4
  %i.ok = icmp eq i32 %i.oj, 1
  br i1 %i.ok, label %bb.ct, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  fence acquire
  %i.ol = load ptr, ptr %i.nz, align 8, !tbaa !20 ; 3 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.on = load ptr, ptr %i.ol, align 8, !tbaa !24
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %i.op = load ptr, ptr %i.oo, align 8
  call void %i.op(ptr noundef nonnull align 8 dereferenceable(12) %i.ol) #22, !inline_history !102
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.cu, %bb.ct, %bb.cs, %bb.cq, %bb.cp, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.ny, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.ns) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %.not.i.i.i175 = icmp eq ptr %.sroa.0216.0370382, null
  br i1 %.not.i.i.i175, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit
  %i.oq = ptrtoint ptr %.sroa.15.0367384 to i64
  %i.or = ptrtoint ptr %.sroa.0216.0370382 to i64
  %i.os = sub i64 %i.oq, %i.or
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.0370382, i64 noundef %i.os) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev.exit, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  ret void

bb.cw:                                            ; preds = %bb.cw, %.lr.ph285.new
  %.0283 = phi i64 [ 0, %.lr.ph285.new ], [ %i.pm, %bb.cw ] ; 4 uses
  %niter408 = phi i64 [ 0, %.lr.ph285.new ], [ %niter408.next.1, %bb.cw ]
  %i.ot = add i64 %i.mz, %.0283
  %i.ou = urem i64 %i.ot, %i.by
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.ou
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !38
  %i.ox = sext i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0370382, i64 %i.ox
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !31
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %.0283
  %i.pb = trunc i64 %i.oz to i32
  store i32 %i.pb, ptr %i.pa, align 4, !tbaa !38
  %i.pc = or disjoint i64 %.0283, 1               ; 2 uses
  %i.pd = add i64 %i.mz, %i.pc
  %i.pe = urem i64 %i.pd, %i.by
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.mq, i64 %i.pe
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !38
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0216.0370382, i64 %i.ph
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !31
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.na, i64 %i.pc
  %i.pl = trunc i64 %i.pj to i32
  store i32 %i.pl, ptr %i.pk, align 4, !tbaa !38
  %i.pm = add nuw i64 %.0283, 2                   ; 2 uses
  %niter408.next.1 = add i64 %niter408, 2         ; 2 uses
  %niter408.ncmp.1 = icmp eq i64 %niter408.next.1, %unroll_iter407
  br i1 %niter408.ncmp.1, label %._crit_edge286.loopexit.unr-lcssa, label %bb.cw, !llvm.loop !258

bb.cx:                                            ; preds = %bb.cj
  %i.pn = load ptr, ptr %i.ko, align 8, !tbaa !96
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ptrtoint ptr %i.mt to i64
  %i.pq = sub i64 %i.po, %i.pp
  call void @_ZdlPvm(ptr noundef nonnull %i.mt, i64 noundef %i.pq) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit177

_ZNSt6vectorIiSaIiEED2Ev.exit177:                 ; preds = %bb.cx, %bb.cj, %bb.bt
  %.pn119.pn = phi { ptr, i32 } [ %i.kt, %bb.bt ], [ %i.mr, %bb.cj ], [ %i.mr, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  br label %.body163

.body163:                                         ; preds = %bb.bo, %_ZNSt6vectorIiSaIiEED2Ev.exit177
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit177 ], [ %i.iv, %bb.bo ]
  %i.pr = load ptr, ptr %31, align 8, !tbaa !39
  call void @free(ptr noundef %i.pr) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  br label %bb.cy

bb.cy:                                            ; preds = %.body163, %bb.bq, %bb.br, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.cy, %bb.an ], [ %i.jc, %bb.br ], [ %.pn122.pn, %.body163 ], [ %i.jb, %bb.bq ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  %.not.i.i.i178 = icmp eq ptr %.sroa.0216.0370382, null
  br i1 %.not.i.i.i178, label %_ZNSt6vectorImSaImEED2Ev.exit179, label %bb.cz

bb.cz:                                            ; preds = %.thread, %bb.cy
  %.pn125.pn.pn.pn391 = phi { ptr, i32 } [ %i.dc, %.thread ], [ %.pn125.pn.pn, %bb.cy ]
  %.sroa.0216.0371390 = phi ptr [ %i.cb, %.thread ], [ %.sroa.0216.0370382, %bb.cy ] ; 2 uses
  %.sroa.15.0367383389 = phi ptr [ %i.cc, %.thread ], [ %.sroa.15.0367384, %bb.cy ]
  %i.ps = ptrtoint ptr %.sroa.15.0367383389 to i64
  %i.pt = ptrtoint ptr %.sroa.0216.0371390 to i64
  %i.pu = sub i64 %i.ps, %i.pt
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0216.0371390, i64 noundef %i.pu) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit179

_ZNSt6vectorImSaImEED2Ev.exit179:                 ; preds = %bb.cy, %bb.cz, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn391, %bb.cz ], [ %.pn125.pn.pn, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.da:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !98
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.i) #22
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 4611686018427387903
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #37 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !100
  br label %_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIiLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL7Plane_3INS_5EpeckEE20orthogonal_directionEv(ptr dead_on_unwind noalias writable sret(%"class.CGAL::Direction_3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.CGAL::Direction_3", align 8 ; 4 uses
  %3 = alloca %"struct.CGAL::Lazy_construction.669", align 1 ; 3 uses
  %4 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %5 = alloca %"struct.CGAL::Lazy_construction_nt.666", align 1 ; 3 uses
  %6 = alloca %"struct.CGAL::Lazy_construction_nt.663", align 1 ; 3 uses
  %7 = alloca %"struct.CGAL::Lazy_construction_nt", align 1 ; 3 uses
  %8 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %9 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  %10 = alloca %"class.CGAL::Lazy_exact_nt", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22, !noalias !259
  call void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_20CommonKernelFunctors11Compute_a_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Plane_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22, !noalias !259
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !262
  invoke void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_20CommonKernelFunctors11Compute_b_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Plane_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %9, ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !262
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !265
  invoke void @_ZNK4CGAL20Lazy_construction_ntINS_5EpeckENS_20CommonKernelFunctors11Compute_c_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEEEclIJNS_7Plane_3IS1_EEEEENS_13Lazy_exact_ntINSt9remove_cvINSt16remove_referenceIDTcldtdefpT2ecspclsr4CGALE5exactfp_EEEE4typeEE4typeEEEDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Lazy_exact_nt") align 8 %10, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.c unwind label %bb.ad

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !265
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors21Construct_direction_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb1EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Direction_3") align 8 %2, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(9) %8, ptr noundef nonnull align 8 dereferenceable(9) %9, ptr noundef nonnull align 8 dereferenceable(9) %10)
          to label %bb.d unwind label %bb.ae

bb.d:                                             ; preds = %bb.c
  %i.a = load ptr, ptr %2, align 8, !tbaa !20
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.b = load ptr, ptr %10, align 8, !tbaa !20    ; 4 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.c = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4 ; 2 uses
  %i.f = icmp eq i32 %i.e, 1                      ; 2 uses
  br i1 %.not.i.i.i, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.f, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  call void %i.i(ptr noundef nonnull align 8 dereferenceable(12) %i.b) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.h:                                             ; preds = %bb.f
  %i.j = add nsw i32 %i.e, -1
  store atomic i32 %i.j, ptr %i.d monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.i:                                             ; preds = %bb.e
  br i1 %i.f, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = icmp eq i32 %i.k, 1
  br i1 %i.l, label %bb.k, label %_ZN4CGAL6HandleD2Ev.exit

bb.k:                                             ; preds = %bb.j, %bb.i
  fence acquire
  %i.m = load ptr, ptr %10, align 8, !tbaa !20    ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.l

end_hunk_5
begin_hunk_6_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a

._crit_edge248:                                   ; preds = %.epil.preheader, %._crit_edge248.loopexit.unr-lcssa, %.._crit_edge248_crit_edge
  %.idx.pre-phi = phi i64 [ %.pre285, %.._crit_edge248_crit_edge ], [ %.idx238, %._crit_edge248.loopexit.unr-lcssa ], [ %.idx238, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre282, %.._crit_edge248_crit_edge ], [ %i.hu, %._crit_edge248.loopexit.unr-lcssa ], [ %i.hu, %.epil.preheader ]
  %i.jc = getelementptr i8, ptr %i.hn, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.jc, align 4, !tbaa !38
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %i.cb
  store i32 %.pre283, ptr %i.jd, align 4, !tbaa !38
  %i.je = getelementptr i8, ptr %i.jc, i64 %.idx.pre-phi
  %i.jf = trunc i64 %i.ca to i32
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.jg = shl nuw nsw i64 %i.cb, 2
  %i.jh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jg) #36
          to label %.noexc160 unwind label %bb.bj ; 7 uses

.noexc160:                                        ; preds = %._crit_edge248
  store ptr %i.jh, ptr %37, align 8, !tbaa !30
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.cb
  %i.jj = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !96
  store i32 0, ptr %i.jh, align 4, !tbaa !38
  %i.jk = getelementptr i8, ptr %i.jh, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph251, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc160
  call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.bz
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.noexc160, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i158 = phi ptr [ %i.jl, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.jk, %.noexc160 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.0.i.i.i.i.i158, ptr %i.jm, align 8, !tbaa !27
  %i.jn = icmp eq ptr %i.bv, %i.bw
  br i1 %i.jn, label %.epil.preheader353, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter357 = and i64 %i.cb, 2305843009213693950
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge248
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

bb.bk:                                            ; preds = %bb.bs, %.lr.ph251.new
  %.088249 = phi i64 [ 0, %.lr.ph251.new ], [ %i.kq, %bb.bs ] ; 6 uses
  %niter358 = phi i64 [ 0, %.lr.ph251.new ], [ %niter358.next.1, %bb.bs ]
  %i.jp = getelementptr [4 x i8], ptr %i.hn, i64 %.088249 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !38
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp eq i64 %i.cb, %i.jr
  br i1 %i.js, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jt = getelementptr [4 x i8], ptr %i.jp, i64 %i.cb
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !38
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp eq i64 %i.gx, %i.jv
  br i1 %i.jw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jx = trunc i64 %.088249 to i32
  %i.jy = xor i32 %i.jx, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.jz = trunc i64 %.088249 to i32
  %i.ka = or disjoint i32 %i.jz, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sink348 = phi i32 [ %i.jy, %bb.bm ], [ %i.ka, %bb.bn ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.088249
  store i32 %.sink348, ptr %i.kb, align 4, !tbaa !38
  %i.kc = or disjoint i64 %.088249, 1             ; 4 uses
  %i.kd = getelementptr [4 x i8], ptr %i.hn, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !38
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp eq i64 %i.cb, %i.kf
  br i1 %i.kg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kh = getelementptr [4 x i8], ptr %i.kd, i64 %i.cb
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !38
  %i.kj = sext i32 %i.ki to i64
  %i.kk = icmp eq i64 %i.gx, %i.kj
  br i1 %i.kk, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.kl = trunc i64 %i.kc to i32
  %i.km = add i32 %i.kl, 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.kn = trunc i64 %i.kc to i32
  %i.ko = xor i32 %i.kn, -1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink348.1 = phi i32 [ %i.ko, %bb.br ], [ %i.km, %bb.bq ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kc
  store i32 %.sink348.1, ptr %i.kp, align 4, !tbaa !38
  %i.kq = add nuw i64 %.088249, 2                 ; 2 uses
  %niter358.next.1 = add i64 %niter358, 2         ; 2 uses
  %niter358.ncmp.1 = icmp eq i64 %niter358.next.1, %unroll_iter357
  br i1 %niter358.ncmp.1, label %._crit_edge252.unr-lcssa, label %bb.bk, !llvm.loop !317

._crit_edge252.unr-lcssa:                         ; preds = %bb.bs
  %i.kr = and i64 %i.bz, 4
  %lcmp.mod355.not.not = icmp eq i64 %i.kr, 0
  br i1 %lcmp.mod355.not.not, label %.epil.preheader353, label %._crit_edge252

.epil.preheader353:                               ; preds = %._crit_edge252.unr-lcssa, %.lr.ph251
  %.088249.epil.init = phi i64 [ 0, %.lr.ph251 ], [ %i.kq, %._crit_edge252.unr-lcssa ] ; 4 uses
  %lcmp.mod356 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod356)
  %i.ks = getelementptr [4 x i8], ptr %i.hn, i64 %.088249.epil.init ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !38
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp eq i64 %i.cb, %i.ku
  br i1 %i.kv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.epil.preheader353
  %i.kw = getelementptr [4 x i8], ptr %i.ks, i64 %i.cb
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !38
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp eq i64 %i.gx, %i.ky
  br i1 %i.kz, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.epil.preheader353
  %i.la = trunc i64 %.088249.epil.init to i32
  %i.lb = add i32 %i.la, 1
  br label %._crit_edge252.epilog-lcssa

bb.bv:                                            ; preds = %bb.bt
  %i.lc = trunc i64 %.088249.epil.init to i32
  %i.ld = xor i32 %i.lc, -1
  br label %._crit_edge252.epilog-lcssa

._crit_edge252.epilog-lcssa:                      ; preds = %bb.bv, %bb.bu
  %.sink348.epil = phi i32 [ %i.ld, %bb.bv ], [ %i.lb, %bb.bu ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.088249.epil.init
  store i32 %.sink348.epil, ptr %i.le, align 4, !tbaa !38
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %._crit_edge252.unr-lcssa, %._crit_edge252.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %36, i64 noundef %i.cb, i64 noundef %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, i1 noundef zeroext false)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %._crit_edge252
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !98
  %.not.i.i161 = icmp eq i64 %i.ca, %i.lg
  br i1 %.not.i.i161, label %.lr.ph255, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lh = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.lh) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bx
  %i.li = call noalias ptr @malloc(i64 noundef %i.bz) #37 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.by, label %.sink.split.i.i

bb.by:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.lk = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lk, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.lk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc163 unwind label %bb.bz

.noexc163:                                        ; preds = %bb.by
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bx
  %.sink.i.i = phi ptr [ %i.li, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bx ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.bw, %.sink.split.i.i
  store i64 %i.ca, ptr %i.lf, align 8, !tbaa !98
  %i.ll = load ptr, ptr %38, align 8, !tbaa !100  ; 5 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by, %._crit_edge252
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ln = load ptr, ptr %38, align 8, !tbaa !100
  call void @free(ptr noundef %i.ln) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.lo = load ptr, ptr %37, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIiSaIiEED2Ev.exit168, label %bb.cn

bb.ca:                                            ; preds = %.lr.ph255, %bb.cb
  %.086253 = phi i64 [ 0, %.lr.ph255 ], [ %i.lt, %bb.cb ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %.086253
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !38
  %i.lr = sext i32 %i.lq to i64
  %i.ls = icmp eq i64 %i.ca, %i.lr
  br i1 %i.ls, label %._crit_edge256, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lt = add nuw i64 %.086253, 1
  %exitcond274.not = icmp eq i64 %.086253, %i.ca
  br i1 %exitcond274.not, label %._crit_edge256, label %bb.ca, !llvm.loop !318

._crit_edge256:                                   ; preds = %bb.cb, %bb.ca
  %.087.ph = phi i64 [ %i.gx, %bb.cb ], [ %.086253, %bb.ca ]
  br i1 %.not.i.i.i.i, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %._crit_edge256
  %i.lu = add i64 %.087.ph, 1                     ; 3 uses
  %i.lv = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.lw = icmp eq i64 %i.bz, 4
  br i1 %i.lw, label %.epil.preheader359, label %.lr.ph261.new

.lr.ph261.new:                                    ; preds = %.lr.ph261
  %unroll_iter363 = and i64 %i.ca, 1152921504606846974
  br label %bb.cm

._crit_edge262.loopexit.unr-lcssa:                ; preds = %bb.cm
  %i.lx = and i64 %i.bz, 4
  %lcmp.mod361.not = icmp eq i64 %i.lx, 0
  br i1 %lcmp.mod361.not, label %._crit_edge262, label %.epil.preheader359

.epil.preheader359:                               ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261
  %.0259.epil.init = phi i64 [ 0, %.lr.ph261 ], [ %i.oh, %._crit_edge262.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod362 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod362)
  %i.ly = add i64 %i.lu, %.0259.epil.init
  %i.lz = urem i64 %i.ly, %i.cb
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !38
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !31
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %.0259.epil.init
  %i.mg = trunc i64 %i.me to i32
  store i32 %i.mg, ptr %i.mf, align 4, !tbaa !38
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.epil.preheader359, %._crit_edge262.loopexit.unr-lcssa, %._crit_edge256
  call void @free(ptr noundef nonnull %i.ll) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.mh = load ptr, ptr %37, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge262
  %i.mi = load ptr, ptr %i.jj, align 8, !tbaa !96
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mh to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.ml) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge262, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %i.mm = load ptr, ptr %36, align 8, !tbaa !39
  call void @free(ptr noundef %i.mm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %i.mn = load ptr, ptr %32, align 8, !tbaa !269  ; 3 uses
  %i.mo = load i64, ptr %i.cx, align 8, !tbaa !274
  %i.mp = load i64, ptr %i.cy, align 8, !tbaa !271
  %i.mq = mul nsw i64 %i.mp, %i.mo                ; 2 uses
  %i.mr = icmp ne ptr %i.mn, null
  %i.ms = icmp ne i64 %i.mq, 0
  %or.cond.i.i.i.i165 = and i1 %i.mr, %i.ms
  br i1 %or.cond.i.i.i.i165, label %.preheader.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit

.preheader.i.i.i.i:                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.mt, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.mq, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.mt = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %i.mt ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !20 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.preheader.i.i.i.i
  %i.mw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.mw, 0
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 3 uses
  %i.my = load atomic i32, ptr %i.mx monotonic, align 4 ; 2 uses
  %i.mz = icmp eq i32 %i.my, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.mz, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.na = load ptr, ptr %i.mv, align 8, !tbaa !24
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(12) %i.mv) #22, !inline_history !319
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.nd = add nsw i32 %i.my, -1
  store atomic i32 %i.nd, ptr %i.mx monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cd
  br i1 %i.mz, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ne = atomicrmw sub ptr %i.mx, i32 1 release, align 4
  %i.nf = icmp eq i32 %i.ne, 1
  br i1 %i.nf, label %bb.cj, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  fence acquire
  %i.ng = load ptr, ptr %i.mu, align 8, !tbaa !20 ; 3 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ni = load ptr, ptr %i.ng, align 8, !tbaa !24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(12) %i.ng) #22, !inline_history !319
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.cg, %bb.cf, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.mt, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.mn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %.not.i.i.i166 = icmp eq ptr %.sroa.0204.0327338, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit
  %i.nl = ptrtoint ptr %.sroa.15.0324340 to i64
  %i.nm = ptrtoint ptr %.sroa.0204.0327338 to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0327338, i64 noundef %i.nn) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  ret void

bb.cm:                                            ; preds = %bb.cm, %.lr.ph261.new
  %.0259 = phi i64 [ 0, %.lr.ph261.new ], [ %i.oh, %bb.cm ] ; 4 uses
  %niter364 = phi i64 [ 0, %.lr.ph261.new ], [ %niter364.next.1, %bb.cm ]
  %i.no = add i64 %i.lu, %.0259
  %i.np = urem i64 %i.no, %i.cb
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !38
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !31
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %.0259
  %i.nw = trunc i64 %i.nu to i32
  store i32 %i.nw, ptr %i.nv, align 4, !tbaa !38
  %i.nx = or disjoint i64 %.0259, 1               ; 2 uses
  %i.ny = add i64 %i.lu, %i.nx
  %i.nz = urem i64 %i.ny, %i.cb
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !38
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.oc
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !31
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.nx
  %i.og = trunc i64 %i.oe to i32
  store i32 %i.og, ptr %i.of, align 4, !tbaa !38
  %i.oh = add nuw i64 %.0259, 2                   ; 2 uses
  %niter364.next.1 = add i64 %niter364, 2         ; 2 uses
  %niter364.ncmp.1 = icmp eq i64 %niter364.next.1, %unroll_iter363
  br i1 %niter364.ncmp.1, label %._crit_edge262.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !320

bb.cn:                                            ; preds = %bb.bz
  %i.oi = load ptr, ptr %i.jj, align 8, !tbaa !96
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.lo to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.ol) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

_ZNSt6vectorIiSaIiEED2Ev.exit168:                 ; preds = %bb.cn, %bb.bz, %bb.bj
  %.pn119.pn = phi { ptr, i32 } [ %i.jo, %bb.bj ], [ %i.lm, %bb.bz ], [ %i.lm, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.body154

.body154:                                         ; preds = %bb.be, %_ZNSt6vectorIiSaIiEED2Ev.exit168
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit168 ], [ %i.hq, %bb.be ]
  %i.om = load ptr, ptr %36, align 8, !tbaa !39
  call void @free(ptr noundef %i.om) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.co

bb.co:                                            ; preds = %.body154, %bb.av, %bb.bg, %bb.bh, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.db, %bb.an ], [ %i.hx, %bb.bh ], [ %.pn122.pn, %.body154 ], [ %i.hw, %bb.bg ], [ %i.er, %bb.av ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %.not.i.i.i169 = icmp eq ptr %.sroa.0204.0327338, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorImSaImEED2Ev.exit170, label %bb.cp

bb.cp:                                            ; preds = %.thread, %bb.co
  %.pn125.pn.pn.pn347 = phi { ptr, i32 } [ %i.dq, %.thread ], [ %.pn125.pn.pn, %bb.co ]
  %.sroa.0204.0328346 = phi ptr [ %i.ce, %.thread ], [ %.sroa.0204.0327338, %bb.co ] ; 2 uses
  %.sroa.15.0324339345 = phi ptr [ %i.cf, %.thread ], [ %.sroa.15.0324340, %bb.co ]
  %i.on = ptrtoint ptr %.sroa.15.0324339345 to i64
  %i.oo = ptrtoint ptr %.sroa.0204.0328346 to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0328346, i64 noundef %i.op) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit170

_ZNSt6vectorImSaImEED2Ev.exit170:                 ; preds = %bb.co, %bb.cp, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn347, %bb.cp ], [ %.pn125.pn.pn, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.cq:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %8 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %9 = alloca %"class.CGAL::Static_filtered_predicate.683", align 1 ; 5 uses
  %10 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %11 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %12 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %13 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %14 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %15 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %16 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %17 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %18 = alloca %"struct.std::pair.610", align 8   ; 8 uses
  %19 = alloca %"struct.std::pair.437", align 8   ; 7 uses
  %20 = alloca %"class.CGAL::Static_filtered_predicate.646", align 1 ; 5 uses
  %21 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %22 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %23 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %24 = alloca %"class.CGAL::Static_filtered_predicate.606", align 1 ; 4 uses
  %25 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %26 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %27 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %28 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %29 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %30 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %31 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %32 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %33 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %34 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %35 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %36 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %37 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %38 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %39 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %40 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %41 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %42 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %43 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %44 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %45 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %46 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %47 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %48 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %49 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %50 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %51 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %52 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %53 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %54 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %55 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %56 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %57 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %58 = alloca %"class.CGAL::Plane_3", align 8    ; 11 uses
  %59 = alloca %"class.std::vector.93", align 8   ; 14 uses
  %60 = alloca %"class.std::vector", align 8      ; 17 uses
  %61 = alloca %"class.std::vector", align 8      ; 17 uses
  %62 = alloca %"class.std::vector", align 8      ; 21 uses
  %63 = alloca %"class.std::vector", align 8      ; 21 uses
  %64 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %65 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %66 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %67 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %68 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %69 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 10 uses
  switch i64 %i.g, label %bb.bt [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %5, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.j) #22
  store ptr null, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !98
  br label %bb.kt

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98
  %.not.i.i269 = icmp eq i64 %i.l, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  br i1 %.not.i.i269, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %.pre) #22
  %i.m = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #37 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i.i:                                  ; preds = %bb.e
  store ptr %i.m, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270: ; preds = %bb.d, %.sink.split.i.i
  %i.p = phi ptr [ %.pre, %bb.d ], [ %i.m, %.sink.split.i.i ]
  store i64 1, ptr %i.k, align 8, !tbaa !98
  store i32 0, ptr %i.p, align 4, !tbaa !38
  br label %bb.kt

bb.g:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.c, align 4, !tbaa !38
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr [4 x i8], ptr %i.s, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4       ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 3 uses
  %i.y = trunc i64 %2 to i32                      ; 6 uses
  %.not.i = icmp eq i32 %i.x, %i.y
  %i.z = trunc i64 %3 to i32                      ; 6 uses
  %.not10.i = icmp eq i32 %i.x, %i.z
  %or.cond = or i1 %.not.i, %.not10.i
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = sext i32 %i.x to i64
  br label %_ZZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEbENKUlmE_clEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !41  ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.w, i64 %i.ab
end_hunk_6
begin_hunk_7_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELin1ELi1ELi1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a

._crit_edge248:                                   ; preds = %.epil.preheader, %._crit_edge248.loopexit.unr-lcssa, %.._crit_edge248_crit_edge
  %.idx.pre-phi = phi i64 [ %.pre285, %.._crit_edge248_crit_edge ], [ %.idx238, %._crit_edge248.loopexit.unr-lcssa ], [ %.idx238, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre282, %.._crit_edge248_crit_edge ], [ %i.hu, %._crit_edge248.loopexit.unr-lcssa ], [ %i.hu, %.epil.preheader ]
  %i.jc = getelementptr i8, ptr %i.hn, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.jc, align 4, !tbaa !38
  %i.jd = getelementptr [4 x i8], ptr %i.jc, i64 %i.cb
  store i32 %.pre283, ptr %i.jd, align 4, !tbaa !38
  %i.je = getelementptr i8, ptr %i.jc, i64 %.idx.pre-phi
  %i.jf = trunc i64 %i.ca to i32
  store i32 %i.jf, ptr %i.je, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.jg = shl nuw nsw i64 %i.cb, 2
  %i.jh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jg) #36
          to label %.noexc160 unwind label %bb.bj ; 7 uses

.noexc160:                                        ; preds = %._crit_edge248
  store ptr %i.jh, ptr %37, align 8, !tbaa !30
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.cb
  %i.jj = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !96
  store i32 0, ptr %i.jh, align 4, !tbaa !38
  %i.jk = getelementptr i8, ptr %i.jh, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph251, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc160
  call void @llvm.memset.p0.i64(ptr align 4 %i.jk, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 %i.bz
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.noexc160, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i158 = phi ptr [ %i.jl, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.jk, %.noexc160 ]
  %i.jm = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.0.i.i.i.i.i158, ptr %i.jm, align 8, !tbaa !27
  %i.jn = icmp eq ptr %i.bv, %i.bw
  br i1 %i.jn, label %.epil.preheader353, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter357 = and i64 %i.cb, 2305843009213693950
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge248
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

bb.bk:                                            ; preds = %bb.bs, %.lr.ph251.new
  %.088249 = phi i64 [ 0, %.lr.ph251.new ], [ %i.kq, %bb.bs ] ; 6 uses
  %niter358 = phi i64 [ 0, %.lr.ph251.new ], [ %niter358.next.1, %bb.bs ]
  %i.jp = getelementptr [4 x i8], ptr %i.hn, i64 %.088249 ; 2 uses
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !38
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp eq i64 %i.cb, %i.jr
  br i1 %i.js, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jt = getelementptr [4 x i8], ptr %i.jp, i64 %i.cb
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !38
  %i.jv = sext i32 %i.ju to i64
  %i.jw = icmp eq i64 %i.gx, %i.jv
  br i1 %i.jw, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jx = trunc i64 %.088249 to i32
  %i.jy = xor i32 %i.jx, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.jz = trunc i64 %.088249 to i32
  %i.ka = or disjoint i32 %i.jz, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sink348 = phi i32 [ %i.jy, %bb.bm ], [ %i.ka, %bb.bn ]
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.088249
  store i32 %.sink348, ptr %i.kb, align 4, !tbaa !38
  %i.kc = or disjoint i64 %.088249, 1             ; 4 uses
  %i.kd = getelementptr [4 x i8], ptr %i.hn, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !38
  %i.kf = sext i32 %i.ke to i64
  %i.kg = icmp eq i64 %i.cb, %i.kf
  br i1 %i.kg, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kh = getelementptr [4 x i8], ptr %i.kd, i64 %i.cb
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !38
  %i.kj = sext i32 %i.ki to i64
  %i.kk = icmp eq i64 %i.gx, %i.kj
  br i1 %i.kk, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.kl = trunc i64 %i.kc to i32
  %i.km = add i32 %i.kl, 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.kn = trunc i64 %i.kc to i32
  %i.ko = xor i32 %i.kn, -1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink348.1 = phi i32 [ %i.ko, %bb.br ], [ %i.km, %bb.bq ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kc
  store i32 %.sink348.1, ptr %i.kp, align 4, !tbaa !38
  %i.kq = add nuw i64 %.088249, 2                 ; 2 uses
  %niter358.next.1 = add i64 %niter358, 2         ; 2 uses
  %niter358.ncmp.1 = icmp eq i64 %niter358.next.1, %unroll_iter357
  br i1 %niter358.ncmp.1, label %._crit_edge252.unr-lcssa, label %bb.bk, !llvm.loop !389

._crit_edge252.unr-lcssa:                         ; preds = %bb.bs
  %i.kr = and i64 %i.bz, 4
  %lcmp.mod355.not.not = icmp eq i64 %i.kr, 0
  br i1 %lcmp.mod355.not.not, label %.epil.preheader353, label %._crit_edge252

.epil.preheader353:                               ; preds = %._crit_edge252.unr-lcssa, %.lr.ph251
  %.088249.epil.init = phi i64 [ 0, %.lr.ph251 ], [ %i.kq, %._crit_edge252.unr-lcssa ] ; 4 uses
  %lcmp.mod356 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod356)
  %i.ks = getelementptr [4 x i8], ptr %i.hn, i64 %.088249.epil.init ; 2 uses
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !38
  %i.ku = sext i32 %i.kt to i64
  %i.kv = icmp eq i64 %i.cb, %i.ku
  br i1 %i.kv, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.epil.preheader353
  %i.kw = getelementptr [4 x i8], ptr %i.ks, i64 %i.cb
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !38
  %i.ky = sext i32 %i.kx to i64
  %i.kz = icmp eq i64 %i.gx, %i.ky
  br i1 %i.kz, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.epil.preheader353
  %i.la = trunc i64 %.088249.epil.init to i32
  %i.lb = add i32 %i.la, 1
  br label %._crit_edge252.epilog-lcssa

bb.bv:                                            ; preds = %bb.bt
  %i.lc = trunc i64 %.088249.epil.init to i32
  %i.ld = xor i32 %i.lc, -1
  br label %._crit_edge252.epilog-lcssa

._crit_edge252.epilog-lcssa:                      ; preds = %bb.bv, %bb.bu
  %.sink348.epil = phi i32 [ %i.ld, %bb.bv ], [ %i.lb, %bb.bu ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.088249.epil.init
  store i32 %.sink348.epil, ptr %i.le, align 4, !tbaa !38
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %._crit_edge252.unr-lcssa, %._crit_edge252.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %36, i64 noundef %i.cb, i64 noundef %i.gx, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, i1 noundef zeroext false)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %._crit_edge252
  %i.lf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !98
  %.not.i.i161 = icmp eq i64 %i.ca, %i.lg
  br i1 %.not.i.i161, label %.lr.ph255, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lh = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.lh) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bx
  %i.li = call noalias ptr @malloc(i64 noundef %i.bz) #37 ; 2 uses
  %i.lj = icmp eq ptr %i.li, null
  br i1 %i.lj, label %bb.by, label %.sink.split.i.i

bb.by:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.lk = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.lk, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.lk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc163 unwind label %bb.bz

.noexc163:                                        ; preds = %bb.by
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bx
  %.sink.i.i = phi ptr [ %i.li, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bx ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.bw, %.sink.split.i.i
  store i64 %i.ca, ptr %i.lf, align 8, !tbaa !98
  %i.ll = load ptr, ptr %38, align 8, !tbaa !100  ; 5 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by, %._crit_edge252
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ln = load ptr, ptr %38, align 8, !tbaa !100
  call void @free(ptr noundef %i.ln) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.lo = load ptr, ptr %37, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIiSaIiEED2Ev.exit168, label %bb.cn

bb.ca:                                            ; preds = %.lr.ph255, %bb.cb
  %.086253 = phi i64 [ 0, %.lr.ph255 ], [ %i.lt, %bb.cb ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %.086253
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !38
  %i.lr = sext i32 %i.lq to i64
  %i.ls = icmp eq i64 %i.ca, %i.lr
  br i1 %i.ls, label %._crit_edge256, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lt = add nuw i64 %.086253, 1
  %exitcond274.not = icmp eq i64 %.086253, %i.ca
  br i1 %exitcond274.not, label %._crit_edge256, label %bb.ca, !llvm.loop !390

._crit_edge256:                                   ; preds = %bb.cb, %bb.ca
  %.087.ph = phi i64 [ %i.gx, %bb.cb ], [ %.086253, %bb.ca ]
  br i1 %.not.i.i.i.i, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %._crit_edge256
  %i.lu = add i64 %.087.ph, 1                     ; 3 uses
  %i.lv = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.lw = icmp eq i64 %i.bz, 4
  br i1 %i.lw, label %.epil.preheader359, label %.lr.ph261.new

.lr.ph261.new:                                    ; preds = %.lr.ph261
  %unroll_iter363 = and i64 %i.ca, 1152921504606846974
  br label %bb.cm

._crit_edge262.loopexit.unr-lcssa:                ; preds = %bb.cm
  %i.lx = and i64 %i.bz, 4
  %lcmp.mod361.not = icmp eq i64 %i.lx, 0
  br i1 %lcmp.mod361.not, label %._crit_edge262, label %.epil.preheader359

.epil.preheader359:                               ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261
  %.0259.epil.init = phi i64 [ 0, %.lr.ph261 ], [ %i.oh, %._crit_edge262.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod362 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod362)
  %i.ly = add i64 %i.lu, %.0259.epil.init
  %i.lz = urem i64 %i.ly, %i.cb
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.lz
  %i.mb = load i32, ptr %i.ma, align 4, !tbaa !38
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.mc
  %i.me = load i64, ptr %i.md, align 8, !tbaa !31
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %.0259.epil.init
  %i.mg = trunc i64 %i.me to i32
  store i32 %i.mg, ptr %i.mf, align 4, !tbaa !38
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.epil.preheader359, %._crit_edge262.loopexit.unr-lcssa, %._crit_edge256
  call void @free(ptr noundef nonnull %i.ll) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.mh = load ptr, ptr %37, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge262
  %i.mi = load ptr, ptr %i.jj, align 8, !tbaa !96
  %i.mj = ptrtoint ptr %i.mi to i64
  %i.mk = ptrtoint ptr %i.mh to i64
  %i.ml = sub i64 %i.mj, %i.mk
  call void @_ZdlPvm(ptr noundef nonnull %i.mh, i64 noundef %i.ml) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge262, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %i.mm = load ptr, ptr %36, align 8, !tbaa !39
  call void @free(ptr noundef %i.mm) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %i.mn = load ptr, ptr %32, align 8, !tbaa !269  ; 3 uses
  %i.mo = load i64, ptr %i.cx, align 8, !tbaa !274
  %i.mp = load i64, ptr %i.cy, align 8, !tbaa !271
  %i.mq = mul nsw i64 %i.mp, %i.mo                ; 2 uses
  %i.mr = icmp ne ptr %i.mn, null
  %i.ms = icmp ne i64 %i.mq, 0
  %or.cond.i.i.i.i165 = and i1 %i.mr, %i.ms
  br i1 %or.cond.i.i.i.i165, label %.preheader.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit

.preheader.i.i.i.i:                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.mt, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.mq, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.mt = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.mu = getelementptr inbounds nuw [16 x i8], ptr %i.mn, i64 %i.mt ; 2 uses
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !20 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.preheader.i.i.i.i
  %i.mw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.mw, 0
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 3 uses
  %i.my = load atomic i32, ptr %i.mx monotonic, align 4 ; 2 uses
  %i.mz = icmp eq i32 %i.my, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.mz, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.na = load ptr, ptr %i.mv, align 8, !tbaa !24
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(12) %i.mv) #22, !inline_history !319
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.nd = add nsw i32 %i.my, -1
  store atomic i32 %i.nd, ptr %i.mx monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cd
  br i1 %i.mz, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ne = atomicrmw sub ptr %i.mx, i32 1 release, align 4
  %i.nf = icmp eq i32 %i.ne, 1
  br i1 %i.nf, label %bb.cj, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  fence acquire
  %i.ng = load ptr, ptr %i.mu, align 8, !tbaa !20 ; 3 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ni = load ptr, ptr %i.ng, align 8, !tbaa !24
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.nk = load ptr, ptr %i.nj, align 8
  call void %i.nk(ptr noundef nonnull align 8 dereferenceable(12) %i.ng) #22, !inline_history !319
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.cg, %bb.cf, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.mt, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.mn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %.not.i.i.i166 = icmp eq ptr %.sroa.0204.0327338, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit
  %i.nl = ptrtoint ptr %.sroa.15.0324340 to i64
  %i.nm = ptrtoint ptr %.sroa.0204.0327338 to i64
  %i.nn = sub i64 %i.nl, %i.nm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0327338, i64 noundef %i.nn) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  ret void

bb.cm:                                            ; preds = %bb.cm, %.lr.ph261.new
  %.0259 = phi i64 [ 0, %.lr.ph261.new ], [ %i.oh, %bb.cm ] ; 4 uses
  %niter364 = phi i64 [ 0, %.lr.ph261.new ], [ %niter364.next.1, %bb.cm ]
  %i.no = add i64 %i.lu, %.0259
  %i.np = urem i64 %i.no, %i.cb
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !38
  %i.ns = sext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.ns
  %i.nu = load i64, ptr %i.nt, align 8, !tbaa !31
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %.0259
  %i.nw = trunc i64 %i.nu to i32
  store i32 %i.nw, ptr %i.nv, align 4, !tbaa !38
  %i.nx = or disjoint i64 %.0259, 1               ; 2 uses
  %i.ny = add i64 %i.lu, %i.nx
  %i.nz = urem i64 %i.ny, %i.cb
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %i.ll, i64 %i.nz
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !38
  %i.oc = sext i32 %i.ob to i64
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.oc
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !31
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.lv, i64 %i.nx
  %i.og = trunc i64 %i.oe to i32
  store i32 %i.og, ptr %i.of, align 4, !tbaa !38
  %i.oh = add nuw i64 %.0259, 2                   ; 2 uses
  %niter364.next.1 = add i64 %niter364, 2         ; 2 uses
  %niter364.ncmp.1 = icmp eq i64 %niter364.next.1, %unroll_iter363
  br i1 %niter364.ncmp.1, label %._crit_edge262.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !391

bb.cn:                                            ; preds = %bb.bz
  %i.oi = load ptr, ptr %i.jj, align 8, !tbaa !96
  %i.oj = ptrtoint ptr %i.oi to i64
  %i.ok = ptrtoint ptr %i.lo to i64
  %i.ol = sub i64 %i.oj, %i.ok
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.ol) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

_ZNSt6vectorIiSaIiEED2Ev.exit168:                 ; preds = %bb.cn, %bb.bz, %bb.bj
  %.pn119.pn = phi { ptr, i32 } [ %i.jo, %bb.bj ], [ %i.lm, %bb.bz ], [ %i.lm, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.body154

.body154:                                         ; preds = %bb.be, %_ZNSt6vectorIiSaIiEED2Ev.exit168
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit168 ], [ %i.hq, %bb.be ]
  %i.om = load ptr, ptr %36, align 8, !tbaa !39
  call void @free(ptr noundef %i.om) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.co

bb.co:                                            ; preds = %.body154, %bb.av, %bb.bg, %bb.bh, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.db, %bb.an ], [ %i.hx, %bb.bh ], [ %.pn122.pn, %.body154 ], [ %i.hw, %bb.bg ], [ %i.er, %bb.av ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %.not.i.i.i169 = icmp eq ptr %.sroa.0204.0327338, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorImSaImEED2Ev.exit170, label %bb.cp

bb.cp:                                            ; preds = %.thread, %bb.co
  %.pn125.pn.pn.pn347 = phi { ptr, i32 } [ %i.dq, %.thread ], [ %.pn125.pn.pn, %bb.co ]
  %.sroa.0204.0328346 = phi ptr [ %i.ce, %.thread ], [ %.sroa.0204.0327338, %bb.co ] ; 2 uses
  %.sroa.15.0324339345 = phi ptr [ %i.cf, %.thread ], [ %.sroa.15.0324340, %bb.co ]
  %i.on = ptrtoint ptr %.sroa.15.0324339345 to i64
  %i.oo = ptrtoint ptr %.sroa.0204.0328346 to i64
  %i.op = sub i64 %i.on, %i.oo
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0328346, i64 noundef %i.op) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit170

_ZNSt6vectorImSaImEED2Ev.exit170:                 ; preds = %bb.co, %bb.cp, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn347, %bb.cp ], [ %.pn125.pn.pn, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.cq:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.Eigen::internal::evaluator.729", align 8 ; 5 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.734", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.739", align 8 ; 7 uses
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.729", align 8 ; 5 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.734", align 8 ; 5 uses
  %13 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.739", align 8 ; 7 uses
  %14 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %15 = alloca %"struct.Eigen::internal::evaluator.729", align 8 ; 5 uses
  %16 = alloca %"struct.Eigen::internal::evaluator.734", align 8 ; 5 uses
  %17 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.739", align 8 ; 7 uses
  %18 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %19 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 3 uses
  %20 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %21 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %22 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %23 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %24 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %25 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %26 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %27 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %28 = alloca %class.anon.139, align 1           ; 5 uses
  %29 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %30 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %31 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %32 = alloca %"class.Eigen::Matrix.112", align 8 ; 17 uses
  %33 = alloca %"class.Eigen::Block.124", align 8 ; 10 uses
  %34 = alloca %"class.Eigen::Block.124", align 8 ; 10 uses
  %35 = alloca %"class.Eigen::Block.124", align 8 ; 10 uses
  %36 = alloca %"class.Eigen::Matrix.57", align 8 ; 10 uses
  %37 = alloca %"class.std::vector", align 8      ; 9 uses
  %38 = alloca %"class.Eigen::Matrix.60", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !269
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !271
  %i.d = mul nsw i64 %i.c, %2
  %i.e = getelementptr [16 x i8], ptr %i.a, i64 %i.d ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = getelementptr i8, ptr %i.e, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %29, ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 1 dereferenceable(1) %27, ptr noundef nonnull align 8 dereferenceable(9) %i.e, ptr noundef nonnull align 8 dereferenceable(9) %i.f, ptr noundef nonnull align 8 dereferenceable(9) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.h = load ptr, ptr %0, align 8, !tbaa !269
  %i.i = load i64, ptr %i.b, align 8, !tbaa !271
  %i.j = mul nsw i64 %i.i, %3
  %i.k = getelementptr [16 x i8], ptr %i.h, i64 %i.j ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16
  %i.m = getelementptr i8, ptr %i.k, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %23, ptr noundef nonnull align 1 dereferenceable(1) %24, ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 8 dereferenceable(9) %i.k, ptr noundef nonnull align 8 dereferenceable(9) %i.l, ptr noundef nonnull align 8 dereferenceable(9) %i.m)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = load ptr, ptr %23, align 8, !tbaa !20
  store ptr %i.n, ptr %30, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  %i.o = getelementptr i8, ptr %5, i64 16
  %i.p = getelementptr i8, ptr %5, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %20, ptr noundef nonnull align 1 dereferenceable(1) %21, ptr noundef nonnull align 1 dereferenceable(1) %22, ptr noundef nonnull align 8 dereferenceable(9) %5, ptr noundef nonnull align 8 dereferenceable(9) %i.o, ptr noundef nonnull align 8 dereferenceable(9) %i.p)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %20, align 8, !tbaa !20
  store ptr %i.q, ptr %31, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.r = invoke noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates11Collinear_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_3ISP_EES18_S18_EEbRKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %19, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br i1 %i.r, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.s = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull @.str.22)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.cq unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.h:                                             ; preds = %bb.b
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.i:                                             ; preds = %bb.c, %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.j:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.s) #22
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %31, align 8, !tbaa !20    ; 4 uses
  %.not.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 3 uses
  %i.aa = load atomic i32, ptr %i.z monotonic, align 4 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load ptr, ptr %i.x, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  call void %i.ae(ptr noundef nonnull align 8 dereferenceable(12) %i.x) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.af = add nsw i32 %i.aa, -1
  store atomic i32 %i.af, ptr %i.z monotonic, align 4
end_hunk_7
begin_hunk_8_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a

._crit_edge248:                                   ; preds = %.epil.preheader, %._crit_edge248.loopexit.unr-lcssa, %.._crit_edge248_crit_edge
  %.idx.pre-phi = phi i64 [ %.pre285, %.._crit_edge248_crit_edge ], [ %.idx238, %._crit_edge248.loopexit.unr-lcssa ], [ %.idx238, %.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre282, %.._crit_edge248_crit_edge ], [ %i.hs, %._crit_edge248.loopexit.unr-lcssa ], [ %i.hs, %.epil.preheader ]
  %i.ja = getelementptr i8, ptr %i.hl, i64 %i.by  ; 3 uses
  store i32 %.pre-phi, ptr %i.ja, align 4, !tbaa !38
  %i.jb = getelementptr [4 x i8], ptr %i.ja, i64 %i.ca
  store i32 %.pre283, ptr %i.jb, align 4, !tbaa !38
  %i.jc = getelementptr i8, ptr %i.ja, i64 %.idx.pre-phi
  %i.jd = trunc i64 %i.bz to i32
  store i32 %i.jd, ptr %i.jc, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  %i.je = shl nuw nsw i64 %i.ca, 2
  %i.jf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.je) #36
          to label %.noexc160 unwind label %bb.bj ; 7 uses

.noexc160:                                        ; preds = %._crit_edge248
  store ptr %i.jf, ptr %37, align 8, !tbaa !30
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.ca
  %i.jh = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 3 uses
  store ptr %i.jg, ptr %i.jh, align 8, !tbaa !96
  store i32 0, ptr %i.jf, align 4, !tbaa !38
  %i.ji = getelementptr i8, ptr %i.jf, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph251, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc160
  call void @llvm.memset.p0.i64(ptr align 4 %i.ji, i8 0, i64 %i.by, i1 false), !tbaa !38
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %i.by
  br label %.lr.ph251

.lr.ph251:                                        ; preds = %.noexc160, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i158 = phi ptr [ %i.jj, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ji, %.noexc160 ]
  %i.jk = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr %.0.i.i.i.i.i158, ptr %i.jk, align 8, !tbaa !27
  %i.jl = icmp eq ptr %i.bu, %i.bv
  br i1 %i.jl, label %.epil.preheader353, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter357 = and i64 %i.ca, 2305843009213693950
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge248
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

bb.bk:                                            ; preds = %bb.bs, %.lr.ph251.new
  %.088249 = phi i64 [ 0, %.lr.ph251.new ], [ %i.ko, %bb.bs ] ; 6 uses
  %niter358 = phi i64 [ 0, %.lr.ph251.new ], [ %niter358.next.1, %bb.bs ]
  %i.jn = getelementptr [4 x i8], ptr %i.hl, i64 %.088249 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !38
  %i.jp = sext i32 %i.jo to i64
  %i.jq = icmp eq i64 %i.ca, %i.jp
  br i1 %i.jq, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.jr = getelementptr [4 x i8], ptr %i.jn, i64 %i.ca
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !38
  %i.jt = sext i32 %i.js to i64
  %i.ju = icmp eq i64 %i.gv, %i.jt
  br i1 %i.ju, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.jv = trunc i64 %.088249 to i32
  %i.jw = xor i32 %i.jv, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %i.jx = trunc i64 %.088249 to i32
  %i.jy = or disjoint i32 %i.jx, 1
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bm, %bb.bn
  %.sink348 = phi i32 [ %i.jw, %bb.bm ], [ %i.jy, %bb.bn ]
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.088249
  store i32 %.sink348, ptr %i.jz, align 4, !tbaa !38
  %i.ka = or disjoint i64 %.088249, 1             ; 4 uses
  %i.kb = getelementptr [4 x i8], ptr %i.hl, i64 %i.ka ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !38
  %i.kd = sext i32 %i.kc to i64
  %i.ke = icmp eq i64 %i.ca, %i.kd
  br i1 %i.ke, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.kf = getelementptr [4 x i8], ptr %i.kb, i64 %i.ca
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !38
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp eq i64 %i.gv, %i.kh
  br i1 %i.ki, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.kj = trunc i64 %i.ka to i32
  %i.kk = add i32 %i.kj, 1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.kl = trunc i64 %i.ka to i32
  %i.km = xor i32 %i.kl, -1
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.sink348.1 = phi i32 [ %i.km, %bb.br ], [ %i.kk, %bb.bq ]
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.ka
  store i32 %.sink348.1, ptr %i.kn, align 4, !tbaa !38
  %i.ko = add nuw i64 %.088249, 2                 ; 2 uses
  %niter358.next.1 = add i64 %niter358, 2         ; 2 uses
  %niter358.ncmp.1 = icmp eq i64 %niter358.next.1, %unroll_iter357
  br i1 %niter358.ncmp.1, label %._crit_edge252.unr-lcssa, label %bb.bk, !llvm.loop !419

._crit_edge252.unr-lcssa:                         ; preds = %bb.bs
  %i.kp = and i64 %i.by, 4
  %lcmp.mod355.not.not = icmp eq i64 %i.kp, 0
  br i1 %lcmp.mod355.not.not, label %.epil.preheader353, label %._crit_edge252

.epil.preheader353:                               ; preds = %._crit_edge252.unr-lcssa, %.lr.ph251
  %.088249.epil.init = phi i64 [ 0, %.lr.ph251 ], [ %i.ko, %._crit_edge252.unr-lcssa ] ; 4 uses
  %lcmp.mod356 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod356)
  %i.kq = getelementptr [4 x i8], ptr %i.hl, i64 %.088249.epil.init ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !38
  %i.ks = sext i32 %i.kr to i64
  %i.kt = icmp eq i64 %i.ca, %i.ks
  br i1 %i.kt, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.epil.preheader353
  %i.ku = getelementptr [4 x i8], ptr %i.kq, i64 %i.ca
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !38
  %i.kw = sext i32 %i.kv to i64
  %i.kx = icmp eq i64 %i.gv, %i.kw
  br i1 %i.kx, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.epil.preheader353
  %i.ky = trunc i64 %.088249.epil.init to i32
  %i.kz = add i32 %i.ky, 1
  br label %._crit_edge252.epilog-lcssa

bb.bv:                                            ; preds = %bb.bt
  %i.la = trunc i64 %.088249.epil.init to i32
  %i.lb = xor i32 %i.la, -1
  br label %._crit_edge252.epilog-lcssa

._crit_edge252.epilog-lcssa:                      ; preds = %bb.bv, %bb.bu
  %.sink348.epil = phi i32 [ %i.lb, %bb.bv ], [ %i.kz, %bb.bu ]
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %.088249.epil.init
  store i32 %.sink348.epil, ptr %i.lc, align 4, !tbaa !38
  br label %._crit_edge252

._crit_edge252:                                   ; preds = %._crit_edge252.unr-lcssa, %._crit_edge252.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %38, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %32, ptr noundef nonnull align 1 dereferenceable(1) %36, i64 noundef %i.ca, i64 noundef %i.gv, ptr noundef nonnull align 8 dereferenceable(24) %37, ptr noundef nonnull align 8 dereferenceable(16) %38, i1 noundef zeroext false)
          to label %bb.bw unwind label %bb.bz

bb.bw:                                            ; preds = %._crit_edge252
  %i.ld = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.le = load i64, ptr %i.ld, align 8, !tbaa !98
  %.not.i.i161 = icmp eq i64 %i.bz, %i.le
  br i1 %.not.i.i161, label %.lr.ph255, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.lf = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.lf) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bx
  %i.lg = call noalias ptr @malloc(i64 noundef %i.by) #37 ; 2 uses
  %i.lh = icmp eq ptr %i.lg, null
  br i1 %i.lh, label %bb.by, label %.sink.split.i.i

bb.by:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.li = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.li, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.li, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc163 unwind label %bb.bz

.noexc163:                                        ; preds = %bb.by
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bx
  %.sink.i.i = phi ptr [ %i.lg, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bx ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph255

.lr.ph255:                                        ; preds = %bb.bw, %.sink.split.i.i
  store i64 %i.bz, ptr %i.ld, align 8, !tbaa !98
  %i.lj = load ptr, ptr %38, align 8, !tbaa !100  ; 5 uses
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by, %._crit_edge252
  %i.lk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ll = load ptr, ptr %38, align 8, !tbaa !100
  call void @free(ptr noundef %i.ll) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.lm = load ptr, ptr %37, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i167 = icmp eq ptr %i.lm, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorIiSaIiEED2Ev.exit168, label %bb.cn

bb.ca:                                            ; preds = %.lr.ph255, %bb.cb
  %.086253 = phi i64 [ 0, %.lr.ph255 ], [ %i.lr, %bb.cb ] ; 4 uses
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %.086253
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !38
  %i.lp = sext i32 %i.lo to i64
  %i.lq = icmp eq i64 %i.bz, %i.lp
  br i1 %i.lq, label %._crit_edge256, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lr = add nuw i64 %.086253, 1
  %exitcond274.not = icmp eq i64 %.086253, %i.bz
  br i1 %exitcond274.not, label %._crit_edge256, label %bb.ca, !llvm.loop !420

._crit_edge256:                                   ; preds = %bb.cb, %bb.ca
  %.087.ph = phi i64 [ %i.gv, %bb.cb ], [ %.086253, %bb.ca ]
  br i1 %.not.i.i.i.i, label %._crit_edge262, label %.lr.ph261

.lr.ph261:                                        ; preds = %._crit_edge256
  %i.ls = add i64 %.087.ph, 1                     ; 3 uses
  %i.lt = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.lu = icmp eq i64 %i.by, 4
  br i1 %i.lu, label %.epil.preheader359, label %.lr.ph261.new

.lr.ph261.new:                                    ; preds = %.lr.ph261
  %unroll_iter363 = and i64 %i.bz, 1152921504606846974
  br label %bb.cm

._crit_edge262.loopexit.unr-lcssa:                ; preds = %bb.cm
  %i.lv = and i64 %i.by, 4
  %lcmp.mod361.not = icmp eq i64 %i.lv, 0
  br i1 %lcmp.mod361.not, label %._crit_edge262, label %.epil.preheader359

.epil.preheader359:                               ; preds = %._crit_edge262.loopexit.unr-lcssa, %.lr.ph261
  %.0259.epil.init = phi i64 [ 0, %.lr.ph261 ], [ %i.of, %._crit_edge262.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod362 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod362)
  %i.lw = add i64 %i.ls, %.0259.epil.init
  %i.lx = urem i64 %i.lw, %i.ca
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.lx
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !38
  %i.ma = sext i32 %i.lz to i64
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.ma
  %i.mc = load i64, ptr %i.mb, align 8, !tbaa !31
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %.0259.epil.init
  %i.me = trunc i64 %i.mc to i32
  store i32 %i.me, ptr %i.md, align 4, !tbaa !38
  br label %._crit_edge262

._crit_edge262:                                   ; preds = %.epil.preheader359, %._crit_edge262.loopexit.unr-lcssa, %._crit_edge256
  call void @free(ptr noundef nonnull %i.lj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.mf = load ptr, ptr %37, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.mf, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.cc

bb.cc:                                            ; preds = %._crit_edge262
  %i.mg = load ptr, ptr %i.jh, align 8, !tbaa !96
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = ptrtoint ptr %i.mf to i64
  %i.mj = sub i64 %i.mh, %i.mi
  call void @_ZdlPvm(ptr noundef nonnull %i.mf, i64 noundef %i.mj) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge262, %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %i.mk = load ptr, ptr %36, align 8, !tbaa !39
  call void @free(ptr noundef %i.mk) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %i.ml = load ptr, ptr %32, align 8, !tbaa !269  ; 3 uses
  %i.mm = load i64, ptr %i.cw, align 8, !tbaa !274
  %i.mn = load i64, ptr %i.cx, align 8, !tbaa !271
  %i.mo = mul nsw i64 %i.mn, %i.mm                ; 2 uses
  %i.mp = icmp ne ptr %i.ml, null
  %i.mq = icmp ne i64 %i.mo, 0
  %or.cond.i.i.i.i165 = and i1 %i.mp, %i.mq
  br i1 %or.cond.i.i.i.i165, label %.preheader.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit

.preheader.i.i.i.i:                               ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i
  %.0.i.i.i.i = phi i64 [ %i.mr, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.mo, %_ZNSt6vectorIiSaIiEED2Ev.exit ]
  %i.mr = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.ms = getelementptr inbounds nuw [16 x i8], ptr %i.ml, i64 %i.mr ; 2 uses
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !20 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mt, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.preheader.i.i.i.i
  %i.mu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.mu, 0
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 3 uses
  %i.mw = load atomic i32, ptr %i.mv monotonic, align 4 ; 2 uses
  %i.mx = icmp eq i32 %i.mw, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.ch, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.mx, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.my = load ptr, ptr %i.mt, align 8, !tbaa !24
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(12) %i.mt) #22, !inline_history !319
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cg:                                            ; preds = %bb.ce
  %i.nb = add nsw i32 %i.mw, -1
  store atomic i32 %i.nb, ptr %i.mv monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cd
  br i1 %i.mx, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nc = atomicrmw sub ptr %i.mv, i32 1 release, align 4
  %i.nd = icmp eq i32 %i.nc, 1
  br i1 %i.nd, label %bb.cj, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  fence acquire
  %i.ne = load ptr, ptr %i.ms, align 8, !tbaa !20 ; 3 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ng = load ptr, ptr %i.ne, align 8, !tbaa !24
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(12) %i.ne) #22, !inline_history !319
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.ck, %bb.cj, %bb.ci, %bb.cg, %bb.cf, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.mr, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.ml) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %.not.i.i.i166 = icmp eq ptr %.sroa.0204.0327338, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit
  %i.nj = ptrtoint ptr %.sroa.15.0324340 to i64
  %i.nk = ptrtoint ptr %.sroa.0204.0327338 to i64
  %i.nl = sub i64 %i.nj, %i.nk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0327338, i64 noundef %i.nl) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev.exit, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  ret void

bb.cm:                                            ; preds = %bb.cm, %.lr.ph261.new
  %.0259 = phi i64 [ 0, %.lr.ph261.new ], [ %i.of, %bb.cm ] ; 4 uses
  %niter364 = phi i64 [ 0, %.lr.ph261.new ], [ %niter364.next.1, %bb.cm ]
  %i.nm = add i64 %i.ls, %.0259
  %i.nn = urem i64 %i.nm, %i.ca
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.nn
  %i.np = load i32, ptr %i.no, align 4, !tbaa !38
  %i.nq = sext i32 %i.np to i64
  %i.nr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.nq
  %i.ns = load i64, ptr %i.nr, align 8, !tbaa !31
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %.0259
  %i.nu = trunc i64 %i.ns to i32
  store i32 %i.nu, ptr %i.nt, align 4, !tbaa !38
  %i.nv = or disjoint i64 %.0259, 1               ; 2 uses
  %i.nw = add i64 %i.ls, %i.nv
  %i.nx = urem i64 %i.nw, %i.ca
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.lj, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !38
  %i.oa = sext i32 %i.nz to i64
  %i.ob = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0204.0327338, i64 %i.oa
  %i.oc = load i64, ptr %i.ob, align 8, !tbaa !31
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.lt, i64 %i.nv
  %i.oe = trunc i64 %i.oc to i32
  store i32 %i.oe, ptr %i.od, align 4, !tbaa !38
  %i.of = add nuw i64 %.0259, 2                   ; 2 uses
  %niter364.next.1 = add i64 %niter364, 2         ; 2 uses
  %niter364.ncmp.1 = icmp eq i64 %niter364.next.1, %unroll_iter363
  br i1 %niter364.ncmp.1, label %._crit_edge262.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !421

bb.cn:                                            ; preds = %bb.bz
  %i.og = load ptr, ptr %i.jh, align 8, !tbaa !96
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = ptrtoint ptr %i.lm to i64
  %i.oj = sub i64 %i.oh, %i.oi
  call void @_ZdlPvm(ptr noundef nonnull %i.lm, i64 noundef %i.oj) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit168

_ZNSt6vectorIiSaIiEED2Ev.exit168:                 ; preds = %bb.cn, %bb.bz, %bb.bj
  %.pn119.pn = phi { ptr, i32 } [ %i.jm, %bb.bj ], [ %i.lk, %bb.bz ], [ %i.lk, %bb.cn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %.body154

.body154:                                         ; preds = %bb.be, %_ZNSt6vectorIiSaIiEED2Ev.exit168
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit168 ], [ %i.ho, %bb.be ]
  %i.ok = load ptr, ptr %36, align 8, !tbaa !39
  call void @free(ptr noundef %i.ok) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  br label %bb.co

bb.co:                                            ; preds = %.body154, %bb.av, %bb.bg, %bb.bh, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.da, %bb.an ], [ %i.hv, %bb.bh ], [ %.pn122.pn, %.body154 ], [ %i.hu, %bb.bg ], [ %i.eq, %bb.av ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %32) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  %.not.i.i.i169 = icmp eq ptr %.sroa.0204.0327338, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorImSaImEED2Ev.exit170, label %bb.cp

bb.cp:                                            ; preds = %.thread, %bb.co
  %.pn125.pn.pn.pn347 = phi { ptr, i32 } [ %i.dp, %.thread ], [ %.pn125.pn.pn, %bb.co ]
  %.sroa.0204.0328346 = phi ptr [ %i.cd, %.thread ], [ %.sroa.0204.0327338, %bb.co ] ; 2 uses
  %.sroa.15.0324339345 = phi ptr [ %i.ce, %.thread ], [ %.sroa.15.0324340, %bb.co ]
  %i.ol = ptrtoint ptr %.sroa.15.0324339345 to i64
  %i.om = ptrtoint ptr %.sroa.0204.0328346 to i64
  %i.on = sub i64 %i.ol, %i.om
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0204.0328346, i64 noundef %i.on) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit170

_ZNSt6vectorImSaImEED2Ev.exit170:                 ; preds = %bb.co, %bb.cp, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn347, %bb.cp ], [ %.pn125.pn.pn, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.cq:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.Eigen::internal::evaluator.758", align 8 ; 5 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.766", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.774", align 8 ; 7 uses
  %10 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %11 = alloca %"struct.Eigen::internal::evaluator.758", align 8 ; 5 uses
  %12 = alloca %"struct.Eigen::internal::evaluator.766", align 8 ; 5 uses
  %13 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.774", align 8 ; 7 uses
  %14 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %15 = alloca %"struct.Eigen::internal::evaluator.749", align 8 ; 5 uses
  %16 = alloca %"struct.Eigen::internal::evaluator.766", align 8 ; 5 uses
  %17 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.775", align 8 ; 7 uses
  %18 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %19 = alloca %"struct.Eigen::internal::evaluator.758", align 8 ; 5 uses
  %20 = alloca %"struct.Eigen::internal::evaluator.766", align 8 ; 5 uses
  %21 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.774", align 8 ; 7 uses
  %22 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %23 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 3 uses
  %24 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %25 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %26 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %27 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %28 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %29 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %30 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %31 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %32 = alloca %class.anon.148, align 1           ; 5 uses
  %33 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %34 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %35 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %36 = alloca %"class.Eigen::Matrix.164", align 8 ; 18 uses
  %37 = alloca %"class.Eigen::Block.176", align 8 ; 9 uses
  %38 = alloca %"class.Eigen::Block.176", align 8 ; 9 uses
  %39 = alloca %"class.Eigen::Block.176", align 8 ; 9 uses
  %40 = alloca %"class.Eigen::Block.176", align 8 ; 9 uses
  %41 = alloca %"class.Eigen::Matrix.189", align 8 ; 12 uses
  %42 = alloca %"class.std::vector", align 8      ; 9 uses
  %43 = alloca %"class.Eigen::Matrix.60", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !422
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.c = getelementptr [16 x i8], ptr %i.a, i64 %2 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !424  ; 2 uses
  %i.e = getelementptr [16 x i8], ptr %i.c, i64 %i.d
  %.idx = shl i64 %i.d, 5
  %i.f = getelementptr i8, ptr %i.c, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #22
  call void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %33, ptr noundef nonnull align 1 dereferenceable(1) %30, ptr noundef nonnull align 1 dereferenceable(1) %31, ptr noundef nonnull align 8 dereferenceable(9) %i.c, ptr noundef nonnull align 8 dereferenceable(9) %i.e, ptr noundef nonnull align 8 dereferenceable(9) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #22
  %i.g = load ptr, ptr %0, align 8, !tbaa !422
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %3 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !424  ; 2 uses
  %i.j = getelementptr [16 x i8], ptr %i.h, i64 %i.i
  %.idx218 = shl i64 %i.i, 5
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx218
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %27, ptr noundef nonnull align 1 dereferenceable(1) %28, ptr noundef nonnull align 1 dereferenceable(1) %29, ptr noundef nonnull align 8 dereferenceable(9) %i.h, ptr noundef nonnull align 8 dereferenceable(9) %i.j, ptr noundef nonnull align 8 dereferenceable(9) %i.k)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %27, align 8, !tbaa !20
  store ptr %i.l, ptr %34, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #22
  %i.m = load ptr, ptr %5, align 8, !tbaa !422    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !424  ; 2 uses
  %i.p = getelementptr [16 x i8], ptr %i.m, i64 %i.o
  %.idx219 = shl i64 %i.o, 5
  %i.q = getelementptr i8, ptr %i.m, i64 %.idx219
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagENS_13Lazy_exact_ntISL_EEST_ST_EEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %24, ptr noundef nonnull align 1 dereferenceable(1) %25, ptr noundef nonnull align 1 dereferenceable(1) %26, ptr noundef nonnull align 8 dereferenceable(9) %i.m, ptr noundef nonnull align 8 dereferenceable(9) %i.p, ptr noundef nonnull align 8 dereferenceable(9) %i.q)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %24, align 8, !tbaa !20
  store ptr %i.r, ptr %35, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.s = invoke noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates11Collinear_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_3ISP_EES18_S18_EEbRKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %23, ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(8) %35)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br i1 %i.s, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.22)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.co unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.h:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.i:                                             ; preds = %bb.c, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.j:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #22
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %35, align 8, !tbaa !20    ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
end_hunk_8
begin_hunk_9_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(12) %i.bp) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit142

_ZN4CGAL6HandleD2Ev.exit142:                      ; preds = %_ZN4CGAL6HandleD2Ev.exit139, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27 ; 3 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 11 uses
  %i.ca = ashr exact i64 %i.bz, 2                 ; 22 uses
  %i.cb = add nsw i64 %i.ca, 1                    ; 16 uses
  %i.cc = icmp ugt i64 %i.ca, 1152921504606846975
  br i1 %i.cc, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bw        ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEEST_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSW_IT0_EEmmRKS3_IiSaIiEERKNSW_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSX_SX_S11_.exit, label %.noexc143

.noexc143:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cd = shl nuw nsw i64 %i.bz, 1
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #36 ; 12 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ca ; 3 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !31
  %i.cg = getelementptr i8, ptr %i.ce, i64 8      ; 3 uses
  %i.ch = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ch, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cg, %.noexc143 ], [ %i.cj, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.ca, 4
  br i1 %min.iters.check, label %.lr.ph.preheader323, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ca, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x i64> %vec.ind, ptr %i.ck, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.cl, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !425

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader323

.lr.ph.preheader323:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110223.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.ce, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEEST_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSW_IT0_EEmmRKS3_IiSaIiEERKNSW_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSX_SX_S11_.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.cn = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.co = ptrtoint ptr %i.ce to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 3
  %i.cr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = shl nuw nsw i64 %i.cr, 1
  %i.ct = xor i64 %i.cs, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEESV_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSY_IT0_EEmmRKS3_IiSaIiEERKNSY_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSZ_SZ_S13_S1B_(ptr nonnull %i.ce, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.ct, ptr nonnull %32, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEESV_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSY_IT0_EEmmRKS3_IiSaIiEERKNSY_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSZ_SZ_S13_(ptr nonnull %i.ce, ptr %.0.i.i.i.i.i.ph, ptr nonnull %32, ptr nonnull %4)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEEST_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSW_IT0_EEmmRKS3_IiSaIiEERKNSW_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSX_SX_S11_.exit unwind label %.thread

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit168

.lr.ph:                                           ; preds = %.lr.ph.preheader323, %.lr.ph
  %.0110223 = phi i64 [ %i.cv, %.lr.ph ], [ %.0110223.ph, %.lr.ph.preheader323 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0110223
  store i64 %.0110223, ptr %i.cu, align 8, !tbaa !31
  %i.cv = add nuw i64 %.0110223, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %i.ca
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !426

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEEST_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSW_IT0_EEmmRKS3_IiSaIiEERKNSW_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSX_SX_S11_.exit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge, %.noexc145
  %.sroa.15.0296312 = phi ptr [ %i.cf, %.noexc145 ], [ %i.cf, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0186.0299310 = phi ptr [ %i.ce, %.noexc145 ], [ %i.ce, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  %i.cw = add nuw nsw i64 %i.ca, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %36, i64 noundef %i.cw, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.an

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEEST_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSW_IT0_EEmmRKS3_IiSaIiEERKNSW_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSX_SX_S11_.exit
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %.lr.ph225

.lr.ph225:                                        ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.cx = trunc i64 %2 to i32                     ; 3 uses
  %i.cy = trunc i64 %3 to i32                     ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.dc = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.dd = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.de = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.dh = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %21, i64 24
  br label %bb.ao

bb.an:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEEST_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSW_IT0_EEmmRKS3_IiSaIiEERKNSW_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSX_SX_S11_.exit
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.thread:                                          ; preds = %bb.aj, %.noexc145
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ao:                                            ; preds = %.lr.ph225, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %.091224 = phi i64 [ 0, %.lr.ph225 ], [ %i.ej, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %.091224
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !31
  %i.do = load ptr, ptr %4, align 8, !tbaa !30
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %i.dn
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !38
  %i.dr = call i32 @llvm.abs.i32(i32 %i.dq, i1 true)
  %i.ds = load ptr, ptr %1, align 8, !tbaa !427
  %i.dt = zext nneg i32 %i.dr to i64
  %i.du = getelementptr [4 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 -4     ; 3 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.dw, %i.cx
  %.not10.i = icmp eq i32 %i.dw, %i.cy
  %or.cond = or i1 %.not.i, %.not10.i
  br i1 %or.cond, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.dx = load i64, ptr %i.cz, align 8, !tbaa !429 ; 2 uses
  %i.dy = getelementptr [4 x i8], ptr %i.dv, i64 %i.dx
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.dz, %i.cx
  %.not12.i = icmp eq i32 %i.dz, %i.cy
  %or.cond217 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond217, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %.idx.i = shl i64 %i.dx, 3
  %i.ea = getelementptr i8, ptr %i.dv, i64 %.idx.i
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.eb, %i.cx
  br i1 %.not13.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not14.i = icmp eq i32 %i.eb, %i.cy
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.eb
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ao, %bb.ar, %bb.aq
  %.0.i = phi i32 [ -1, %bb.aq ], [ %i.dw, %bb.ao ], [ %i.dz, %bb.ap ], [ %spec.select.i, %bb.ar ]
  %i.ec = sext i32 %.0.i to i64
  %i.ed = load ptr, ptr %0, align 8, !tbaa !422, !noalias !430
  %i.ee = getelementptr inbounds [16 x i8], ptr %i.ed, i64 %i.ec
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !433)
  %i.ef = load ptr, ptr %36, align 8, !tbaa !422, !noalias !433
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %.091224 ; 2 uses
  store ptr %i.eg, ptr %37, align 8, !tbaa !436, !alias.scope !433
  store ptr %36, ptr %i.da, align 8, !tbaa !439, !alias.scope !433
  store i64 %.091224, ptr %i.db, align 8, !tbaa !70, !alias.scope !433
  store i64 0, ptr %i.dc, align 8, !tbaa !70, !alias.scope !433
  store i64 1, ptr %i.dd, align 8, !tbaa !441, !alias.scope !433
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.ee, ptr %19, align 8, !tbaa !444
  %i.eh = load i64, ptr %i.b, align 8, !tbaa !424
  store i64 %i.eh, ptr %i.de, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %i.eg, ptr %20, align 8, !tbaa !446
  %i.ei = load i64, ptr %i.dg, align 8, !tbaa !424
  store i64 %i.ei, ptr %i.df, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %20, ptr %21, align 8, !tbaa !448
  store ptr %19, ptr %i.dh, align 8, !tbaa !450
  store ptr %22, ptr %i.di, align 8, !tbaa !84
  store ptr %37, ptr %i.dj, align 8, !tbaa !452
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS4_IKSM_Li1ELi3ELb0EEEEENS0_9assign_opISL_SL_EELi0EEELi0ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit unwind label %bb.at

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %i.ej = add nuw i64 %.091224, 1                 ; 2 uses
  %exitcond247.not = icmp eq i64 %i.ej, %i.ca
  br i1 %exitcond247.not, label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %bb.ao, !llvm.loop !454

bb.at:                                            ; preds = %bb.as
  %i.ek = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %bb.cm

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !455)
  %i.el = load ptr, ptr %36, align 8, !tbaa !422, !noalias !455
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.ca ; 6 uses
  store ptr %i.em, ptr %38, align 8, !tbaa !436, !alias.scope !455
  %i.en = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %36, ptr %i.en, align 8, !tbaa !439, !alias.scope !455
  %i.eo = getelementptr inbounds nuw i8, ptr %38, i64 24
  store i64 %i.ca, ptr %i.eo, align 8, !tbaa !70, !alias.scope !455
  %i.ep = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i64 0, ptr %i.ep, align 8, !tbaa !70, !alias.scope !455
  %i.eq = getelementptr inbounds nuw i8, ptr %38, i64 40
  store i64 1, ptr %i.eq, align 8, !tbaa !441, !alias.scope !455
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.er = load ptr, ptr %5, align 8, !tbaa !422   ; 3 uses
  %i.es = load i64, ptr %i.n, align 8, !tbaa !424
  store ptr %i.er, ptr %15, align 8, !tbaa !458
  %i.et = getelementptr inbounds nuw i8, ptr %15, i64 8
  store i64 %i.es, ptr %i.et, align 8, !tbaa !460
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %i.em, ptr %16, align 8, !tbaa !446
  %i.eu = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !424
  store i64 %i.ew, ptr %i.eu, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %16, ptr %17, align 8, !tbaa !448
  %i.ex = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.ex, align 8, !tbaa !461
  %i.ey = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.ey, align 8, !tbaa !84
  %i.ez = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %38, ptr %i.ez, align 8, !tbaa !452
  %i.fa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.fa, 0
  %i.fb = load ptr, ptr %i.er, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.fd = atomicrmw add ptr %i.fc, i32 1 monotonic, align 4 ; 0 uses
  %i.fe = load ptr, ptr %i.em, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i, label %bb.aw

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.ff = load atomic i32, ptr %i.fc monotonic, align 4
  %i.fg = add nsw i32 %i.ff, 1
  store atomic i32 %i.fg, ptr %i.fc monotonic, align 4
  %i.fh = load ptr, ptr %i.em, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fh, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:        ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  %i.fj = load atomic i32, ptr %i.fi monotonic, align 4 ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 1
  br i1 %i.fk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fl = load ptr, ptr %i.fh, align 8, !tbaa !24
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8
  call void %i.fn(ptr noundef nonnull align 8 dereferenceable(12) %i.fh) #22, !inline_history !463
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.av:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fo = add nsw i32 %i.fj, -1
  store atomic i32 %i.fo, ptr %i.fi monotonic, align 4
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.aw:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 2 uses
  %i.fq = load atomic i32, ptr %i.fp monotonic, align 4
  %i.fr = icmp eq i32 %i.fq, 1
  br i1 %i.fr, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fs = atomicrmw sub ptr %i.fp, i32 1 release, align 4
  %i.ft = icmp eq i32 %i.fs, 1
  br i1 %i.ft, label %bb.ay, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  fence acquire
  %i.fu = load ptr, ptr %i.em, align 8, !tbaa !20 ; 3 uses
  %i.fv = icmp eq ptr %i.fu, null
  br i1 %i.fv, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fw = load ptr, ptr %i.fu, align 8, !tbaa !24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8
  call void %i.fy(ptr noundef nonnull align 8 dereferenceable(12) %i.fu) #22, !inline_history !463
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax, %bb.av, %bb.au, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fz = load ptr, ptr %i.er, align 8, !tbaa !20
  store ptr %i.fz, ptr %i.em, align 8, !tbaa !20
  invoke void @_ZN5Eigen8internal55copy_using_evaluator_DefaultTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_ISM_EENS0_9assign_opISL_SL_EELi0EEELi1ELi3EE3runERSS_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSISI_EERSK_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.ga = load ptr, ptr %0, align 8, !tbaa !422, !noalias !464
  %i.gb = getelementptr inbounds [16 x i8], ptr %i.ga, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !467)
  %i.gc = load ptr, ptr %36, align 8, !tbaa !422, !noalias !467
  %i.gd = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.cb ; 2 uses
  store ptr %i.gd, ptr %39, align 8, !tbaa !436, !alias.scope !467
  %i.ge = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %36, ptr %i.ge, align 8, !tbaa !439, !alias.scope !467
  %i.gf = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 %i.cb, ptr %i.gf, align 8, !tbaa !70, !alias.scope !467
  %i.gg = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i64 0, ptr %i.gg, align 8, !tbaa !70, !alias.scope !467
  %i.gh = getelementptr inbounds nuw i8, ptr %39, i64 40
  store i64 1, ptr %i.gh, align 8, !tbaa !441, !alias.scope !467
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.gb, ptr %11, align 8, !tbaa !444
  %i.gi = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gj = load i64, ptr %i.b, align 8, !tbaa !424
  store i64 %i.gj, ptr %i.gi, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.gd, ptr %12, align 8, !tbaa !446
  %i.gk = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gl = load i64, ptr %i.ev, align 8, !tbaa !424
  store i64 %i.gl, ptr %i.gk, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !448
  %i.gm = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.gm, align 8, !tbaa !450
  %i.gn = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.gn, align 8, !tbaa !84
  %i.go = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %39, ptr %i.go, align 8, !tbaa !452
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS4_IKSM_Li1ELi3ELb0EEEEENS0_9assign_opISL_SL_EELi0EEELi0ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  %i.gp = load ptr, ptr %0, align 8, !tbaa !422, !noalias !470
  %i.gq = getelementptr inbounds [16 x i8], ptr %i.gp, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.gr = add nuw nsw i64 %i.ca, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  %i.gs = load ptr, ptr %36, align 8, !tbaa !422, !noalias !473
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.gr ; 2 uses
  store ptr %i.gt, ptr %40, align 8, !tbaa !436, !alias.scope !473
  %i.gu = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %36, ptr %i.gu, align 8, !tbaa !439, !alias.scope !473
end_hunk_9
begin_hunk_10_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEESL_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERKNSO_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %.idx220.pre-phi = phi i64 [ %.pre261, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx221, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %.idx221, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre258, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.hj, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.hj, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.it = phi i64 [ %.pre, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.hi, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.hi, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ] ; 4 uses
  %i.iu = load ptr, ptr %41, align 8, !tbaa !427  ; 4 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.iv, align 4, !tbaa !38
  %i.iw = getelementptr [4 x i8], ptr %i.iv, i64 %i.it
  store i32 %.pre259, ptr %i.iw, align 4, !tbaa !38
  %i.ix = getelementptr i8, ptr %i.iv, i64 %.idx220.pre-phi
  %i.iy = trunc i64 %i.ca to i32
  store i32 %i.iy, ptr %i.ix, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.iz = shl nuw nsw i64 %i.cb, 2
  %i.ja = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iz) #36
          to label %.noexc159 unwind label %bb.bh ; 7 uses

.noexc159:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  store ptr %i.ja, ptr %42, align 8, !tbaa !30
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.cb
  %i.jc = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !96
  store i32 0, ptr %i.ja, align 4, !tbaa !38
  %i.jd = getelementptr i8, ptr %i.ja, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph230, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc159
  call void @llvm.memset.p0.i64(ptr align 4 %i.jd, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 %i.bz
  br label %.lr.ph230

.lr.ph230:                                        ; preds = %.noexc159, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i157 = phi ptr [ %i.je, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.jd, %.noexc159 ]
  %i.jf = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.0.i.i.i.i.i157, ptr %i.jf, align 8, !tbaa !27
  %i.jg = icmp eq ptr %i.bv, %i.bw
  br i1 %i.jg, label %.epil.preheader, label %.lr.ph230.new

.lr.ph230.new:                                    ; preds = %.lr.ph230
  %unroll_iter328 = and i64 %i.cb, 2305843009213693950
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

bb.bi:                                            ; preds = %bb.bq, %.lr.ph230.new
  %.088228 = phi i64 [ 0, %.lr.ph230.new ], [ %i.kj, %bb.bq ] ; 6 uses
  %niter329 = phi i64 [ 0, %.lr.ph230.new ], [ %niter329.next.1, %bb.bq ]
  %i.ji = getelementptr [4 x i8], ptr %i.iu, i64 %.088228 ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !38
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp eq i64 %i.cb, %i.jk
  br i1 %i.jl, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jm = getelementptr [4 x i8], ptr %i.ji, i64 %i.it
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !38
  %i.jo = sext i32 %i.jn to i64
  %i.jp = icmp eq i64 %i.gr, %i.jo
  br i1 %i.jp, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jq = trunc i64 %.088228 to i32
  %i.jr = xor i32 %i.jq, -1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.js = trunc i64 %.088228 to i32
  %i.jt = or disjoint i32 %i.js, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.sink320 = phi i32 [ %i.jr, %bb.bk ], [ %i.jt, %bb.bl ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %.088228
  store i32 %.sink320, ptr %i.ju, align 4, !tbaa !38
  %i.jv = or disjoint i64 %.088228, 1             ; 4 uses
  %i.jw = getelementptr [4 x i8], ptr %i.iu, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !38
  %i.jy = sext i32 %i.jx to i64
  %i.jz = icmp eq i64 %i.cb, %i.jy
  br i1 %i.jz, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ka = getelementptr [4 x i8], ptr %i.jw, i64 %i.it
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !38
  %i.kc = sext i32 %i.kb to i64
  %i.kd = icmp eq i64 %i.gr, %i.kc
  br i1 %i.kd, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ke = trunc i64 %i.jv to i32
  %i.kf = add i32 %i.ke, 1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.kg = trunc i64 %i.jv to i32
  %i.kh = xor i32 %i.kg, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink320.1 = phi i32 [ %i.kh, %bb.bp ], [ %i.kf, %bb.bo ]
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.jv
  store i32 %.sink320.1, ptr %i.ki, align 4, !tbaa !38
  %i.kj = add nuw i64 %.088228, 2                 ; 2 uses
  %niter329.next.1 = add i64 %niter329, 2         ; 2 uses
  %niter329.ncmp.1 = icmp eq i64 %niter329.next.1, %unroll_iter328
  br i1 %niter329.ncmp.1, label %._crit_edge231.unr-lcssa, label %bb.bi, !llvm.loop !477

._crit_edge231.unr-lcssa:                         ; preds = %bb.bq
  %i.kk = and i64 %i.bz, 4
  %lcmp.mod326.not.not = icmp eq i64 %i.kk, 0
  br i1 %lcmp.mod326.not.not, label %.epil.preheader, label %._crit_edge231

.epil.preheader:                                  ; preds = %._crit_edge231.unr-lcssa, %.lr.ph230
  %.088228.epil.init = phi i64 [ 0, %.lr.ph230 ], [ %i.kj, %._crit_edge231.unr-lcssa ] ; 4 uses
  %lcmp.mod327 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod327)
  %i.kl = getelementptr [4 x i8], ptr %i.iu, i64 %.088228.epil.init ; 2 uses
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !38
  %i.kn = sext i32 %i.km to i64
  %i.ko = icmp eq i64 %i.cb, %i.kn
  br i1 %i.ko, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.epil.preheader
  %i.kp = getelementptr [4 x i8], ptr %i.kl, i64 %i.it
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !38
  %i.kr = sext i32 %i.kq to i64
  %i.ks = icmp eq i64 %i.gr, %i.kr
  br i1 %i.ks, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.epil.preheader
  %i.kt = trunc i64 %.088228.epil.init to i32
  %i.ku = add i32 %i.kt, 1
  br label %._crit_edge231.epilog-lcssa

bb.bt:                                            ; preds = %bb.br
  %i.kv = trunc i64 %.088228.epil.init to i32
  %i.kw = xor i32 %i.kv, -1
  br label %._crit_edge231.epilog-lcssa

._crit_edge231.epilog-lcssa:                      ; preds = %bb.bt, %bb.bs
  %.sink320.epil = phi i32 [ %i.kw, %bb.bt ], [ %i.ku, %bb.bs ]
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %.088228.epil.init
  store i32 %.sink320.epil, ptr %i.kx, align 4, !tbaa !38
  br label %._crit_edge231

._crit_edge231:                                   ; preds = %._crit_edge231.unr-lcssa, %._crit_edge231.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 1 dereferenceable(1) %41, i64 noundef %i.cb, i64 noundef %i.gr, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %._crit_edge231
  %i.ky = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !98
  %.not.i.i160 = icmp eq i64 %i.ca, %i.kz
  br i1 %.not.i.i160, label %.lr.ph234, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.la = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.la) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bv
  %i.lb = call noalias ptr @malloc(i64 noundef %i.bz) #37 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.bw, label %.sink.split.i.i

bb.bw:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.ld = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ld, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.ld, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc162 unwind label %bb.bx

.noexc162:                                        ; preds = %bb.bw
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bv
  %.sink.i.i = phi ptr [ %i.lb, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bv ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph234

.lr.ph234:                                        ; preds = %bb.bu, %.sink.split.i.i
  store i64 %i.ca, ptr %i.ky, align 8, !tbaa !98
  %i.le = load ptr, ptr %43, align 8, !tbaa !100  ; 5 uses
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw, %._crit_edge231
  %i.lf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lg = load ptr, ptr %43, align 8, !tbaa !100
  call void @free(ptr noundef %i.lg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.lh = load ptr, ptr %42, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.lh, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.cl

bb.by:                                            ; preds = %.lr.ph234, %bb.bz
  %.086232 = phi i64 [ 0, %.lr.ph234 ], [ %i.lm, %bb.bz ] ; 4 uses
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %.086232
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !38
  %i.lk = sext i32 %i.lj to i64
  %i.ll = icmp eq i64 %i.ca, %i.lk
  br i1 %i.ll, label %._crit_edge235, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lm = add nuw i64 %.086232, 1
  %exitcond253.not = icmp eq i64 %.086232, %i.ca
  br i1 %exitcond253.not, label %._crit_edge235, label %bb.by, !llvm.loop !478

._crit_edge235:                                   ; preds = %bb.bz, %bb.by
  %.087.ph = phi i64 [ %i.gr, %bb.bz ], [ %.086232, %bb.by ]
  br i1 %.not.i.i.i.i, label %._crit_edge241, label %.lr.ph240

.lr.ph240:                                        ; preds = %._crit_edge235
  %i.ln = add i64 %.087.ph, 1                     ; 3 uses
  %i.lo = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.lp = icmp eq i64 %i.bz, 4
  br i1 %i.lp, label %.epil.preheader330, label %.lr.ph240.new

.lr.ph240.new:                                    ; preds = %.lr.ph240
  %unroll_iter334 = and i64 %i.ca, 1152921504606846974
  br label %bb.ck

._crit_edge241.loopexit.unr-lcssa:                ; preds = %bb.ck
  %i.lq = and i64 %i.bz, 4
  %lcmp.mod332.not = icmp eq i64 %i.lq, 0
  br i1 %lcmp.mod332.not, label %._crit_edge241, label %.epil.preheader330

.epil.preheader330:                               ; preds = %._crit_edge241.loopexit.unr-lcssa, %.lr.ph240
  %.0238.epil.init = phi i64 [ 0, %.lr.ph240 ], [ %i.nz, %._crit_edge241.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod333 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod333)
  %i.lr = add i64 %i.ln, %.0238.epil.init
  %i.ls = urem i64 %i.lr, %i.cb
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.ls
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !38
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %i.lv
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !31
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.0238.epil.init
  %i.lz = trunc i64 %i.lx to i32
  store i32 %i.lz, ptr %i.ly, align 4, !tbaa !38
  br label %._crit_edge241

._crit_edge241:                                   ; preds = %.epil.preheader330, %._crit_edge241.loopexit.unr-lcssa, %._crit_edge235
  call void @free(ptr noundef nonnull %i.le) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.ma = load ptr, ptr %42, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.ma, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge241
  %i.mb = load ptr, ptr %i.jc, align 8, !tbaa !96
  %i.mc = ptrtoint ptr %i.mb to i64
  %i.md = ptrtoint ptr %i.ma to i64
  %i.me = sub i64 %i.mc, %i.md
  call void @_ZdlPvm(ptr noundef nonnull %i.ma, i64 noundef %i.me) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge241, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.mf = load ptr, ptr %41, align 8, !tbaa !427
  call void @free(ptr noundef %i.mf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.mg = load ptr, ptr %36, align 8, !tbaa !422  ; 3 uses
  %i.mh = load i64, ptr %i.ev, align 8, !tbaa !424 ; 2 uses
  %i.mi = icmp ne ptr %i.mg, null
  %i.mj = icmp ne i64 %i.mh, 0
  %or.cond.i.i.i.i = and i1 %i.mi, %i.mj
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.preheader.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit

.preheader.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.mk = mul nsw i64 %i.mh, 3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %.preheader.i.i.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.ml, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.mk, %.preheader.i.i.preheader.i.i ]
  %i.ml = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.mm = getelementptr inbounds nuw [16 x i8], ptr %i.mg, i64 %i.ml ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !20 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mn, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i.i.i
  %i.mo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.mo, 0
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 3 uses
  %i.mq = load atomic i32, ptr %i.mp monotonic, align 4 ; 2 uses
  %i.mr = icmp eq i32 %i.mq, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.mr, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.ms = load ptr, ptr %i.mn, align 8, !tbaa !24
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8
  %i.mu = load ptr, ptr %i.mt, align 8
  call void %i.mu(ptr noundef nonnull align 8 dereferenceable(12) %i.mn) #22, !inline_history !479
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.mv = add nsw i32 %i.mq, -1
  store atomic i32 %i.mv, ptr %i.mp monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cf:                                            ; preds = %bb.cb
  br i1 %i.mr, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mw = atomicrmw sub ptr %i.mp, i32 1 release, align 4
  %i.mx = icmp eq i32 %i.mw, 1
  br i1 %i.mx, label %bb.ch, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  fence acquire
  %i.my = load ptr, ptr %i.mm, align 8, !tbaa !20 ; 3 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.na = load ptr, ptr %i.my, align 8, !tbaa !24
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  %i.nc = load ptr, ptr %i.nb, align 8
  call void %i.nc(ptr noundef nonnull align 8 dereferenceable(12) %i.my) #22, !inline_history !479
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.ml, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.mg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.not.i.i.i164 = icmp eq ptr %.sroa.0186.0299310, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit
  %i.nd = ptrtoint ptr %.sroa.15.0296312 to i64
  %i.ne = ptrtoint ptr %.sroa.0186.0299310 to i64
  %i.nf = sub i64 %i.nd, %i.ne
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0299310, i64 noundef %i.nf) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  ret void

bb.ck:                                            ; preds = %bb.ck, %.lr.ph240.new
  %.0238 = phi i64 [ 0, %.lr.ph240.new ], [ %i.nz, %bb.ck ] ; 4 uses
  %niter335 = phi i64 [ 0, %.lr.ph240.new ], [ %niter335.next.1, %bb.ck ]
  %i.ng = add i64 %i.ln, %.0238
  %i.nh = urem i64 %i.ng, %i.cb
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.nh
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !38
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %i.nk
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !31
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %.0238
  %i.no = trunc i64 %i.nm to i32
  store i32 %i.no, ptr %i.nn, align 4, !tbaa !38
  %i.np = or disjoint i64 %.0238, 1               ; 2 uses
  %i.nq = add i64 %i.ln, %i.np
  %i.nr = urem i64 %i.nq, %i.cb
  %i.ns = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %i.nr
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !38
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0299310, i64 %i.nu
  %i.nw = load i64, ptr %i.nv, align 8, !tbaa !31
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.lo, i64 %i.np
  %i.ny = trunc i64 %i.nw to i32
  store i32 %i.ny, ptr %i.nx, align 4, !tbaa !38
  %i.nz = add nuw i64 %.0238, 2                   ; 2 uses
  %niter335.next.1 = add i64 %niter335, 2         ; 2 uses
  %niter335.ncmp.1 = icmp eq i64 %niter335.next.1, %unroll_iter334
  br i1 %niter335.ncmp.1, label %._crit_edge241.loopexit.unr-lcssa, label %bb.ck, !llvm.loop !480

bb.cl:                                            ; preds = %bb.bx
  %i.oa = load ptr, ptr %i.jc, align 8, !tbaa !96
  %i.ob = ptrtoint ptr %i.oa to i64
  %i.oc = ptrtoint ptr %i.lh to i64
  %i.od = sub i64 %i.ob, %i.oc
  call void @_ZdlPvm(ptr noundef nonnull %i.lh, i64 noundef %i.od) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %bb.cl, %bb.bx, %bb.bh
  %.pn119.pn = phi { ptr, i32 } [ %i.jh, %bb.bh ], [ %i.lf, %bb.bx ], [ %i.lf, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.body153

.body153:                                         ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEED2Ev.exit166
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %i.hl, %bb.bd ]
  %i.oe = load ptr, ptr %41, align 8, !tbaa !427
  call void @free(ptr noundef %i.oe) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.be, %.body153, %bb.at, %bb.bf, %bb.bg, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.dk, %bb.an ], [ %i.hm, %bb.be ], [ %.pn122.pn, %.body153 ], [ %i.ho, %bb.bg ], [ %i.hn, %bb.bf ], [ %i.ek, %bb.at ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.not.i.i.i167 = icmp eq ptr %.sroa.0186.0299310, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorImSaImEED2Ev.exit168, label %bb.cn

bb.cn:                                            ; preds = %.thread, %bb.cm
  %.pn125.pn.pn.pn319 = phi { ptr, i32 } [ %i.dl, %.thread ], [ %.pn125.pn.pn, %bb.cm ]
  %.sroa.0186.0300318 = phi ptr [ %i.ce, %.thread ], [ %.sroa.0186.0299310, %bb.cm ] ; 2 uses
  %.sroa.15.0296311317 = phi ptr [ %i.cf, %.thread ], [ %.sroa.15.0296312, %bb.cm ]
  %i.of = ptrtoint ptr %.sroa.15.0296311317 to i64
  %i.og = ptrtoint ptr %.sroa.0186.0300318 to i64
  %i.oh = sub i64 %i.of, %i.og
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0300318, i64 noundef %i.oh) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit168

_ZNSt6vectorImSaImEED2Ev.exit168:                 ; preds = %bb.cm, %bb.cn, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn319, %bb.cn ], [ %.pn125.pn.pn, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.co:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %8 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %9 = alloca %"class.CGAL::Static_filtered_predicate.683", align 1 ; 5 uses
  %10 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %11 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %12 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %13 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %14 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %15 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %16 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %17 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %18 = alloca %"struct.std::pair.610", align 8   ; 8 uses
  %19 = alloca %"struct.std::pair.437", align 8   ; 7 uses
  %20 = alloca %"class.CGAL::Static_filtered_predicate.646", align 1 ; 5 uses
  %21 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %22 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %23 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %24 = alloca %"class.CGAL::Static_filtered_predicate.606", align 1 ; 4 uses
  %25 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %26 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %27 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %28 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %29 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %30 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %31 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %32 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %33 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %34 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %35 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %36 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %37 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %38 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %39 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %40 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %41 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %42 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %43 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %44 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %45 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %46 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %47 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %48 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %49 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %50 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %51 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %52 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %53 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %54 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %55 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %56 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %57 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %58 = alloca %"class.CGAL::Plane_3", align 8    ; 11 uses
  %59 = alloca %"class.std::vector.93", align 8   ; 14 uses
  %60 = alloca %"class.std::vector", align 8      ; 17 uses
  %61 = alloca %"class.std::vector", align 8      ; 17 uses
  %62 = alloca %"class.std::vector", align 8      ; 21 uses
  %63 = alloca %"class.std::vector", align 8      ; 21 uses
  %64 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %65 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %66 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %67 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %68 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %69 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 10 uses
  switch i64 %i.g, label %bb.bt [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %5, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.j) #22
  store ptr null, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !98
  br label %bb.kt

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98
  %.not.i.i269 = icmp eq i64 %i.l, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  br i1 %.not.i.i269, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %.pre) #22
  %i.m = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #37 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i.i:                                  ; preds = %bb.e
  store ptr %i.m, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270: ; preds = %bb.d, %.sink.split.i.i
  %i.p = phi ptr [ %.pre, %bb.d ], [ %i.m, %.sink.split.i.i ]
  store i64 1, ptr %i.k, align 8, !tbaa !98
  store i32 0, ptr %i.p, align 4, !tbaa !38
  br label %bb.kt

bb.g:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.c, align 4, !tbaa !38
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = load ptr, ptr %1, align 8, !tbaa !427    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr [4 x i8], ptr %i.s, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4       ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 3 uses
  %i.y = trunc i64 %2 to i32                      ; 6 uses
  %.not.i = icmp eq i32 %i.x, %i.y
  %i.z = trunc i64 %3 to i32                      ; 6 uses
  %.not10.i = icmp eq i32 %i.x, %i.z
  %or.cond = or i1 %.not.i, %.not10.i
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = sext i32 %i.x to i64
  br label %_ZZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEbENKUlmE_clEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !429 ; 2 uses
  %i.ac = getelementptr [4 x i8], ptr %i.w, i64 %i.ab
end_hunk_10
begin_hunk_11_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(12) %i.bm) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit142

_ZN4CGAL6HandleD2Ev.exit142:                      ; preds = %_ZN4CGAL6HandleD2Ev.exit139, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27 ; 3 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 11 uses
  %i.bx = ashr exact i64 %i.bw, 2                 ; 22 uses
  %i.by = add nsw i64 %i.bx, 1                    ; 16 uses
  %i.bz = icmp ugt i64 %i.bx, 1152921504606846975
  br i1 %i.bz, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bt        ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_ISS_Li1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSX_IT0_EEmmRKS3_IiSaIiEERKNSX_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSY_SY_S12_.exit, label %.noexc143

.noexc143:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.bw, 1
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #36 ; 12 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !31
  %i.cd = getelementptr i8, ptr %i.cb, i64 8      ; 3 uses
  %i.ce = add nsw i64 %i.bx, -1                   ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ce, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cd, %.noexc143 ], [ %i.cg, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.bx, 4
  br i1 %min.iters.check, label %.lr.ph.preheader322, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bx, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x i64> %vec.ind, ptr %i.ch, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.ci, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !522

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader322

.lr.ph.preheader322:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110222.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.cb, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_ISS_Li1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSX_IT0_EEmmRKS3_IiSaIiEERKNSX_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSY_SY_S12_.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.ck = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = xor i64 %i.cp, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEENSE_ISU_Li1ELi3ELi1ELi1ELi3EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSZ_IT0_EEmmRKS3_IiSaIiEERKNSZ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvS10_S10_S14_S1C_(ptr nonnull %i.cb, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.cq, ptr nonnull %32, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSI_8backends16rational_adaptorINSK_15cpp_int_backendILm0ELm0ELNSI_16cpp_integer_typeE1ELNSI_18cpp_int_check_typeE0ESaIyEEEEELNSI_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEENSE_ISU_Li1ELi3ELi1ELi1ELi3EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSZ_IT0_EEmmRKS3_IiSaIiEERKNSZ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvS10_S10_S14_(ptr nonnull %i.cb, ptr %.0.i.i.i.i.i.ph, ptr nonnull %32, ptr nonnull %4)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_ISS_Li1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSX_IT0_EEmmRKS3_IiSaIiEERKNSX_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSY_SY_S12_.exit unwind label %.thread

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.u, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %35) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %34) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %33) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit168

.lr.ph:                                           ; preds = %.lr.ph.preheader322, %.lr.ph
  %.0110222 = phi i64 [ %i.cs, %.lr.ph ], [ %.0110222.ph, %.lr.ph.preheader322 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0110222
  store i64 %.0110222, ptr %i.cr, align 8, !tbaa !31
  %i.cs = add nuw i64 %.0110222, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !523

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_ISS_Li1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSX_IT0_EEmmRKS3_IiSaIiEERKNSX_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSY_SY_S12_.exit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge, %.noexc145
  %.sroa.15.0295311 = phi ptr [ %i.cc, %.noexc145 ], [ %i.cc, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0186.0298309 = phi ptr [ %i.cb, %.noexc145 ], [ %i.cb, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #22
  %i.ct = add nuw nsw i64 %i.bx, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %36, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %36, i64 noundef %i.ct, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.an

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_ISS_Li1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSX_IT0_EEmmRKS3_IiSaIiEERKNSX_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSY_SY_S12_.exit
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %.lr.ph224

.lr.ph224:                                        ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.cu = trunc i64 %2 to i32                     ; 3 uses
  %i.cv = trunc i64 %3 to i32                     ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %37, i64 24
  %i.cz = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.da = getelementptr inbounds nuw i8, ptr %37, i64 40
  %i.db = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dd = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.de = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.dg = getelementptr inbounds nuw i8, ptr %21, i64 24
  br label %bb.ao

bb.an:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINSG_8backends16rational_adaptorINSI_15cpp_int_backendILm0ELm0ELNSG_16cpp_integer_typeE1ELNSG_18cpp_int_check_typeE0ESaIyEEEEELNSG_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_ISS_Li1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSX_IT0_EEmmRKS3_IiSaIiEERKNSX_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSY_SY_S12_.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

.thread:                                          ; preds = %bb.aj, %.noexc145
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.cn

bb.ao:                                            ; preds = %.lr.ph224, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %.091223 = phi i64 [ 0, %.lr.ph224 ], [ %i.eg, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %.091223
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !31
  %i.dl = load ptr, ptr %4, align 8, !tbaa !30
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dk
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !38
  %i.do = call i32 @llvm.abs.i32(i32 %i.dn, i1 true)
  %i.dp = load ptr, ptr %1, align 8, !tbaa !427
  %i.dq = zext nneg i32 %i.do to i64
  %i.dr = getelementptr [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = getelementptr i8, ptr %i.dr, i64 -4     ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.dt, %i.cu
  %.not10.i = icmp eq i32 %i.dt, %i.cv
  %or.cond = or i1 %.not.i, %.not10.i
  br i1 %or.cond, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.du = load i64, ptr %i.cw, align 8, !tbaa !429 ; 2 uses
  %i.dv = getelementptr [4 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.dw, %i.cu
  %.not12.i = icmp eq i32 %i.dw, %i.cv
  %or.cond217 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond217, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %.idx.i = shl i64 %i.du, 3
  %i.dx = getelementptr i8, ptr %i.ds, i64 %.idx.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.dy, %i.cu
  br i1 %.not13.i, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not14.i = icmp eq i32 %i.dy, %i.cv
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.dy
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.ao, %bb.ar, %bb.aq
  %.0.i = phi i32 [ -1, %bb.aq ], [ %i.dt, %bb.ao ], [ %i.dw, %bb.ap ], [ %spec.select.i, %bb.ar ]
  %i.dz = sext i32 %.0.i to i64
  %i.ea = load ptr, ptr %0, align 8, !tbaa !422, !noalias !524
  %i.eb = getelementptr inbounds [16 x i8], ptr %i.ea, i64 %i.dz
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.ec = load ptr, ptr %36, align 8, !tbaa !422, !noalias !527
  %i.ed = getelementptr inbounds nuw [16 x i8], ptr %i.ec, i64 %.091223 ; 2 uses
  store ptr %i.ed, ptr %37, align 8, !tbaa !436, !alias.scope !527
  store ptr %36, ptr %i.cx, align 8, !tbaa !439, !alias.scope !527
  store i64 %.091223, ptr %i.cy, align 8, !tbaa !70, !alias.scope !527
  store i64 0, ptr %i.cz, align 8, !tbaa !70, !alias.scope !527
  store i64 1, ptr %i.da, align 8, !tbaa !441, !alias.scope !527
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.eb, ptr %19, align 8, !tbaa !444
  %i.ee = load i64, ptr %i.b, align 8, !tbaa !424
  store i64 %i.ee, ptr %i.db, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  store ptr %i.ed, ptr %20, align 8, !tbaa !446
  %i.ef = load i64, ptr %i.dd, align 8, !tbaa !424
  store i64 %i.ef, ptr %i.dc, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  store ptr %20, ptr %21, align 8, !tbaa !448
  store ptr %19, ptr %i.de, align 8, !tbaa !450
  store ptr %22, ptr %i.df, align 8, !tbaa !84
  store ptr %37, ptr %i.dg, align 8, !tbaa !452
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS4_IKSM_Li1ELi3ELb0EEEEENS0_9assign_opISL_SL_EELi0EEELi0ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit unwind label %bb.at

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  %i.eg = add nuw i64 %.091223, 1                 ; 2 uses
  %exitcond246.not = icmp eq i64 %i.eg, %i.bx
  br i1 %exitcond246.not, label %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %bb.ao, !llvm.loop !530

bb.at:                                            ; preds = %bb.as
  %i.eh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #22
  br label %bb.cm

_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  %i.ei = load ptr, ptr %36, align 8, !tbaa !422, !noalias !531
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.bx ; 6 uses
  store ptr %i.ej, ptr %38, align 8, !tbaa !436, !alias.scope !531
  %i.ek = getelementptr inbounds nuw i8, ptr %38, i64 16
  store ptr %36, ptr %i.ek, align 8, !tbaa !439, !alias.scope !531
  %i.el = getelementptr inbounds nuw i8, ptr %38, i64 24
  store i64 %i.bx, ptr %i.el, align 8, !tbaa !70, !alias.scope !531
  %i.em = getelementptr inbounds nuw i8, ptr %38, i64 32
  store i64 0, ptr %i.em, align 8, !tbaa !70, !alias.scope !531
  %i.en = getelementptr inbounds nuw i8, ptr %38, i64 40
  store i64 1, ptr %i.en, align 8, !tbaa !441, !alias.scope !531
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %5, ptr %15, align 8, !tbaa !534
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %i.ej, ptr %16, align 8, !tbaa !446
  %i.eo = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 4 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !424
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %16, ptr %17, align 8, !tbaa !448
  %i.er = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %15, ptr %i.er, align 8, !tbaa !536
  %i.es = getelementptr inbounds nuw i8, ptr %17, i64 16
  store ptr %18, ptr %i.es, align 8, !tbaa !84
  %i.et = getelementptr inbounds nuw i8, ptr %17, i64 24
  store ptr %38, ptr %i.et, align 8, !tbaa !452
  %i.eu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.eu, 0
  %i.ev = load ptr, ptr %5, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.ex = atomicrmw add ptr %i.ew, i32 1 monotonic, align 4 ; 0 uses
  %i.ey = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ey, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i, label %bb.aw

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.ez = load atomic i32, ptr %i.ew monotonic, align 4
  %i.fa = add nsw i32 %i.ez, 1
  store atomic i32 %i.fa, ptr %i.ew monotonic, align 4
  %i.fb = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 4 uses
  %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.fb, null
  br i1 %.not4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i, label %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:          ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load atomic i32, ptr %i.fc monotonic, align 4 ; 2 uses
  %i.fe = icmp eq i32 %i.fd, 1
  br i1 %i.fe, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ff = load ptr, ptr %i.fb, align 8, !tbaa !24
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8
  call void %i.fh(ptr noundef nonnull align 8 dereferenceable(12) %i.fb) #22, !inline_history !538
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.av:                                            ; preds = %.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fi = add nsw i32 %i.fd, -1
  store atomic i32 %i.fi, ptr %i.fc monotonic, align 4
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.aw:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fk = load atomic i32, ptr %i.fj monotonic, align 4
  %i.fl = icmp eq i32 %i.fk, 1
  br i1 %i.fl, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.fm = atomicrmw sub ptr %i.fj, i32 1 release, align 4
  %i.fn = icmp eq i32 %i.fm, 1
  br i1 %i.fn, label %bb.ay, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  fence acquire
  %i.fo = load ptr, ptr %i.ej, align 8, !tbaa !20 ; 3 uses
  %i.fp = icmp eq ptr %i.fo, null
  br i1 %i.fp, label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fq = load ptr, ptr %i.fo, align 8, !tbaa !24
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8
  call void %i.fs(ptr noundef nonnull align 8 dereferenceable(12) %i.fo) #22, !inline_history !538
  br label %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i

_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i: ; preds = %bb.az, %bb.ay, %bb.ax, %bb.av, %bb.au, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ft = load ptr, ptr %5, align 8, !tbaa !20
  store ptr %i.ft, ptr %i.ej, align 8, !tbaa !20
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS5_ISL_Li1ELi3ELi1ELi1ELi3EEEEENS0_9assign_opISL_SL_EELi0EEELi1ELi3EE3runERST_(ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.ba unwind label %bb.be

bb.ba:                                            ; preds = %_ZN5Eigen9BlockImplINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0ENS_5DenseEEaSINS1_ISH_Li1ELi3ELi1ELi1ELi3EEEEERSK_RKNS_9DenseBaseIT_EE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #22
  %i.fu = load ptr, ptr %0, align 8, !tbaa !422, !noalias !539
  %i.fv = getelementptr inbounds [16 x i8], ptr %i.fu, i64 %2
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #22
  call void @llvm.experimental.noalias.scope.decl(metadata !542)
  %i.fw = load ptr, ptr %36, align 8, !tbaa !422, !noalias !542
  %i.fx = getelementptr inbounds nuw [16 x i8], ptr %i.fw, i64 %i.by ; 2 uses
  store ptr %i.fx, ptr %39, align 8, !tbaa !436, !alias.scope !542
  %i.fy = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr %36, ptr %i.fy, align 8, !tbaa !439, !alias.scope !542
  %i.fz = getelementptr inbounds nuw i8, ptr %39, i64 24
  store i64 %i.by, ptr %i.fz, align 8, !tbaa !70, !alias.scope !542
  %i.ga = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i64 0, ptr %i.ga, align 8, !tbaa !70, !alias.scope !542
  %i.gb = getelementptr inbounds nuw i8, ptr %39, i64 40
  store i64 1, ptr %i.gb, align 8, !tbaa !441, !alias.scope !542
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.fv, ptr %11, align 8, !tbaa !444
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.gd = load i64, ptr %i.b, align 8, !tbaa !424
  store i64 %i.gd, ptr %i.gc, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %i.fx, ptr %12, align 8, !tbaa !446
  %i.ge = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.gf = load i64, ptr %i.ep, align 8, !tbaa !424
  store i64 %i.gf, ptr %i.ge, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %12, ptr %13, align 8, !tbaa !448
  %i.gg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %11, ptr %i.gg, align 8, !tbaa !450
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %14, ptr %i.gh, align 8, !tbaa !84
  %i.gi = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %39, ptr %i.gi, align 8, !tbaa !452
  invoke void @_ZN5Eigen8internal54copy_using_evaluator_LinearTraversal_CompleteUnrollingINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEELi1ELi3ELb0EEEEENS3_INS4_IKSM_Li1ELi3ELb0EEEEENS0_9assign_opISL_SL_EELi0EEELi0ELi3EE3runERSU_(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.bb unwind label %bb.bf

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #22
  %i.gj = load ptr, ptr %0, align 8, !tbaa !422, !noalias !545
  %i.gk = getelementptr inbounds [16 x i8], ptr %i.gj, i64 %3
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #22
  %i.gl = add nuw nsw i64 %i.bx, 2                ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !548)
  %i.gm = load ptr, ptr %36, align 8, !tbaa !422, !noalias !548
  %i.gn = getelementptr inbounds nuw [16 x i8], ptr %i.gm, i64 %i.gl ; 2 uses
  store ptr %i.gn, ptr %40, align 8, !tbaa !436, !alias.scope !548
  %i.go = getelementptr inbounds nuw i8, ptr %40, i64 16
  store ptr %36, ptr %i.go, align 8, !tbaa !439, !alias.scope !548
  %i.gp = getelementptr inbounds nuw i8, ptr %40, i64 24
  store i64 %i.gl, ptr %i.gp, align 8, !tbaa !70, !alias.scope !548
  %i.gq = getelementptr inbounds nuw i8, ptr %40, i64 32
  store i64 0, ptr %i.gq, align 8, !tbaa !70, !alias.scope !548
end_hunk_11
begin_hunk_12_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_ISK_Li1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSP_IT0_EEmmRKSt6vectorIiSaIiEERKNSP_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %.idx219.pre-phi = phi i64 [ %.pre260, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx220, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %.idx220, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre257, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.hd, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.hd, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.in = phi i64 [ %.pre, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.hc, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.hc, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ] ; 4 uses
  %i.io = load ptr, ptr %41, align 8, !tbaa !427  ; 4 uses
  %i.ip = getelementptr i8, ptr %i.io, i64 %i.bw  ; 3 uses
  store i32 %.pre-phi, ptr %i.ip, align 4, !tbaa !38
  %i.iq = getelementptr [4 x i8], ptr %i.ip, i64 %i.in
  store i32 %.pre258, ptr %i.iq, align 4, !tbaa !38
  %i.ir = getelementptr i8, ptr %i.ip, i64 %.idx219.pre-phi
  %i.is = trunc i64 %i.bx to i32
  store i32 %i.is, ptr %i.ir, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #22
  %i.it = shl nuw nsw i64 %i.by, 2
  %i.iu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.it) #36
          to label %.noexc159 unwind label %bb.bh ; 7 uses

.noexc159:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  store ptr %i.iu, ptr %42, align 8, !tbaa !30
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.by
  %i.iw = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 3 uses
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !96
  store i32 0, ptr %i.iu, align 4, !tbaa !38
  %i.ix = getelementptr i8, ptr %i.iu, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph229, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc159
  call void @llvm.memset.p0.i64(ptr align 4 %i.ix, i8 0, i64 %i.bw, i1 false), !tbaa !38
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.bw
  br label %.lr.ph229

.lr.ph229:                                        ; preds = %.noexc159, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i157 = phi ptr [ %i.iy, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ix, %.noexc159 ]
  %i.iz = getelementptr inbounds nuw i8, ptr %42, i64 8
  store ptr %.0.i.i.i.i.i157, ptr %i.iz, align 8, !tbaa !27
  %i.ja = icmp eq ptr %i.bs, %i.bt
  br i1 %i.ja, label %.epil.preheader, label %.lr.ph229.new

.lr.ph229.new:                                    ; preds = %.lr.ph229
  %unroll_iter327 = and i64 %i.by, 2305843009213693950
  br label %bb.bi

bb.bh:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.jb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

bb.bi:                                            ; preds = %bb.bq, %.lr.ph229.new
  %.088227 = phi i64 [ 0, %.lr.ph229.new ], [ %i.kd, %bb.bq ] ; 6 uses
  %niter328 = phi i64 [ 0, %.lr.ph229.new ], [ %niter328.next.1, %bb.bq ]
  %i.jc = getelementptr [4 x i8], ptr %i.io, i64 %.088227 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !38
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp eq i64 %i.by, %i.je
  br i1 %i.jf, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.jg = getelementptr [4 x i8], ptr %i.jc, i64 %i.in
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !38
  %i.ji = sext i32 %i.jh to i64
  %i.jj = icmp eq i64 %i.gl, %i.ji
  br i1 %i.jj, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.jk = trunc i64 %.088227 to i32
  %i.jl = xor i32 %i.jk, -1
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj, %bb.bi
  %i.jm = trunc i64 %.088227 to i32
  %i.jn = or disjoint i32 %i.jm, 1
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %.sink319 = phi i32 [ %i.jl, %bb.bk ], [ %i.jn, %bb.bl ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.088227
  store i32 %.sink319, ptr %i.jo, align 4, !tbaa !38
  %i.jp = or disjoint i64 %.088227, 1             ; 4 uses
  %i.jq = getelementptr [4 x i8], ptr %i.io, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !38
  %i.js = sext i32 %i.jr to i64
  %i.jt = icmp eq i64 %i.by, %i.js
  br i1 %i.jt, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.ju = getelementptr [4 x i8], ptr %i.jq, i64 %i.in
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !38
  %i.jw = sext i32 %i.jv to i64
  %i.jx = icmp eq i64 %i.gl, %i.jw
  br i1 %i.jx, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.jy = trunc i64 %i.jp to i32
  %i.jz = add i32 %i.jy, 1
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn
  %i.ka = trunc i64 %i.jp to i32
  %i.kb = xor i32 %i.ka, -1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.sink319.1 = phi i32 [ %i.kb, %bb.bp ], [ %i.jz, %bb.bo ]
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jp
  store i32 %.sink319.1, ptr %i.kc, align 4, !tbaa !38
  %i.kd = add nuw i64 %.088227, 2                 ; 2 uses
  %niter328.next.1 = add i64 %niter328, 2         ; 2 uses
  %niter328.ncmp.1 = icmp eq i64 %niter328.next.1, %unroll_iter327
  br i1 %niter328.ncmp.1, label %._crit_edge230.unr-lcssa, label %bb.bi, !llvm.loop !552

._crit_edge230.unr-lcssa:                         ; preds = %bb.bq
  %i.ke = and i64 %i.bw, 4
  %lcmp.mod325.not.not = icmp eq i64 %i.ke, 0
  br i1 %lcmp.mod325.not.not, label %.epil.preheader, label %._crit_edge230

.epil.preheader:                                  ; preds = %._crit_edge230.unr-lcssa, %.lr.ph229
  %.088227.epil.init = phi i64 [ 0, %.lr.ph229 ], [ %i.kd, %._crit_edge230.unr-lcssa ] ; 4 uses
  %lcmp.mod326 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod326)
  %i.kf = getelementptr [4 x i8], ptr %i.io, i64 %.088227.epil.init ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !38
  %i.kh = sext i32 %i.kg to i64
  %i.ki = icmp eq i64 %i.by, %i.kh
  br i1 %i.ki, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.epil.preheader
  %i.kj = getelementptr [4 x i8], ptr %i.kf, i64 %i.in
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !38
  %i.kl = sext i32 %i.kk to i64
  %i.km = icmp eq i64 %i.gl, %i.kl
  br i1 %i.km, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.epil.preheader
  %i.kn = trunc i64 %.088227.epil.init to i32
  %i.ko = add i32 %i.kn, 1
  br label %._crit_edge230.epilog-lcssa

bb.bt:                                            ; preds = %bb.br
  %i.kp = trunc i64 %.088227.epil.init to i32
  %i.kq = xor i32 %i.kp, -1
  br label %._crit_edge230.epilog-lcssa

._crit_edge230.epilog-lcssa:                      ; preds = %bb.bt, %bb.bs
  %.sink319.epil = phi i32 [ %i.kq, %bb.bt ], [ %i.ko, %bb.bs ]
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.088227.epil.init
  store i32 %.sink319.epil, ptr %i.kr, align 4, !tbaa !38
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.unr-lcssa, %._crit_edge230.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %43, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNSO_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %36, ptr noundef nonnull align 1 dereferenceable(1) %41, i64 noundef %i.by, i64 noundef %i.gl, ptr noundef nonnull align 8 dereferenceable(24) %42, ptr noundef nonnull align 8 dereferenceable(16) %43, i1 noundef zeroext false)
          to label %bb.bu unwind label %bb.bx

bb.bu:                                            ; preds = %._crit_edge230
  %i.ks = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !98
  %.not.i.i160 = icmp eq i64 %i.bx, %i.kt
  br i1 %.not.i.i160, label %.lr.ph233, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ku = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.ku) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bv
  %i.kv = call noalias ptr @malloc(i64 noundef %i.bw) #37 ; 2 uses
  %i.kw = icmp eq ptr %i.kv, null
  br i1 %i.kw, label %bb.bw, label %.sink.split.i.i

bb.bw:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.kx = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kx, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.kx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc162 unwind label %bb.bx

.noexc162:                                        ; preds = %bb.bw
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bv
  %.sink.i.i = phi ptr [ %i.kv, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bv ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph233

.lr.ph233:                                        ; preds = %bb.bu, %.sink.split.i.i
  store i64 %i.bx, ptr %i.ks, align 8, !tbaa !98
  %i.ky = load ptr, ptr %43, align 8, !tbaa !100  ; 5 uses
  br label %bb.by

bb.bx:                                            ; preds = %bb.bw, %._crit_edge230
  %i.kz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.la = load ptr, ptr %43, align 8, !tbaa !100
  call void @free(ptr noundef %i.la) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.lb = load ptr, ptr %42, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.lb, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.cl

bb.by:                                            ; preds = %.lr.ph233, %bb.bz
  %.086231 = phi i64 [ 0, %.lr.ph233 ], [ %i.lg, %bb.bz ] ; 4 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %.086231
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !38
  %i.le = sext i32 %i.ld to i64
  %i.lf = icmp eq i64 %i.bx, %i.le
  br i1 %i.lf, label %._crit_edge234, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.lg = add nuw i64 %.086231, 1
  %exitcond252.not = icmp eq i64 %.086231, %i.bx
  br i1 %exitcond252.not, label %._crit_edge234, label %bb.by, !llvm.loop !553

._crit_edge234:                                   ; preds = %bb.bz, %bb.by
  %.087.ph = phi i64 [ %i.gl, %bb.bz ], [ %.086231, %bb.by ]
  br i1 %.not.i.i.i.i, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %._crit_edge234
  %i.lh = add i64 %.087.ph, 1                     ; 3 uses
  %i.li = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.lj = icmp eq i64 %i.bw, 4
  br i1 %i.lj, label %.epil.preheader329, label %.lr.ph239.new

.lr.ph239.new:                                    ; preds = %.lr.ph239
  %unroll_iter333 = and i64 %i.bx, 1152921504606846974
  br label %bb.ck

._crit_edge240.loopexit.unr-lcssa:                ; preds = %bb.ck
  %i.lk = and i64 %i.bw, 4
  %lcmp.mod331.not = icmp eq i64 %i.lk, 0
  br i1 %lcmp.mod331.not, label %._crit_edge240, label %.epil.preheader329

.epil.preheader329:                               ; preds = %._crit_edge240.loopexit.unr-lcssa, %.lr.ph239
  %.0237.epil.init = phi i64 [ 0, %.lr.ph239 ], [ %i.nt, %._crit_edge240.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod332 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod332)
  %i.ll = add i64 %i.lh, %.0237.epil.init
  %i.lm = urem i64 %i.ll, %i.by
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !38
  %i.lp = sext i32 %i.lo to i64
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %i.lp
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !31
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %.0237.epil.init
  %i.lt = trunc i64 %i.lr to i32
  store i32 %i.lt, ptr %i.ls, align 4, !tbaa !38
  br label %._crit_edge240

._crit_edge240:                                   ; preds = %.epil.preheader329, %._crit_edge240.loopexit.unr-lcssa, %._crit_edge234
  call void @free(ptr noundef nonnull %i.ky) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.lu = load ptr, ptr %42, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.lu, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ca

bb.ca:                                            ; preds = %._crit_edge240
  %i.lv = load ptr, ptr %i.iw, align 8, !tbaa !96
  %i.lw = ptrtoint ptr %i.lv to i64
  %i.lx = ptrtoint ptr %i.lu to i64
  %i.ly = sub i64 %i.lw, %i.lx
  call void @_ZdlPvm(ptr noundef nonnull %i.lu, i64 noundef %i.ly) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge240, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  %i.lz = load ptr, ptr %41, align 8, !tbaa !427
  call void @free(ptr noundef %i.lz) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  %i.ma = load ptr, ptr %36, align 8, !tbaa !422  ; 3 uses
  %i.mb = load i64, ptr %i.ep, align 8, !tbaa !424 ; 2 uses
  %i.mc = icmp ne ptr %i.ma, null
  %i.md = icmp ne i64 %i.mb, 0
  %or.cond.i.i.i.i = and i1 %i.mc, %i.md
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.preheader.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit

.preheader.i.i.preheader.i.i:                     ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.me = mul nsw i64 %i.mb, 3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %.preheader.i.i.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.mf, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.me, %.preheader.i.i.preheader.i.i ]
  %i.mf = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.mg = getelementptr inbounds nuw [16 x i8], ptr %i.ma, i64 %i.mf ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !20 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %.preheader.i.i.i.i
  %i.mi = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.mi, 0
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 8 ; 3 uses
  %i.mk = load atomic i32, ptr %i.mj monotonic, align 4 ; 2 uses
  %i.ml = icmp eq i32 %i.mk, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.cf, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  br i1 %i.ml, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.mm = load ptr, ptr %i.mh, align 8, !tbaa !24
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mo = load ptr, ptr %i.mn, align 8
  call void %i.mo(ptr noundef nonnull align 8 dereferenceable(12) %i.mh) #22, !inline_history !479
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ce:                                            ; preds = %bb.cc
  %i.mp = add nsw i32 %i.mk, -1
  store atomic i32 %i.mp, ptr %i.mj monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.cf:                                            ; preds = %bb.cb
  br i1 %i.ml, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.mq = atomicrmw sub ptr %i.mj, i32 1 release, align 4
  %i.mr = icmp eq i32 %i.mq, 1
  br i1 %i.mr, label %bb.ch, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  fence acquire
  %i.ms = load ptr, ptr %i.mg, align 8, !tbaa !20 ; 3 uses
  %i.mt = icmp eq ptr %i.ms, null
  br i1 %i.mt, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.mu = load ptr, ptr %i.ms, align 8, !tbaa !24
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 8
  %i.mw = load ptr, ptr %i.mv, align 8
  call void %i.mw(ptr noundef nonnull align 8 dereferenceable(12) %i.ms) #22, !inline_history !479
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.mf, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  call void @free(ptr noundef %i.ma) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.not.i.i.i164 = icmp eq ptr %.sroa.0186.0298309, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit
  %i.mx = ptrtoint ptr %.sroa.15.0295311 to i64
  %i.my = ptrtoint ptr %.sroa.0186.0298309 to i64
  %i.mz = sub i64 %i.mx, %i.my
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0298309, i64 noundef %i.mz) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  ret void

bb.ck:                                            ; preds = %bb.ck, %.lr.ph239.new
  %.0237 = phi i64 [ 0, %.lr.ph239.new ], [ %i.nt, %bb.ck ] ; 4 uses
  %niter334 = phi i64 [ 0, %.lr.ph239.new ], [ %niter334.next.1, %bb.ck ]
  %i.na = add i64 %i.lh, %.0237
  %i.nb = urem i64 %i.na, %i.by
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !38
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %i.ne
  %i.ng = load i64, ptr %i.nf, align 8, !tbaa !31
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %.0237
  %i.ni = trunc i64 %i.ng to i32
  store i32 %i.ni, ptr %i.nh, align 4, !tbaa !38
  %i.nj = or disjoint i64 %.0237, 1               ; 2 uses
  %i.nk = add i64 %i.lh, %i.nj
  %i.nl = urem i64 %i.nk, %i.by
  %i.nm = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %i.nl
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !38
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0186.0298309, i64 %i.no
  %i.nq = load i64, ptr %i.np, align 8, !tbaa !31
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.li, i64 %i.nj
  %i.ns = trunc i64 %i.nq to i32
  store i32 %i.ns, ptr %i.nr, align 4, !tbaa !38
  %i.nt = add nuw i64 %.0237, 2                   ; 2 uses
  %niter334.next.1 = add i64 %niter334, 2         ; 2 uses
  %niter334.ncmp.1 = icmp eq i64 %niter334.next.1, %unroll_iter333
  br i1 %niter334.ncmp.1, label %._crit_edge240.loopexit.unr-lcssa, label %bb.ck, !llvm.loop !554

bb.cl:                                            ; preds = %bb.bx
  %i.nu = load ptr, ptr %i.iw, align 8, !tbaa !96
  %i.nv = ptrtoint ptr %i.nu to i64
  %i.nw = ptrtoint ptr %i.lb to i64
  %i.nx = sub i64 %i.nv, %i.nw
  call void @_ZdlPvm(ptr noundef nonnull %i.lb, i64 noundef %i.nx) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %bb.cl, %bb.bx, %bb.bh
  %.pn119.pn = phi { ptr, i32 } [ %i.jb, %bb.bh ], [ %i.kz, %bb.bx ], [ %i.kz, %bb.cl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #22
  br label %.body153

.body153:                                         ; preds = %bb.bd, %_ZNSt6vectorIiSaIiEED2Ev.exit166
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %i.hf, %bb.bd ]
  %i.ny = load ptr, ptr %41, align 8, !tbaa !427
  call void @free(ptr noundef %i.ny) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %bb.cm

bb.cm:                                            ; preds = %bb.be, %.body153, %bb.at, %bb.bf, %bb.bg, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %i.dh, %bb.an ], [ %i.hg, %bb.be ], [ %.pn122.pn, %.body153 ], [ %i.hi, %bb.bg ], [ %i.hh, %bb.bf ], [ %i.eh, %bb.at ] ; 2 uses
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %36) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #22
  %.not.i.i.i167 = icmp eq ptr %.sroa.0186.0298309, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorImSaImEED2Ev.exit168, label %bb.cn

bb.cn:                                            ; preds = %.thread, %bb.cm
  %.pn125.pn.pn.pn318 = phi { ptr, i32 } [ %i.di, %.thread ], [ %.pn125.pn.pn, %bb.cm ]
  %.sroa.0186.0299317 = phi ptr [ %i.cb, %.thread ], [ %.sroa.0186.0298309, %bb.cm ] ; 2 uses
  %.sroa.15.0295310316 = phi ptr [ %i.cc, %.thread ], [ %.sroa.15.0295311, %bb.cm ]
  %i.nz = ptrtoint ptr %.sroa.15.0295310316 to i64
  %i.oa = ptrtoint ptr %.sroa.0186.0299317 to i64
  %i.ob = sub i64 %i.nz, %i.oa
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0186.0299317, i64 noundef %i.ob) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit168

_ZNSt6vectorImSaImEED2Ev.exit168:                 ; preds = %bb.cm, %bb.cn, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn318, %bb.cn ], [ %.pn125.pn.pn, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.co:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 3 uses
  %8 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %9 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %10 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %11 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %12 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %13 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %14 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %15 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %16 = alloca %class.anon.201, align 1           ; 5 uses
  %17 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %18 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %19 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %20 = alloca %"class.Eigen::Matrix.211", align 8 ; 14 uses
  %21 = alloca %"class.Eigen::Matrix.57", align 8 ; 9 uses
  %22 = alloca %"class.std::vector", align 8      ; 9 uses
  %23 = alloca %"class.Eigen::Matrix.60", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !555
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = getelementptr [8 x i8], ptr %i.a, i64 %2 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !558  ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %.idx = shl i64 %i.d, 4
  %i.f = getelementptr i8, ptr %i.c, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %17, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.g = load ptr, ptr %0, align 8, !tbaa !555
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %3 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !558  ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %.idx261 = shl i64 %i.i, 4
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx261
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %11, align 8, !tbaa !20
  store ptr %i.l, ptr %18, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.m = load ptr, ptr %5, align 8, !tbaa !555    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !558  ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.m, i64 %i.o
  %.idx262 = shl i64 %i.o, 4
  %i.q = getelementptr i8, ptr %i.m, i64 %.idx262
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !20
  store ptr %i.r, ptr %19, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.s = invoke noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates11Collinear_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_3ISP_EES18_S18_EEbRKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.s, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.22)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.bz unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.h:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.i:                                             ; preds = %bb.c, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.j:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #22
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %19, align 8, !tbaa !20    ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.ab, -1
  store atomic i32 %i.ag, ptr %i.aa monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.p:                                             ; preds = %bb.l
  br i1 %i.ac, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = atomicrmw sub ptr %i.aa, i32 1 release, align 4
  %i.ai = icmp eq i32 %i.ah, 1
  br i1 %i.ai, label %bb.r, label %_ZN4CGAL6HandleD2Ev.exit

bb.r:                                             ; preds = %bb.q, %bb.p
end_hunk_12
begin_hunk_13_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %i.ck = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 0
  br i1 %i.cl, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ck, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cj, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cj, %.noexc143 ], [ %i.cm, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.ca, 4
  br i1 %min.iters.check, label %.lr.ph.preheader378, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ca, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x i64> %vec.ind, ptr %i.cn, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.co, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !559

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader378

.lr.ph.preheader378:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110266.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.ch, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.cq = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.cr = ptrtoint ptr %i.ch to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 3
  %i.cu = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ct, i1 true)
  %i.cv = shl nuw nsw i64 %i.cu, 1
  %i.cw = xor i64 %i.cv, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSI_IT0_EEmmRKS3_IiSaIiEERKNSI_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSJ_SJ_SN_SV_(ptr nonnull %i.ch, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.cw, ptr nonnull %16, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread367

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEESF_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSI_IT0_EEmmRKS3_IiSaIiEERKNSI_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSJ_SJ_SN_(ptr nonnull %i.ch, ptr %.0.i.i.i.i.i.ph, ptr nonnull %16, ptr nonnull %4)
          to label %bb.an unwind label %.thread367

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit173

.lr.ph:                                           ; preds = %.lr.ph.preheader378, %.lr.ph
  %.0110266 = phi i64 [ %i.cy, %.lr.ph ], [ %.0110266.ph, %.lr.ph.preheader378 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %.0110266
  store i64 %.0110266, ptr %i.cx, align 8, !tbaa !31
  %i.cy = add nuw i64 %.0110266, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cy, %i.ca
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !560

bb.an:                                            ; preds = %.noexc145, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.cz = add nuw nsw i64 %i.ca, 3
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i8 0, i64 16, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dd = icmp samesign ugt i64 %i.ca, 768614336404564647
  br i1 %i.dd, label %bb.ao, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.de = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.de, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.de, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc175 unwind label %bb.aq

.noexc175:                                        ; preds = %bb.ao
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %.thread, %bb.an
  %i.df = phi ptr [ %i.cf, %.thread ], [ %i.dc, %bb.an ]
  %i.dg = phi ptr [ %i.ce, %.thread ], [ %i.db, %bb.an ]
  %i.dh = phi i64 [ 3, %.thread ], [ %i.cz, %bb.an ] ; 8 uses
  %.sroa.0227.0346357365 = phi ptr [ null, %.thread ], [ %i.ch, %bb.an ] ; 12 uses
  %.sroa.15.0343359364 = phi ptr [ null, %.thread ], [ %i.ci, %bb.an ] ; 3 uses
  %i.di = mul nuw i64 %i.dh, 24
  %i.dj = call noalias ptr @malloc(i64 noundef %i.di) #37 ; 7 uses
  %i.dk = icmp eq ptr %i.dj, null
  br i1 %i.dk, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.dl = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dl, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.dl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc176 unwind label %bb.aq

.noexc176:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0227.0346357366 = phi ptr [ %.sroa.0227.0346357365, %bb.ap ], [ %i.ch, %bb.ao ]
  %.sroa.15.0343359363 = phi ptr [ %.sroa.15.0343359364, %bb.ap ], [ %i.ci, %bb.ao ]
  %i.dm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ar:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.dj, ptr %20, align 8, !tbaa !555
  store i64 %i.dh, ptr %i.dg, align 8, !tbaa !558
  store i64 3, ptr %i.df, align 8, !tbaa !561
  %.pre = load ptr, ptr %0, align 8, !tbaa !555, !noalias !14 ; 3 uses
  %.pre303 = load i64, ptr %i.b, align 8, !tbaa !558 ; 5 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge270_crit_edge, label %.lr.ph269

.._crit_edge270_crit_edge:                        ; preds = %bb.ar
  %.pre307 = shl nuw nsw i64 %i.dh, 1
  %.pre308 = shl nsw i64 %.pre303, 1
  br label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.lr.ph269:                                        ; preds = %bb.ar
  %i.dn = load ptr, ptr %4, align 8, !tbaa !30
  %i.do = load ptr, ptr %1, align 8, !tbaa !39
  %i.dp = trunc i64 %2 to i32                     ; 3 uses
  %i.dq = trunc i64 %3 to i32                     ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ds = shl nuw nsw i64 %i.dh, 1                ; 2 uses
  %i.dt = shl nsw i64 %.pre303, 1                 ; 2 uses
  br label %bb.as

.thread367:                                       ; preds = %bb.aj, %.noexc145
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.as:                                            ; preds = %.lr.ph269, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.091267 = phi i64 [ 0, %.lr.ph269 ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %.091267
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !31
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !38
  %i.dz = call i32 @llvm.abs.i32(i32 %i.dy, i1 true)
  %i.ea = zext nneg i32 %i.dz to i64
  %i.eb = getelementptr [4 x i8], ptr %i.do, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4     ; 3 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.ed, %i.dp
  %.not10.i = icmp eq i32 %i.ed, %i.dq
  %or.cond258 = or i1 %.not.i, %.not10.i
  br i1 %or.cond258, label %bb.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ee = load i64, ptr %i.dr, align 8, !tbaa !41 ; 2 uses
  %i.ef = getelementptr [4 x i8], ptr %i.ec, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.eg, %i.dp
  %.not12.i = icmp eq i32 %i.eg, %i.dq
  %or.cond259 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond259, label %bb.au, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %.idx.i = shl i64 %i.ee, 3
  %i.eh = getelementptr i8, ptr %i.ec, i64 %.idx.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.ei, %i.dp
  br i1 %.not13.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not14.i = icmp eq i32 %i.ei, %i.dq
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.ei
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.at, %bb.as, %bb.av, %bb.au
  %.0.i = phi i32 [ -1, %bb.au ], [ %i.ed, %bb.as ], [ %i.eg, %bb.at ], [ %spec.select.i, %bb.av ]
  %i.ej = sext i32 %.0.i to i64
  %i.ek = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.ej ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.091267 ; 3 uses
  %i.em = load double, ptr %i.ek, align 8, !tbaa !562
  store double %i.em, ptr %i.el, align 8, !tbaa !562
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.dh
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %.pre303
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !562
  store double %i.ep, ptr %i.en, align 8, !tbaa !562
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.el, i64 %i.ds
  %i.er = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.dt
  %i.es = load double, ptr %i.er, align 8, !tbaa !562
  store double %i.es, ptr %i.eq, align 8, !tbaa !562
  %i.et = add nuw i64 %.091267, 1                 ; 2 uses
  %exitcond294.not = icmp eq i64 %i.et, %i.ca
  br i1 %exitcond294.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %bb.as, !llvm.loop !564

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.._crit_edge270_crit_edge
  %.pre-phi309 = phi i64 [ %.pre308, %.._crit_edge270_crit_edge ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre307, %.._crit_edge270_crit_edge ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.ca ; 3 uses
  %i.ev = load ptr, ptr %5, align 8, !tbaa !555   ; 3 uses
  %i.ew = load i64, ptr %i.n, align 8, !tbaa !558 ; 2 uses
  %i.ex = load double, ptr %i.ev, align 8, !tbaa !562
  store double %i.ex, ptr %i.eu, align 8, !tbaa !562
  %i.ey = getelementptr [8 x i8], ptr %i.eu, i64 %i.dh
  %i.ez = getelementptr [8 x i8], ptr %i.ev, i64 %i.ew
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !562
  store double %i.fa, ptr %i.ey, align 8, !tbaa !562
  %i.fb = getelementptr [8 x i8], ptr %i.eu, i64 %.pre-phi
  %.idx338 = shl i64 %i.ew, 4
  %i.fc = getelementptr i8, ptr %i.ev, i64 %.idx338
  %i.fd = load double, ptr %i.fc, align 8, !tbaa !562
  store double %i.fd, ptr %i.fb, align 8, !tbaa !562
  %i.fe = getelementptr inbounds [8 x i8], ptr %.pre, i64 %2 ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.cb ; 3 uses
  %i.fg = load double, ptr %i.fe, align 8, !tbaa !562
  store double %i.fg, ptr %i.ff, align 8, !tbaa !562
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %i.dh
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %.pre303
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !562
  store double %i.fj, ptr %i.fh, align 8, !tbaa !562
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %i.ff, i64 %.pre-phi
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %.pre-phi309
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !562
  store double %i.fm, ptr %i.fk, align 8, !tbaa !562
  %i.fn = getelementptr inbounds [8 x i8], ptr %.pre, i64 %3 ; 3 uses
  %i.fo = add nuw nsw i64 %i.ca, 2                ; 7 uses
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %i.fo ; 3 uses
  %i.fq = load double, ptr %i.fn, align 8, !tbaa !562
  store double %i.fq, ptr %i.fp, align 8, !tbaa !562
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.dh
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.pre303
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !562
  store double %i.ft, ptr %i.fr, align 8, !tbaa !562
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %.pre-phi
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fn, i64 %.pre-phi309
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !562
  store double %i.fw, ptr %i.fu, align 8, !tbaa !562
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.fx = mul i64 %i.cb, 12
  %i.fy = call noalias ptr @malloc(i64 noundef %i.fx) #37 ; 9 uses
  %i.fz = icmp eq ptr %i.fy, null
  br i1 %i.fz, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.ga = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ga, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.ga, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc181 unwind label %bb.ax

.noexc181:                                        ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body158

bb.ay:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.gc = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.fy, ptr %21, align 8, !tbaa !39
  store i64 %i.cb, ptr %i.gd, align 8, !tbaa !41
  store i64 3, ptr %i.gc, align 8, !tbaa !94
  %.pre312 = trunc i64 %i.fo to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge274_crit_edge, label %.lr.ph273

.._crit_edge274_crit_edge:                        ; preds = %bb.ay
  %.pre310 = trunc i64 %i.cb to i32
  %.pre314 = shl nuw i64 %i.cb, 3
  br label %._crit_edge274

.lr.ph273:                                        ; preds = %bb.ay
  %i.ge = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.gf = trunc i64 %i.cb to i32                  ; 8 uses
  %.idx264 = shl nuw i64 %i.cb, 3                 ; 5 uses
  %i.gg = icmp eq i64 %i.bz, 4
  br i1 %i.gg, label %.epil.preheader, label %.lr.ph273.new

.lr.ph273.new:                                    ; preds = %.lr.ph273
  %unroll_iter = and i64 %i.ca, 1152921504606846974
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph273.new
  %.089271 = phi i64 [ 0, %.lr.ph273.new ], [ %i.ha, %bb.az ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph273.new ], [ %niter.next.1, %bb.az ]
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %.089271
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !31
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !38
  %i.gl = icmp slt i32 %i.gk, 0                   ; 2 uses
  %i.gm = getelementptr [4 x i8], ptr %i.fy, i64 %.089271 ; 3 uses
  %i.gn = getelementptr [4 x i8], ptr %i.gm, i64 %i.cb
  %i.go = getelementptr i8, ptr %i.gm, i64 %.idx264
  %i.gp = trunc i64 %.089271 to i32
  %..pre312 = select i1 %i.gl, i32 %i.gf, i32 %.pre312
  %.pre312. = select i1 %i.gl, i32 %.pre312, i32 %i.gf
  store i32 %..pre312, ptr %i.gm, align 4, !tbaa !38
  store i32 %.pre312., ptr %i.gn, align 4, !tbaa !38
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !38
  %i.gq = or disjoint i64 %.089271, 1             ; 3 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !31
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !38
  %i.gv = icmp slt i32 %i.gu, 0                   ; 2 uses
  %i.gw = getelementptr [4 x i8], ptr %i.fy, i64 %i.gq ; 3 uses
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.cb
  %i.gy = getelementptr i8, ptr %i.gw, i64 %.idx264
  %i.gz = trunc i64 %i.gq to i32
  %..pre312.1 = select i1 %i.gv, i32 %i.gf, i32 %.pre312
  %.pre312..1 = select i1 %i.gv, i32 %.pre312, i32 %i.gf
  store i32 %..pre312.1, ptr %i.gw, align 4, !tbaa !38
  store i32 %.pre312..1, ptr %i.gx, align 4, !tbaa !38
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !38
  %i.ha = add nuw i64 %.089271, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge274.loopexit.unr-lcssa, label %bb.az, !llvm.loop !565

._crit_edge274.loopexit.unr-lcssa:                ; preds = %bb.az
  %i.hb = and i64 %i.bz, 4
  %lcmp.mod.not = icmp eq i64 %i.hb, 0
  br i1 %lcmp.mod.not, label %._crit_edge274, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge274.loopexit.unr-lcssa, %.lr.ph273
  %.089271.epil.init = phi i64 [ 0, %.lr.ph273 ], [ %i.ha, %._crit_edge274.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod379 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod379)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %.089271.epil.init
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !31
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %i.hd
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !38
  %i.hg = icmp slt i32 %i.hf, 0                   ; 2 uses
  %i.hh = getelementptr [4 x i8], ptr %i.fy, i64 %.089271.epil.init ; 3 uses
  %i.hi = getelementptr [4 x i8], ptr %i.hh, i64 %i.cb
  %i.hj = getelementptr i8, ptr %i.hh, i64 %.idx264
  %i.hk = trunc i64 %.089271.epil.init to i32
  %..pre312.epil = select i1 %i.hg, i32 %i.gf, i32 %.pre312
  %.pre312..epil = select i1 %i.hg, i32 %.pre312, i32 %i.gf
  store i32 %..pre312.epil, ptr %i.hh, align 4, !tbaa !38
  store i32 %.pre312..epil, ptr %i.hi, align 4, !tbaa !38
  store i32 %i.hk, ptr %i.hj, align 4, !tbaa !38
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %.epil.preheader, %._crit_edge274.loopexit.unr-lcssa, %.._crit_edge274_crit_edge
  %.idx263.pre-phi = phi i64 [ %.pre314, %.._crit_edge274_crit_edge ], [ %.idx264, %._crit_edge274.loopexit.unr-lcssa ], [ %.idx264, %.epil.preheader ]
  %.pre-phi311 = phi i32 [ %.pre310, %.._crit_edge274_crit_edge ], [ %i.gf, %._crit_edge274.loopexit.unr-lcssa ], [ %i.gf, %.epil.preheader ]
  %i.hl = getelementptr i8, ptr %i.fy, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi311, ptr %i.hl, align 4, !tbaa !38
  %i.hm = getelementptr [4 x i8], ptr %i.hl, i64 %i.cb
  store i32 %.pre312, ptr %i.hm, align 4, !tbaa !38
  %i.hn = getelementptr i8, ptr %i.hl, i64 %.idx263.pre-phi
  %i.ho = trunc i64 %i.ca to i32
  store i32 %i.ho, ptr %i.hn, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hp = shl nuw nsw i64 %i.cb, 2
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #36
          to label %.noexc164 unwind label %bb.ba ; 7 uses

.noexc164:                                        ; preds = %._crit_edge274
  store ptr %i.hq, ptr %22, align 8, !tbaa !30
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.cb
  %i.hs = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !96
  store i32 0, ptr %i.hq, align 4, !tbaa !38
  %i.ht = getelementptr i8, ptr %i.hq, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph277, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc164
  call void @llvm.memset.p0.i64(ptr align 4 %i.ht, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 %i.bz
  br label %.lr.ph277

.lr.ph277:                                        ; preds = %.noexc164, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i162 = phi ptr [ %i.hu, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ht, %.noexc164 ]
  %i.hv = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.0.i.i.i.i.i162, ptr %i.hv, align 8, !tbaa !27
  %i.hw = icmp eq ptr %i.bv, %i.bw
  br i1 %i.hw, label %.epil.preheader380, label %.lr.ph277.new

.lr.ph277.new:                                    ; preds = %.lr.ph277
  %unroll_iter384 = and i64 %i.cb, 2305843009213693950
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge274
  %i.hx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

bb.bb:                                            ; preds = %bb.bj, %.lr.ph277.new
  %.088275 = phi i64 [ 0, %.lr.ph277.new ], [ %i.iz, %bb.bj ] ; 6 uses
  %niter385 = phi i64 [ 0, %.lr.ph277.new ], [ %niter385.next.1, %bb.bj ]
  %i.hy = getelementptr [4 x i8], ptr %i.fy, i64 %.088275 ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !38
  %i.ia = sext i32 %i.hz to i64
  %i.ib = icmp eq i64 %i.cb, %i.ia
  br i1 %i.ib, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.ic = getelementptr [4 x i8], ptr %i.hy, i64 %i.cb
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !38
  %i.ie = sext i32 %i.id to i64
  %i.if = icmp eq i64 %i.fo, %i.ie
  br i1 %i.if, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.ig = trunc i64 %.088275 to i32
  %i.ih = xor i32 %i.ig, -1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.ii = trunc i64 %.088275 to i32
  %i.ij = or disjoint i32 %i.ii, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink376 = phi i32 [ %i.ih, %bb.bd ], [ %i.ij, %bb.be ]
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.088275
  store i32 %.sink376, ptr %i.ik, align 4, !tbaa !38
  %i.il = or disjoint i64 %.088275, 1             ; 4 uses
  %i.im = getelementptr [4 x i8], ptr %i.fy, i64 %i.il ; 2 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !38
  %i.io = sext i32 %i.in to i64
  %i.ip = icmp eq i64 %i.cb, %i.io
  br i1 %i.ip, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.iq = getelementptr [4 x i8], ptr %i.im, i64 %i.cb
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !38
  %i.is = sext i32 %i.ir to i64
  %i.it = icmp eq i64 %i.fo, %i.is
  br i1 %i.it, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.iu = trunc i64 %i.il to i32
  %i.iv = add i32 %i.iu, 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.iw = trunc i64 %i.il to i32
  %i.ix = xor i32 %i.iw, -1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sink376.1 = phi i32 [ %i.ix, %bb.bi ], [ %i.iv, %bb.bh ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.il
  store i32 %.sink376.1, ptr %i.iy, align 4, !tbaa !38
  %i.iz = add nuw i64 %.088275, 2                 ; 2 uses
  %niter385.next.1 = add i64 %niter385, 2         ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %._crit_edge278.unr-lcssa, label %bb.bb, !llvm.loop !566

._crit_edge278.unr-lcssa:                         ; preds = %bb.bj
  %i.ja = and i64 %i.bz, 4
  %lcmp.mod382.not.not = icmp eq i64 %i.ja, 0
  br i1 %lcmp.mod382.not.not, label %.epil.preheader380, label %._crit_edge278

.epil.preheader380:                               ; preds = %._crit_edge278.unr-lcssa, %.lr.ph277
  %.088275.epil.init = phi i64 [ 0, %.lr.ph277 ], [ %i.iz, %._crit_edge278.unr-lcssa ] ; 4 uses
  %lcmp.mod383 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod383)
  %i.jb = getelementptr [4 x i8], ptr %i.fy, i64 %.088275.epil.init ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !38
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp eq i64 %i.cb, %i.jd
  br i1 %i.je, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.epil.preheader380
  %i.jf = getelementptr [4 x i8], ptr %i.jb, i64 %i.cb
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !38
  %i.jh = sext i32 %i.jg to i64
  %i.ji = icmp eq i64 %i.fo, %i.jh
  br i1 %i.ji, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.epil.preheader380
  %i.jj = trunc i64 %.088275.epil.init to i32
  %i.jk = add i32 %i.jj, 1
  br label %._crit_edge278.epilog-lcssa

bb.bm:                                            ; preds = %bb.bk
  %i.jl = trunc i64 %.088275.epil.init to i32
  %i.jm = xor i32 %i.jl, -1
  br label %._crit_edge278.epilog-lcssa

._crit_edge278.epilog-lcssa:                      ; preds = %bb.bm, %bb.bl
  %.sink376.epil = phi i32 [ %i.jm, %bb.bm ], [ %i.jk, %bb.bl ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %.088275.epil.init
  store i32 %.sink376.epil, ptr %i.jn, align 4, !tbaa !38
  br label %._crit_edge278

._crit_edge278:                                   ; preds = %._crit_edge278.unr-lcssa, %._crit_edge278.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %i.cb, i64 noundef %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i1 noundef zeroext false)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %._crit_edge278
  %i.jo = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jp = load i64, ptr %i.jo, align 8, !tbaa !98
  %.not.i.i165 = icmp eq i64 %i.ca, %i.jp
  br i1 %.not.i.i165, label %.lr.ph281, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jq = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.jq) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bo
  %i.jr = call noalias ptr @malloc(i64 noundef %i.bz) #37 ; 2 uses
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.bp, label %.sink.split.i.i

bb.bp:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.jt = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jt, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.jt, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc167 unwind label %bb.bq

.noexc167:                                        ; preds = %bb.bp
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bo
  %.sink.i.i = phi ptr [ %i.jr, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bo ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %bb.bn, %.sink.split.i.i
  store i64 %i.ca, ptr %i.jo, align 8, !tbaa !98
  %i.ju = load ptr, ptr %23, align 8, !tbaa !100  ; 5 uses
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp, %._crit_edge278
  %i.jv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jw = load ptr, ptr %23, align 8, !tbaa !100
  call void @free(ptr noundef %i.jw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.jx = load ptr, ptr %22, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i170 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIiSaIiEED2Ev.exit171, label %bb.bw

bb.br:                                            ; preds = %.lr.ph281, %bb.bs
  %.086279 = phi i64 [ 0, %.lr.ph281 ], [ %i.kc, %bb.bs ] ; 4 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %.086279
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !38
  %i.ka = sext i32 %i.jz to i64
  %i.kb = icmp eq i64 %i.ca, %i.ka
  br i1 %i.kb, label %._crit_edge282, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kc = add nuw i64 %.086279, 1
  %exitcond300.not = icmp eq i64 %.086279, %i.ca
  br i1 %exitcond300.not, label %._crit_edge282, label %bb.br, !llvm.loop !567

._crit_edge282:                                   ; preds = %bb.bs, %bb.br
  %.087.ph = phi i64 [ %i.fo, %bb.bs ], [ %.086279, %bb.br ]
  br i1 %.not.i.i.i.i, label %._crit_edge288, label %.lr.ph287

.lr.ph287:                                        ; preds = %._crit_edge282
  %i.kd = add i64 %.087.ph, 1                     ; 3 uses
  %i.ke = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.kf = icmp eq i64 %i.bz, 4
  br i1 %i.kf, label %.epil.preheader386, label %.lr.ph287.new

.lr.ph287.new:                                    ; preds = %.lr.ph287
  %unroll_iter390 = and i64 %i.ca, 1152921504606846974
  br label %bb.bv

._crit_edge288.loopexit.unr-lcssa:                ; preds = %bb.bv
  %i.kg = and i64 %i.bz, 4
  %lcmp.mod388.not = icmp eq i64 %i.kg, 0
  br i1 %lcmp.mod388.not, label %._crit_edge288, label %.epil.preheader386

.epil.preheader386:                               ; preds = %._crit_edge288.loopexit.unr-lcssa, %.lr.ph287
  %.0285.epil.init = phi i64 [ 0, %.lr.ph287 ], [ %i.lt, %._crit_edge288.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod389 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod389)
  %i.kh = add i64 %i.kd, %.0285.epil.init
  %i.ki = urem i64 %i.kh, %i.cb
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.ki
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !38
  %i.kl = sext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %i.kl
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !31
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.0285.epil.init
  %i.kp = trunc i64 %i.kn to i32
  store i32 %i.kp, ptr %i.ko, align 4, !tbaa !38
  br label %._crit_edge288

._crit_edge288:                                   ; preds = %.epil.preheader386, %._crit_edge288.loopexit.unr-lcssa, %._crit_edge282
  call void @free(ptr noundef nonnull %i.ju) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.kq = load ptr, ptr %22, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i168 = icmp eq ptr %i.kq, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge288
  %i.kr = load ptr, ptr %i.hs, align 8, !tbaa !96
  %i.ks = ptrtoint ptr %i.kr to i64
  %i.kt = ptrtoint ptr %i.kq to i64
  %i.ku = sub i64 %i.ks, %i.kt
  call void @_ZdlPvm(ptr noundef nonnull %i.kq, i64 noundef %i.ku) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge288, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.kv = load ptr, ptr %21, align 8, !tbaa !39
  call void @free(ptr noundef %i.kv) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.kw = load ptr, ptr %20, align 8, !tbaa !555
  call void @free(ptr noundef %i.kw) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i169 = icmp eq ptr %.sroa.0227.0346357365, null
  br i1 %.not.i.i.i169, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.kx = ptrtoint ptr %.sroa.15.0343359364 to i64
  %i.ky = ptrtoint ptr %.sroa.0227.0346357365 to i64
  %i.kz = sub i64 %i.kx, %i.ky
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0227.0346357365, i64 noundef %i.kz) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  ret void

bb.bv:                                            ; preds = %bb.bv, %.lr.ph287.new
  %.0285 = phi i64 [ 0, %.lr.ph287.new ], [ %i.lt, %bb.bv ] ; 4 uses
  %niter391 = phi i64 [ 0, %.lr.ph287.new ], [ %niter391.next.1, %bb.bv ]
  %i.la = add i64 %i.kd, %.0285
  %i.lb = urem i64 %i.la, %i.cb
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !38
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !31
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %.0285
  %i.li = trunc i64 %i.lg to i32
  store i32 %i.li, ptr %i.lh, align 4, !tbaa !38
  %i.lj = or disjoint i64 %.0285, 1               ; 2 uses
  %i.lk = add i64 %i.kd, %i.lj
  %i.ll = urem i64 %i.lk, %i.cb
  %i.lm = getelementptr inbounds nuw [4 x i8], ptr %i.ju, i64 %i.ll
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !38
  %i.lo = sext i32 %i.ln to i64
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0227.0346357365, i64 %i.lo
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !31
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ke, i64 %i.lj
  %i.ls = trunc i64 %i.lq to i32
  store i32 %i.ls, ptr %i.lr, align 4, !tbaa !38
  %i.lt = add nuw i64 %.0285, 2                   ; 2 uses
  %niter391.next.1 = add i64 %niter391, 2         ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %._crit_edge288.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !568

bb.bw:                                            ; preds = %bb.bq
  %i.lu = load ptr, ptr %i.hs, align 8, !tbaa !96
  %i.lv = ptrtoint ptr %i.lu to i64
  %i.lw = ptrtoint ptr %i.jx to i64
  %i.lx = sub i64 %i.lv, %i.lw
  call void @_ZdlPvm(ptr noundef nonnull %i.jx, i64 noundef %i.lx) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit171

_ZNSt6vectorIiSaIiEED2Ev.exit171:                 ; preds = %bb.bw, %bb.bq, %bb.ba
  %.pn119.pn = phi { ptr, i32 } [ %i.hx, %bb.ba ], [ %i.jv, %bb.bq ], [ %i.jv, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.ly = load ptr, ptr %21, align 8, !tbaa !39
  call void @free(ptr noundef %i.ly) #22
  %.pre304 = load ptr, ptr %20, align 8, !tbaa !555
  br label %.body158

.body158:                                         ; preds = %bb.ax, %_ZNSt6vectorIiSaIiEED2Ev.exit171
  %i.lz = phi ptr [ %.pre304, %_ZNSt6vectorIiSaIiEED2Ev.exit171 ], [ %i.dj, %bb.ax ]
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit171 ], [ %i.gb, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @free(ptr noundef %i.lz) #22
  br label %bb.bx

bb.bx:                                            ; preds = %.body158, %bb.aq
  %.sroa.15.0343359362 = phi ptr [ %.sroa.15.0343359364, %.body158 ], [ %.sroa.15.0343359363, %bb.aq ]
  %.sroa.0227.0348 = phi ptr [ %.sroa.0227.0346357365, %.body158 ], [ %.sroa.0227.0346357366, %bb.aq ] ; 2 uses
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %.body158 ], [ %i.dm, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i172 = icmp eq ptr %.sroa.0227.0348, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorImSaImEED2Ev.exit173, label %bb.by

bb.by:                                            ; preds = %.thread367, %bb.bx
  %.pn125.pn.pn.pn374 = phi { ptr, i32 } [ %i.du, %.thread367 ], [ %.pn125.pn.pn, %bb.bx ]
  %.sroa.0227.0347373 = phi ptr [ %i.ch, %.thread367 ], [ %.sroa.0227.0348, %bb.bx ] ; 2 uses
  %.sroa.15.0343358372 = phi ptr [ %i.ci, %.thread367 ], [ %.sroa.15.0343359362, %bb.bx ]
  %i.ma = ptrtoint ptr %.sroa.15.0343358372 to i64
  %i.mb = ptrtoint ptr %.sroa.0227.0347373 to i64
  %i.mc = sub i64 %i.ma, %i.mb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0227.0347373, i64 noundef %i.mc) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit173

_ZNSt6vectorImSaImEED2Ev.exit173:                 ; preds = %bb.bx, %bb.by, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn374, %bb.by ], [ %.pn125.pn.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.bz:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %8 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %9 = alloca %"class.CGAL::Static_filtered_predicate.683", align 1 ; 5 uses
  %10 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %11 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %12 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %13 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %14 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %15 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %16 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %17 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %18 = alloca %"struct.std::pair.610", align 8   ; 8 uses
  %19 = alloca %"struct.std::pair.437", align 8   ; 7 uses
  %20 = alloca %"class.CGAL::Static_filtered_predicate.646", align 1 ; 5 uses
  %21 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %22 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %23 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %24 = alloca %"class.CGAL::Static_filtered_predicate.606", align 1 ; 4 uses
  %25 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %26 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %27 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %28 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %29 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %30 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %31 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %32 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %33 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %34 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %35 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %36 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %37 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %38 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %39 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %40 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %41 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %42 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %43 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %44 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %45 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %46 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %47 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %48 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %49 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %50 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %51 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %52 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %53 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %54 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %55 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %56 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %57 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %58 = alloca %"class.CGAL::Plane_3", align 8    ; 11 uses
  %59 = alloca %"class.std::vector.93", align 8   ; 14 uses
  %60 = alloca %"class.std::vector", align 8      ; 17 uses
  %61 = alloca %"class.std::vector", align 8      ; 17 uses
  %62 = alloca %"class.std::vector", align 8      ; 21 uses
  %63 = alloca %"class.std::vector", align 8      ; 21 uses
  %64 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %65 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %66 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %67 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %68 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %69 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 10 uses
  switch i64 %i.g, label %bb.bt [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %5, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.j) #22
  store ptr null, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !98
  br label %bb.kt

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98
  %.not.i.i269 = icmp eq i64 %i.l, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  br i1 %.not.i.i269, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %.pre) #22
  %i.m = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #37 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i.i:                                  ; preds = %bb.e
  store ptr %i.m, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270: ; preds = %bb.d, %.sink.split.i.i
  %i.p = phi ptr [ %.pre, %bb.d ], [ %i.m, %.sink.split.i.i ]
  store i64 1, ptr %i.k, align 8, !tbaa !98
  store i32 0, ptr %i.p, align 4, !tbaa !38
  br label %bb.kt

bb.g:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.c, align 4, !tbaa !38
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr [4 x i8], ptr %i.s, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4       ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 3 uses
  %i.y = trunc i64 %2 to i32                      ; 6 uses
  %.not.i = icmp eq i32 %i.x, %i.y
  %i.z = trunc i64 %3 to i32                      ; 6 uses
  %.not10.i = icmp eq i32 %i.x, %i.z
  %or.cond = or i1 %.not.i, %.not10.i
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = sext i32 %i.x to i64
  br label %_ZZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEbENKUlmE_clEm.exit
end_hunk_13
begin_hunk_14_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IdLi1ELin1ELi1ELi1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EEmmRKSt6vectorIiSaIiEERKNS9_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  %i.ci = add nsw i64 %i.by, -1                   ; 2 uses
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ci, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.ch, %.noexc143 ], [ %i.ck, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.by, 4
  br i1 %min.iters.check, label %.lr.ph.preheader378, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.by, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x i64> %vec.ind, ptr %i.cl, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.cm, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !611

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader378

.lr.ph.preheader378:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110267.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.cf, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.co = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.cp = ptrtoint ptr %i.cf to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = ashr exact i64 %i.cq, 3
  %i.cs = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cr, i1 true)
  %i.ct = shl nuw nsw i64 %i.cs, 1
  %i.cu = xor i64 %i.ct, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SO_SW_(ptr nonnull %i.cf, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.cu, ptr nonnull %16, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread367

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENSE_IiLin1ELin1ELi0ELin1ELin1EEENSE_IdLi1ELin1ELi1ELi1ELin1EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SO_(ptr nonnull %i.cf, ptr %.0.i.i.i.i.i.ph, ptr nonnull %16, ptr nonnull %4)
          to label %bb.an unwind label %.thread367

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.u, %bb.i ], [ %i.v, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.t, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.s, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit175

.lr.ph:                                           ; preds = %.lr.ph.preheader378, %.lr.ph
  %.0110267 = phi i64 [ %i.cw, %.lr.ph ], [ %.0110267.ph, %.lr.ph.preheader378 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.0110267
  store i64 %.0110267, ptr %i.cv, align 8, !tbaa !31
  %i.cw = add nuw i64 %.0110267, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cw, %i.by
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !612

bb.an:                                            ; preds = %.noexc145, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.cx = add nuw nsw i64 %i.by, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %20, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cy, i8 0, i64 16, i1 false)
  %i.cz = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.da = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.db = icmp samesign ugt i64 %i.by, 768614336404564647
  br i1 %i.db, label %bb.ao, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.ao:                                            ; preds = %bb.an
  %i.dc = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dc, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc177 unwind label %bb.aq

.noexc177:                                        ; preds = %bb.ao
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %.thread, %bb.an
  %i.dd = phi ptr [ %i.cd, %.thread ], [ %i.da, %bb.an ]
  %i.de = phi ptr [ %i.cc, %.thread ], [ %i.cz, %bb.an ]
  %i.df = phi i64 [ 3, %.thread ], [ %i.cx, %bb.an ] ; 8 uses
  %.sroa.0229.0346357365 = phi ptr [ null, %.thread ], [ %i.cf, %bb.an ] ; 12 uses
  %.sroa.15.0343359364 = phi ptr [ null, %.thread ], [ %i.cg, %bb.an ] ; 3 uses
  %i.dg = mul nuw i64 %i.df, 24
  %i.dh = call noalias ptr @malloc(i64 noundef %i.dg) #37 ; 7 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.dj = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dj, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc178 unwind label %bb.aq

.noexc178:                                        ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0229.0346357366 = phi ptr [ %.sroa.0229.0346357365, %bb.ap ], [ %i.cf, %bb.ao ]
  %.sroa.15.0343359363 = phi ptr [ %.sroa.15.0343359364, %bb.ap ], [ %i.cg, %bb.ao ]
  %i.dk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.ar:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.dh, ptr %20, align 8, !tbaa !555
  store i64 %i.df, ptr %i.de, align 8, !tbaa !558
  store i64 3, ptr %i.dd, align 8, !tbaa !561
  %.pre = load ptr, ptr %0, align 8, !tbaa !555, !noalias !14 ; 3 uses
  %.pre304 = load i64, ptr %i.b, align 8, !tbaa !558 ; 5 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge271_crit_edge, label %.lr.ph270

.._crit_edge271_crit_edge:                        ; preds = %bb.ar
  %.pre308 = shl nuw nsw i64 %i.df, 1
  %.pre309 = shl nsw i64 %.pre304, 1
  br label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i

.lr.ph270:                                        ; preds = %bb.ar
  %i.dl = load ptr, ptr %4, align 8, !tbaa !30
  %i.dm = load ptr, ptr %1, align 8, !tbaa !39
  %i.dn = trunc i64 %2 to i32                     ; 3 uses
  %i.do = trunc i64 %3 to i32                     ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dq = shl nuw nsw i64 %i.df, 1                ; 2 uses
  %i.dr = shl nsw i64 %.pre304, 1                 ; 2 uses
  br label %bb.as

.thread367:                                       ; preds = %bb.aj, %.noexc145
  %i.ds = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.as:                                            ; preds = %.lr.ph270, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.091268 = phi i64 [ 0, %.lr.ph270 ], [ %i.er, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %.091268
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !31
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !38
  %i.dx = call i32 @llvm.abs.i32(i32 %i.dw, i1 true)
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %i.dm, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -4     ; 3 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.eb, %i.dn
  %.not10.i = icmp eq i32 %i.eb, %i.do
  %or.cond260 = or i1 %.not.i, %.not10.i
  br i1 %or.cond260, label %bb.at, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.as
  %i.ec = load i64, ptr %i.dp, align 8, !tbaa !41 ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.ee, %i.dn
  %.not12.i = icmp eq i32 %i.ee, %i.do
  %or.cond261 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond261, label %bb.au, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.au:                                            ; preds = %bb.at
  %.idx.i = shl i64 %i.ec, 3
  %i.ef = getelementptr i8, ptr %i.ea, i64 %.idx.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.eg, %i.dn
  br i1 %.not13.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not14.i = icmp eq i32 %i.eg, %i.do
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.eg
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.at, %bb.as, %bb.av, %bb.au
  %.0.i = phi i32 [ -1, %bb.au ], [ %i.eb, %bb.as ], [ %i.ee, %bb.at ], [ %spec.select.i, %bb.av ]
  %i.eh = sext i32 %.0.i to i64
  %i.ei = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.eh ; 3 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %.091268 ; 3 uses
  %i.ek = load double, ptr %i.ei, align 8, !tbaa !562
  store double %i.ek, ptr %i.ej, align 8, !tbaa !562
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.df
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %.pre304
  %i.en = load double, ptr %i.em, align 8, !tbaa !562
  store double %i.en, ptr %i.el, align 8, !tbaa !562
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %i.dq
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.dr
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !562
  store double %i.eq, ptr %i.eo, align 8, !tbaa !562
  %i.er = add nuw i64 %.091268, 1                 ; 2 uses
  %exitcond295.not = icmp eq i64 %i.er, %i.by
  br i1 %exitcond295.not, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i, label %bb.as, !llvm.loop !613

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.._crit_edge271_crit_edge
  %.pre-phi310 = phi i64 [ %.pre309, %.._crit_edge271_crit_edge ], [ %i.dr, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre308, %.._crit_edge271_crit_edge ], [ %i.dq, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.by ; 3 uses
  %i.et = load ptr, ptr %5, align 8, !tbaa !609   ; 3 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !562
  store double %i.eu, ptr %i.es, align 8, !tbaa !562
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.df
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !562
  store double %i.ex, ptr %i.ev, align 8, !tbaa !562
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %.pre-phi
  %i.ez = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !562
  store double %i.fa, ptr %i.ey, align 8, !tbaa !562
  %i.fb = getelementptr inbounds [8 x i8], ptr %.pre, i64 %2 ; 3 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.bz ; 3 uses
  %i.fd = load double, ptr %i.fb, align 8, !tbaa !562
  store double %i.fd, ptr %i.fc, align 8, !tbaa !562
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.df
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.pre304
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !562
  store double %i.fg, ptr %i.fe, align 8, !tbaa !562
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %.pre-phi
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fb, i64 %.pre-phi310
  %i.fj = load double, ptr %i.fi, align 8, !tbaa !562
  store double %i.fj, ptr %i.fh, align 8, !tbaa !562
  %i.fk = getelementptr inbounds [8 x i8], ptr %.pre, i64 %3 ; 3 uses
  %i.fl = add nuw nsw i64 %i.by, 2                ; 7 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.fl ; 3 uses
  %i.fn = load double, ptr %i.fk, align 8, !tbaa !562
  store double %i.fn, ptr %i.fm, align 8, !tbaa !562
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.df
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.pre304
  %i.fq = load double, ptr %i.fp, align 8, !tbaa !562
  store double %i.fq, ptr %i.fo, align 8, !tbaa !562
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.pre-phi
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.pre-phi310
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !562
  store double %i.ft, ptr %i.fr, align 8, !tbaa !562
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.fu = mul i64 %i.bz, 12
  %i.fv = call noalias ptr @malloc(i64 noundef %i.fu) #37 ; 9 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.fx = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fx, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc183 unwind label %bb.ax

.noexc183:                                        ; preds = %bb.aw
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.fy = landingpad { ptr, i32 }
          cleanup
  br label %.body160

bb.ay:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i
  %i.fz = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %21, i64 8
  store ptr %i.fv, ptr %21, align 8, !tbaa !39
  store i64 %i.bz, ptr %i.ga, align 8, !tbaa !41
  store i64 3, ptr %i.fz, align 8, !tbaa !94
  %.pre313 = trunc i64 %i.fl to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %.._crit_edge275_crit_edge, label %.lr.ph274

.._crit_edge275_crit_edge:                        ; preds = %bb.ay
  %.pre311 = trunc i64 %i.bz to i32
  %.pre315 = shl nuw i64 %i.bz, 3
  br label %._crit_edge275

.lr.ph274:                                        ; preds = %bb.ay
  %i.gb = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.gc = trunc i64 %i.bz to i32                  ; 8 uses
  %.idx265 = shl nuw i64 %i.bz, 3                 ; 5 uses
  %i.gd = icmp eq i64 %i.bx, 4
  br i1 %i.gd, label %.epil.preheader, label %.lr.ph274.new

.lr.ph274.new:                                    ; preds = %.lr.ph274
  %unroll_iter = and i64 %i.by, 1152921504606846974
  br label %bb.az

bb.az:                                            ; preds = %bb.az, %.lr.ph274.new
  %.089272 = phi i64 [ 0, %.lr.ph274.new ], [ %i.gx, %bb.az ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph274.new ], [ %niter.next.1, %bb.az ]
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %.089272
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !31
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !38
  %i.gi = icmp slt i32 %i.gh, 0                   ; 2 uses
  %i.gj = getelementptr [4 x i8], ptr %i.fv, i64 %.089272 ; 3 uses
  %i.gk = getelementptr [4 x i8], ptr %i.gj, i64 %i.bz
  %i.gl = getelementptr i8, ptr %i.gj, i64 %.idx265
  %i.gm = trunc i64 %.089272 to i32
  %..pre313 = select i1 %i.gi, i32 %i.gc, i32 %.pre313
  %.pre313. = select i1 %i.gi, i32 %.pre313, i32 %i.gc
  store i32 %..pre313, ptr %i.gj, align 4, !tbaa !38
  store i32 %.pre313., ptr %i.gk, align 4, !tbaa !38
  store i32 %i.gm, ptr %i.gl, align 4, !tbaa !38
  %i.gn = or disjoint i64 %.089272, 1             ; 3 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %i.gn
  %i.gp = load i64, ptr %i.go, align 8, !tbaa !31
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.gp
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !38
  %i.gs = icmp slt i32 %i.gr, 0                   ; 2 uses
  %i.gt = getelementptr [4 x i8], ptr %i.fv, i64 %i.gn ; 3 uses
  %i.gu = getelementptr [4 x i8], ptr %i.gt, i64 %i.bz
  %i.gv = getelementptr i8, ptr %i.gt, i64 %.idx265
  %i.gw = trunc i64 %i.gn to i32
  %..pre313.1 = select i1 %i.gs, i32 %i.gc, i32 %.pre313
  %.pre313..1 = select i1 %i.gs, i32 %.pre313, i32 %i.gc
  store i32 %..pre313.1, ptr %i.gt, align 4, !tbaa !38
  store i32 %.pre313..1, ptr %i.gu, align 4, !tbaa !38
  store i32 %i.gw, ptr %i.gv, align 4, !tbaa !38
  %i.gx = add nuw i64 %.089272, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge275.loopexit.unr-lcssa, label %bb.az, !llvm.loop !614

._crit_edge275.loopexit.unr-lcssa:                ; preds = %bb.az
  %i.gy = and i64 %i.bx, 4
  %lcmp.mod.not = icmp eq i64 %i.gy, 0
  br i1 %lcmp.mod.not, label %._crit_edge275, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge275.loopexit.unr-lcssa, %.lr.ph274
  %.089272.epil.init = phi i64 [ 0, %.lr.ph274 ], [ %i.gx, %._crit_edge275.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod379 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod379)
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %.089272.epil.init
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !31
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gb, i64 %i.ha
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !38
  %i.hd = icmp slt i32 %i.hc, 0                   ; 2 uses
  %i.he = getelementptr [4 x i8], ptr %i.fv, i64 %.089272.epil.init ; 3 uses
  %i.hf = getelementptr [4 x i8], ptr %i.he, i64 %i.bz
  %i.hg = getelementptr i8, ptr %i.he, i64 %.idx265
  %i.hh = trunc i64 %.089272.epil.init to i32
  %..pre313.epil = select i1 %i.hd, i32 %i.gc, i32 %.pre313
  %.pre313..epil = select i1 %i.hd, i32 %.pre313, i32 %i.gc
  store i32 %..pre313.epil, ptr %i.he, align 4, !tbaa !38
  store i32 %.pre313..epil, ptr %i.hf, align 4, !tbaa !38
  store i32 %i.hh, ptr %i.hg, align 4, !tbaa !38
  br label %._crit_edge275

._crit_edge275:                                   ; preds = %.epil.preheader, %._crit_edge275.loopexit.unr-lcssa, %.._crit_edge275_crit_edge
  %.idx264.pre-phi = phi i64 [ %.pre315, %.._crit_edge275_crit_edge ], [ %.idx265, %._crit_edge275.loopexit.unr-lcssa ], [ %.idx265, %.epil.preheader ]
  %.pre-phi312 = phi i32 [ %.pre311, %.._crit_edge275_crit_edge ], [ %i.gc, %._crit_edge275.loopexit.unr-lcssa ], [ %i.gc, %.epil.preheader ]
  %i.hi = getelementptr i8, ptr %i.fv, i64 %i.bx  ; 3 uses
  store i32 %.pre-phi312, ptr %i.hi, align 4, !tbaa !38
  %i.hj = getelementptr [4 x i8], ptr %i.hi, i64 %i.bz
  store i32 %.pre313, ptr %i.hj, align 4, !tbaa !38
  %i.hk = getelementptr i8, ptr %i.hi, i64 %.idx264.pre-phi
  %i.hl = trunc i64 %i.by to i32
  store i32 %i.hl, ptr %i.hk, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hm = shl nuw nsw i64 %i.bz, 2
  %i.hn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hm) #36
          to label %.noexc166 unwind label %bb.ba ; 7 uses

.noexc166:                                        ; preds = %._crit_edge275
  store ptr %i.hn, ptr %22, align 8, !tbaa !30
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.bz
  %i.hp = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.ho, ptr %i.hp, align 8, !tbaa !96
  store i32 0, ptr %i.hn, align 4, !tbaa !38
  %i.hq = getelementptr i8, ptr %i.hn, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph278, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc166
  call void @llvm.memset.p0.i64(ptr align 4 %i.hq, i8 0, i64 %i.bx, i1 false), !tbaa !38
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 %i.bx
  br label %.lr.ph278

.lr.ph278:                                        ; preds = %.noexc166, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i164 = phi ptr [ %i.hr, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hq, %.noexc166 ]
  %i.hs = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.0.i.i.i.i.i164, ptr %i.hs, align 8, !tbaa !27
  %i.ht = icmp eq ptr %i.bt, %i.bu
  br i1 %i.ht, label %.epil.preheader380, label %.lr.ph278.new

.lr.ph278.new:                                    ; preds = %.lr.ph278
  %unroll_iter384 = and i64 %i.bz, 2305843009213693950
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge275
  %i.hu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit173

bb.bb:                                            ; preds = %bb.bj, %.lr.ph278.new
  %.088276 = phi i64 [ 0, %.lr.ph278.new ], [ %i.iw, %bb.bj ] ; 6 uses
  %niter385 = phi i64 [ 0, %.lr.ph278.new ], [ %niter385.next.1, %bb.bj ]
  %i.hv = getelementptr [4 x i8], ptr %i.fv, i64 %.088276 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !38
  %i.hx = sext i32 %i.hw to i64
  %i.hy = icmp eq i64 %i.bz, %i.hx
  br i1 %i.hy, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.hz = getelementptr [4 x i8], ptr %i.hv, i64 %i.bz
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !38
  %i.ib = sext i32 %i.ia to i64
  %i.ic = icmp eq i64 %i.fl, %i.ib
  br i1 %i.ic, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.id = trunc i64 %.088276 to i32
  %i.ie = xor i32 %i.id, -1
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc, %bb.bb
  %i.if = trunc i64 %.088276 to i32
  %i.ig = or disjoint i32 %i.if, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bd, %bb.be
  %.sink376 = phi i32 [ %i.ie, %bb.bd ], [ %i.ig, %bb.be ]
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.088276
  store i32 %.sink376, ptr %i.ih, align 4, !tbaa !38
  %i.ii = or disjoint i64 %.088276, 1             ; 4 uses
  %i.ij = getelementptr [4 x i8], ptr %i.fv, i64 %i.ii ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !38
  %i.il = sext i32 %i.ik to i64
  %i.im = icmp eq i64 %i.bz, %i.il
  br i1 %i.im, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.in = getelementptr [4 x i8], ptr %i.ij, i64 %i.bz
  %i.io = load i32, ptr %i.in, align 4, !tbaa !38
  %i.ip = sext i32 %i.io to i64
  %i.iq = icmp eq i64 %i.fl, %i.ip
  br i1 %i.iq, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.ir = trunc i64 %i.ii to i32
  %i.is = add i32 %i.ir, 1
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.it = trunc i64 %i.ii to i32
  %i.iu = xor i32 %i.it, -1
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %.sink376.1 = phi i32 [ %i.iu, %bb.bi ], [ %i.is, %bb.bh ]
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %i.ii
  store i32 %.sink376.1, ptr %i.iv, align 4, !tbaa !38
  %i.iw = add nuw i64 %.088276, 2                 ; 2 uses
  %niter385.next.1 = add i64 %niter385, 2         ; 2 uses
  %niter385.ncmp.1 = icmp eq i64 %niter385.next.1, %unroll_iter384
  br i1 %niter385.ncmp.1, label %._crit_edge279.unr-lcssa, label %bb.bb, !llvm.loop !615

._crit_edge279.unr-lcssa:                         ; preds = %bb.bj
  %i.ix = and i64 %i.bx, 4
  %lcmp.mod382.not.not = icmp eq i64 %i.ix, 0
  br i1 %lcmp.mod382.not.not, label %.epil.preheader380, label %._crit_edge279

.epil.preheader380:                               ; preds = %._crit_edge279.unr-lcssa, %.lr.ph278
  %.088276.epil.init = phi i64 [ 0, %.lr.ph278 ], [ %i.iw, %._crit_edge279.unr-lcssa ] ; 4 uses
  %lcmp.mod383 = trunc i64 %i.bz to i1
  call void @llvm.assume(i1 %lcmp.mod383)
  %i.iy = getelementptr [4 x i8], ptr %i.fv, i64 %.088276.epil.init ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !38
  %i.ja = sext i32 %i.iz to i64
  %i.jb = icmp eq i64 %i.bz, %i.ja
  br i1 %i.jb, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.epil.preheader380
  %i.jc = getelementptr [4 x i8], ptr %i.iy, i64 %i.bz
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !38
  %i.je = sext i32 %i.jd to i64
  %i.jf = icmp eq i64 %i.fl, %i.je
  br i1 %i.jf, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.epil.preheader380
  %i.jg = trunc i64 %.088276.epil.init to i32
  %i.jh = add i32 %i.jg, 1
  br label %._crit_edge279.epilog-lcssa

bb.bm:                                            ; preds = %bb.bk
  %i.ji = trunc i64 %.088276.epil.init to i32
  %i.jj = xor i32 %i.ji, -1
  br label %._crit_edge279.epilog-lcssa

._crit_edge279.epilog-lcssa:                      ; preds = %bb.bm, %bb.bl
  %.sink376.epil = phi i32 [ %i.jj, %bb.bm ], [ %i.jh, %bb.bl ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.hn, i64 %.088276.epil.init
  store i32 %.sink376.epil, ptr %i.jk, align 4, !tbaa !38
  br label %._crit_edge279

._crit_edge279:                                   ; preds = %._crit_edge279.unr-lcssa, %._crit_edge279.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %i.bz, i64 noundef %i.fl, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i1 noundef zeroext false)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %._crit_edge279
  %i.jl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !98
  %.not.i.i167 = icmp eq i64 %i.by, %i.jm
  br i1 %.not.i.i167, label %.lr.ph282, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jn = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.jn) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bo
  %i.jo = call noalias ptr @malloc(i64 noundef %i.bx) #37 ; 2 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.bp, label %.sink.split.i.i

bb.bp:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.jq = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jq, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.jq, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc169 unwind label %bb.bq

.noexc169:                                        ; preds = %bb.bp
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bo
  %.sink.i.i = phi ptr [ %i.jo, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bo ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph282

.lr.ph282:                                        ; preds = %bb.bn, %.sink.split.i.i
  store i64 %i.by, ptr %i.jl, align 8, !tbaa !98
  %i.jr = load ptr, ptr %23, align 8, !tbaa !100  ; 5 uses
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp, %._crit_edge279
  %i.js = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jt = load ptr, ptr %23, align 8, !tbaa !100
  call void @free(ptr noundef %i.jt) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.ju = load ptr, ptr %22, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i172 = icmp eq ptr %i.ju, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIiSaIiEED2Ev.exit173, label %bb.bw

bb.br:                                            ; preds = %.lr.ph282, %bb.bs
  %.086280 = phi i64 [ 0, %.lr.ph282 ], [ %i.jz, %bb.bs ] ; 4 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %.086280
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !38
  %i.jx = sext i32 %i.jw to i64
  %i.jy = icmp eq i64 %i.by, %i.jx
  br i1 %i.jy, label %._crit_edge283, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jz = add nuw i64 %.086280, 1
  %exitcond301.not = icmp eq i64 %.086280, %i.by
  br i1 %exitcond301.not, label %._crit_edge283, label %bb.br, !llvm.loop !616

._crit_edge283:                                   ; preds = %bb.bs, %bb.br
  %.087.ph = phi i64 [ %i.fl, %bb.bs ], [ %.086280, %bb.br ]
  br i1 %.not.i.i.i.i, label %._crit_edge289, label %.lr.ph288

.lr.ph288:                                        ; preds = %._crit_edge283
  %i.ka = add i64 %.087.ph, 1                     ; 3 uses
  %i.kb = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.kc = icmp eq i64 %i.bx, 4
  br i1 %i.kc, label %.epil.preheader386, label %.lr.ph288.new

.lr.ph288.new:                                    ; preds = %.lr.ph288
  %unroll_iter390 = and i64 %i.by, 1152921504606846974
  br label %bb.bv

._crit_edge289.loopexit.unr-lcssa:                ; preds = %bb.bv
  %i.kd = and i64 %i.bx, 4
  %lcmp.mod388.not = icmp eq i64 %i.kd, 0
  br i1 %lcmp.mod388.not, label %._crit_edge289, label %.epil.preheader386

.epil.preheader386:                               ; preds = %._crit_edge289.loopexit.unr-lcssa, %.lr.ph288
  %.0286.epil.init = phi i64 [ 0, %.lr.ph288 ], [ %i.lq, %._crit_edge289.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod389 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod389)
  %i.ke = add i64 %i.ka, %.0286.epil.init
  %i.kf = urem i64 %i.ke, %i.bz
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !38
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %i.ki
  %i.kk = load i64, ptr %i.kj, align 8, !tbaa !31
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %.0286.epil.init
  %i.km = trunc i64 %i.kk to i32
  store i32 %i.km, ptr %i.kl, align 4, !tbaa !38
  br label %._crit_edge289

._crit_edge289:                                   ; preds = %.epil.preheader386, %._crit_edge289.loopexit.unr-lcssa, %._crit_edge283
  call void @free(ptr noundef nonnull %i.jr) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.kn = load ptr, ptr %22, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i170 = icmp eq ptr %i.kn, null
  br i1 %.not.i.i.i170, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge289
  %i.ko = load ptr, ptr %i.hp, align 8, !tbaa !96
  %i.kp = ptrtoint ptr %i.ko to i64
  %i.kq = ptrtoint ptr %i.kn to i64
  %i.kr = sub i64 %i.kp, %i.kq
  call void @_ZdlPvm(ptr noundef nonnull %i.kn, i64 noundef %i.kr) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge289, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.ks = load ptr, ptr %21, align 8, !tbaa !39
  call void @free(ptr noundef %i.ks) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.kt = load ptr, ptr %20, align 8, !tbaa !555
  call void @free(ptr noundef %i.kt) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i171 = icmp eq ptr %.sroa.0229.0346357365, null
  br i1 %.not.i.i.i171, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ku = ptrtoint ptr %.sroa.15.0343359364 to i64
  %i.kv = ptrtoint ptr %.sroa.0229.0346357365 to i64
  %i.kw = sub i64 %i.ku, %i.kv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0229.0346357365, i64 noundef %i.kw) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  ret void

bb.bv:                                            ; preds = %bb.bv, %.lr.ph288.new
  %.0286 = phi i64 [ 0, %.lr.ph288.new ], [ %i.lq, %bb.bv ] ; 4 uses
  %niter391 = phi i64 [ 0, %.lr.ph288.new ], [ %niter391.next.1, %bb.bv ]
  %i.kx = add i64 %i.ka, %.0286
  %i.ky = urem i64 %i.kx, %i.bz
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.ky
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !38
  %i.lb = sext i32 %i.la to i64
  %i.lc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %i.lb
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !31
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %.0286
  %i.lf = trunc i64 %i.ld to i32
  store i32 %i.lf, ptr %i.le, align 4, !tbaa !38
  %i.lg = or disjoint i64 %.0286, 1               ; 2 uses
  %i.lh = add i64 %i.ka, %i.lg
  %i.li = urem i64 %i.lh, %i.bz
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.jr, i64 %i.li
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !38
  %i.ll = sext i32 %i.lk to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0229.0346357365, i64 %i.ll
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !31
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.kb, i64 %i.lg
  %i.lp = trunc i64 %i.ln to i32
  store i32 %i.lp, ptr %i.lo, align 4, !tbaa !38
  %i.lq = add nuw i64 %.0286, 2                   ; 2 uses
  %niter391.next.1 = add i64 %niter391, 2         ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %._crit_edge289.loopexit.unr-lcssa, label %bb.bv, !llvm.loop !617

bb.bw:                                            ; preds = %bb.bq
  %i.lr = load ptr, ptr %i.hp, align 8, !tbaa !96
  %i.ls = ptrtoint ptr %i.lr to i64
  %i.lt = ptrtoint ptr %i.ju to i64
  %i.lu = sub i64 %i.ls, %i.lt
  call void @_ZdlPvm(ptr noundef nonnull %i.ju, i64 noundef %i.lu) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit173

_ZNSt6vectorIiSaIiEED2Ev.exit173:                 ; preds = %bb.bw, %bb.bq, %bb.ba
  %.pn119.pn = phi { ptr, i32 } [ %i.hu, %bb.ba ], [ %i.js, %bb.bq ], [ %i.js, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.lv = load ptr, ptr %21, align 8, !tbaa !39
  call void @free(ptr noundef %i.lv) #22
  %.pre305 = load ptr, ptr %20, align 8, !tbaa !555
  br label %.body160

.body160:                                         ; preds = %bb.ax, %_ZNSt6vectorIiSaIiEED2Ev.exit173
  %i.lw = phi ptr [ %.pre305, %_ZNSt6vectorIiSaIiEED2Ev.exit173 ], [ %i.dh, %bb.ax ]
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit173 ], [ %i.fy, %bb.ax ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  call void @free(ptr noundef %i.lw) #22
  br label %bb.bx

bb.bx:                                            ; preds = %.body160, %bb.aq
  %.sroa.15.0343359362 = phi ptr [ %.sroa.15.0343359364, %.body160 ], [ %.sroa.15.0343359363, %bb.aq ]
  %.sroa.0229.0348 = phi ptr [ %.sroa.0229.0346357365, %.body160 ], [ %.sroa.0229.0346357366, %bb.aq ] ; 2 uses
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %.body160 ], [ %i.dk, %bb.aq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i174 = icmp eq ptr %.sroa.0229.0348, null
  br i1 %.not.i.i.i174, label %_ZNSt6vectorImSaImEED2Ev.exit175, label %bb.by

bb.by:                                            ; preds = %.thread367, %bb.bx
  %.pn125.pn.pn.pn374 = phi { ptr, i32 } [ %i.ds, %.thread367 ], [ %.pn125.pn.pn, %bb.bx ]
  %.sroa.0229.0347373 = phi ptr [ %i.cf, %.thread367 ], [ %.sroa.0229.0348, %bb.bx ] ; 2 uses
  %.sroa.15.0343358372 = phi ptr [ %i.cg, %.thread367 ], [ %.sroa.15.0343359362, %bb.bx ]
  %i.lx = ptrtoint ptr %.sroa.15.0343358372 to i64
  %i.ly = ptrtoint ptr %.sroa.0229.0347373 to i64
  %i.lz = sub i64 %i.lx, %i.ly
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0229.0347373, i64 noundef %i.lz) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit175

_ZNSt6vectorImSaImEED2Ev.exit175:                 ; preds = %bb.bx, %bb.by, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn374, %bb.by ], [ %.pn125.pn.pn, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.bz:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(16) %6) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.CGAL::Static_filtered_predicate", align 1 ; 3 uses
  %8 = alloca %"class.CGAL::Point_3", align 8     ; 4 uses
  %9 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %10 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %11 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %12 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %13 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %14 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %15 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %16 = alloca %class.anon.249, align 1           ; 5 uses
  %17 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %18 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %19 = alloca %"class.CGAL::Point_3", align 8    ; 8 uses
  %20 = alloca %"class.Eigen::Matrix.259", align 8 ; 12 uses
  %21 = alloca %"class.Eigen::Matrix.189", align 8 ; 12 uses
  %22 = alloca %"class.std::vector", align 8      ; 9 uses
  %23 = alloca %"class.Eigen::Matrix.60", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.a = load ptr, ptr %0, align 8, !tbaa !618
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr [8 x i8], ptr %i.a, i64 %2 ; 3 uses
  %i.d = load i64, ptr %i.b, align 8, !tbaa !620  ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %i.c, i64 %i.d
  %.idx = shl i64 %i.d, 4
  %i.f = getelementptr i8, ptr %i.c, i64 %.idx
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %17, ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.g = load ptr, ptr %0, align 8, !tbaa !618
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %3 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !620  ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %.idx242 = shl i64 %i.i, 4
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx242
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %11, ptr noundef nonnull align 1 dereferenceable(1) %12, ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %11, align 8, !tbaa !20
  store ptr %i.l, ptr %18, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.m = load ptr, ptr %5, align 8, !tbaa !618    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !620  ; 2 uses
  %i.p = getelementptr [8 x i8], ptr %i.m, i64 %i.o
  %.idx243 = shl i64 %i.o, 4
  %i.q = getelementptr i8, ptr %i.m, i64 %.idx243
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZNK4CGAL17Lazy_constructionINS_5EpeckENS_23CartesianKernelFunctors17Construct_point_3INS_16Simple_cartesianINS_11Interval_ntILb0EEEEEEENS3_INS4_IN5boost14multiprecision6numberINSA_8backends16rational_adaptorINSC_15cpp_int_backendILm0ELm0ELNSA_16cpp_integer_typeE1ELNSA_18cpp_int_check_typeE0ESaIyEEEEELNSA_26expression_template_optionE1EEEEEEENS_7DefaultELb0EEclIJNS_15Return_base_tagEdddEEEDcDpRKT_(ptr dead_on_unwind nonnull writable sret(%"class.CGAL::Point_3") align 8 %8, ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull align 1 dereferenceable(1) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull align 8 dereferenceable(8) %i.p, ptr noundef nonnull align 8 dereferenceable(8) %i.q)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !20
  store ptr %i.r, ptr %19, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.s = invoke noundef zeroext i1 @_ZNK4CGAL25Static_filtered_predicateINS_16Simple_cartesianINS_11Interval_ntILb0EEEEENS_18Filtered_predicateINS_23CartesianKernelFunctors11Collinear_3INS1_IN5boost14multiprecision6numberINS9_8backends16rational_adaptorINSB_15cpp_int_backendILm0ELm0ELNS9_16cpp_integer_typeE1ELNS9_18cpp_int_check_typeE0ESaIyEEEEELNS9_26expression_template_optionE1EEEEEEENS7_IS4_EENS_15Exact_converterINS_5EpeckESL_EENS_16Approx_converterISP_S4_EELb1EEENS_8internal25Static_filters_predicates11Collinear_3INS_20Filtered_kernel_baseINS_21Type_equality_wrapperINS_27Cartesian_base_no_ref_countIdNS_5EpickEEES10_EEEEEEEclINS_7Point_3ISP_EES18_S18_EEbRKT_RKT0_RKT1_(ptr noundef nonnull align 1 dereferenceable(13) %7, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %i.s, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.t = call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  invoke void @_ZNSt13runtime_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull @.str.22)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #35
          to label %bb.bs unwind label %bb.i

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.h:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.i:                                             ; preds = %bb.c, %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.j:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.t) #22
  br label %bb.ak

bb.k:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %19, align 8, !tbaa !20    ; 4 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !23
  %.not.i.i.i = icmp eq i8 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(12) %i.y) #22, !inline_history !26
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ag = add nsw i32 %i.ab, -1
  store atomic i32 %i.ag, ptr %i.aa monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.p:                                             ; preds = %bb.l
  br i1 %i.ac, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = atomicrmw sub ptr %i.aa, i32 1 release, align 4
end_hunk_14
begin_hunk_15_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEES5_NS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERKNS8_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  br label %_ZN4CGAL6HandleD2Ev.exit142

_ZN4CGAL6HandleD2Ev.exit142:                      ; preds = %_ZN4CGAL6HandleD2Ev.exit139, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27 ; 3 uses
  %i.bw = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 11 uses
  %i.ca = ashr exact i64 %i.bz, 2                 ; 21 uses
  %i.cb = add nsw i64 %i.ca, 1                    ; 15 uses
  %i.cc = icmp ugt i64 %i.ca, 1152921504606846975
  br i1 %i.cc, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  %.not.i.i.i.i = icmp eq ptr %i.bv, %i.bw        ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEESD_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmmRKS3_IiSaIiEERKNSG_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSH_SH_SL_.exit, label %.noexc143

.noexc143:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.cd = shl nuw nsw i64 %i.bz, 1
  %i.ce = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #36 ; 12 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.ca ; 3 uses
  store i64 0, ptr %i.ce, align 8, !tbaa !31
  %i.cg = getelementptr i8, ptr %i.ce, i64 8      ; 3 uses
  %i.ch = add nsw i64 %i.ca, -1                   ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ch, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cg, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cg, %.noexc143 ], [ %i.cj, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.ca, 4
  br i1 %min.iters.check, label %.lr.ph.preheader343, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ca, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <2 x i64> %vec.ind, ptr %i.ck, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.cl, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !621

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ca, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader343

.lr.ph.preheader343:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110247.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.ce, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEESD_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmmRKS3_IiSaIiEERKNSG_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSH_SH_SL_.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.cn = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.co = ptrtoint ptr %i.ce to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 3
  %i.cr = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cq, i1 true)
  %i.cs = shl nuw nsw i64 %i.cr, 1
  %i.ct = xor i64 %i.cs, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEESF_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSI_IT0_EEmmRKS3_IiSaIiEERKNSI_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSJ_SJ_SN_SV_(ptr nonnull %i.ce, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.ct, ptr nonnull %16, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEESF_NSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSI_IT0_EEmmRKS3_IiSaIiEERKNSI_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSJ_SJ_SN_(ptr nonnull %i.ce, ptr %.0.i.i.i.i.i.ph, ptr nonnull %16, ptr nonnull %4)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEESD_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmmRKS3_IiSaIiEERKNSG_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSH_SH_SL_.exit unwind label %.thread

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.w, %bb.i ], [ %i.x, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit168

.lr.ph:                                           ; preds = %.lr.ph.preheader343, %.lr.ph
  %.0110247 = phi i64 [ %i.cv, %.lr.ph ], [ %.0110247.ph, %.lr.ph.preheader343 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %.0110247
  store i64 %.0110247, ptr %i.cu, align 8, !tbaa !31
  %i.cv = add nuw i64 %.0110247, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cv, %i.ca
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !622

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEESD_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmmRKS3_IiSaIiEERKNSG_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSH_SH_SL_.exit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge, %.noexc145
  %.sroa.15.0315331 = phi ptr [ %i.cf, %.noexc145 ], [ %i.cf, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0210.0318329 = phi ptr [ %i.ce, %.noexc145 ], [ %i.ce, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.cw = add nuw nsw i64 %i.ca, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %20, i64 noundef %i.cw, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.an

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEESD_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmmRKS3_IiSaIiEERKNSG_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSH_SH_SL_.exit
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge, label %.lr.ph249

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !620 ; 2 uses
  %.pre280 = load i64, ptr %i.b, align 8, !tbaa !620 ; 2 uses
  %.pre285 = shl i64 %.pre, 4
  %.pre286 = shl nsw i64 %.pre280, 4
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph249:                                        ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.cx = load ptr, ptr %4, align 8, !tbaa !30
  %i.cy = load ptr, ptr %1, align 8, !tbaa !427
  %i.cz = trunc i64 %2 to i32                     ; 3 uses
  %i.da = trunc i64 %3 to i32                     ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dc = load ptr, ptr %0, align 8, !tbaa !618, !noalias !623
  %i.dd = load ptr, ptr %20, align 8, !tbaa !618, !noalias !626
  %i.de = load i64, ptr %i.b, align 8, !tbaa !620 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !620 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl i64 %i.dg, 4 ; 2 uses
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.de, 4 ; 2 uses
  br label %bb.ao

bb.an:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEESD_NSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSG_IT0_EEmmRKS3_IiSaIiEERKNSG_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSH_SH_SL_.exit
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.thread:                                          ; preds = %bb.aj, %.noexc145
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ao:                                            ; preds = %.lr.ph249, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %.091248 = phi i64 [ 0, %.lr.ph249 ], [ %i.eh, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %.091248
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !31
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !38
  %i.dn = call i32 @llvm.abs.i32(i32 %i.dm, i1 true)
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr [4 x i8], ptr %i.cy, i64 %i.do
  %i.dq = getelementptr i8, ptr %i.dp, i64 -4     ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.dr, %i.cz
  %.not10.i = icmp eq i32 %i.dr, %i.da
  %or.cond = or i1 %.not.i, %.not10.i
  br i1 %or.cond, label %bb.ap, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.ds = load i64, ptr %i.db, align 8, !tbaa !429 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.dq, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.du, %i.cz
  %.not12.i = icmp eq i32 %i.du, %i.da
  %or.cond241 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond241, label %bb.aq, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.aq:                                            ; preds = %bb.ap
  %.idx.i = shl i64 %i.ds, 3
  %i.dv = getelementptr i8, ptr %i.dq, i64 %.idx.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.dw, %i.cz
  br i1 %.not13.i, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not14.i = icmp eq i32 %i.dw, %i.da
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.dw
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.ap, %bb.ao, %bb.aq, %bb.ar
  %.0.i = phi i32 [ -1, %bb.aq ], [ %i.dr, %bb.ao ], [ %i.du, %bb.ap ], [ %spec.select.i, %bb.ar ]
  %i.dx = sext i32 %.0.i to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dc, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.091248 ; 3 uses
  %i.ea = load double, ptr %i.dy, align 8, !tbaa !562
  store double %i.ea, ptr %i.dz, align 8, !tbaa !562
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.dz, i64 %i.dg
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.dy, i64 %i.de
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !562
  store double %i.ed, ptr %i.eb, align 8, !tbaa !562
  %i.ee = getelementptr inbounds i8, ptr %i.dz, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ef = getelementptr inbounds i8, ptr %i.dy, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !562
  store double %i.eg, ptr %i.ee, align 8, !tbaa !562
  %i.eh = add nuw i64 %.091248, 1                 ; 2 uses
  %exitcond271.not = icmp eq i64 %i.eh, %i.ca
  br i1 %exitcond271.not, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %bb.ao, !llvm.loop !629

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i150.pre-phi = phi i64 [ %.pre286, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi = phi i64 [ %.pre285, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.ei = phi i64 [ %.pre280, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.de, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 2 uses
  %i.ej = phi i64 [ %.pre, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.dg, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.ek = load ptr, ptr %20, align 8, !tbaa !618, !noalias !630 ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.ca ; 3 uses
  %i.em = load ptr, ptr %5, align 8, !tbaa !618   ; 3 uses
  %i.en = load i64, ptr %i.n, align 8, !tbaa !620 ; 2 uses
  %i.eo = load double, ptr %i.em, align 8, !tbaa !562
  store double %i.eo, ptr %i.el, align 8, !tbaa !562
  %i.ep = getelementptr [8 x i8], ptr %i.el, i64 %i.ej
  %i.eq = getelementptr [8 x i8], ptr %i.em, i64 %i.en
  %i.er = load double, ptr %i.eq, align 8, !tbaa !562
  store double %i.er, ptr %i.ep, align 8, !tbaa !562
  %i.es = getelementptr i8, ptr %i.el, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i148 = shl i64 %i.en, 4
  %i.et = getelementptr i8, ptr %i.em, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i148
  %i.eu = load double, ptr %i.et, align 8, !tbaa !562
  store double %i.eu, ptr %i.es, align 8, !tbaa !562
  %i.ev = load ptr, ptr %0, align 8, !tbaa !618, !noalias !633 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %2 ; 3 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.cb ; 3 uses
  %i.ey = load double, ptr %i.ew, align 8, !tbaa !562
  store double %i.ey, ptr %i.ex, align 8, !tbaa !562
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.ej
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.ei
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !562
  store double %i.fb, ptr %i.ez, align 8, !tbaa !562
  %i.fc = getelementptr inbounds i8, ptr %i.ex, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.fd = getelementptr inbounds i8, ptr %i.ew, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i150.pre-phi
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !562
  store double %i.fe, ptr %i.fc, align 8, !tbaa !562
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %3 ; 3 uses
  %i.fg = add nuw nsw i64 %i.ca, 2                ; 7 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ek, i64 %i.fg ; 3 uses
  %i.fi = load double, ptr %i.ff, align 8, !tbaa !562
  store double %i.fi, ptr %i.fh, align 8, !tbaa !562
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.ej
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.ei
  %i.fl = load double, ptr %i.fk, align 8, !tbaa !562
  store double %i.fl, ptr %i.fj, align 8, !tbaa !562
  %i.fm = getelementptr inbounds i8, ptr %i.fh, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.fn = getelementptr inbounds i8, ptr %i.ff, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i150.pre-phi
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !562
  store double %i.fo, ptr %i.fm, align 8, !tbaa !562
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %21, i64 noundef %i.cb, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.as

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %.pre288 = trunc i64 %i.fg to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge, label %.lr.ph251

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %.phi.trans.insert281 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre282 = load i64, ptr %.phi.trans.insert281, align 8, !tbaa !429 ; 2 uses
  %.pre287 = trunc i64 %i.cb to i32
  %.pre290 = shl i64 %.pre282, 3
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph251:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.fp = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.fq = load ptr, ptr %21, align 8              ; 3 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fs = load i64, ptr %i.fr, align 8            ; 6 uses
  %i.ft = trunc i64 %i.cb to i32                  ; 8 uses
  %.idx245 = shl i64 %i.fs, 3                     ; 5 uses
  %i.fu = icmp eq i64 %i.bz, 4
  br i1 %i.fu, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, label %.lr.ph251.new

.lr.ph251.new:                                    ; preds = %.lr.ph251
  %unroll_iter = and i64 %i.ca, 1152921504606846974
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.as:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %.body153

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %.lr.ph251.new
  %.089250 = phi i64 [ 0, %.lr.ph251.new ], [ %i.gp, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph251.new ], [ %niter.next.1, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %.089250
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !31
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !38
  %i.ga = icmp slt i32 %i.fz, 0                   ; 2 uses
  %i.gb = getelementptr [4 x i8], ptr %i.fq, i64 %.089250 ; 3 uses
  %i.gc = getelementptr [4 x i8], ptr %i.gb, i64 %i.fs
  %i.gd = getelementptr i8, ptr %i.gb, i64 %.idx245
  %i.ge = trunc i64 %.089250 to i32
  %..pre288 = select i1 %i.ga, i32 %i.ft, i32 %.pre288
  %.pre288. = select i1 %i.ga, i32 %.pre288, i32 %i.ft
  store i32 %..pre288, ptr %i.gb, align 4, !tbaa !38
  store i32 %.pre288., ptr %i.gc, align 4, !tbaa !38
  store i32 %i.ge, ptr %i.gd, align 4, !tbaa !38
  %i.gf = or disjoint i64 %.089250, 1             ; 3 uses
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %i.gf
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !31
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.gh
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !38
  %i.gk = icmp slt i32 %i.gj, 0                   ; 2 uses
  %i.gl = getelementptr [4 x i8], ptr %i.fq, i64 %i.gf ; 3 uses
  %i.gm = getelementptr [4 x i8], ptr %i.gl, i64 %i.fs
  %i.gn = getelementptr i8, ptr %i.gl, i64 %.idx245
  %i.go = trunc i64 %i.gf to i32
  %..pre288.1 = select i1 %i.gk, i32 %i.ft, i32 %.pre288
  %.pre288..1 = select i1 %i.gk, i32 %.pre288, i32 %i.ft
  store i32 %..pre288.1, ptr %i.gl, align 4, !tbaa !38
  store i32 %.pre288..1, ptr %i.gm, align 4, !tbaa !38
  store i32 %i.go, ptr %i.gn, align 4, !tbaa !38
  %i.gp = add nuw i64 %.089250, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, !llvm.loop !636

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.gq = and i64 %i.bz, 4
  %lcmp.mod.not = icmp eq i64 %i.gq, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph251
  %.089250.epil.init = phi i64 [ 0, %.lr.ph251 ], [ %i.gp, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod344 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod344)
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %.089250.epil.init
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !31
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !38
  %i.gv = icmp slt i32 %i.gu, 0                   ; 2 uses
  %i.gw = getelementptr [4 x i8], ptr %i.fq, i64 %.089250.epil.init ; 3 uses
  %i.gx = getelementptr [4 x i8], ptr %i.gw, i64 %i.fs
  %i.gy = getelementptr i8, ptr %i.gw, i64 %.idx245
  %i.gz = trunc i64 %.089250.epil.init to i32
  %..pre288.epil = select i1 %i.gv, i32 %i.ft, i32 %.pre288
  %.pre288..epil = select i1 %i.gv, i32 %.pre288, i32 %i.ft
  store i32 %..pre288.epil, ptr %i.gw, align 4, !tbaa !38
  store i32 %.pre288..epil, ptr %i.gx, align 4, !tbaa !38
  store i32 %i.gz, ptr %i.gy, align 4, !tbaa !38
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx244.pre-phi = phi i64 [ %.pre290, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx245, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %.idx245, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre287, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.ft, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.ft, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.ha = phi i64 [ %.pre282, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.fs, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.fs, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ] ; 4 uses
  %i.hb = load ptr, ptr %21, align 8, !tbaa !427  ; 4 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 %i.bz  ; 3 uses
  store i32 %.pre-phi, ptr %i.hc, align 4, !tbaa !38
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %i.ha
  store i32 %.pre288, ptr %i.hd, align 4, !tbaa !38
  %i.he = getelementptr i8, ptr %i.hc, i64 %.idx244.pre-phi
  %i.hf = trunc i64 %i.ca to i32
  store i32 %i.hf, ptr %i.he, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.hg = shl nuw nsw i64 %i.cb, 2
  %i.hh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hg) #36
          to label %.noexc159 unwind label %bb.at ; 7 uses

.noexc159:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  store ptr %i.hh, ptr %22, align 8, !tbaa !30
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.cb
  %i.hj = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !96
  store i32 0, ptr %i.hh, align 4, !tbaa !38
  %i.hk = getelementptr i8, ptr %i.hh, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph254, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc159
  call void @llvm.memset.p0.i64(ptr align 4 %i.hk, i8 0, i64 %i.bz, i1 false), !tbaa !38
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 %i.bz
  br label %.lr.ph254

.lr.ph254:                                        ; preds = %.noexc159, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i157 = phi ptr [ %i.hl, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hk, %.noexc159 ]
  %i.hm = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.0.i.i.i.i.i157, ptr %i.hm, align 8, !tbaa !27
  %i.hn = icmp eq ptr %i.bv, %i.bw
  br i1 %i.hn, label %.epil.preheader, label %.lr.ph254.new

.lr.ph254.new:                                    ; preds = %.lr.ph254
  %unroll_iter348 = and i64 %i.cb, 2305843009213693950
  br label %bb.au

bb.at:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

bb.au:                                            ; preds = %bb.bc, %.lr.ph254.new
  %.088252 = phi i64 [ 0, %.lr.ph254.new ], [ %i.iq, %bb.bc ] ; 6 uses
  %niter349 = phi i64 [ 0, %.lr.ph254.new ], [ %niter349.next.1, %bb.bc ]
  %i.hp = getelementptr [4 x i8], ptr %i.hb, i64 %.088252 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !38
  %i.hr = sext i32 %i.hq to i64
  %i.hs = icmp eq i64 %i.cb, %i.hr
  br i1 %i.hs, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ht = getelementptr [4 x i8], ptr %i.hp, i64 %i.ha
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !38
  %i.hv = sext i32 %i.hu to i64
  %i.hw = icmp eq i64 %i.fg, %i.hv
  br i1 %i.hw, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hx = trunc i64 %.088252 to i32
  %i.hy = xor i32 %i.hx, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.hz = trunc i64 %.088252 to i32
  %i.ia = or disjoint i32 %i.hz, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.sink339 = phi i32 [ %i.hy, %bb.aw ], [ %i.ia, %bb.ax ]
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.088252
  store i32 %.sink339, ptr %i.ib, align 4, !tbaa !38
  %i.ic = or disjoint i64 %.088252, 1             ; 4 uses
  %i.id = getelementptr [4 x i8], ptr %i.hb, i64 %i.ic ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !38
  %i.if = sext i32 %i.ie to i64
  %i.ig = icmp eq i64 %i.cb, %i.if
  br i1 %i.ig, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ih = getelementptr [4 x i8], ptr %i.id, i64 %i.ha
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !38
  %i.ij = sext i32 %i.ii to i64
  %i.ik = icmp eq i64 %i.fg, %i.ij
  br i1 %i.ik, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.il = trunc i64 %i.ic to i32
  %i.im = add i32 %i.il, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.in = trunc i64 %i.ic to i32
  %i.io = xor i32 %i.in, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sink339.1 = phi i32 [ %i.io, %bb.bb ], [ %i.im, %bb.ba ]
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %i.ic
  store i32 %.sink339.1, ptr %i.ip, align 4, !tbaa !38
  %i.iq = add nuw i64 %.088252, 2                 ; 2 uses
  %niter349.next.1 = add i64 %niter349, 2         ; 2 uses
  %niter349.ncmp.1 = icmp eq i64 %niter349.next.1, %unroll_iter348
  br i1 %niter349.ncmp.1, label %._crit_edge255.unr-lcssa, label %bb.au, !llvm.loop !637

._crit_edge255.unr-lcssa:                         ; preds = %bb.bc
  %i.ir = and i64 %i.bz, 4
  %lcmp.mod346.not.not = icmp eq i64 %i.ir, 0
  br i1 %lcmp.mod346.not.not, label %.epil.preheader, label %._crit_edge255

.epil.preheader:                                  ; preds = %._crit_edge255.unr-lcssa, %.lr.ph254
  %.088252.epil.init = phi i64 [ 0, %.lr.ph254 ], [ %i.iq, %._crit_edge255.unr-lcssa ] ; 4 uses
  %lcmp.mod347 = trunc i64 %i.cb to i1
  call void @llvm.assume(i1 %lcmp.mod347)
  %i.is = getelementptr [4 x i8], ptr %i.hb, i64 %.088252.epil.init ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !38
  %i.iu = sext i32 %i.it to i64
  %i.iv = icmp eq i64 %i.cb, %i.iu
  br i1 %i.iv, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.epil.preheader
  %i.iw = getelementptr [4 x i8], ptr %i.is, i64 %i.ha
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !38
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp eq i64 %i.fg, %i.iy
  br i1 %i.iz, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.epil.preheader
  %i.ja = trunc i64 %.088252.epil.init to i32
  %i.jb = add i32 %i.ja, 1
  br label %._crit_edge255.epilog-lcssa

bb.bf:                                            ; preds = %bb.bd
  %i.jc = trunc i64 %.088252.epil.init to i32
  %i.jd = xor i32 %i.jc, -1
  br label %._crit_edge255.epilog-lcssa

._crit_edge255.epilog-lcssa:                      ; preds = %bb.bf, %bb.be
  %.sink339.epil = phi i32 [ %i.jd, %bb.bf ], [ %i.jb, %bb.be ]
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.088252.epil.init
  store i32 %.sink339.epil, ptr %i.je, align 4, !tbaa !38
  br label %._crit_edge255

._crit_edge255:                                   ; preds = %._crit_edge255.unr-lcssa, %._crit_edge255.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %i.cb, i64 noundef %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %._crit_edge255
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !98
  %.not.i.i160 = icmp eq i64 %i.ca, %i.jg
  br i1 %.not.i.i160, label %.lr.ph258, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.jh = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.jh) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bh
  %i.ji = call noalias ptr @malloc(i64 noundef %i.bz) #37 ; 2 uses
  %i.jj = icmp eq ptr %i.ji, null
  br i1 %i.jj, label %bb.bi, label %.sink.split.i.i

bb.bi:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.jk = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jk, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.jk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc162 unwind label %bb.bj

.noexc162:                                        ; preds = %bb.bi
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bh
  %.sink.i.i = phi ptr [ %i.ji, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bh ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph258

.lr.ph258:                                        ; preds = %bb.bg, %.sink.split.i.i
  store i64 %i.ca, ptr %i.jf, align 8, !tbaa !98
  %i.jl = load ptr, ptr %23, align 8, !tbaa !100  ; 5 uses
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %._crit_edge255
  %i.jm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jn = load ptr, ptr %23, align 8, !tbaa !100
  call void @free(ptr noundef %i.jn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.jo = load ptr, ptr %22, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i165 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i.i165, label %_ZNSt6vectorIiSaIiEED2Ev.exit166, label %bb.bp

bb.bk:                                            ; preds = %.lr.ph258, %bb.bl
  %.086256 = phi i64 [ 0, %.lr.ph258 ], [ %i.jt, %bb.bl ] ; 4 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.086256
  %i.jq = load i32, ptr %i.jp, align 4, !tbaa !38
  %i.jr = sext i32 %i.jq to i64
  %i.js = icmp eq i64 %i.ca, %i.jr
  br i1 %i.js, label %._crit_edge259, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jt = add nuw i64 %.086256, 1
  %exitcond277.not = icmp eq i64 %.086256, %i.ca
  br i1 %exitcond277.not, label %._crit_edge259, label %bb.bk, !llvm.loop !638

._crit_edge259:                                   ; preds = %bb.bl, %bb.bk
  %.087.ph = phi i64 [ %i.fg, %bb.bl ], [ %.086256, %bb.bk ]
  br i1 %.not.i.i.i.i, label %._crit_edge265, label %.lr.ph264

.lr.ph264:                                        ; preds = %._crit_edge259
  %i.ju = add i64 %.087.ph, 1                     ; 3 uses
  %i.jv = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.jw = icmp eq i64 %i.bz, 4
  br i1 %i.jw, label %.epil.preheader350, label %.lr.ph264.new

.lr.ph264.new:                                    ; preds = %.lr.ph264
  %unroll_iter354 = and i64 %i.ca, 1152921504606846974
  br label %bb.bo

._crit_edge265.loopexit.unr-lcssa:                ; preds = %bb.bo
  %i.jx = and i64 %i.bz, 4
  %lcmp.mod352.not = icmp eq i64 %i.jx, 0
  br i1 %lcmp.mod352.not, label %._crit_edge265, label %.epil.preheader350

.epil.preheader350:                               ; preds = %._crit_edge265.loopexit.unr-lcssa, %.lr.ph264
  %.0262.epil.init = phi i64 [ 0, %.lr.ph264 ], [ %i.lk, %._crit_edge265.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod353 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod353)
  %i.jy = add i64 %i.ju, %.0262.epil.init
  %i.jz = urem i64 %i.jy, %i.cb
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.jz
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !38
  %i.kc = sext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %i.kc
  %i.ke = load i64, ptr %i.kd, align 8, !tbaa !31
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0262.epil.init
  %i.kg = trunc i64 %i.ke to i32
  store i32 %i.kg, ptr %i.kf, align 4, !tbaa !38
  br label %._crit_edge265

._crit_edge265:                                   ; preds = %.epil.preheader350, %._crit_edge265.loopexit.unr-lcssa, %._crit_edge259
  call void @free(ptr noundef nonnull %i.jl) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.kh = load ptr, ptr %22, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i163 = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge265
  %i.ki = load ptr, ptr %i.hj, align 8, !tbaa !96
  %i.kj = ptrtoint ptr %i.ki to i64
  %i.kk = ptrtoint ptr %i.kh to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %i.kh, i64 noundef %i.kl) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge265, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.km = load ptr, ptr %21, align 8, !tbaa !427
  call void @free(ptr noundef %i.km) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.kn = load ptr, ptr %20, align 8, !tbaa !618
  call void @free(ptr noundef %i.kn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i164 = icmp eq ptr %.sroa.0210.0318329, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.ko = ptrtoint ptr %.sroa.15.0315331 to i64
  %i.kp = ptrtoint ptr %.sroa.0210.0318329 to i64
  %i.kq = sub i64 %i.ko, %i.kp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0210.0318329, i64 noundef %i.kq) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  ret void

bb.bo:                                            ; preds = %bb.bo, %.lr.ph264.new
  %.0262 = phi i64 [ 0, %.lr.ph264.new ], [ %i.lk, %bb.bo ] ; 4 uses
  %niter355 = phi i64 [ 0, %.lr.ph264.new ], [ %niter355.next.1, %bb.bo ]
  %i.kr = add i64 %i.ju, %.0262
  %i.ks = urem i64 %i.kr, %i.cb
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.ks
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !38
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %i.kv
  %i.kx = load i64, ptr %i.kw, align 8, !tbaa !31
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0262
  %i.kz = trunc i64 %i.kx to i32
  store i32 %i.kz, ptr %i.ky, align 4, !tbaa !38
  %i.la = or disjoint i64 %.0262, 1               ; 2 uses
  %i.lb = add i64 %i.ju, %i.la
  %i.lc = urem i64 %i.lb, %i.cb
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.lc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !38
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0210.0318329, i64 %i.lf
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !31
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.la
  %i.lj = trunc i64 %i.lh to i32
  store i32 %i.lj, ptr %i.li, align 4, !tbaa !38
  %i.lk = add nuw i64 %.0262, 2                   ; 2 uses
  %niter355.next.1 = add i64 %niter355, 2         ; 2 uses
  %niter355.ncmp.1 = icmp eq i64 %niter355.next.1, %unroll_iter354
  br i1 %niter355.ncmp.1, label %._crit_edge265.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !639

bb.bp:                                            ; preds = %bb.bj
  %i.ll = load ptr, ptr %i.hj, align 8, !tbaa !96
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.jo to i64
  %i.lo = sub i64 %i.lm, %i.ln
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef %i.lo) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit166

_ZNSt6vectorIiSaIiEED2Ev.exit166:                 ; preds = %bb.bp, %bb.bj, %bb.at
  %.pn119.pn = phi { ptr, i32 } [ %i.ho, %bb.at ], [ %i.jm, %bb.bj ], [ %i.jm, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.body153

.body153:                                         ; preds = %bb.as, %_ZNSt6vectorIiSaIiEED2Ev.exit166
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit166 ], [ %i.fv, %bb.as ]
  %i.lp = load ptr, ptr %21, align 8, !tbaa !427
  call void @free(ptr noundef %i.lp) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.bq

bb.bq:                                            ; preds = %.body153, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %.body153 ], [ %i.dh, %bb.an ] ; 2 uses
  %i.lq = load ptr, ptr %20, align 8, !tbaa !618
  call void @free(ptr noundef %i.lq) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i167 = icmp eq ptr %.sroa.0210.0318329, null
  br i1 %.not.i.i.i167, label %_ZNSt6vectorImSaImEED2Ev.exit168, label %bb.br

bb.br:                                            ; preds = %.thread, %bb.bq
  %.pn125.pn.pn.pn338 = phi { ptr, i32 } [ %i.di, %.thread ], [ %.pn125.pn.pn, %bb.bq ]
  %.sroa.0210.0319337 = phi ptr [ %i.ce, %.thread ], [ %.sroa.0210.0318329, %bb.bq ] ; 2 uses
  %.sroa.15.0315330336 = phi ptr [ %i.cf, %.thread ], [ %.sroa.15.0315331, %bb.bq ]
  %i.lr = ptrtoint ptr %.sroa.15.0315330336 to i64
  %i.ls = ptrtoint ptr %.sroa.0210.0319337 to i64
  %i.lt = sub i64 %i.lr, %i.ls
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0210.0319337, i64 noundef %i.lt) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit168

_ZNSt6vectorImSaImEED2Ev.exit168:                 ; preds = %bb.bq, %bb.br, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn338, %bb.br ], [ %.pn125.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.bs:                                            ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, i1 noundef zeroext %6) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %8 = alloca %"struct.std::pair.687", align 8    ; 7 uses
  %9 = alloca %"class.CGAL::Static_filtered_predicate.683", align 1 ; 5 uses
  %10 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %11 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %12 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %13 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %14 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %15 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %16 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %17 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %18 = alloca %"struct.std::pair.610", align 8   ; 8 uses
  %19 = alloca %"struct.std::pair.437", align 8   ; 7 uses
  %20 = alloca %"class.CGAL::Static_filtered_predicate.646", align 1 ; 5 uses
  %21 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %22 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %23 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %24 = alloca %"class.CGAL::Static_filtered_predicate.606", align 1 ; 4 uses
  %25 = alloca %"class.CGAL::Plane_3", align 8    ; 4 uses
  %26 = alloca %"struct.CGAL::Lazy_construction.577", align 1 ; 3 uses
  %27 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %28 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %29 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %30 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %31 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %32 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %33 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %34 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %35 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %36 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %37 = alloca %"class.CGAL::Static_filtered_predicate.571", align 1 ; 3 uses
  %38 = alloca %"class.CGAL::Static_filtered_predicate.557", align 1 ; 3 uses
  %39 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %40 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %41 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %42 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %43 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %44 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %45 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %46 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %47 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %48 = alloca %"class.CGAL::Point_3", align 8    ; 4 uses
  %49 = alloca %"struct.CGAL::Lazy_kernel_base<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>, CGAL::Cartesian_converter<CGAL::Simple_cartesian<boost::multiprecision::number<boost::multiprecision::backends::rational_adaptor<boost::multiprecision::backends::cpp_int_backend<>>>>, CGAL::Simple_cartesian<CGAL::Interval_nt<false>>>, CGAL::Epeck>::Construct_point_3", align 1 ; 3 uses
  %50 = alloca %"struct.CGAL::Return_base_tag", align 1 ; 3 uses
  %51 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %52 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %53 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %54 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %55 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %56 = alloca %"class.CGAL::Point_3", align 8    ; 12 uses
  %57 = alloca %"class.CGAL::Point_3", align 8    ; 9 uses
  %58 = alloca %"class.CGAL::Plane_3", align 8    ; 11 uses
  %59 = alloca %"class.std::vector.93", align 8   ; 14 uses
  %60 = alloca %"class.std::vector", align 8      ; 17 uses
  %61 = alloca %"class.std::vector", align 8      ; 17 uses
  %62 = alloca %"class.std::vector", align 8      ; 21 uses
  %63 = alloca %"class.std::vector", align 8      ; 21 uses
  %64 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %65 = alloca %"class.Eigen::Matrix.60", align 8 ; 9 uses
  %66 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %67 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %68 = alloca %"class.CGAL::Direction_3", align 8 ; 10 uses
  %69 = alloca %"class.CGAL::Plane_3", align 8    ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !30     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 2                   ; 10 uses
  switch i64 %i.g, label %bb.bt [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !98
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %5, align 8, !tbaa !100
  tail call void @free(ptr noundef %i.j) #22
  store ptr null, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit: ; preds = %bb.b, %bb.c
  store i64 0, ptr %i.h, align 8, !tbaa !98
  br label %bb.kt

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !98
  %.not.i.i269 = icmp eq i64 %i.l, 1
  %.pre = load ptr, ptr %5, align 8, !tbaa !100   ; 2 uses
  br i1 %.not.i.i269, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %.pre) #22
  %i.m = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #37 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %.sink.split.i.i

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.o, align 8, !tbaa !24
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
  unreachable

.sink.split.i.i:                                  ; preds = %bb.e
  store ptr %i.m, ptr %5, align 8, !tbaa !100
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEll.exit270: ; preds = %bb.d, %.sink.split.i.i
  %i.p = phi ptr [ %.pre, %bb.d ], [ %i.m, %.sink.split.i.i ]
  store i64 1, ptr %i.k, align 8, !tbaa !98
  store i32 0, ptr %i.p, align 4, !tbaa !38
  br label %bb.kt

bb.g:                                             ; preds = %bb.a
  %i.q = load i32, ptr %i.c, align 4, !tbaa !38
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.s = load ptr, ptr %1, align 8, !tbaa !427    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = zext nneg i32 %i.r to i64
  %i.v = getelementptr [4 x i8], ptr %i.s, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4       ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !38   ; 3 uses
  %i.y = trunc i64 %2 to i32                      ; 6 uses
  %.not.i = icmp eq i32 %i.x, %i.y
  %i.z = trunc i64 %3 to i32                      ; 6 uses
  %.not10.i = icmp eq i32 %i.x, %i.z
  %or.cond = or i1 %.not.i, %.not10.i
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = sext i32 %i.x to i64
  br label %_ZZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEbENKUlmE_clEm.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = load i64, ptr %i.t, align 8, !tbaa !429 ; 2 uses
end_hunk_15
begin_hunk_16_@_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IdLi1ELi3ELi1ELi1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS9_IT0_EEmmRKSt6vectorIiSaIiEERKNS9_IT1_EERNS3_15PlainObjectBaseIT2_EE:bb.a
  br label %_ZN4CGAL6HandleD2Ev.exit142

_ZN4CGAL6HandleD2Ev.exit142:                      ; preds = %_ZN4CGAL6HandleD2Ev.exit139, %bb.ad, %bb.ae, %bb.ag, %bb.ah, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !27 ; 3 uses
  %i.bt = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 11 uses
  %i.bx = ashr exact i64 %i.bw, 2                 ; 21 uses
  %i.by = add nsw i64 %i.bx, 1                    ; 15 uses
  %i.bz = icmp ugt i64 %i.bx, 1152921504606846975
  br i1 %i.bz, label %.noexc, label %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.133) #35
  unreachable

_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZN4CGAL6HandleD2Ev.exit142
  %.not.i.i.i.i = icmp eq ptr %i.bs, %i.bt        ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_IdLi1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSH_IT0_EEmmRKS3_IiSaIiEERKNSH_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSI_SI_SM_.exit, label %.noexc143

.noexc143:                                        ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ca = shl nuw nsw i64 %i.bw, 1
  %i.cb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ca) #36 ; 12 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %i.bx ; 3 uses
  store i64 0, ptr %i.cb, align 8, !tbaa !31
  %i.cd = getelementptr i8, ptr %i.cb, i64 8      ; 3 uses
  %i.ce = add nsw i64 %i.bx, -1                   ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %.lr.ph.preheader, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc143
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ce, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !31
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.idx.i.i.i.i.i.i.i
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc143
  %.0.i.i.i.i.i.ph = phi ptr [ %i.cd, %.noexc143 ], [ %i.cg, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %min.iters.check = icmp ult i64 %i.bx, 4
  br i1 %min.iters.check, label %.lr.ph.preheader341, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bx, 1152921504606846972     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x i64> %vec.ind, ptr %i.ch, align 8, !tbaa !31
  store <2 x i64> %step.add, ptr %i.ci, align 8, !tbaa !31
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !680

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader341

.lr.ph.preheader341:                              ; preds = %.lr.ph.preheader, %middle.block
  %.0110245.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.i.i144 = icmp eq ptr %i.cb, %.0.i.i.i.i.i.ph
  br i1 %.not.i.i144, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_IdLi1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSH_IT0_EEmmRKS3_IiSaIiEERKNSH_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSI_SI_SM_.exit, label %bb.aj

bb.aj:                                            ; preds = %._crit_edge
  %i.ck = ptrtoint ptr %.0.i.i.i.i.i.ph to i64
  %i.cl = ptrtoint ptr %i.cb to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = ashr exact i64 %i.cm, 3
  %i.co = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = shl nuw nsw i64 %i.co, 1
  %i.cq = xor i64 %i.cp, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEElNS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEENSE_IdLi1ELi3ELi1ELi1ELi3EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SO_SW_(ptr nonnull %i.cb, ptr %.0.i.i.i.i.i.ph, i64 noundef %i.cq, ptr nonnull %16, ptr nonnull %4)
          to label %.noexc145 unwind label %.thread

.noexc145:                                        ; preds = %bb.aj
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEENS0_5__ops15_Iter_comp_iterIZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSE_IiLin1ELi3ELi0ELin1ELi3EEENSE_IdLi1ELi3ELi1ELi1ELi3EEENSE_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSD_10MatrixBaseIT_EERKNSJ_IT0_EEmmRKS3_IiSaIiEERKNSJ_IT1_EERNSD_15PlainObjectBaseIT2_EEEUliiE_EEEvSK_SK_SO_(ptr nonnull %i.cb, ptr %.0.i.i.i.i.i.ph, ptr nonnull %16, ptr nonnull %4)
          to label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_IdLi1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSH_IT0_EEmmRKS3_IiSaIiEERKNSH_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSI_SI_SM_.exit unwind label %.thread

bb.ak:                                            ; preds = %bb.j, %bb.i
  %.pn131 = phi { ptr, i32 } [ %i.t, %bb.i ], [ %i.u, %bb.j ]
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.h
  %.pn131.pn = phi { ptr, i32 } [ %.pn131, %bb.ak ], [ %i.s, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #22
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.g
  %.pn131.pn.pn = phi { ptr, i32 } [ %.pn131.pn, %bb.al ], [ %i.r, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %17) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZNSt6vectorImSaImEED2Ev.exit167

.lr.ph:                                           ; preds = %.lr.ph.preheader341, %.lr.ph
  %.0110245 = phi i64 [ %i.cs, %.lr.ph ], [ %.0110245.ph, %.lr.ph.preheader341 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %.0110245
  store i64 %.0110245, ptr %i.cr, align 8, !tbaa !31
  %i.cs = add nuw i64 %.0110245, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.bx
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !681

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_IdLi1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSH_IT0_EEmmRKS3_IiSaIiEERKNSH_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSI_SI_SM_.exit: ; preds = %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i, %._crit_edge, %.noexc145
  %.sroa.15.0313329 = phi ptr [ %i.cc, %.noexc145 ], [ %i.cc, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0209.0316327 = phi ptr [ %i.cb, %.noexc145 ], [ %i.cb, %._crit_edge ], [ null, %_ZNSt6vectorImSaImEE17_S_check_init_lenEmRKS0_.exit.i ] ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.ct = add nuw nsw i64 %i.bx, 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %20, i64 noundef %i.ct, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.an

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_IdLi1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSH_IT0_EEmmRKS3_IiSaIiEERKNSH_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSI_SI_SM_.exit
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge, label %.lr.ph247

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %20, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !620 ; 2 uses
  %.pre278 = load i64, ptr %i.b, align 8, !tbaa !620 ; 2 uses
  %.pre283 = shl nsw i64 %.pre, 4
  %.pre284 = shl nsw i64 %.pre278, 4
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph247:                                        ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.cu = load ptr, ptr %4, align 8, !tbaa !30
  %i.cv = load ptr, ptr %1, align 8, !tbaa !427
  %i.cw = trunc i64 %2 to i32                     ; 3 uses
  %i.cx = trunc i64 %3 to i32                     ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cz = load ptr, ptr %0, align 8, !tbaa !618, !noalias !682
  %i.da = load ptr, ptr %20, align 8, !tbaa !618, !noalias !685
  %i.db = load i64, ptr %i.b, align 8, !tbaa !620 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !620 ; 3 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.dd, 4 ; 2 uses
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nsw i64 %i.db, 4 ; 2 uses
  br label %bb.ao

bb.an:                                            ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENSC_IiLin1ELi3ELi0ELin1ELi3EEENSC_IdLi1ELi3ELi1ELi1ELi3EEENSC_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNSB_10MatrixBaseIT_EERKNSH_IT0_EEmmRKS3_IiSaIiEERKNSH_IT1_EERNSB_15PlainObjectBaseIT2_EEEUliiE_EvSI_SI_SM_.exit
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

.thread:                                          ; preds = %bb.aj, %.noexc145
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.ao:                                            ; preds = %.lr.ph247, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %.091246 = phi i64 [ 0, %.lr.ph247 ], [ %i.ee, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %.091246
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !31
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !38
  %i.dk = call i32 @llvm.abs.i32(i32 %i.dj, i1 true)
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr [4 x i8], ptr %i.cv, i64 %i.dl
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4     ; 3 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !38 ; 3 uses
  %.not.i = icmp eq i32 %i.do, %i.cw
  %.not10.i = icmp eq i32 %i.do, %i.cx
  %or.cond = or i1 %.not.i, %.not10.i
  br i1 %or.cond, label %bb.ap, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.ap:                                            ; preds = %bb.ao
  %i.dp = load i64, ptr %i.cy, align 8, !tbaa !429 ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.dn, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !38 ; 3 uses
  %.not11.i = icmp eq i32 %i.dr, %i.cw
  %.not12.i = icmp eq i32 %i.dr, %i.cx
  %or.cond240 = or i1 %.not11.i, %.not12.i
  br i1 %or.cond240, label %bb.aq, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.aq:                                            ; preds = %bb.ap
  %.idx.i = shl i64 %i.dp, 3
  %i.ds = getelementptr i8, ptr %i.dn, i64 %.idx.i
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !38 ; 3 uses
  %.not13.i = icmp eq i32 %i.dt, %i.cw
  br i1 %.not13.i, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not14.i = icmp eq i32 %i.dt, %i.cx
  %spec.select.i = select i1 %.not14.i, i32 -1, i32 %i.dt
  br label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %bb.ap, %bb.ao, %bb.aq, %bb.ar
  %.0.i = phi i32 [ -1, %bb.aq ], [ %i.do, %bb.ao ], [ %i.dr, %bb.ap ], [ %spec.select.i, %bb.ar ]
  %i.du = sext i32 %.0.i to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.du ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %.091246 ; 3 uses
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !562
  store double %i.dx, ptr %i.dw, align 8, !tbaa !562
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %i.dd
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.dv, i64 %i.db
  %i.ea = load double, ptr %i.dz, align 8, !tbaa !562
  store double %i.ea, ptr %i.dy, align 8, !tbaa !562
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds i8, ptr %i.dv, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !562
  store double %i.ed, ptr %i.eb, align 8, !tbaa !562
  %i.ee = add nuw i64 %.091246, 1                 ; 2 uses
  %exitcond269.not = icmp eq i64 %i.ee, %i.bx
  br i1 %exitcond269.not, label %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %bb.ao, !llvm.loop !688

_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i149.pre-phi = phi i64 [ %.pre284, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi = phi i64 [ %.pre283, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.ef = phi i64 [ %.pre278, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.db, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 2 uses
  %i.eg = phi i64 [ %.pre, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.dd, %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 3 uses
  %i.eh = load ptr, ptr %20, align 8, !tbaa !618, !noalias !689 ; 3 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.bx ; 3 uses
  %i.ej = load double, ptr %5, align 8, !tbaa !562
  store double %i.ej, ptr %i.ei, align 8, !tbaa !562
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.eg
  %i.el = load double, ptr %i.m, align 8, !tbaa !562
  store double %i.el, ptr %i.ek, align 8, !tbaa !562
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.en = load double, ptr %i.n, align 8, !tbaa !562
  store double %i.en, ptr %i.em, align 8, !tbaa !562
  %i.eo = load ptr, ptr %0, align 8, !tbaa !618, !noalias !692 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %2 ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.by ; 3 uses
  %i.er = load double, ptr %i.ep, align 8, !tbaa !562
  store double %i.er, ptr %i.eq, align 8, !tbaa !562
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.eg
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ef
  %i.eu = load double, ptr %i.et, align 8, !tbaa !562
  store double %i.eu, ptr %i.es, align 8, !tbaa !562
  %i.ev = getelementptr inbounds i8, ptr %i.eq, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.ew = getelementptr inbounds i8, ptr %i.ep, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i149.pre-phi
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !562
  store double %i.ex, ptr %i.ev, align 8, !tbaa !562
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %3 ; 3 uses
  %i.ez = add nuw nsw i64 %i.bx, 2                ; 7 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.eh, i64 %i.ez ; 3 uses
  %i.fb = load double, ptr %i.ey, align 8, !tbaa !562
  store double %i.fb, ptr %i.fa, align 8, !tbaa !562
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.eg
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ey, i64 %i.ef
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !562
  store double %i.fe, ptr %i.fc, align 8, !tbaa !562
  %i.ff = getelementptr inbounds i8, ptr %i.fa, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i147.pre-phi
  %i.fg = getelementptr inbounds i8, ptr %i.ey, i64 %.idx2.i.i.i.i.i.i.i.i.i.i.i.i.i149.pre-phi
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !562
  store double %i.fh, ptr %i.ff, align 8, !tbaa !562
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi3ELi0ELin1ELi3EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %21, i64 noundef %i.by, i64 noundef 3)
          to label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader unwind label %bb.as

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader: ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %.pre286 = trunc i64 %i.ez to i32               ; 7 uses
  br i1 %.not.i.i.i.i, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge, label %.lr.ph249

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %.phi.trans.insert279 = getelementptr inbounds nuw i8, ptr %21, i64 8
  %.pre280 = load i64, ptr %.phi.trans.insert279, align 8, !tbaa !429 ; 2 uses
  %.pre285 = trunc i64 %i.by to i32
  %.pre288 = shl i64 %.pre280, 3
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

.lr.ph249:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader
  %i.fi = load ptr, ptr %4, align 8, !tbaa !30    ; 3 uses
  %i.fj = load ptr, ptr %21, align 8              ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fl = load i64, ptr %i.fk, align 8            ; 6 uses
  %i.fm = trunc i64 %i.by to i32                  ; 8 uses
  %.idx243 = shl i64 %i.fl, 3                     ; 5 uses
  %i.fn = icmp eq i64 %i.bw, 4
  br i1 %i.fn, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, label %.lr.ph249.new

.lr.ph249.new:                                    ; preds = %.lr.ph249
  %unroll_iter = and i64 %i.bx, 1152921504606846974
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit

bb.as:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body152

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, %.lr.ph249.new
  %.089248 = phi i64 [ 0, %.lr.ph249.new ], [ %i.gi, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph249.new ], [ %niter.next.1, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit ]
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %.089248
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !31
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !38
  %i.ft = icmp slt i32 %i.fs, 0                   ; 2 uses
  %i.fu = getelementptr [4 x i8], ptr %i.fj, i64 %.089248 ; 3 uses
  %i.fv = getelementptr [4 x i8], ptr %i.fu, i64 %i.fl
  %i.fw = getelementptr i8, ptr %i.fu, i64 %.idx243
  %i.fx = trunc i64 %.089248 to i32
  %..pre286 = select i1 %i.ft, i32 %i.fm, i32 %.pre286
  %.pre286. = select i1 %i.ft, i32 %.pre286, i32 %i.fm
  store i32 %..pre286, ptr %i.fu, align 4, !tbaa !38
  store i32 %.pre286., ptr %i.fv, align 4, !tbaa !38
  store i32 %i.fx, ptr %i.fw, align 4, !tbaa !38
  %i.fy = or disjoint i64 %.089248, 1             ; 3 uses
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !31
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.ga
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !38
  %i.gd = icmp slt i32 %i.gc, 0                   ; 2 uses
  %i.ge = getelementptr [4 x i8], ptr %i.fj, i64 %i.fy ; 3 uses
  %i.gf = getelementptr [4 x i8], ptr %i.ge, i64 %i.fl
  %i.gg = getelementptr i8, ptr %i.ge, i64 %.idx243
  %i.gh = trunc i64 %i.fy to i32
  %..pre286.1 = select i1 %i.gd, i32 %i.fm, i32 %.pre286
  %.pre286..1 = select i1 %i.gd, i32 %.pre286, i32 %i.fm
  store i32 %..pre286.1, ptr %i.ge, align 4, !tbaa !38
  store i32 %.pre286..1, ptr %i.gf, align 4, !tbaa !38
  store i32 %i.gh, ptr %i.gg, align 4, !tbaa !38
  %i.gi = add nuw i64 %.089248, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit, !llvm.loop !695

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit
  %i.gj = and i64 %i.bw, 4
  %lcmp.mod.not = icmp eq i64 %i.gj, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge, label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %.lr.ph249
  %.089248.epil.init = phi i64 [ 0, %.lr.ph249 ], [ %i.gi, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod342 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod342)
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %.089248.epil.init
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !31
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.fi, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !38
  %i.go = icmp slt i32 %i.gn, 0                   ; 2 uses
  %i.gp = getelementptr [4 x i8], ptr %i.fj, i64 %.089248.epil.init ; 3 uses
  %i.gq = getelementptr [4 x i8], ptr %i.gp, i64 %i.fl
  %i.gr = getelementptr i8, ptr %i.gp, i64 %.idx243
  %i.gs = trunc i64 %.089248.epil.init to i32
  %..pre286.epil = select i1 %i.go, i32 %i.fm, i32 %.pre286
  %.pre286..epil = select i1 %i.go, i32 %.pre286, i32 %i.fm
  store i32 %..pre286.epil, ptr %i.gp, align 4, !tbaa !38
  store i32 %.pre286..epil, ptr %i.gq, align 4, !tbaa !38
  store i32 %i.gs, ptr %i.gr, align 4, !tbaa !38
  br label %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge

_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge: ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge
  %.idx242.pre-phi = phi i64 [ %.pre288, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %.idx243, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %.idx243, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %.pre-phi = phi i32 [ %.pre285, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.fm, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.fm, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ]
  %i.gt = phi i64 [ %.pre280, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.preheader._ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge_crit_edge ], [ %i.fl, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge.loopexit.unr-lcssa ], [ %i.fl, %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit.epil.preheader ] ; 4 uses
  %i.gu = load ptr, ptr %21, align 8, !tbaa !427  ; 4 uses
  %i.gv = getelementptr i8, ptr %i.gu, i64 %i.bw  ; 3 uses
  store i32 %.pre-phi, ptr %i.gv, align 4, !tbaa !38
  %i.gw = getelementptr [4 x i8], ptr %i.gv, i64 %i.gt
  store i32 %.pre286, ptr %i.gw, align 4, !tbaa !38
  %i.gx = getelementptr i8, ptr %i.gv, i64 %.idx242.pre-phi
  %i.gy = trunc i64 %i.bx to i32
  store i32 %i.gy, ptr %i.gx, align 4, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #22
  %i.gz = shl nuw nsw i64 %i.by, 2
  %i.ha = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gz) #36
          to label %.noexc158 unwind label %bb.at ; 7 uses

.noexc158:                                        ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  store ptr %i.ha, ptr %22, align 8, !tbaa !30
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.by
  %i.hc = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 3 uses
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !96
  store i32 0, ptr %i.ha, align 4, !tbaa !38
  %i.hd = getelementptr i8, ptr %i.ha, i64 4      ; 3 uses
  br i1 %.not.i.i.i.i, label %.lr.ph252, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc158
  call void @llvm.memset.p0.i64(ptr align 4 %i.hd, i8 0, i64 %i.bw, i1 false), !tbaa !38
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.bw
  br label %.lr.ph252

.lr.ph252:                                        ; preds = %.noexc158, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %.0.i.i.i.i.i156 = phi ptr [ %i.he, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.hd, %.noexc158 ]
  %i.hf = getelementptr inbounds nuw i8, ptr %22, i64 8
  store ptr %.0.i.i.i.i.i156, ptr %i.hf, align 8, !tbaa !27
  %i.hg = icmp eq ptr %i.bs, %i.bt
  br i1 %i.hg, label %.epil.preheader, label %.lr.ph252.new

.lr.ph252.new:                                    ; preds = %.lr.ph252
  %unroll_iter346 = and i64 %i.by, 2305843009213693950
  br label %bb.au

bb.at:                                            ; preds = %_ZN5Eigen6MatrixIiLin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit._crit_edge
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit165

bb.au:                                            ; preds = %bb.bc, %.lr.ph252.new
  %.088250 = phi i64 [ 0, %.lr.ph252.new ], [ %i.ij, %bb.bc ] ; 6 uses
  %niter347 = phi i64 [ 0, %.lr.ph252.new ], [ %niter347.next.1, %bb.bc ]
  %i.hi = getelementptr [4 x i8], ptr %i.gu, i64 %.088250 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !38
  %i.hk = sext i32 %i.hj to i64
  %i.hl = icmp eq i64 %i.by, %i.hk
  br i1 %i.hl, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.hm = getelementptr [4 x i8], ptr %i.hi, i64 %i.gt
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !38
  %i.ho = sext i32 %i.hn to i64
  %i.hp = icmp eq i64 %i.ez, %i.ho
  br i1 %i.hp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hq = trunc i64 %.088250 to i32
  %i.hr = xor i32 %i.hq, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %i.hs = trunc i64 %.088250 to i32
  %i.ht = or disjoint i32 %i.hs, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %.sink337 = phi i32 [ %i.hr, %bb.aw ], [ %i.ht, %bb.ax ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.088250
  store i32 %.sink337, ptr %i.hu, align 4, !tbaa !38
  %i.hv = or disjoint i64 %.088250, 1             ; 4 uses
  %i.hw = getelementptr [4 x i8], ptr %i.gu, i64 %i.hv ; 2 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !38
  %i.hy = sext i32 %i.hx to i64
  %i.hz = icmp eq i64 %i.by, %i.hy
  br i1 %i.hz, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.ia = getelementptr [4 x i8], ptr %i.hw, i64 %i.gt
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !38
  %i.ic = sext i32 %i.ib to i64
  %i.id = icmp eq i64 %i.ez, %i.ic
  br i1 %i.id, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ie = trunc i64 %i.hv to i32
  %i.if = add i32 %i.ie, 1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ig = trunc i64 %i.hv to i32
  %i.ih = xor i32 %i.ig, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.sink337.1 = phi i32 [ %i.ih, %bb.bb ], [ %i.if, %bb.ba ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %i.hv
  store i32 %.sink337.1, ptr %i.ii, align 4, !tbaa !38
  %i.ij = add nuw i64 %.088250, 2                 ; 2 uses
  %niter347.next.1 = add i64 %niter347, 2         ; 2 uses
  %niter347.ncmp.1 = icmp eq i64 %niter347.next.1, %unroll_iter346
  br i1 %niter347.ncmp.1, label %._crit_edge253.unr-lcssa, label %bb.au, !llvm.loop !696

._crit_edge253.unr-lcssa:                         ; preds = %bb.bc
  %i.ik = and i64 %i.bw, 4
  %lcmp.mod344.not.not = icmp eq i64 %i.ik, 0
  br i1 %lcmp.mod344.not.not, label %.epil.preheader, label %._crit_edge253

.epil.preheader:                                  ; preds = %._crit_edge253.unr-lcssa, %.lr.ph252
  %.088250.epil.init = phi i64 [ 0, %.lr.ph252 ], [ %i.ij, %._crit_edge253.unr-lcssa ] ; 4 uses
  %lcmp.mod345 = trunc i64 %i.by to i1
  call void @llvm.assume(i1 %lcmp.mod345)
  %i.il = getelementptr [4 x i8], ptr %i.gu, i64 %.088250.epil.init ; 2 uses
  %i.im = load i32, ptr %i.il, align 4, !tbaa !38
  %i.in = sext i32 %i.im to i64
  %i.io = icmp eq i64 %i.by, %i.in
  br i1 %i.io, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.epil.preheader
  %i.ip = getelementptr [4 x i8], ptr %i.il, i64 %i.gt
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !38
  %i.ir = sext i32 %i.iq to i64
  %i.is = icmp eq i64 %i.ez, %i.ir
  br i1 %i.is, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %.epil.preheader
  %i.it = trunc i64 %.088250.epil.init to i32
  %i.iu = add i32 %i.it, 1
  br label %._crit_edge253.epilog-lcssa

bb.bf:                                            ; preds = %bb.bd
  %i.iv = trunc i64 %.088250.epil.init to i32
  %i.iw = xor i32 %i.iv, -1
  br label %._crit_edge253.epilog-lcssa

._crit_edge253.epilog-lcssa:                      ; preds = %bb.bf, %bb.be
  %.sink337.epil = phi i32 [ %i.iw, %bb.bf ], [ %i.iu, %bb.be ]
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %.088250.epil.init
  store i32 %.sink337.epil, ptr %i.ix, align 4, !tbaa !38
  br label %._crit_edge253

._crit_edge253:                                   ; preds = %._crit_edge253.unr-lcssa, %._crit_edge253.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  invoke void @_ZN3igl8copyleft4cgal24order_facets_around_edgeIN5Eigen6MatrixIdLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi3ELi0ELin1ELi3EEENS4_IiLin1ELi1ELi0ELin1ELi1EEEEEvRKNS3_10MatrixBaseIT_EERKNS8_IT0_EEmmRKSt6vectorIiSaIiEERNS3_15PlainObjectBaseIT1_EEb(ptr noundef nonnull align 1 dereferenceable(1) %20, ptr noundef nonnull align 1 dereferenceable(1) %21, i64 noundef %i.by, i64 noundef %i.ez, ptr noundef nonnull align 8 dereferenceable(24) %22, ptr noundef nonnull align 8 dereferenceable(16) %23, i1 noundef zeroext false)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %._crit_edge253
  %i.iy = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !tbaa !98
  %.not.i.i159 = icmp eq i64 %i.bx, %i.iz
  br i1 %.not.i.i159, label %.lr.ph256, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ja = load ptr, ptr %6, align 8, !tbaa !100
  call void @free(ptr noundef %i.ja) #22
  br i1 %.not.i.i.i.i, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.bh
  %i.jb = call noalias ptr @malloc(i64 noundef %i.bw) #37 ; 2 uses
  %i.jc = icmp eq ptr %i.jb, null
  br i1 %i.jc, label %bb.bi, label %.sink.split.i.i

bb.bi:                                            ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.jd = call ptr @__cxa_allocate_exception(i64 8) #22 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jd, align 8, !tbaa !24
  invoke void @__cxa_throw(ptr nonnull %i.jd, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #35
          to label %.noexc161 unwind label %bb.bj

.noexc161:                                        ; preds = %bb.bi
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.bh
  %.sink.i.i = phi ptr [ %i.jb, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.bh ]
  store ptr %.sink.i.i, ptr %6, align 8, !tbaa !100
  br label %.lr.ph256

.lr.ph256:                                        ; preds = %bb.bg, %.sink.split.i.i
  store i64 %i.bx, ptr %i.iy, align 8, !tbaa !98
  %i.je = load ptr, ptr %23, align 8, !tbaa !100  ; 5 uses
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi, %._crit_edge253
  %i.jf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jg = load ptr, ptr %23, align 8, !tbaa !100
  call void @free(ptr noundef %i.jg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.jh = load ptr, ptr %22, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i164 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i.i164, label %_ZNSt6vectorIiSaIiEED2Ev.exit165, label %bb.bp

bb.bk:                                            ; preds = %.lr.ph256, %bb.bl
  %.086254 = phi i64 [ 0, %.lr.ph256 ], [ %i.jm, %bb.bl ] ; 4 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %.086254
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !38
  %i.jk = sext i32 %i.jj to i64
  %i.jl = icmp eq i64 %i.bx, %i.jk
  br i1 %i.jl, label %._crit_edge257, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jm = add nuw i64 %.086254, 1
  %exitcond275.not = icmp eq i64 %.086254, %i.bx
  br i1 %exitcond275.not, label %._crit_edge257, label %bb.bk, !llvm.loop !697

._crit_edge257:                                   ; preds = %bb.bl, %bb.bk
  %.087.ph = phi i64 [ %i.ez, %bb.bl ], [ %.086254, %bb.bk ]
  br i1 %.not.i.i.i.i, label %._crit_edge263, label %.lr.ph262

.lr.ph262:                                        ; preds = %._crit_edge257
  %i.jn = add i64 %.087.ph, 1                     ; 3 uses
  %i.jo = load ptr, ptr %6, align 8, !tbaa !100   ; 3 uses
  %i.jp = icmp eq i64 %i.bw, 4
  br i1 %i.jp, label %.epil.preheader348, label %.lr.ph262.new

.lr.ph262.new:                                    ; preds = %.lr.ph262
  %unroll_iter352 = and i64 %i.bx, 1152921504606846974
  br label %bb.bo

._crit_edge263.loopexit.unr-lcssa:                ; preds = %bb.bo
  %i.jq = and i64 %i.bw, 4
  %lcmp.mod350.not = icmp eq i64 %i.jq, 0
  br i1 %lcmp.mod350.not, label %._crit_edge263, label %.epil.preheader348

.epil.preheader348:                               ; preds = %._crit_edge263.loopexit.unr-lcssa, %.lr.ph262
  %.0260.epil.init = phi i64 [ 0, %.lr.ph262 ], [ %i.ld, %._crit_edge263.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod351 = trunc i64 %i.bx to i1
  call void @llvm.assume(i1 %lcmp.mod351)
  %i.jr = add i64 %i.jn, %.0260.epil.init
  %i.js = urem i64 %i.jr, %i.by
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.js
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !38
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %i.jv
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !31
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.0260.epil.init
  %i.jz = trunc i64 %i.jx to i32
  store i32 %i.jz, ptr %i.jy, align 4, !tbaa !38
  br label %._crit_edge263

._crit_edge263:                                   ; preds = %.epil.preheader348, %._crit_edge263.loopexit.unr-lcssa, %._crit_edge257
  call void @free(ptr noundef nonnull %i.je) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.ka = load ptr, ptr %22, align 8, !tbaa !30   ; 3 uses
  %.not.i.i.i162 = icmp eq ptr %i.ka, null
  br i1 %.not.i.i.i162, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge263
  %i.kb = load ptr, ptr %i.hc, align 8, !tbaa !96
  %i.kc = ptrtoint ptr %i.kb to i64
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = sub i64 %i.kc, %i.kd
  call void @_ZdlPvm(ptr noundef nonnull %i.ka, i64 noundef %i.ke) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %._crit_edge263, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  %i.kf = load ptr, ptr %21, align 8, !tbaa !427
  call void @free(ptr noundef %i.kf) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  %i.kg = load ptr, ptr %20, align 8, !tbaa !618
  call void @free(ptr noundef %i.kg) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i163 = icmp eq ptr %.sroa.0209.0316327, null
  br i1 %.not.i.i.i163, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %i.kh = ptrtoint ptr %.sroa.15.0313329 to i64
  %i.ki = ptrtoint ptr %.sroa.0209.0316327 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0316327, i64 noundef %i.kj) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  ret void

bb.bo:                                            ; preds = %bb.bo, %.lr.ph262.new
  %.0260 = phi i64 [ 0, %.lr.ph262.new ], [ %i.ld, %bb.bo ] ; 4 uses
  %niter353 = phi i64 [ 0, %.lr.ph262.new ], [ %niter353.next.1, %bb.bo ]
  %i.kk = add i64 %i.jn, %.0260
  %i.kl = urem i64 %i.kk, %i.by
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.kl
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !38
  %i.ko = sext i32 %i.kn to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %i.ko
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !31
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %.0260
  %i.ks = trunc i64 %i.kq to i32
  store i32 %i.ks, ptr %i.kr, align 4, !tbaa !38
  %i.kt = or disjoint i64 %.0260, 1               ; 2 uses
  %i.ku = add i64 %i.jn, %i.kt
  %i.kv = urem i64 %i.ku, %i.by
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.kv
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !38
  %i.ky = sext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0209.0316327, i64 %i.ky
  %i.la = load i64, ptr %i.kz, align 8, !tbaa !31
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.jo, i64 %i.kt
  %i.lc = trunc i64 %i.la to i32
  store i32 %i.lc, ptr %i.lb, align 4, !tbaa !38
  %i.ld = add nuw i64 %.0260, 2                   ; 2 uses
  %niter353.next.1 = add i64 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i64 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %._crit_edge263.loopexit.unr-lcssa, label %bb.bo, !llvm.loop !698

bb.bp:                                            ; preds = %bb.bj
  %i.le = load ptr, ptr %i.hc, align 8, !tbaa !96
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = ptrtoint ptr %i.jh to i64
  %i.lh = sub i64 %i.lf, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %i.jh, i64 noundef %i.lh) #34
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit165

_ZNSt6vectorIiSaIiEED2Ev.exit165:                 ; preds = %bb.bp, %bb.bj, %bb.at
  %.pn119.pn = phi { ptr, i32 } [ %i.hh, %bb.at ], [ %i.jf, %bb.bj ], [ %i.jf, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  br label %.body152

.body152:                                         ; preds = %bb.as, %_ZNSt6vectorIiSaIiEED2Ev.exit165
  %.pn122.pn = phi { ptr, i32 } [ %.pn119.pn, %_ZNSt6vectorIiSaIiEED2Ev.exit165 ], [ %i.fo, %bb.as ]
  %i.li = load ptr, ptr %21, align 8, !tbaa !427
  call void @free(ptr noundef %i.li) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.bq

bb.bq:                                            ; preds = %.body152, %bb.an
  %.pn125.pn.pn = phi { ptr, i32 } [ %.pn122.pn, %.body152 ], [ %i.de, %bb.an ] ; 2 uses
  %i.lj = load ptr, ptr %20, align 8, !tbaa !618
  call void @free(ptr noundef %i.lj) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  %.not.i.i.i166 = icmp eq ptr %.sroa.0209.0316327, null
  br i1 %.not.i.i.i166, label %_ZNSt6vectorImSaImEED2Ev.exit167, label %bb.br

bb.br:                                            ; preds = %.thread, %bb.bq
  %.pn125.pn.pn.pn336 = phi { ptr, i32 } [ %i.df, %.thread ], [ %.pn125.pn.pn, %bb.bq ]
  %.sroa.0209.0317335 = phi ptr [ %i.cb, %.thread ], [ %.sroa.0209.0316327, %bb.bq ] ; 2 uses
  %.sroa.15.0313328334 = phi ptr [ %i.cc, %.thread ], [ %.sroa.15.0313329, %bb.bq ]
  %i.lk = ptrtoint ptr %.sroa.15.0313328334 to i64
  %i.ll = ptrtoint ptr %.sroa.0209.0317335 to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0209.0317335, i64 noundef %i.lm) #34
  br label %_ZNSt6vectorImSaImEED2Ev.exit167

_ZNSt6vectorImSaImEED2Ev.exit167:                 ; preds = %bb.bq, %bb.br, %bb.am
  %.pn131.pn.pn.pn = phi { ptr, i32 } [ %.pn131.pn.pn, %bb.am ], [ %.pn125.pn.pn.pn336, %bb.br ], [ %.pn125.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  resume { ptr, i32 } %.pn131.pn.pn.pn

bb.bs:                                            ; preds = %bb.f
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: nounwind uwtable
define internal void @__cxx_global_var_init.32() #10 section ".text.startup" comdat($_ZN5boost4math6detail21min_shift_initializerIdE11initializerE) personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr @_ZGVN5boost4math6detail21min_shift_initializerIdE11initializerE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN5boost4math6detail21min_shift_initializerIdE11initializerE, align 8
  %i.c = load atomic i8, ptr @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val acquire, align 8
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, !prof !699

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) #22
  %.not.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i, label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noundef double @ldexp(double noundef f0x0010000000000000, i32 noundef 54) #22
  store double %i.f, ptr @_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val, align 8, !tbaa !562
  %i.g = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5boost4math6detail19get_min_shift_valueIdEET_vE3val) #22
  br label %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit

_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  %i.h = tail call ptr @llvm.invariant.start.p0(i64 1, ptr nonnull @_ZN5boost4math6detail21min_shift_initializerIdE11initializerE) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %_ZN5boost4math6detail21min_shift_initializerIdE4initC2Ev.exit, %bb.a
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5boost14multiprecision8backends8eval_msbILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEmE4typeERKS9_(ptr noundef nonnull align 16 dereferenceable(27) %0) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::domain_error", align 8 ; 5 uses
  %2 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %3 = alloca %"class.std::domain_error", align 8 ; 5 uses
  %4 = alloca %"struct.boost::source_location", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 16, !tbaa !700 ; 3 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit, label %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !9, !range !13, !noundef !14
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %0, ptr %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !701
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread, label %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit

_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  call void @_ZNSt12domain_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.34)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr @.str.35, ptr %2, align 8, !tbaa !703
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.36, ptr %i.l, align 8, !tbaa !706
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 355, ptr %i.m, align 8, !tbaa !707
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 85, ptr %i.n, align 4, !tbaa !708
  invoke void @_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) #35
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread
  unreachable

bb.c:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZNSt12domain_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.h

_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load i8, ptr %i.p, align 8, !tbaa !709, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.d, label %bb.g

bb.d:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  call void @_ZNSt12domain_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str.37)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr @.str.35, ptr %4, align 8, !tbaa !703
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.36, ptr %i.s, align 8, !tbaa !706
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 359, ptr %i.t, align 8, !tbaa !707
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 137, ptr %i.u, align 4, !tbaa !708
  invoke void @_ZN5boost15throw_exceptionISt12domain_errorEEvRKT_RKNS_15source_locationE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) #35
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZNSt12domain_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.h

bb.g:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit
  %i.w = shl i64 %i.b, 6
  %i.x = add i64 %i.w, -64
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.z = load i8, ptr %i.y, align 1, !tbaa !9, !range !13, !noundef !14
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %i.aa, ptr %0, ptr %i.ac
  %i.ae = getelementptr [8 x i8], ptr %i.ad, i64 %i.b
  %i.af = getelementptr i8, ptr %i.ae, i64 -8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !701
  %i.ah = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = or disjoint i64 %i.ah, %i.x
  %i.aj = xor i64 %i.ai, 63
  ret i64 %i.aj

bb.h:                                             ; preds = %bb.f, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.v, %bb.f ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: alwaysinline mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev(ptr noundef nonnull align 16 dead_on_return(27) dereferenceable(27) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 25
end_hunk_16
