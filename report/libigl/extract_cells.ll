Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/extract_cells?download=true
inline.NumInlined: 3670
inline.NumDeleted: 1517
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a
bb.au:                                            ; preds = %bb.at
  br i1 %i.jc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jd = load ptr, ptr %i.iy, align 8, !tbaa !14
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(12) %i.iy) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit366

bb.aw:                                            ; preds = %bb.au
  %i.jg = add nsw i32 %i.jb, -1
  store atomic i32 %i.jg, ptr %i.ja monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit366

bb.ax:                                            ; preds = %bb.at
  br i1 %i.jc, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jh = atomicrmw sub ptr %i.ja, i32 1 release, align 4
  %i.ji = icmp eq i32 %i.jh, 1
  br i1 %i.ji, label %bb.az, label %_ZN4CGAL6HandleD2Ev.exit366

bb.az:                                            ; preds = %bb.ay, %bb.ax
  fence acquire
  %i.jj = load ptr, ptr %45, align 8, !tbaa !129  ; 3 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %_ZN4CGAL6HandleD2Ev.exit366, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !14
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(12) %i.jj) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit366

_ZN4CGAL6HandleD2Ev.exit366:                      ; preds = %bb.as, %bb.av, %bb.aw, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br i1 %.not1663, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %.lr.ph1640

.lr.ph1640:                                       ; preds = %_ZN4CGAL6HandleD2Ev.exit366
  %i.jo = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 2 uses
  %i.jp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 12 uses
  %i.jq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 12 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 2 uses
  br label %bb.bo

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph: ; preds = %bb.bp, %_ZN4CGAL6HandleD2Ev.exit366
  %i.js = shl nuw nsw i64 %i.cr, 3
  %i.jt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  %i.ju = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %43, i64 8 ; 4 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 4 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jy = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 24
  %.sroa.723.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 32
  %.sroa.824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 40
  %.sroa.925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 48
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 56
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 64
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 80
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 88
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 96
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 104
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.jz = getelementptr inbounds nuw i8, ptr %22, i64 128
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 144
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 152
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 160
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 168
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 176
  %i.ka = getelementptr inbounds nuw i8, ptr %21, i64 216 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %46, i64 8 ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.kd = getelementptr inbounds nuw i8, ptr %25, i64 8
  %umax = call i64 @llvm.umax.i64(i64 %i.cr, i64 1) ; 2 uses
  br label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

bb.bb:                                            ; preds = %._crit_edge
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.bc:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i281
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EED2Ev.exit666

bb.bd:                                            ; preds = %_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i, %bb.x
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EES_IS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISI_EED2Ev.exit657

.thread:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i292
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i650.preheader.sink.split

.thread2001:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i299
  %i.ki = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #22
  br label %.lr.ph.i.i.i650.preheader.sink.split

bb.be:                                            ; preds = %bb.ab
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %.body321

bb.bf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i327, %bb.ad
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %.body321

bb.bg:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i337
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit626

bb.bh:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i347
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit615

bb.bi:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEC2ImiEERKT_RKT0_.exit359
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ah
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %44) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.ko, %bb.bj ], [ %i.kn, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.body743

bb.bl:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.kp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ar
  %i.kq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %45) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn204 = phi { ptr, i32 } [ %i.kq, %bb.bm ], [ %i.kp, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %.body743

bb.bo:                                            ; preds = %.lr.ph1640, %bb.bp
  %.01911639 = phi i64 [ 0, %.lr.ph1640 ], [ %i.kx, %bb.bp ] ; 3 uses
  %i.kr = load ptr, ptr %30, align 8, !tbaa !17
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %.01911639
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !23
  %i.ku = load ptr, ptr %1, align 8, !tbaa !16, !noalias !133
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %.01911639 ; 2 uses
  %i.kw = sext i32 %i.kt to i64                   ; 4 uses
  br label %.preheader1510

.preheader1510:                                   ; preds = %bb.bo, %bb.bq
  %.01921638 = phi i64 [ 0, %bb.bo ], [ %i.ky, %bb.bq ] ; 3 uses
  br label %bb.br

bb.bp:                                            ; preds = %bb.bq
  %i.kx = add nuw i64 %.01911639, 1               ; 2 uses
  %exitcond1735.not = icmp eq i64 %i.kx, %i.n
  br i1 %exitcond1735.not, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %bb.bo, !llvm.loop !136

bb.bq:                                            ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378
  %i.ky = add nuw nsw i64 %.01921638, 1           ; 2 uses
  %exitcond1734.not = icmp eq i64 %i.ky, 3
  br i1 %exitcond1734.not, label %bb.bp, label %.preheader1510, !llvm.loop !137

bb.br:                                            ; preds = %.preheader1510, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378
  %.01941637 = phi i64 [ 0, %.preheader1510 ], [ %i.qj, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378 ] ; 7 uses
  %i.kz = load ptr, ptr %42, align 8, !tbaa !138
  %i.la = load i64, ptr %i.jo, align 8, !tbaa !140
  %i.lb = mul nsw i64 %i.la, %.01941637
  %i.lc = getelementptr [16 x i8], ptr %i.kz, i64 %i.kw
  %i.ld = getelementptr [16 x i8], ptr %i.lc, i64 %i.lb ; 5 uses
  %i.le = load i64, ptr %i.m, align 8, !tbaa !9
  %i.lf = mul nsw i64 %i.le, %.01921638
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !23
  %i.li = sext i32 %i.lh to i64
  %i.lj = load ptr, ptr %0, align 8, !tbaa !141
  %i.lk = load i64, ptr %i.cy, align 8, !tbaa !51
  %i.ll = mul nsw i64 %i.lk, %.01941637
  %i.lm = getelementptr [16 x i8], ptr %i.lj, i64 %i.li
  %i.ln = getelementptr [16 x i8], ptr %i.lm, i64 %i.ll ; 2 uses
  %i.lo = load ptr, ptr %i.ln, align 8, !tbaa !129 ; 6 uses
  %i.lp = load ptr, ptr %i.ld, align 8, !tbaa !129 ; 3 uses
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lp, i64 16
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !33
  %50 = load double, ptr %i.lr, align 16, !tbaa !33
  %i.lu = fneg double %50
  %i.lv = fcmp olt double %i.lt, %i.lu
  br i1 %i.lv, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  %51 = load double, ptr %i.lw, align 16, !tbaa !33
  %52 = fneg double %51
  %53 = getelementptr inbounds nuw i8, ptr %i.lp, i64 24
  %54 = load double, ptr %53, align 8, !tbaa !33
  %i.lx = fcmp ugt double %54, %52
  br i1 %i.lx, label %bb.bu, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

bb.bu:                                            ; preds = %bb.bt
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sroa.4.0.i.i = phi i16 [ 257, %bb.bs ], [ 256, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.4.0.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.4.0.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.ly = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.ly, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.lo, ptr %19, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %19, ptr %18, align 8, !tbaa !112
  store ptr %18, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.ma = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.lz, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit1511 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.bv
  %.not.i.i.i.i742 = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i.i742, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ma) #33
          to label %bb.bx unwind label %.loopexit.split-lp1512

bb.bx:                                            ; preds = %bb.bw
  unreachable

.loopexit1511:                                    ; preds = %bb.bv
  %lpad.loopexit1513 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp1512:                           ; preds = %bb.bw
  %lpad.loopexit.split-lp1514 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %.loopexit.split-lp1512, %.loopexit1511
  %lpad.phi1515 = phi { ptr, i32 } [ %lpad.loopexit1513, %.loopexit1511 ], [ %lpad.loopexit.split-lp1514, %.loopexit.split-lp1512 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.mc = load atomic ptr, ptr %i.mb monotonic, align 8
  %i.md = load ptr, ptr %i.ld, align 8, !tbaa !129 ; 3 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %i.md, ptr %17, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %17, ptr %16, align 8, !tbaa !112
  store ptr %16, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.mf = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.me, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i unwind label %.loopexit1516 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i:        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %.not.i.i.i11.i = icmp eq i32 %i.mf, 0
  br i1 %.not.i.i.i11.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i, label %bb.bz

bb.bz:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.mf) #33
          to label %bb.ca unwind label %.loopexit.split-lp1517

bb.ca:                                            ; preds = %bb.bz
  unreachable

.loopexit1516:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %lpad.loopexit1518 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp1517:                           ; preds = %bb.bz
  %lpad.loopexit.split-lp1519 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp1517, %.loopexit1516
  %lpad.phi1520 = phi { ptr, i32 } [ %lpad.loopexit1518, %.loopexit1516 ], [ %lpad.loopexit.split-lp1519, %.loopexit.split-lp1517 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 32
  %i.mh = load atomic ptr, ptr %i.mg monotonic, align 8
  %i.mi = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.mc, ptr noundef nonnull align 16 dereferenceable(64) %i.mh)
          to label %.noexc745 unwind label %bb.db

.noexc745:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.mj = icmp slt i32 %i.mi, 0
  br i1 %i.mj, label %bb.cc, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.mk = trunc i16 %.sroa.4.0.i.i to i1
  br i1 %i.mk, label %bb.cc, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

bb.cc:                                            ; preds = %.noexc745, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit
  br label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread: ; preds = %bb.br, %.noexc745, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, %bb.cc
  %i.ml = phi ptr [ %i.ln, %bb.cc ], [ %i.ld, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit ], [ %i.ld, %.noexc745 ], [ %i.ld, %bb.br ] ; 2 uses
  %i.mm = load ptr, ptr %42, align 8, !tbaa !138
  %i.mn = load i64, ptr %i.jo, align 8, !tbaa !140
  %i.mo = mul nsw i64 %i.mn, %.01941637
  %i.mp = getelementptr [16 x i8], ptr %i.mm, i64 %i.kw
  %i.mq = getelementptr [16 x i8], ptr %i.mp, i64 %i.mo ; 4 uses
  %i.mr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i368 = icmp eq i8 %i.mr, 0
  %i.ms = load ptr, ptr %i.ml, align 8, !tbaa !129
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i368, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.mu = atomicrmw add ptr %i.mt, i32 1 monotonic, align 4 ; 0 uses
  %i.mv = load ptr, ptr %i.mq, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i369 = icmp eq ptr %i.mv, null
  br i1 %.not.i.i.i369, label %bb.cj, label %bb.cf

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.mw = load atomic i32, ptr %i.mt monotonic, align 4
  %i.mx = add nsw i32 %i.mw, 1
  store atomic i32 %i.mx, ptr %i.mt monotonic, align 4
  %i.my = load ptr, ptr %i.mq, align 8, !tbaa !129 ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.my, null
  br i1 %.not4.i.i.i, label %bb.cj, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 8 ; 2 uses
  %i.na = load atomic i32, ptr %i.mz monotonic, align 4 ; 2 uses
  %i.nb = icmp eq i32 %i.na, 1
  br i1 %i.nb, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.thread.i.i.i
  %i.nc = load ptr, ptr %i.my, align 8, !tbaa !14
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8
  call void %i.ne(ptr noundef nonnull align 8 dereferenceable(12) %i.my) #22, !inline_history !145
  br label %bb.cj

bb.ce:                                            ; preds = %.thread.i.i.i
  %i.nf = add nsw i32 %i.na, -1
  store atomic i32 %i.nf, ptr %i.mz monotonic, align 4
  br label %bb.cj

bb.cf:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  %i.nh = load atomic i32, ptr %i.ng monotonic, align 4
  %i.ni = icmp eq i32 %i.nh, 1
  br i1 %i.ni, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nj = atomicrmw sub ptr %i.ng, i32 1 release, align 4
  %i.nk = icmp eq i32 %i.nj, 1
  br i1 %i.nk, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  fence acquire
  %i.nl = load ptr, ptr %i.mq, align 8, !tbaa !129 ; 3 uses
  %i.nm = icmp eq ptr %i.nl, null
  br i1 %i.nm, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nn = load ptr, ptr %i.nl, align 8, !tbaa !14
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8
  %i.np = load ptr, ptr %i.no, align 8
  call void %i.np(ptr noundef nonnull align 8 dereferenceable(12) %i.nl) #22, !inline_history !145
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.nq = load ptr, ptr %i.ml, align 8, !tbaa !129
  store ptr %i.nq, ptr %i.mq, align 8, !tbaa !129
  %i.nr = load ptr, ptr %43, align 8, !tbaa !138
  %i.ns = load i64, ptr %i.jr, align 8, !tbaa !140
  %i.nt = mul nsw i64 %i.ns, %.01941637
  %i.nu = getelementptr [16 x i8], ptr %i.nr, i64 %i.kw
  %i.nv = getelementptr [16 x i8], ptr %i.nu, i64 %i.nt ; 4 uses
  %i.nw = load i64, ptr %i.m, align 8, !tbaa !9
  %i.nx = mul nsw i64 %i.nw, %.01921638
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !23
  %i.oa = sext i32 %i.nz to i64
  %i.ob = load ptr, ptr %0, align 8, !tbaa !141
  %i.oc = load i64, ptr %i.cy, align 8, !tbaa !51
  %i.od = mul nsw i64 %i.oc, %.01941637
  %i.oe = getelementptr [16 x i8], ptr %i.ob, i64 %i.oa
  %i.of = getelementptr [16 x i8], ptr %i.oe, i64 %i.od ; 3 uses
  %i.og = load ptr, ptr %i.nv, align 8, !tbaa !129 ; 6 uses
  %i.oh = load ptr, ptr %i.of, align 8, !tbaa !129 ; 3 uses
  %i.oi = icmp eq ptr %i.og, %i.oh
  br i1 %i.oi, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.ol = load double, ptr %i.ok, align 8, !tbaa !33
  %55 = load double, ptr %i.oj, align 16, !tbaa !33
  %i.om = fneg double %55
  %i.on = fcmp olt double %i.ol, %i.om
  br i1 %i.on, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %56 = load double, ptr %i.oo, align 16, !tbaa !33
  %57 = fneg double %56
  %58 = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %59 = load double, ptr %58, align 8, !tbaa !33
  %i.op = fcmp ugt double %59, %57
  br i1 %i.op, label %bb.cm, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746

bb.cm:                                            ; preds = %bb.cl
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746: ; preds = %bb.cm, %bb.cl, %bb.ck
  %.sroa.4.0.i.i747 = phi i16 [ 257, %bb.ck ], [ 256, %bb.cm ], [ 0, %bb.cl ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i748 = trunc i16 %.sroa.4.0.i.i747 to i8
  %.sroa.2.0.extract.shift.i.i749 = lshr i16 %.sroa.4.0.i.i747, 8
  %.sroa.2.0.extract.trunc.i.i750 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i749 to i8
  %i.oq = icmp eq i8 %.sroa.0.0.extract.trunc.i.i748, %.sroa.2.0.extract.trunc.i.i750
  br i1 %i.oq, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746
  %i.or = getelementptr inbounds nuw i8, ptr %i.og, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.og, ptr %15, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %15, ptr %14, align 8, !tbaa !112
  store ptr %14, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.os = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.or, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i753 unwind label %.loopexit1521 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i753:       ; preds = %bb.cn
  %.not.i.i.i.i754 = icmp eq i32 %i.os, 0
  br i1 %.not.i.i.i.i754, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i755, label %bb.co

bb.co:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i753
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.os) #33
          to label %bb.cp unwind label %.loopexit.split-lp1522

bb.cp:                                            ; preds = %bb.co
  unreachable

.loopexit1521:                                    ; preds = %bb.cn
  %lpad.loopexit1523 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp1522:                           ; preds = %bb.co
  %lpad.loopexit.split-lp1524 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp1522, %.loopexit1521
  %lpad.phi1525 = phi { ptr, i32 } [ %lpad.loopexit1523, %.loopexit1521 ], [ %lpad.loopexit.split-lp1524, %.loopexit.split-lp1522 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i755: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i753
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ot = getelementptr inbounds nuw i8, ptr %i.og, i64 32
  %i.ou = load atomic ptr, ptr %i.ot monotonic, align 8
  %i.ov = load ptr, ptr %i.of, align 8, !tbaa !129 ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.ov, ptr %13, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %13, ptr %12, align 8, !tbaa !112
  store ptr %12, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.ox = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ow, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i756 unwind label %.loopexit1526 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i756:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i755
  %.not.i.i.i11.i757 = icmp eq i32 %i.ox, 0
  br i1 %.not.i.i.i11.i757, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i758, label %bb.cr

bb.cr:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i756
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ox) #33
          to label %bb.cs unwind label %.loopexit.split-lp1527

bb.cs:                                            ; preds = %bb.cr
  unreachable

.loopexit1526:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i755
  %lpad.loopexit1528 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp1527:                           ; preds = %bb.cr
  %lpad.loopexit.split-lp1529 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit.split-lp1527, %.loopexit1526
  %lpad.phi1530 = phi { ptr, i32 } [ %lpad.loopexit1528, %.loopexit1526 ], [ %lpad.loopexit.split-lp1529, %.loopexit.split-lp1527 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i758: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i756
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 32
  %i.oz = load atomic ptr, ptr %i.oy monotonic, align 8
  %i.pa = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ou, ptr noundef nonnull align 16 dereferenceable(64) %i.oz)
          to label %.noexc762 unwind label %bb.db

.noexc762:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i758
  %i.pb = icmp slt i32 %i.pa, 0
  br i1 %i.pb, label %bb.cu, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746
  %i.pc = trunc i16 %.sroa.4.0.i.i747 to i1
  br i1 %i.pc, label %bb.cu, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

bb.cu:                                            ; preds = %.noexc762, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit
  br label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread: ; preds = %bb.cj, %.noexc762, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, %bb.cu
  %i.pd = phi ptr [ %i.of, %bb.cu ], [ %i.nv, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit ], [ %i.nv, %.noexc762 ], [ %i.nv, %bb.cj ] ; 2 uses
  %i.pe = load ptr, ptr %43, align 8, !tbaa !138
  %i.pf = load i64, ptr %i.jr, align 8, !tbaa !140
  %i.pg = mul nsw i64 %i.pf, %.01941637
  %i.ph = getelementptr [16 x i8], ptr %i.pe, i64 %i.kw
  %i.pi = getelementptr [16 x i8], ptr %i.ph, i64 %i.pg ; 4 uses
  %i.pj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i372 = icmp eq i8 %i.pj, 0
  %i.pk = load ptr, ptr %i.pd, align 8, !tbaa !129
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i372, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i376, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i373

_ZNK4CGAL6Handle6increfEv.exit.i.i.i376:          ; preds = %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.pm = atomicrmw add ptr %i.pl, i32 1 monotonic, align 4 ; 0 uses
  %i.pn = load ptr, ptr %i.pi, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i377 = icmp eq ptr %i.pn, null
  br i1 %.not.i.i.i377, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378, label %bb.cx

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i373:   ; preds = %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.po = load atomic i32, ptr %i.pl monotonic, align 4
  %i.pp = add nsw i32 %i.po, 1
  store atomic i32 %i.pp, ptr %i.pl monotonic, align 4
  %i.pq = load ptr, ptr %i.pi, align 8, !tbaa !129 ; 4 uses
  %.not4.i.i.i374 = icmp eq ptr %i.pq, null
  br i1 %.not4.i.i.i374, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378, label %.thread.i.i.i375

.thread.i.i.i375:                                 ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i373
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 2 uses
  %i.ps = load atomic i32, ptr %i.pr monotonic, align 4 ; 2 uses
  %i.pt = icmp eq i32 %i.ps, 1
  br i1 %i.pt, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.thread.i.i.i375
  %i.pu = load ptr, ptr %i.pq, align 8, !tbaa !14
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(12) %i.pq) #22, !inline_history !145
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378

bb.cw:                                            ; preds = %.thread.i.i.i375
  %i.px = add nsw i32 %i.ps, -1
  store atomic i32 %i.px, ptr %i.pr monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378

bb.cx:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i376
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 2 uses
  %i.pz = load atomic i32, ptr %i.py monotonic, align 4
  %i.qa = icmp eq i32 %i.pz, 1
  br i1 %i.qa, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qb = atomicrmw sub ptr %i.py, i32 1 release, align 4
  %i.qc = icmp eq i32 %i.qb, 1
  br i1 %i.qc, label %bb.cz, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  fence acquire
  %i.qd = load ptr, ptr %i.pi, align 8, !tbaa !129 ; 3 uses
  %i.qe = icmp eq ptr %i.qd, null
  br i1 %i.qe, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.qf = load ptr, ptr %i.qd, align 8, !tbaa !14
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 8
  %i.qh = load ptr, ptr %i.qg, align 8
  call void %i.qh(ptr noundef nonnull align 8 dereferenceable(12) %i.qd) #22, !inline_history !145
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i376, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i373, %bb.cv, %bb.cw, %bb.cy, %bb.cz, %bb.da
  %i.qi = load ptr, ptr %i.pd, align 8, !tbaa !129
  store ptr %i.qi, ptr %i.pi, align 8, !tbaa !129
  %i.qj = add nuw nsw i64 %.01941637, 1           ; 2 uses
  %exitcond1733.not = icmp eq i64 %i.qj, 3
  br i1 %exitcond1733.not, label %bb.bq, label %bb.br, !llvm.loop !146

bb.db:                                            ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i758, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.qk = landingpad { ptr, i32 }
          cleanup
  br label %.body743

._crit_edge1652:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.ql = load ptr, ptr %43, align 8, !tbaa !138  ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.qn = load i64, ptr %i.qm, align 8, !tbaa !140 ; 2 uses
  %i.qo = icmp ne ptr %i.ql, null
  %i.qp = icmp ne i64 %i.qn, 0
  %or.cond.i.i.i.i = and i1 %i.qo, %i.qp
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.preheader.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit

.preheader.i.i.preheader.i.i:                     ; preds = %._crit_edge1652
  %i.qq = mul nsw i64 %i.qn, 3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %.preheader.i.i.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.qr, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.qq, %.preheader.i.i.preheader.i.i ]
  %i.qr = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.qs = getelementptr inbounds nuw [16 x i8], ptr %i.ql, i64 %i.qr ; 2 uses
  %i.qt = load ptr, ptr %i.qs, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qt, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %.preheader.i.i.i.i
  %i.qu = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.qu, 0
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qt, i64 8 ; 3 uses
  %i.qw = load atomic i32, ptr %i.qv monotonic, align 4 ; 2 uses
  %i.qx = icmp eq i32 %i.qw, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.qx, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.qy = load ptr, ptr %i.qt, align 8, !tbaa !14
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  %i.ra = load ptr, ptr %i.qz, align 8
  call void %i.ra(ptr noundef nonnull align 8 dereferenceable(12) %i.qt) #22, !inline_history !147
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.rb = add nsw i32 %i.qw, -1
  store atomic i32 %i.rb, ptr %i.qv monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.dc
  br i1 %i.qx, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.rc = atomicrmw sub ptr %i.qv, i32 1 release, align 4
  %i.rd = icmp eq i32 %i.rc, 1
  br i1 %i.rd, label %bb.di, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.di:                                            ; preds = %bb.dh, %bb.dg
  fence acquire
  %i.re = load ptr, ptr %i.qs, align 8, !tbaa !129 ; 3 uses
  %i.rf = icmp eq ptr %i.re, null
  br i1 %i.rf, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.rg = load ptr, ptr %i.re, align 8, !tbaa !14
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(12) %i.re) #22, !inline_history !147
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.de, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.qr, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %._crit_edge1652
  call void @free(ptr noundef %i.ql) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.rj = load ptr, ptr %42, align 8, !tbaa !138  ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.rl = load i64, ptr %i.rk, align 8, !tbaa !140 ; 2 uses
  %i.rm = icmp ne ptr %i.rj, null
  %i.rn = icmp ne i64 %i.rl, 0
  %or.cond.i.i.i.i379 = and i1 %i.rm, %i.rn
  br i1 %or.cond.i.i.i.i379, label %.preheader.i.i.preheader.i.i380, label %.loopexit1486

.preheader.i.i.preheader.i.i380:                  ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit
  %i.ro = mul nsw i64 %i.rl, 3
  br label %.preheader.i.i.i.i381

.preheader.i.i.i.i381:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385, %.preheader.i.i.preheader.i.i380
  %.0.i.i.i.i382 = phi i64 [ %i.rp, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385 ], [ %i.ro, %.preheader.i.i.preheader.i.i380 ]
  %i.rp = add i64 %.0.i.i.i.i382, -1              ; 3 uses
  %i.rq = getelementptr inbounds nuw [16 x i8], ptr %i.rj, i64 %i.rp ; 2 uses
  %i.rr = load ptr, ptr %i.rq, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i.i.i.i383 = icmp eq ptr %i.rr, null
  br i1 %.not.i.i.i.i.i.i383, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385, label %bb.dk

bb.dk:                                            ; preds = %.preheader.i.i.i.i381
  %i.rs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i384 = icmp eq i8 %i.rs, 0
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rr, i64 8 ; 3 uses
  %i.ru = load atomic i32, ptr %i.rt monotonic, align 4 ; 2 uses
  %i.rv = icmp eq i32 %i.ru, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i384, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.rv, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.rw = load ptr, ptr %i.rr, align 8, !tbaa !14
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8
  %i.ry = load ptr, ptr %i.rx, align 8
  call void %i.ry(ptr noundef nonnull align 8 dereferenceable(12) %i.rr) #22, !inline_history !147
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385

bb.dn:                                            ; preds = %bb.dl
  %i.rz = add nsw i32 %i.ru, -1
  store atomic i32 %i.rz, ptr %i.rt monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385

bb.do:                                            ; preds = %bb.dk
  br i1 %i.rv, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sa = atomicrmw sub ptr %i.rt, i32 1 release, align 4
  %i.sb = icmp eq i32 %i.sa, 1
  br i1 %i.sb, label %bb.dq, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385

bb.dq:                                            ; preds = %bb.dp, %bb.do
  fence acquire
  %i.sc = load ptr, ptr %i.rq, align 8, !tbaa !129 ; 3 uses
  %i.sd = icmp eq ptr %i.sc, null
  br i1 %i.sd, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.se = load ptr, ptr %i.sc, align 8, !tbaa !14
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8
  call void %i.sg(ptr noundef nonnull align 8 dereferenceable(12) %i.sc) #22, !inline_history !147
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385:              ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.dn, %bb.dm, %.preheader.i.i.i.i381
  %.old1.not.i.i.i.i386 = icmp eq i64 %i.rp, 0
  br i1 %.old1.not.i.i.i.i386, label %.loopexit1486, label %.preheader.i.i.i.i381

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, %_ZNSt6vectorImSaImEED2Ev.exit
  %storemerge2061650 = phi i64 [ 0, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph ], [ %i.ahc, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 17 uses
  %i.sh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #35
          to label %bb.ds unwind label %.body778.thread ; 3 uses

bb.ds:                                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.si = getelementptr inbounds nuw [8 x i8], ptr %i.sh, i64 %i.cr
  br label %bb.du

bb.dt:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit405
  %i.sj = ptrtoint ptr %.sroa.14828.1 to i64
  %i.sk = ptrtoint ptr %.sroa.0820.1 to i64       ; 2 uses
  %i.sl = sub i64 %i.sj, %i.sk
  %i.sm = ashr exact i64 %i.sl, 3                 ; 3 uses
  %i.sn = icmp eq ptr %.sroa.14828.1, %.sroa.0820.1
  br i1 %i.sn, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ep

.body778.thread:                                  ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %.body743

bb.du:                                            ; preds = %bb.ds, %_ZNSt6vectorImSaImEE9push_backERKm.exit405
  %storemerge2171644 = phi i64 [ 0, %bb.ds ], [ %i.vw, %_ZNSt6vectorImSaImEE9push_backERKm.exit405 ] ; 10 uses
  %.sroa.21.01643 = phi ptr [ %i.si, %bb.ds ], [ %.sroa.21.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit405 ] ; 15 uses
  %.sroa.14828.01642 = phi ptr [ %i.sh, %bb.ds ], [ %.sroa.14828.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit405 ] ; 11 uses
  %.sroa.0820.01641 = phi ptr [ %i.sh, %bb.ds ], [ %.sroa.0820.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit405 ] ; 16 uses
  %i.sp = icmp eq i64 %storemerge2061650, %storemerge2171644
  br i1 %i.sp, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.sq = load ptr, ptr %43, align 8, !tbaa !138  ; 3 uses
  %i.sr = getelementptr [16 x i8], ptr %i.sq, i64 %storemerge2061650
  %i.ss = load ptr, ptr %42, align 8, !tbaa !138  ; 3 uses
  %i.st = getelementptr [16 x i8], ptr %i.ss, i64 %storemerge2171644 ; 2 uses
  %i.su = load ptr, ptr %i.sr, align 8, !tbaa !129 ; 6 uses
  %i.sv = load ptr, ptr %i.st, align 8, !tbaa !129 ; 3 uses
  %i.sw = icmp eq ptr %i.su, %i.sv
  br i1 %i.sw, label %.noexc390.thread, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 16
  %i.sy = getelementptr inbounds nuw i8, ptr %i.su, i64 24
  %i.sz = load double, ptr %i.sy, align 8, !tbaa !33
  %60 = load double, ptr %i.sx, align 16, !tbaa !33
  %i.ta = fneg double %60
  %i.tb = fcmp olt double %i.sz, %i.ta
  br i1 %i.tb, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.tc = getelementptr inbounds nuw i8, ptr %i.su, i64 16
  %61 = load double, ptr %i.tc, align 16, !tbaa !33
  %62 = fneg double %61
  %63 = getelementptr inbounds nuw i8, ptr %i.sv, i64 24
  %64 = load double, ptr %63, align 8, !tbaa !33
  %i.td = fcmp ugt double %64, %62
  br i1 %i.td, label %bb.dy, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764

bb.dy:                                            ; preds = %bb.dx
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764: ; preds = %bb.dy, %bb.dx, %bb.dw
  %.sroa.4.0.i.i765 = phi i16 [ 257, %bb.dw ], [ 256, %bb.dy ], [ 0, %bb.dx ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i766 = trunc i16 %.sroa.4.0.i.i765 to i8
  %.sroa.2.0.extract.shift.i.i767 = lshr i16 %.sroa.4.0.i.i765, 8
  %.sroa.2.0.extract.trunc.i.i768 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i767 to i8
  %i.te = icmp eq i8 %.sroa.0.0.extract.trunc.i.i766, %.sroa.2.0.extract.trunc.i.i768
  br i1 %i.te, label %.noexc390, label %bb.dz

bb.dz:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764
  %i.tf = getelementptr inbounds nuw i8, ptr %i.su, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.su, ptr %11, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %11, ptr %10, align 8, !tbaa !112
  store ptr %10, ptr %i.jt, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ju, align 8, !tbaa !112
  %i.tg = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.tf, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771 unwind label %.loopexit1494 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771:       ; preds = %bb.dz
  %.not.i.i.i.i772 = icmp eq i32 %i.tg, 0
  br i1 %.not.i.i.i.i772, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773, label %bb.ea

bb.ea:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.tg) #33
          to label %bb.eb unwind label %.loopexit.split-lp1495

bb.eb:                                            ; preds = %bb.ea
  unreachable

.loopexit1494:                                    ; preds = %bb.dz
  %lpad.loopexit1496 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp1495:                           ; preds = %bb.ea
  %lpad.loopexit.split-lp1497 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit.split-lp1495, %.loopexit1494
  %lpad.phi1498 = phi { ptr, i32 } [ %lpad.loopexit1496, %.loopexit1494 ], [ %lpad.loopexit.split-lp1497, %.loopexit.split-lp1495 ]
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  store ptr null, ptr %i.ju, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body778

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  store ptr null, ptr %i.ju, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.th = getelementptr inbounds nuw i8, ptr %i.su, i64 32
  %i.ti = load atomic ptr, ptr %i.th monotonic, align 8
  %i.tj = load ptr, ptr %i.st, align 8, !tbaa !129 ; 3 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.tj, ptr %9, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !112
  store ptr %8, ptr %i.jt, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ju, align 8, !tbaa !112
  %i.tl = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.tk, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774 unwind label %.loopexit1499 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773
  %.not.i.i.i11.i775 = icmp eq i32 %i.tl, 0
  br i1 %.not.i.i.i11.i775, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776, label %bb.ed

bb.ed:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.tl) #33
          to label %bb.ee unwind label %.loopexit.split-lp1500

bb.ee:                                            ; preds = %bb.ed
  unreachable

.loopexit1499:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773
  %lpad.loopexit1501 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

.loopexit.split-lp1500:                           ; preds = %bb.ed
  %lpad.loopexit.split-lp1502 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ef:                                            ; preds = %.loopexit.split-lp1500, %.loopexit1499
  %lpad.phi1503 = phi { ptr, i32 } [ %lpad.loopexit1501, %.loopexit1499 ], [ %lpad.loopexit.split-lp1502, %.loopexit.split-lp1500 ]
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  store ptr null, ptr %i.ju, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body778

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  store ptr null, ptr %i.ju, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 32
  %i.tn = load atomic ptr, ptr %i.tm monotonic, align 8
  %i.to = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ti, ptr noundef nonnull align 16 dereferenceable(64) %i.tn)
          to label %.noexc780 unwind label %.loopexit1504

.noexc780:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776
  %i.tp = icmp slt i32 %i.to, 0
  br i1 %i.tp, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %.noexc780..noexc390.thread_crit_edge

.noexc780..noexc390.thread_crit_edge:             ; preds = %.noexc780
  %.pre = load ptr, ptr %43, align 8, !tbaa !138
  %.pre1748 = load ptr, ptr %42, align 8, !tbaa !138
  br label %.noexc390.thread

.noexc390:                                        ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764
  %i.tq = trunc i16 %.sroa.4.0.i.i765 to i1
  br i1 %i.tq, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %.noexc390.thread

.noexc390.thread:                                 ; preds = %.noexc780..noexc390.thread_crit_edge, %bb.dv, %.noexc390
  %i.tr = phi ptr [ %.pre1748, %.noexc780..noexc390.thread_crit_edge ], [ %i.ss, %bb.dv ], [ %i.ss, %.noexc390 ]
  %i.ts = phi ptr [ %.pre, %.noexc780..noexc390.thread_crit_edge ], [ %i.sq, %bb.dv ], [ %i.sq, %.noexc390 ]
  %i.tt = load i64, ptr %i.jv, align 8, !tbaa !140
  %i.tu = getelementptr [16 x i8], ptr %i.ts, i64 %storemerge2061650
  %i.tv = getelementptr [16 x i8], ptr %i.tu, i64 %i.tt
  %i.tw = load i64, ptr %i.jw, align 8, !tbaa !140
  %i.tx = getelementptr [16 x i8], ptr %i.tr, i64 %storemerge2171644
  %i.ty = getelementptr [16 x i8], ptr %i.tx, i64 %i.tw
  %i.tz = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.tv, ptr noundef nonnull align 8 dereferenceable(9) %i.ty)
          to label %.noexc391 unwind label %.loopexit1504

.noexc391:                                        ; preds = %.noexc390.thread
  br i1 %i.tz, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.eg

bb.eg:                                            ; preds = %.noexc391
  %i.ua = load ptr, ptr %43, align 8, !tbaa !138
  %i.ub = load i64, ptr %i.jv, align 8, !tbaa !140
  %i.uc = getelementptr [16 x i8], ptr %i.ua, i64 %storemerge2061650
  %.idx.i = shl i64 %i.ub, 5
  %i.ud = getelementptr i8, ptr %i.uc, i64 %.idx.i
  %i.ue = load ptr, ptr %42, align 8, !tbaa !138
  %i.uf = load i64, ptr %i.jw, align 8, !tbaa !140
  %i.ug = getelementptr [16 x i8], ptr %i.ue, i64 %storemerge2171644
  %.idx12.i = shl i64 %i.uf, 5
  %i.uh = getelementptr i8, ptr %i.ug, i64 %.idx12.i
  %i.ui = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ud, ptr noundef nonnull align 8 dereferenceable(9) %i.uh)
          to label %.noexc392 unwind label %.loopexit1504

.noexc392:                                        ; preds = %bb.eg
  br i1 %i.ui, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.eh

bb.eh:                                            ; preds = %.noexc392
  %i.uj = load ptr, ptr %43, align 8, !tbaa !138
  %i.uk = getelementptr [16 x i8], ptr %i.uj, i64 %storemerge2171644
  %i.ul = load ptr, ptr %42, align 8, !tbaa !138
  %i.um = getelementptr [16 x i8], ptr %i.ul, i64 %storemerge2061650
  %i.un = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.uk, ptr noundef nonnull align 8 dereferenceable(9) %i.um)
          to label %.noexc393 unwind label %.loopexit1504

.noexc393:                                        ; preds = %bb.eh
  br i1 %i.un, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.ei

bb.ei:                                            ; preds = %.noexc393
  %i.uo = load ptr, ptr %43, align 8, !tbaa !138
  %i.up = load i64, ptr %i.jv, align 8, !tbaa !140
  %i.uq = getelementptr [16 x i8], ptr %i.uo, i64 %storemerge2171644
  %i.ur = getelementptr [16 x i8], ptr %i.uq, i64 %i.up
  %i.us = load ptr, ptr %42, align 8, !tbaa !138
  %i.ut = load i64, ptr %i.jw, align 8, !tbaa !140
  %i.uu = getelementptr [16 x i8], ptr %i.us, i64 %storemerge2061650
  %i.uv = getelementptr [16 x i8], ptr %i.uu, i64 %i.ut
  %i.uw = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ur, ptr noundef nonnull align 8 dereferenceable(9) %i.uv)
          to label %.noexc394 unwind label %.loopexit1504

.noexc394:                                        ; preds = %bb.ei
  br i1 %i.uw, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.ej

bb.ej:                                            ; preds = %.noexc394
  %i.ux = load ptr, ptr %43, align 8, !tbaa !138
  %i.uy = load i64, ptr %i.jv, align 8, !tbaa !140
  %i.uz = getelementptr [16 x i8], ptr %i.ux, i64 %storemerge2171644
  %.idx13.i = shl i64 %i.uy, 5
  %i.va = getelementptr i8, ptr %i.uz, i64 %.idx13.i
  %i.vb = load ptr, ptr %42, align 8, !tbaa !138
  %i.vc = load i64, ptr %i.jw, align 8, !tbaa !140
  %i.vd = getelementptr [16 x i8], ptr %i.vb, i64 %storemerge2061650
  %.idx14.i = shl i64 %i.vc, 5
  %i.ve = getelementptr i8, ptr %i.vd, i64 %.idx14.i
  %i.vf = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.va, ptr noundef nonnull align 8 dereferenceable(9) %i.ve)
          to label %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit unwind label %.loopexit1504

_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit: ; preds = %bb.ej
  br i1 %i.vf, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.ek

bb.ek:                                            ; preds = %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit
  %.not.i396 = icmp eq ptr %.sroa.14828.01642, %.sroa.21.01643
  br i1 %.not.i396, label %bb.em, label %bb.el

end_hunk_0
begin_hunk_1_@_ZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EE:bb.a
  %i.jb = load atomic i32, ptr %i.ja monotonic, align 4 ; 2 uses
  %i.jc = icmp eq i32 %i.jb, 1                    ; 2 uses
  br i1 %.not.i.i.i365, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.jc, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.jd = load ptr, ptr %i.iy, align 8, !tbaa !14
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 8
  %i.jf = load ptr, ptr %i.je, align 8
  call void %i.jf(ptr noundef nonnull align 8 dereferenceable(12) %i.iy) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit366

bb.aw:                                            ; preds = %bb.au
  %i.jg = add nsw i32 %i.jb, -1
  store atomic i32 %i.jg, ptr %i.ja monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit366

bb.ax:                                            ; preds = %bb.at
  br i1 %i.jc, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jh = atomicrmw sub ptr %i.ja, i32 1 release, align 4
  %i.ji = icmp eq i32 %i.jh, 1
  br i1 %i.ji, label %bb.az, label %_ZN4CGAL6HandleD2Ev.exit366

bb.az:                                            ; preds = %bb.ay, %bb.ax
  fence acquire
  %i.jj = load ptr, ptr %45, align 8, !tbaa !129  ; 3 uses
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %_ZN4CGAL6HandleD2Ev.exit366, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.jl = load ptr, ptr %i.jj, align 8, !tbaa !14
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(12) %i.jj) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit366

_ZN4CGAL6HandleD2Ev.exit366:                      ; preds = %bb.as, %bb.av, %bb.aw, %bb.ay, %bb.az, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br i1 %.not1664, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %.lr.ph1641

.lr.ph1641:                                       ; preds = %_ZN4CGAL6HandleD2Ev.exit366
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.jp = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 12 uses
  %i.jq = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 12 uses
  br label %bb.bo

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph: ; preds = %bb.bp, %_ZN4CGAL6HandleD2Ev.exit366
  %i.jr = shl nuw nsw i64 %i.cr, 3
  %i.js = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  %i.jt = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jv = getelementptr inbounds nuw i8, ptr %22, i64 8
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 24
  %.sroa.723.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 32
  %.sroa.824.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 40
  %.sroa.925.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 48
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 56
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 64
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 80
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 88
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 96
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 104
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 112
  %i.jw = getelementptr inbounds nuw i8, ptr %22, i64 128
  %.sroa.55.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 144
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 152
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 160
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 168
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %22, i64 176
  %i.jx = getelementptr inbounds nuw i8, ptr %21, i64 216 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %47, i64 8
  %i.jz = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %46, i64 8
  %umax = call i64 @llvm.umax.i64(i64 %i.cr, i64 1) ; 2 uses
  br label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i

bb.bb:                                            ; preds = %._crit_edge
  %i.kb = landingpad { ptr, i32 }
          cleanup
  br label %bb.jw

bb.bc:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i281
  %i.kc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5Eigen6MatrixIiLin1ELi1ELi0ELin1ELi1EEESaIS2_EED2Ev.exit669

bb.bd:                                            ; preds = %_ZNSt12_Vector_baseIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EESt6vectorIS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISJ_EEC2EmRKSK_.exit.i, %bb.x
  %i.kd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4CGAL9AABB_treeINS0_13AABB_traits_3INS0_5EpeckENS0_25AABB_triangle_primitive_3IS3_N9__gnu_cxx17__normal_iteratorIPNS0_10Triangle_3IS3_EES_IS8_SaIS8_EEEESt17integral_constantIbLb0EEEENS0_7DefaultEEEEESaISI_EED2Ev.exit660

.thread:                                          ; preds = %.lr.ph.preheader.i.i.i.i.i292
  %i.ke = landingpad { ptr, i32 }
          cleanup
  br label %.lr.ph.i.i.i653.preheader.sink.split

.thread2002:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i299
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IN4CGAL10Triangle_3INS0_5EpeckEEESaIS3_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %37) #22
  br label %.lr.ph.i.i.i653.preheader.sink.split

bb.be:                                            ; preds = %bb.ab
  %i.kg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #22
  br label %.body321

bb.bf:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i327, %bb.ad
  %i.kh = landingpad { ptr, i32 }
          cleanup
  br label %.body321

bb.bg:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i337
  %i.ki = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit629

bb.bh:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i347
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIS_ImSaImEESaIS1_EED2Ev.exit618

bb.bi:                                            ; preds = %_ZN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEC2ImiEERKT_RKT0_.exit359
  %i.kk = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.ah
  %i.kl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %44) #22
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn = phi { ptr, i32 } [ %i.kl, %bb.bj ], [ %i.kk, %bb.bi ]
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #22
  br label %.body746

bb.bl:                                            ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bm:                                            ; preds = %bb.ar
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %45) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.pn204 = phi { ptr, i32 } [ %i.kn, %bb.bm ], [ %i.km, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #22
  br label %.body746

bb.bo:                                            ; preds = %.lr.ph1641, %bb.bp
  %.01911640 = phi i64 [ 0, %.lr.ph1641 ], [ %i.ku, %bb.bp ] ; 3 uses
  %i.ko = load ptr, ptr %30, align 8, !tbaa !17
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %.01911640
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !23
  %i.kr = load ptr, ptr %1, align 8, !tbaa !16, !noalias !217
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %.01911640 ; 2 uses
  %i.kt = sext i32 %i.kq to i64
  %.idx.i.i.i = mul nsw i64 %i.kt, 48             ; 4 uses
  br label %.preheader1511

.preheader1511:                                   ; preds = %bb.bo, %bb.bq
  %.01921639 = phi i64 [ 0, %bb.bo ], [ %i.kv, %bb.bq ] ; 3 uses
  br label %bb.br

bb.bp:                                            ; preds = %bb.bq
  %i.ku = add nuw i64 %.01911640, 1               ; 2 uses
  %exitcond1736.not = icmp eq i64 %i.ku, %i.n
  br i1 %exitcond1736.not, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %bb.bo, !llvm.loop !220

bb.bq:                                            ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381
  %i.kv = add nuw nsw i64 %.01921639, 1           ; 2 uses
  %exitcond1735.not = icmp eq i64 %i.kv, 3
  br i1 %exitcond1735.not, label %bb.bp, label %.preheader1511, !llvm.loop !221

bb.br:                                            ; preds = %.preheader1511, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381
  %.01941638 = phi i64 [ 0, %.preheader1511 ], [ %i.py, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381 ] ; 7 uses
  %i.kw = load ptr, ptr %42, align 8, !tbaa !222
  %i.kx = getelementptr i8, ptr %i.kw, i64 %.idx.i.i.i
  %i.ky = getelementptr [16 x i8], ptr %i.kx, i64 %.01941638 ; 5 uses
  %i.kz = load i64, ptr %i.m, align 8, !tbaa !9
  %i.la = mul nsw i64 %i.kz, %.01921639
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !23
  %i.ld = sext i32 %i.lc to i64
  %i.le = load ptr, ptr %0, align 8, !tbaa !224
  %i.lf = load i64, ptr %i.jo, align 8, !tbaa !225
  %i.lg = mul nsw i64 %i.lf, %i.ld
  %i.lh = getelementptr [16 x i8], ptr %i.le, i64 %i.lg
  %i.li = getelementptr [16 x i8], ptr %i.lh, i64 %.01941638 ; 2 uses
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !129 ; 6 uses
  %i.lk = load ptr, ptr %i.ky, align 8, !tbaa !129 ; 3 uses
  %i.ll = icmp eq ptr %i.lj, %i.lk
  br i1 %i.ll, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lk, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lj, i64 24
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !33
  %50 = load double, ptr %i.lm, align 16, !tbaa !33
  %i.lp = fneg double %50
  %i.lq = fcmp olt double %i.lo, %i.lp
  br i1 %i.lq, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lj, i64 16
  %51 = load double, ptr %i.lr, align 16, !tbaa !33
  %52 = fneg double %51
  %53 = getelementptr inbounds nuw i8, ptr %i.lk, i64 24
  %54 = load double, ptr %53, align 8, !tbaa !33
  %i.ls = fcmp ugt double %54, %52
  br i1 %i.ls, label %bb.bu, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

bb.bu:                                            ; preds = %bb.bt
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.bu, %bb.bt, %bb.bs
  %.sroa.4.0.i.i = phi i16 [ 257, %bb.bs ], [ 256, %bb.bu ], [ 0, %bb.bt ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.4.0.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.4.0.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.lt = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.lt, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.lj, ptr %19, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %19, ptr %18, align 8, !tbaa !112
  store ptr %18, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.lv = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.lu, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit1512 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.bv
  %.not.i.i.i.i745 = icmp eq i32 %i.lv, 0
  br i1 %.not.i.i.i.i745, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.bw

bb.bw:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.lv) #33
          to label %bb.bx unwind label %.loopexit.split-lp1513

bb.bx:                                            ; preds = %bb.bw
  unreachable

.loopexit1512:                                    ; preds = %bb.bv
  %lpad.loopexit1514 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp1513:                           ; preds = %bb.bw
  %lpad.loopexit.split-lp1515 = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %.loopexit.split-lp1513, %.loopexit1512
  %lpad.phi1516 = phi { ptr, i32 } [ %lpad.loopexit1514, %.loopexit1512 ], [ %lpad.loopexit.split-lp1515, %.loopexit.split-lp1513 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.lx = load atomic ptr, ptr %i.lw monotonic, align 8
  %i.ly = load ptr, ptr %i.ky, align 8, !tbaa !129 ; 3 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %i.ly, ptr %17, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %17, ptr %16, align 8, !tbaa !112
  store ptr %16, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.ma = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.lz, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i unwind label %.loopexit1517 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i:        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %.not.i.i.i11.i = icmp eq i32 %i.ma, 0
  br i1 %.not.i.i.i11.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i, label %bb.bz

bb.bz:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ma) #33
          to label %bb.ca unwind label %.loopexit.split-lp1518

bb.ca:                                            ; preds = %bb.bz
  unreachable

.loopexit1517:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %lpad.loopexit1519 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

.loopexit.split-lp1518:                           ; preds = %bb.bz
  %lpad.loopexit.split-lp1520 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cb

bb.cb:                                            ; preds = %.loopexit.split-lp1518, %.loopexit1517
  %lpad.phi1521 = phi { ptr, i32 } [ %lpad.loopexit1519, %.loopexit1517 ], [ %lpad.loopexit.split-lp1520, %.loopexit.split-lp1518 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  %i.mc = load atomic ptr, ptr %i.mb monotonic, align 8
  %i.md = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.lx, ptr noundef nonnull align 16 dereferenceable(64) %i.mc)
          to label %.noexc748 unwind label %bb.db

.noexc748:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.me = icmp slt i32 %i.md, 0
  br i1 %i.me, label %bb.cc, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.mf = trunc i16 %.sroa.4.0.i.i to i1
  br i1 %i.mf, label %bb.cc, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

bb.cc:                                            ; preds = %.noexc748, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit
  br label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread: ; preds = %bb.br, %.noexc748, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, %bb.cc
  %i.mg = phi ptr [ %i.li, %bb.cc ], [ %i.ky, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit ], [ %i.ky, %.noexc748 ], [ %i.ky, %bb.br ] ; 2 uses
  %i.mh = load ptr, ptr %42, align 8, !tbaa !222
  %i.mi = getelementptr i8, ptr %i.mh, i64 %.idx.i.i.i
  %i.mj = getelementptr [16 x i8], ptr %i.mi, i64 %.01941638 ; 4 uses
  %i.mk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i369 = icmp eq i8 %i.mk, 0
  %i.ml = load ptr, ptr %i.mg, align 8, !tbaa !129
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i369, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.mn = atomicrmw add ptr %i.mm, i32 1 monotonic, align 4 ; 0 uses
  %i.mo = load ptr, ptr %i.mj, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i370 = icmp eq ptr %i.mo, null
  br i1 %.not.i.i.i370, label %bb.cj, label %bb.cf

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.mp = load atomic i32, ptr %i.mm monotonic, align 4
  %i.mq = add nsw i32 %i.mp, 1
  store atomic i32 %i.mq, ptr %i.mm monotonic, align 4
  %i.mr = load ptr, ptr %i.mj, align 8, !tbaa !129 ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.mr, null
  br i1 %.not4.i.i.i, label %bb.cj, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 8 ; 2 uses
  %i.mt = load atomic i32, ptr %i.ms monotonic, align 4 ; 2 uses
  %i.mu = icmp eq i32 %i.mt, 1
  br i1 %i.mu, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.thread.i.i.i
  %i.mv = load ptr, ptr %i.mr, align 8, !tbaa !14
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(12) %i.mr) #22, !inline_history !145
  br label %bb.cj

bb.ce:                                            ; preds = %.thread.i.i.i
  %i.my = add nsw i32 %i.mt, -1
  store atomic i32 %i.my, ptr %i.ms monotonic, align 4
  br label %bb.cj

bb.cf:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mo, i64 8 ; 2 uses
  %i.na = load atomic i32, ptr %i.mz monotonic, align 4
  %i.nb = icmp eq i32 %i.na, 1
  br i1 %i.nb, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nc = atomicrmw sub ptr %i.mz, i32 1 release, align 4
  %i.nd = icmp eq i32 %i.nc, 1
  br i1 %i.nd, label %bb.ch, label %bb.cj

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  fence acquire
  %i.ne = load ptr, ptr %i.mj, align 8, !tbaa !129 ; 3 uses
  %i.nf = icmp eq ptr %i.ne, null
  br i1 %i.nf, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ng = load ptr, ptr %i.ne, align 8, !tbaa !14
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = load ptr, ptr %i.nh, align 8
  call void %i.ni(ptr noundef nonnull align 8 dereferenceable(12) %i.ne) #22, !inline_history !145
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch, %bb.cg, %bb.ce, %bb.cd, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.nj = load ptr, ptr %i.mg, align 8, !tbaa !129
  store ptr %i.nj, ptr %i.mj, align 8, !tbaa !129
  %i.nk = load ptr, ptr %43, align 8, !tbaa !222
  %i.nl = getelementptr i8, ptr %i.nk, i64 %.idx.i.i.i
  %i.nm = getelementptr [16 x i8], ptr %i.nl, i64 %.01941638 ; 4 uses
  %i.nn = load i64, ptr %i.m, align 8, !tbaa !9
  %i.no = mul nsw i64 %i.nn, %.01921639
  %i.np = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.no
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !23
  %i.nr = sext i32 %i.nq to i64
  %i.ns = load ptr, ptr %0, align 8, !tbaa !224
  %i.nt = load i64, ptr %i.jo, align 8, !tbaa !225
  %i.nu = mul nsw i64 %i.nt, %i.nr
  %i.nv = getelementptr [16 x i8], ptr %i.ns, i64 %i.nu
  %i.nw = getelementptr [16 x i8], ptr %i.nv, i64 %.01941638 ; 3 uses
  %i.nx = load ptr, ptr %i.nm, align 8, !tbaa !129 ; 6 uses
  %i.ny = load ptr, ptr %i.nw, align 8, !tbaa !129 ; 3 uses
  %i.nz = icmp eq ptr %i.nx, %i.ny
  br i1 %i.nz, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oa = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nx, i64 24
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !33
  %55 = load double, ptr %i.oa, align 16, !tbaa !33
  %i.od = fneg double %55
  %i.oe = fcmp olt double %i.oc, %i.od
  br i1 %i.oe, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.of = getelementptr inbounds nuw i8, ptr %i.nx, i64 16
  %56 = load double, ptr %i.of, align 16, !tbaa !33
  %57 = fneg double %56
  %58 = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %59 = load double, ptr %58, align 8, !tbaa !33
  %i.og = fcmp ugt double %59, %57
  br i1 %i.og, label %bb.cm, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749

bb.cm:                                            ; preds = %bb.cl
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749: ; preds = %bb.cm, %bb.cl, %bb.ck
  %.sroa.4.0.i.i750 = phi i16 [ 257, %bb.ck ], [ 256, %bb.cm ], [ 0, %bb.cl ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i751 = trunc i16 %.sroa.4.0.i.i750 to i8
  %.sroa.2.0.extract.shift.i.i752 = lshr i16 %.sroa.4.0.i.i750, 8
  %.sroa.2.0.extract.trunc.i.i753 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i752 to i8
  %i.oh = icmp eq i8 %.sroa.0.0.extract.trunc.i.i751, %.sroa.2.0.extract.trunc.i.i753
  br i1 %i.oh, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nx, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.nx, ptr %15, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %15, ptr %14, align 8, !tbaa !112
  store ptr %14, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.oj = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.oi, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i756 unwind label %.loopexit1522 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i756:       ; preds = %bb.cn
  %.not.i.i.i.i757 = icmp eq i32 %i.oj, 0
  br i1 %.not.i.i.i.i757, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i758, label %bb.co

bb.co:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i756
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.oj) #33
          to label %bb.cp unwind label %.loopexit.split-lp1523

bb.cp:                                            ; preds = %bb.co
  unreachable

.loopexit1522:                                    ; preds = %bb.cn
  %lpad.loopexit1524 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.loopexit.split-lp1523:                           ; preds = %bb.co
  %lpad.loopexit.split-lp1525 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp1523, %.loopexit1522
  %lpad.phi1526 = phi { ptr, i32 } [ %lpad.loopexit1524, %.loopexit1522 ], [ %lpad.loopexit.split-lp1525, %.loopexit.split-lp1523 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i758: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i756
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ok = getelementptr inbounds nuw i8, ptr %i.nx, i64 32
  %i.ol = load atomic ptr, ptr %i.ok monotonic, align 8
  %i.om = load ptr, ptr %i.nw, align 8, !tbaa !129 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.om, ptr %13, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %13, ptr %12, align 8, !tbaa !112
  store ptr %12, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.oo = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.on, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i759 unwind label %.loopexit1527 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i759:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i758
  %.not.i.i.i11.i760 = icmp eq i32 %i.oo, 0
  br i1 %.not.i.i.i11.i760, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i761, label %bb.cr

bb.cr:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i759
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.oo) #33
          to label %bb.cs unwind label %.loopexit.split-lp1528

bb.cs:                                            ; preds = %bb.cr
  unreachable

.loopexit1527:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i758
  %lpad.loopexit1529 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

.loopexit.split-lp1528:                           ; preds = %bb.cr
  %lpad.loopexit.split-lp1530 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.ct:                                            ; preds = %.loopexit.split-lp1528, %.loopexit1527
  %lpad.phi1531 = phi { ptr, i32 } [ %lpad.loopexit1529, %.loopexit1527 ], [ %lpad.loopexit.split-lp1530, %.loopexit.split-lp1528 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i761: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i759
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 32
  %i.oq = load atomic ptr, ptr %i.op monotonic, align 8
  %i.or = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ol, ptr noundef nonnull align 16 dereferenceable(64) %i.oq)
          to label %.noexc765 unwind label %bb.db

.noexc765:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i761
  %i.os = icmp slt i32 %i.or, 0
  br i1 %i.os, label %bb.cu, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749
  %i.ot = trunc i16 %.sroa.4.0.i.i750 to i1
  br i1 %i.ot, label %bb.cu, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

bb.cu:                                            ; preds = %.noexc765, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit
  br label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread: ; preds = %bb.cj, %.noexc765, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, %bb.cu
  %i.ou = phi ptr [ %i.nw, %bb.cu ], [ %i.nm, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit ], [ %i.nm, %.noexc765 ], [ %i.nm, %bb.cj ] ; 2 uses
  %i.ov = load ptr, ptr %43, align 8, !tbaa !222
  %i.ow = getelementptr i8, ptr %i.ov, i64 %.idx.i.i.i
  %i.ox = getelementptr [16 x i8], ptr %i.ow, i64 %.01941638 ; 4 uses
  %i.oy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i375 = icmp eq i8 %i.oy, 0
  %i.oz = load ptr, ptr %i.ou, align 8, !tbaa !129
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oz, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i375, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i379, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i376

_ZNK4CGAL6Handle6increfEv.exit.i.i.i379:          ; preds = %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.pb = atomicrmw add ptr %i.pa, i32 1 monotonic, align 4 ; 0 uses
  %i.pc = load ptr, ptr %i.ox, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i380 = icmp eq ptr %i.pc, null
  br i1 %.not.i.i.i380, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381, label %bb.cx

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i376:   ; preds = %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.pd = load atomic i32, ptr %i.pa monotonic, align 4
  %i.pe = add nsw i32 %i.pd, 1
  store atomic i32 %i.pe, ptr %i.pa monotonic, align 4
  %i.pf = load ptr, ptr %i.ox, align 8, !tbaa !129 ; 4 uses
  %.not4.i.i.i377 = icmp eq ptr %i.pf, null
  br i1 %.not4.i.i.i377, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381, label %.thread.i.i.i378

.thread.i.i.i378:                                 ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i376
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 2 uses
  %i.ph = load atomic i32, ptr %i.pg monotonic, align 4 ; 2 uses
  %i.pi = icmp eq i32 %i.ph, 1
  br i1 %i.pi, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.thread.i.i.i378
  %i.pj = load ptr, ptr %i.pf, align 8, !tbaa !14
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(12) %i.pf) #22, !inline_history !145
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381

bb.cw:                                            ; preds = %.thread.i.i.i378
  %i.pm = add nsw i32 %i.ph, -1
  store atomic i32 %i.pm, ptr %i.pg monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381

bb.cx:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i379
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pc, i64 8 ; 2 uses
  %i.po = load atomic i32, ptr %i.pn monotonic, align 4
  %i.pp = icmp eq i32 %i.po, 1
  br i1 %i.pp, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pq = atomicrmw sub ptr %i.pn, i32 1 release, align 4
  %i.pr = icmp eq i32 %i.pq, 1
  br i1 %i.pr, label %bb.cz, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381

bb.cz:                                            ; preds = %bb.cy, %bb.cx
  fence acquire
  %i.ps = load ptr, ptr %i.ox, align 8, !tbaa !129 ; 3 uses
  %i.pt = icmp eq ptr %i.ps, null
  br i1 %i.pt, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.pu = load ptr, ptr %i.ps, align 8, !tbaa !14
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 8
  %i.pw = load ptr, ptr %i.pv, align 8
  call void %i.pw(ptr noundef nonnull align 8 dereferenceable(12) %i.ps) #22, !inline_history !145
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i379, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i376, %bb.cv, %bb.cw, %bb.cy, %bb.cz, %bb.da
  %i.px = load ptr, ptr %i.ou, align 8, !tbaa !129
  store ptr %i.px, ptr %i.ox, align 8, !tbaa !129
  %i.py = add nuw nsw i64 %.01941638, 1           ; 2 uses
  %exitcond1734.not = icmp eq i64 %i.py, 3
  br i1 %exitcond1734.not, label %bb.bq, label %bb.br, !llvm.loop !226

bb.db:                                            ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i761, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.pz = landingpad { ptr, i32 }
          cleanup
  br label %.body746

._crit_edge1653:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.qa = load ptr, ptr %43, align 8, !tbaa !222  ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.qc = load i64, ptr %i.qb, align 8, !tbaa !227 ; 2 uses
  %i.qd = icmp ne ptr %i.qa, null
  %i.qe = icmp ne i64 %i.qc, 0
  %or.cond.i.i.i.i = and i1 %i.qd, %i.qe
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.preheader.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit

.preheader.i.i.preheader.i.i:                     ; preds = %._crit_edge1653
  %i.qf = mul nsw i64 %i.qc, 3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %.preheader.i.i.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.qg, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.qf, %.preheader.i.i.preheader.i.i ]
  %i.qg = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.qh = getelementptr inbounds nuw [16 x i8], ptr %i.qa, i64 %i.qg ; 2 uses
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qi, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.dc

bb.dc:                                            ; preds = %.preheader.i.i.i.i
  %i.qj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.qj, 0
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qi, i64 8 ; 3 uses
  %i.ql = load atomic i32, ptr %i.qk monotonic, align 4 ; 2 uses
  %i.qm = icmp eq i32 %i.ql, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.dg, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  br i1 %i.qm, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.qn = load ptr, ptr %i.qi, align 8, !tbaa !14
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 8
  %i.qp = load ptr, ptr %i.qo, align 8
  call void %i.qp(ptr noundef nonnull align 8 dereferenceable(12) %i.qi) #22, !inline_history !228
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.df:                                            ; preds = %bb.dd
  %i.qq = add nsw i32 %i.ql, -1
  store atomic i32 %i.qq, ptr %i.qk monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.dc
  br i1 %i.qm, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qr = atomicrmw sub ptr %i.qk, i32 1 release, align 4
  %i.qs = icmp eq i32 %i.qr, 1
  br i1 %i.qs, label %bb.di, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.di:                                            ; preds = %bb.dh, %bb.dg
  fence acquire
  %i.qt = load ptr, ptr %i.qh, align 8, !tbaa !129 ; 3 uses
  %i.qu = icmp eq ptr %i.qt, null
  br i1 %i.qu, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.qv = load ptr, ptr %i.qt, align 8, !tbaa !14
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 8
  %i.qx = load ptr, ptr %i.qw, align 8
  call void %i.qx(ptr noundef nonnull align 8 dereferenceable(12) %i.qt) #22, !inline_history !228
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.dj, %bb.di, %bb.dh, %bb.df, %bb.de, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.qg, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %._crit_edge1653
  call void @free(ptr noundef %i.qa) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.qy = load ptr, ptr %42, align 8, !tbaa !222  ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.ra = load i64, ptr %i.qz, align 8, !tbaa !227 ; 2 uses
  %i.rb = icmp ne ptr %i.qy, null
  %i.rc = icmp ne i64 %i.ra, 0
  %or.cond.i.i.i.i382 = and i1 %i.rb, %i.rc
  br i1 %or.cond.i.i.i.i382, label %.preheader.i.i.preheader.i.i383, label %.loopexit1487

.preheader.i.i.preheader.i.i383:                  ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit
  %i.rd = mul nsw i64 %i.ra, 3
  br label %.preheader.i.i.i.i384

.preheader.i.i.i.i384:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388, %.preheader.i.i.preheader.i.i383
  %.0.i.i.i.i385 = phi i64 [ %i.re, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388 ], [ %i.rd, %.preheader.i.i.preheader.i.i383 ]
  %i.re = add i64 %.0.i.i.i.i385, -1              ; 3 uses
  %i.rf = getelementptr inbounds nuw [16 x i8], ptr %i.qy, i64 %i.re ; 2 uses
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i.i.i.i386 = icmp eq ptr %i.rg, null
  br i1 %.not.i.i.i.i.i.i386, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388, label %bb.dk

bb.dk:                                            ; preds = %.preheader.i.i.i.i384
  %i.rh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i387 = icmp eq i8 %i.rh, 0
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rg, i64 8 ; 3 uses
  %i.rj = load atomic i32, ptr %i.ri monotonic, align 4 ; 2 uses
  %i.rk = icmp eq i32 %i.rj, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i387, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  br i1 %i.rk, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.rl = load ptr, ptr %i.rg, align 8, !tbaa !14
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  %i.rn = load ptr, ptr %i.rm, align 8
  call void %i.rn(ptr noundef nonnull align 8 dereferenceable(12) %i.rg) #22, !inline_history !228
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388

bb.dn:                                            ; preds = %bb.dl
  %i.ro = add nsw i32 %i.rj, -1
  store atomic i32 %i.ro, ptr %i.ri monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388

bb.do:                                            ; preds = %bb.dk
  br i1 %i.rk, label %bb.dq, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.rp = atomicrmw sub ptr %i.ri, i32 1 release, align 4
  %i.rq = icmp eq i32 %i.rp, 1
  br i1 %i.rq, label %bb.dq, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388

bb.dq:                                            ; preds = %bb.dp, %bb.do
  fence acquire
  %i.rr = load ptr, ptr %i.rf, align 8, !tbaa !129 ; 3 uses
  %i.rs = icmp eq ptr %i.rr, null
  br i1 %i.rs, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.rt = load ptr, ptr %i.rr, align 8, !tbaa !14
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 8
  %i.rv = load ptr, ptr %i.ru, align 8
  call void %i.rv(ptr noundef nonnull align 8 dereferenceable(12) %i.rr) #22, !inline_history !228
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388:              ; preds = %bb.dr, %bb.dq, %bb.dp, %bb.dn, %bb.dm, %.preheader.i.i.i.i384
  %.old1.not.i.i.i.i389 = icmp eq i64 %i.re, 0
  br i1 %.old1.not.i.i.i.i389, label %.loopexit1487, label %.preheader.i.i.i.i384

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, %_ZNSt6vectorImSaImEED2Ev.exit
  %storemerge2061651 = phi i64 [ 0, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph ], [ %i.agl, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 12 uses
  %i.rw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #35
          to label %bb.ds unwind label %.body781.thread ; 3 uses

bb.ds:                                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.cr
  %.idx.i.i.i.i = mul i64 %storemerge2061651, 48  ; 6 uses
  br label %bb.du

bb.dt:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit408
  %i.ry = ptrtoint ptr %.sroa.14831.1 to i64
  %i.rz = ptrtoint ptr %.sroa.0823.1 to i64       ; 2 uses
  %i.sa = sub i64 %i.ry, %i.rz
  %i.sb = ashr exact i64 %i.sa, 3                 ; 3 uses
  %i.sc = icmp eq ptr %.sroa.14831.1, %.sroa.0823.1
  br i1 %i.sc, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ep

.body781.thread:                                  ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.sd = landingpad { ptr, i32 }
          cleanup
  br label %.body746

bb.du:                                            ; preds = %bb.ds, %_ZNSt6vectorImSaImEE9push_backERKm.exit408
  %storemerge2171645 = phi i64 [ 0, %bb.ds ], [ %i.vd, %_ZNSt6vectorImSaImEE9push_backERKm.exit408 ] ; 5 uses
  %.sroa.21.01644 = phi ptr [ %i.rx, %bb.ds ], [ %.sroa.21.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit408 ] ; 15 uses
  %.sroa.14831.01643 = phi ptr [ %i.rw, %bb.ds ], [ %.sroa.14831.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit408 ] ; 11 uses
  %.sroa.0823.01642 = phi ptr [ %i.rw, %bb.ds ], [ %.sroa.0823.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit408 ] ; 16 uses
  %i.se = icmp eq i64 %storemerge2061651, %storemerge2171645
  br i1 %i.se, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.sf = load ptr, ptr %43, align 8, !tbaa !222  ; 3 uses
  %i.sg = getelementptr i8, ptr %i.sf, i64 %.idx.i.i.i.i
  %i.sh = load ptr, ptr %42, align 8, !tbaa !222  ; 3 uses
  %.idx.i.i.i12.i = mul i64 %storemerge2171645, 48 ; 6 uses
  %i.si = getelementptr i8, ptr %i.sh, i64 %.idx.i.i.i12.i ; 2 uses
  %i.sj = load ptr, ptr %i.sg, align 8, !tbaa !129 ; 6 uses
  %i.sk = load ptr, ptr %i.si, align 8, !tbaa !129 ; 3 uses
  %i.sl = icmp eq ptr %i.sj, %i.sk
  br i1 %i.sl, label %.noexc393.thread, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sj, i64 24
  %i.so = load double, ptr %i.sn, align 8, !tbaa !33
  %60 = load double, ptr %i.sm, align 16, !tbaa !33
  %i.sp = fneg double %60
  %i.sq = fcmp olt double %i.so, %i.sp
  br i1 %i.sq, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  %61 = load double, ptr %i.sr, align 16, !tbaa !33
  %62 = fneg double %61
  %63 = getelementptr inbounds nuw i8, ptr %i.sk, i64 24
  %64 = load double, ptr %63, align 8, !tbaa !33
  %i.ss = fcmp ugt double %64, %62
  br i1 %i.ss, label %bb.dy, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767

bb.dy:                                            ; preds = %bb.dx
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767: ; preds = %bb.dy, %bb.dx, %bb.dw
  %.sroa.4.0.i.i768 = phi i16 [ 257, %bb.dw ], [ 256, %bb.dy ], [ 0, %bb.dx ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i769 = trunc i16 %.sroa.4.0.i.i768 to i8
  %.sroa.2.0.extract.shift.i.i770 = lshr i16 %.sroa.4.0.i.i768, 8
  %.sroa.2.0.extract.trunc.i.i771 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i770 to i8
  %i.st = icmp eq i8 %.sroa.0.0.extract.trunc.i.i769, %.sroa.2.0.extract.trunc.i.i771
  br i1 %i.st, label %.noexc393, label %bb.dz

bb.dz:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767
  %i.su = getelementptr inbounds nuw i8, ptr %i.sj, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.sj, ptr %11, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %11, ptr %10, align 8, !tbaa !112
  store ptr %10, ptr %i.js, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jt, align 8, !tbaa !112
  %i.sv = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.su, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774 unwind label %.loopexit1495 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774:       ; preds = %bb.dz
  %.not.i.i.i.i775 = icmp eq i32 %i.sv, 0
  br i1 %.not.i.i.i.i775, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776, label %bb.ea

bb.ea:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.sv) #33
          to label %bb.eb unwind label %.loopexit.split-lp1496

bb.eb:                                            ; preds = %bb.ea
  unreachable

.loopexit1495:                                    ; preds = %bb.dz
  %lpad.loopexit1497 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp1496:                           ; preds = %bb.ea
  %lpad.loopexit.split-lp1498 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit.split-lp1496, %.loopexit1495
  %lpad.phi1499 = phi { ptr, i32 } [ %lpad.loopexit1497, %.loopexit1495 ], [ %lpad.loopexit.split-lp1498, %.loopexit.split-lp1496 ]
  store ptr null, ptr %i.js, align 8, !tbaa !112
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body781

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774
  store ptr null, ptr %i.js, align 8, !tbaa !112
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  %i.sx = load atomic ptr, ptr %i.sw monotonic, align 8
  %i.sy = load ptr, ptr %i.si, align 8, !tbaa !129 ; 3 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.sy, ptr %9, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !112
  store ptr %8, ptr %i.js, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jt, align 8, !tbaa !112
  %i.ta = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.sz, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777 unwind label %.loopexit1500 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776
  %.not.i.i.i11.i778 = icmp eq i32 %i.ta, 0
  br i1 %.not.i.i.i11.i778, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779, label %bb.ed

bb.ed:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ta) #33
          to label %bb.ee unwind label %.loopexit.split-lp1501

bb.ee:                                            ; preds = %bb.ed
  unreachable

.loopexit1500:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776
  %lpad.loopexit1502 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

.loopexit.split-lp1501:                           ; preds = %bb.ed
  %lpad.loopexit.split-lp1503 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ef:                                            ; preds = %.loopexit.split-lp1501, %.loopexit1500
  %lpad.phi1504 = phi { ptr, i32 } [ %lpad.loopexit1502, %.loopexit1500 ], [ %lpad.loopexit.split-lp1503, %.loopexit.split-lp1501 ]
  store ptr null, ptr %i.js, align 8, !tbaa !112
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body781

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777
  store ptr null, ptr %i.js, align 8, !tbaa !112
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  %i.tc = load atomic ptr, ptr %i.tb monotonic, align 8
  %i.td = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.sx, ptr noundef nonnull align 16 dereferenceable(64) %i.tc)
          to label %.noexc783 unwind label %.loopexit1505

.noexc783:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779
  %i.te = icmp slt i32 %i.td, 0
  br i1 %i.te, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %.noexc783..noexc393.thread_crit_edge

.noexc783..noexc393.thread_crit_edge:             ; preds = %.noexc783
  %.pre = load ptr, ptr %43, align 8, !tbaa !222
  %.pre1749 = load ptr, ptr %42, align 8, !tbaa !222
  br label %.noexc393.thread

.noexc393:                                        ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767
  %i.tf = trunc i16 %.sroa.4.0.i.i768 to i1
  br i1 %i.tf, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %.noexc393.thread

.noexc393.thread:                                 ; preds = %.noexc783..noexc393.thread_crit_edge, %bb.dv, %.noexc393
  %i.tg = phi ptr [ %.pre1749, %.noexc783..noexc393.thread_crit_edge ], [ %i.sh, %bb.dv ], [ %i.sh, %.noexc393 ]
  %i.th = phi ptr [ %.pre, %.noexc783..noexc393.thread_crit_edge ], [ %i.sf, %bb.dv ], [ %i.sf, %.noexc393 ]
  %i.ti = getelementptr i8, ptr %i.th, i64 %.idx.i.i.i.i
  %i.tj = getelementptr i8, ptr %i.ti, i64 16
  %i.tk = getelementptr i8, ptr %i.tg, i64 %.idx.i.i.i12.i
  %i.tl = getelementptr i8, ptr %i.tk, i64 16
  %i.tm = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.tj, ptr noundef nonnull align 8 dereferenceable(9) %i.tl)
          to label %.noexc394 unwind label %.loopexit1505

.noexc394:                                        ; preds = %.noexc393.thread
  br i1 %i.tm, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.eg

bb.eg:                                            ; preds = %.noexc394
  %i.tn = load ptr, ptr %43, align 8, !tbaa !222
  %i.to = getelementptr i8, ptr %i.tn, i64 %.idx.i.i.i.i
  %i.tp = getelementptr i8, ptr %i.to, i64 32
  %i.tq = load ptr, ptr %42, align 8, !tbaa !222
  %i.tr = getelementptr i8, ptr %i.tq, i64 %.idx.i.i.i12.i
  %i.ts = getelementptr i8, ptr %i.tr, i64 32
  %i.tt = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.tp, ptr noundef nonnull align 8 dereferenceable(9) %i.ts)
          to label %.noexc395 unwind label %.loopexit1505

.noexc395:                                        ; preds = %bb.eg
  br i1 %i.tt, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.eh

bb.eh:                                            ; preds = %.noexc395
  %i.tu = load ptr, ptr %43, align 8, !tbaa !222
  %i.tv = getelementptr i8, ptr %i.tu, i64 %.idx.i.i.i12.i
  %i.tw = load ptr, ptr %42, align 8, !tbaa !222
  %i.tx = getelementptr i8, ptr %i.tw, i64 %.idx.i.i.i.i
  %i.ty = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.tv, ptr noundef nonnull align 8 dereferenceable(9) %i.tx)
          to label %.noexc396 unwind label %.loopexit1505

.noexc396:                                        ; preds = %bb.eh
  br i1 %i.ty, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.ei

bb.ei:                                            ; preds = %.noexc396
  %i.tz = load ptr, ptr %43, align 8, !tbaa !222
  %i.ua = getelementptr i8, ptr %i.tz, i64 %.idx.i.i.i12.i
  %i.ub = getelementptr i8, ptr %i.ua, i64 16
  %i.uc = load ptr, ptr %42, align 8, !tbaa !222
  %i.ud = getelementptr i8, ptr %i.uc, i64 %.idx.i.i.i.i
  %i.ue = getelementptr i8, ptr %i.ud, i64 16
  %i.uf = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ub, ptr noundef nonnull align 8 dereferenceable(9) %i.ue)
          to label %.noexc397 unwind label %.loopexit1505

.noexc397:                                        ; preds = %bb.ei
  br i1 %i.uf, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.ej

bb.ej:                                            ; preds = %.noexc397
  %i.ug = load ptr, ptr %43, align 8, !tbaa !222
  %i.uh = getelementptr i8, ptr %i.ug, i64 %.idx.i.i.i12.i
  %i.ui = getelementptr i8, ptr %i.uh, i64 32
  %i.uj = load ptr, ptr %42, align 8, !tbaa !222
  %i.uk = getelementptr i8, ptr %i.uj, i64 %.idx.i.i.i.i
  %i.ul = getelementptr i8, ptr %i.uk, i64 32
  %i.um = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ui, ptr noundef nonnull align 8 dereferenceable(9) %i.ul)
          to label %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit unwind label %.loopexit1505

_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit: ; preds = %bb.ej
  br i1 %i.um, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.ek

bb.ek:                                            ; preds = %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit
  %.not.i399 = icmp eq ptr %.sroa.14831.01643, %.sroa.21.01644
  br i1 %.not.i399, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store i64 %storemerge2171645, ptr %.sroa.14831.01643, align 8, !tbaa !42
  %i.un = getelementptr inbounds nuw i8, ptr %.sroa.14831.01643, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit408

bb.em:                                            ; preds = %bb.ek
  %i.uo = ptrtoint ptr %.sroa.21.01644 to i64
  %i.up = ptrtoint ptr %.sroa.0823.01642 to i64
  %i.uq = sub i64 %i.uo, %i.up                    ; 6 uses
  %i.ur = icmp eq i64 %i.uq, 9223372036854775800
  br i1 %i.ur, label %bb.en, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i400

end_hunk_1
begin_hunk_2_@_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_:bb.a
  %i.ar = trunc nuw i8 %.pre.pre.i to i1
  br label %bb.k

bb.j:                                             ; preds = %bb.h, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i
  store i8 0, ptr %i.x, align 1, !tbaa !295
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pre.i = phi i1 [ false, %bb.j ], [ %i.ar, %bb.i ]
  store i64 %spec.select.i.i, ptr %i.v, align 16, !tbaa !293
  store i64 %.sroa.speculated.i.i, ptr %i.u, align 16, !tbaa !33
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !33
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 16), align 16, !tbaa !293
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i

bb.l:                                             ; preds = %bb.g
  store i64 %spec.select.i.i, ptr %i.v, align 16, !tbaa !293
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i: ; preds = %bb.l, %bb.k
  %i.as = phi i64 [ %.pre, %bb.k ], [ %i.w, %bb.l ]
  %.pre-phi.i = phi i1 [ %.pre.i, %bb.k ], [ %i.z, %bb.l ]
  %i.at = phi ptr [ %i.ae, %bb.k ], [ %.pre8.i, %bb.l ]
  %i.au = select i1 %.pre-phi.i, ptr %i.u, ptr %i.at
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 25), align 1, !tbaa !295, !range !296, !noundef !297
  %i.aw = trunc nuw i8 %i.av to i1
  %i.ax = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 8), align 8
  %i.ay = select i1 %i.aw, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, ptr %i.ax
  %i.az = shl i64 %i.as, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.au, ptr align 8 %i.ay, i64 %i.az, i1 false)
  %i.ba = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEvE6result, i64 24), align 8, !tbaa !305, !range !296, !noundef !297
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.ba, ptr %i.bb, align 8, !tbaa !305
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit: ; preds = %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE3oneEv.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.bc, align 16, !tbaa !293
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 16, !tbaa !293 ; 2 uses
  %spec.select.i.i22 = tail call i64 @llvm.umin.i64(i64 %i.be, i64 288230376151711744) ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 25 ; 4 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !295, !range !296, !noundef !297
  %i.bh = trunc nuw i8 %i.bg to i1                ; 2 uses
  %i.bi = load i64, ptr %0, align 16
  %spec.select.i8.i.i23 = select i1 %i.bh, i64 2, i64 %i.bi ; 2 uses
  %i.bj = icmp ugt i64 %spec.select.i.i22, %spec.select.i8.i.i23
  br i1 %i.bj, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28, label %bb.q

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit
  %i.bk = shl nuw nsw i64 %spec.select.i8.i.i23, 2
  %.sroa.speculated16.i.i29 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 %spec.select.i.i22)
  %.sroa.speculated.i.i30 = tail call i64 @llvm.umin.i64(i64 %.sroa.speculated16.i.i29, i64 288230376151711744) ; 2 uses
  %i.bl = shl nuw nsw i64 %.sroa.speculated.i.i30, 3
  %i.bm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #35 ; 3 uses
  %i.bn = load i8, ptr %i.bf, align 1, !tbaa !295, !range !296, !noundef !297
  %i.bo = trunc nuw i8 %i.bn to i1                ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %i.br = select i1 %i.bo, ptr %0, ptr %i.bq
  %i.bs = load i64, ptr %i.bc, align 16, !tbaa !293
  %i.bt = shl i64 %i.bs, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bm, ptr align 8 %i.br, i64 %i.bt, i1 false)
  br i1 %i.bo, label %bb.o, label %bb.m

bb.m:                                             ; preds = %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !306, !range !296, !noundef !297
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = load i64, ptr %0, align 16
  %i.by = shl i64 %i.bx, 3
  tail call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.by) #34
  %.pre.pre.i31 = load i8, ptr %i.bf, align 1, !tbaa !295, !range !296
  %i.bz = trunc nuw i8 %.pre.pre.i31 to i1
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i28
  store i8 0, ptr %i.bf, align 1, !tbaa !295
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pre.i32 = phi i1 [ false, %bb.o ], [ %i.bz, %bb.n ]
  store i64 %spec.select.i.i22, ptr %i.bc, align 16, !tbaa !293
  store i64 %.sroa.speculated.i.i30, ptr %0, align 16, !tbaa !33
  store ptr %i.bm, ptr %i.bp, align 8, !tbaa !33
  %.pre34 = load i64, ptr %i.bd, align 16, !tbaa !293
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33

bb.q:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit
  store i64 %spec.select.i.i22, ptr %i.bc, align 16, !tbaa !293
  %.phi.trans.insert.i24 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre8.i25 = load ptr, ptr %.phi.trans.insert.i24, align 8
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33: ; preds = %bb.p, %bb.q
  %i.ca = phi i64 [ %.pre34, %bb.p ], [ %i.be, %bb.q ]
  %.pre-phi.i27 = phi i1 [ %.pre.i32, %bb.p ], [ %i.bh, %bb.q ]
  %i.cb = phi ptr [ %i.bm, %bb.p ], [ %.pre8.i25, %bb.q ]
  %i.cc = select i1 %.pre-phi.i27, ptr %0, ptr %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 57
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !295, !range !296, !noundef !297
  %i.cf = trunc nuw i8 %i.ce to i1
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = select i1 %i.cf, ptr %i.u, ptr %i.ch
  %i.cj = shl i64 %i.ca, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cc, ptr align 8 %i.ci, i64 %i.cj, i1 false)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !305, !range !296, !noundef !297
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.cl, ptr %i.cm, align 8, !tbaa !305
  br label %bb.y

bb.r:                                             ; preds = %_ZN5boost14multiprecision8backends13eval_get_signILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEiE4typeERKS9_.exit
  %i.cn = icmp eq ptr %0, %2
  br i1 %i.cn, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEC2ERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %5, ptr noundef nonnull align 16 dereferenceable(64) %2)
  invoke void @_ZN5boost14multiprecision8backends11eval_divideINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %5)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr inbounds nuw i8, ptr %5, i64 57
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !295, !range !296, !noundef !297
  %i.cq = trunc nuw i8 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 58
  %i.cs = load i8, ptr %i.cr, align 2, !range !296
  %i.ct = trunc nuw i8 %i.cs to i1
  %or.cond.i1.i = select i1 %i.cq, i1 true, i1 %i.ct
  br i1 %or.cond.i1.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load i64, ptr %i.cu, align 16
  %i.cy = shl i64 %i.cx, 3
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cy) #34
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i: ; preds = %bb.u, %bb.t
  %i.cz = getelementptr inbounds nuw i8, ptr %5, i64 25
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !295, !range !296, !noundef !297
  %i.db = trunc nuw i8 %i.da to i1
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 26
  %i.dd = load i8, ptr %i.dc, align 2, !range !296
  %i.de = trunc nuw i8 %i.dd to i1
  %or.cond.i.i = select i1 %i.db, i1 true, i1 %i.de
  br i1 %or.cond.i.i, label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i
  %i.df = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = load i64, ptr %5, align 16
  %i.di = shl i64 %i.dh, 3
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.di) #34
  br label %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit

_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit: ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.dj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.z

bb.x:                                             ; preds = %bb.r
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @_ZN5boost14multiprecision8backends17eval_multiply_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_RKS9_SF_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(27) %i.dk, ptr noundef nonnull align 16 dereferenceable(27) %2)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev.exit, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6assignERKS6_.exit33
  ret void

bb.z:                                             ; preds = %bb.w, %bb.c
  %.pn = phi { ptr, i32 } [ %i.o, %bb.c ], [ %i.dj, %bb.w ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.anon.230, align 8            ; 5 uses
  %3 = alloca %class.anon.229, align 8            ; 4 uses
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %5 = alloca %class.anon.229, align 8            ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !129    ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !129    ; 3 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load double, ptr %i.e, align 8, !tbaa !33
  %6 = load double, ptr %i.d, align 16, !tbaa !33
  %i.g = fneg double %6
  %i.h = fcmp olt double %i.f, %i.g
  br i1 %i.h, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %7 = load double, ptr %i.i, align 16, !tbaa !33
  %8 = fneg double %7
  %9 = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %10 = load double, ptr %9, align 8, !tbaa !33
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
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.a, ptr %5, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !112
  %i.n = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.n, align 8, !tbaa !112
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !112
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
  store ptr null, ptr %i.n, align 8, !tbaa !112
  store ptr null, ptr %i.o, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.n, align 8, !tbaa !112
  store ptr null, ptr %i.o, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.s = load atomic ptr, ptr %i.r monotonic, align 8
  %i.t = load ptr, ptr %1, align 8, !tbaa !129    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.t, ptr %3, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !112
  store ptr %2, ptr %i.n, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.o, align 8, !tbaa !112
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
  store ptr null, ptr %i.n, align 8, !tbaa !112
  store ptr null, ptr %i.o, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.n, align 8, !tbaa !112
  store ptr null, ptr %i.o, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
define linkonce_odr dso_local noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 32 uses
  %3 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !tbaa !293 ; 6 uses
  %i.c = icmp eq i64 %i.b, 1
  br i1 %i.c, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 25
  %i.e = load i8, ptr %i.d, align 1, !tbaa !295, !range !296, !noundef !297
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %i.f, ptr %0, ptr %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !298
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !305, !range !296, !noundef !297
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = select i1 %i.n, i32 -1, i32 1
  br label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit

_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i
  %i.p = phi i32 [ %i.o, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i ], [ 0, %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !293
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52: ; preds = %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !295, !range !296, !noundef !297
  %i.v = trunc nuw i8 %i.u to i1
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = select i1 %i.v, ptr %1, ptr %i.x
  %i.z = load i64, ptr %i.y, align 8, !tbaa !298
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit53, label %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51

_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.thread.i51: ; preds = %_ZN5boost14multiprecision8backends12eval_is_zeroILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEENSt9enable_ifIXntsr18is_trivial_cpp_intINS1_15cpp_int_backendIXT_EXT0_EXT1_EXT2_ET3_EEEE5valueEbE4typeERKS9_.exit.i52, %_ZN5boost14multiprecision8backends13eval_get_signINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEiRKNS1_16rational_adaptorIT_EE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !305, !range !296, !noundef !297
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store i64 0, ptr %2, align 16, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.au = load i8, ptr %i.at, align 2, !tbaa !306, !range !296, !noundef !297
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i64 %i.b, ptr %i.as, align 16, !tbaa !293
end_hunk_2
begin_hunk_3_@_ZNK5Eigen8internal16binary_evaluatorINS_13CwiseBinaryOpINS0_13scalar_sum_opIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEESJ_EEKNS2_ISK_KNS_5BlockIKNS_6MatrixISJ_Lin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEESQ_EESQ_EENS0_10IndexBasedESU_SJ_SJ_E5coeffEl:bb.a
  %i.t = or disjoint i32 %i.s, 16384
  store i32 %i.t, ptr %i.d, align 4, !noalias !484
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.d), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !484
  %i.u = load ptr, ptr %3, align 8, !tbaa !129, !noalias !484
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = load <2 x double>, ptr %i.v, align 16, !tbaa !33, !noalias !484
  %i.y = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.x) #22, !noalias !484, !srcloc !487
  %i.z = load <2 x double>, ptr %i.w, align 16, !tbaa !33, !noalias !484
  %i.aa = call noundef <2 x double> asm "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.z) #38, !srcloc !488
  %i.ab = fadd <2 x double> %i.y, %i.aa
  %i.ac = call noundef <2 x double> asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(<2 x double> %i.ab) #22, !noalias !484, !srcloc !487
  %i.ad = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i32 1, ptr %i.ad, align 4, !tbaa !113, !noalias !484
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x double> %i.ac, ptr %i.ae, align 16, !tbaa !33, !noalias !484
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr null, ptr %i.af, align 16, !tbaa !115, !noalias !484
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store i32 0, ptr %i.ag, align 8, !tbaa !118, !noalias !484
  %i.ah = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ai = load ptr, ptr %3, align 8, !tbaa !129, !noalias !484 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 16, !tbaa !129, !noalias !484
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33, !noalias !484
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.al = load atomic i32, ptr %i.ak monotonic, align 4, !noalias !484
  %i.am = add nsw i32 %i.al, 1
  store atomic i32 %i.am, ptr %i.ak monotonic, align 4, !noalias !484
  %i.an = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.ao = load ptr, ptr %4, align 8, !tbaa !129, !noalias !484 ; 3 uses
  store ptr %i.ao, ptr %i.an, align 16, !tbaa !129, !noalias !484
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.aq = load atomic i32, ptr %i.ap monotonic, align 4, !noalias !484
  %i.ar = add nsw i32 %i.aq, 1
  store atomic i32 %i.ar, ptr %i.ap monotonic, align 4, !noalias !484
  br label %bb.f

bb.e:                                             ; preds = %.noexc
  %i.as = atomicrmw add ptr %i.ak, i32 1 monotonic, align 4, !noalias !484 ; 0 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.au = load ptr, ptr %4, align 8, !tbaa !129, !noalias !484 ; 3 uses
  store ptr %i.au, ptr %i.at, align 16, !tbaa !129, !noalias !484
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = atomicrmw add ptr %i.av, i32 1 monotonic, align 4, !noalias !484 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ax = phi ptr [ %i.ao, %bb.d ], [ %i.au, %bb.e ] ; 4 uses
  %i.ay = and i32 %i.q, 24576
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !484
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !484
  call void @llvm.x86.sse.stmxcsr(ptr nonnull %i.a), !noalias !484
  %i.az = load i32, ptr %i.a, align 4, !noalias !484
  %i.ba = and i32 %i.az, -24577
  %i.bb = or disjoint i32 %i.ba, %i.ay
  store i32 %i.bb, ptr %i.b, align 4, !noalias !484
  call void @llvm.x86.sse.ldmxcsr(ptr nonnull %i.b), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !484
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %i.p, align 16, !tbaa !14, !noalias !484
  store ptr %i.p, ptr %0, align 8, !tbaa !129, !alias.scope !484
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i = icmp eq i8 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 3 uses
  %i.be = load atomic i32, ptr %i.bd monotonic, align 4 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 1                    ; 2 uses
  br i1 %.not.i.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = load ptr, ptr %i.ax, align 8, !tbaa !14
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.bj = add nsw i32 %i.be, -1
  store atomic i32 %i.bj, ptr %i.bd monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit

bb.k:                                             ; preds = %bb.g
  br i1 %i.bf, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = atomicrmw sub ptr %i.bd, i32 1 release, align 4
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %bb.m, label %_ZN4CGAL6HandleD2Ev.exit

bb.m:                                             ; preds = %bb.l, %bb.k
  fence acquire
  %i.bm = load ptr, ptr %4, align 8, !tbaa !129   ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN4CGAL6HandleD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !14
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(12) %i.bm) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit

_ZN4CGAL6HandleD2Ev.exit:                         ; preds = %bb.f, %bb.i, %bb.j, %bb.l, %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.br = load ptr, ptr %3, align 8, !tbaa !129   ; 4 uses
  %.not.i.i4 = icmp eq ptr %i.br, null
  br i1 %.not.i.i4, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.o

bb.o:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit
  %i.bs = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i5 = icmp eq i8 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 3 uses
  %i.bu = load atomic i32, ptr %i.bt monotonic, align 4 ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 1                    ; 2 uses
  br i1 %.not.i.i.i5, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.bv, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !14
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8
  call void %i.by(ptr noundef nonnull align 8 dereferenceable(12) %i.br) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.r:                                             ; preds = %bb.p
  %i.bz = add nsw i32 %i.bu, -1
  store atomic i32 %i.bz, ptr %i.bt monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit6

bb.s:                                             ; preds = %bb.o
  br i1 %i.bv, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ca = atomicrmw sub ptr %i.bt, i32 1 release, align 4
  %i.cb = icmp eq i32 %i.ca, 1
  br i1 %i.cb, label %bb.u, label %_ZN4CGAL6HandleD2Ev.exit6

bb.u:                                             ; preds = %bb.t, %bb.s
  fence acquire
  %i.cc = load ptr, ptr %3, align 8, !tbaa !129   ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %_ZN4CGAL6HandleD2Ev.exit6, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(12) %i.cc) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit6

_ZN4CGAL6HandleD2Ev.exit6:                        ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.q, %bb.r, %bb.t, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.w:                                             ; preds = %_ZNK5Eigen8internal17mapbase_evaluatorINS_5BlockIKNS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS7_8backends16rational_adaptorINS9_15cpp_int_backendILm0ELm0ELNS7_16cpp_integer_typeE1ELNS7_18cpp_int_check_typeE0ESaIyEEEEELNS7_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEELi1ELin1ELb1EEENS3_ISJ_Li1ELin1ELi1ELi1ELin1EEEE5coeffEl.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @_ZN4CGAL6HandleD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(9) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.ch
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_DivIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EC2ERKNS_13Lazy_exact_ntISD_EESI_(ptr noundef nonnull align 16 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(9) %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  %i.j = load ptr, ptr %1, align 8, !tbaa !129    ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  %i.l = load ptr, ptr %2, align 8, !tbaa !129    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %3 = load double, ptr %i.m, align 16, !tbaa !33 ; 2 uses
  %4 = fneg double %3                             ; 6 uses
  %5 = fcmp olt double %3, 0.000000e+00
  %6 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %7 = load double, ptr %6, align 8, !tbaa !33    ; 7 uses
  br i1 %5, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %8 = load double, ptr %i.k, align 16, !tbaa !33 ; 2 uses
  %i.n = fcmp ogt double %8, 0.000000e+00
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %9 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %10 = load double, ptr %9, align 8, !tbaa !33
  %i.o = fcmp olt double %10, 0.000000e+00
  br i1 %i.o, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.024.i = phi double [ %4, %bb.d ], [ %4, %bb.c ], [ %7, %bb.b ]
  %.023.i = phi double [ %7, %bb.d ], [ %4, %bb.c ], [ %4, %bb.b ]
  %i.p = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %8) #22, !srcloc !489
  %i.q = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %.024.i) #22, !srcloc !489
  %i.r = fdiv double %i.p, %i.q
  %i.s = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.r) #22, !srcloc !489
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !33
  %i.v = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.u) #22, !srcloc !489
  %i.w = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %.023.i) #22, !srcloc !489
  %i.x = fdiv double %i.v, %i.w
  %i.y = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.x) #22, !srcloc !489
  %i.z = insertelement <2 x double> poison, double %i.s, i64 0
  %i.aa = insertelement <2 x double> %i.z, double %i.y, i64 1
  br label %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit

bb.f:                                             ; preds = %bb.a
  %i.ab = fcmp olt double %7, 0.000000e+00
  br i1 %i.ab, label %bb.g, label %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit

bb.g:                                             ; preds = %bb.f
  %11 = load double, ptr %i.k, align 16, !tbaa !33
  %12 = fcmp ogt double %11, 0.000000e+00
  %13 = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %14 = load double, ptr %13, align 8, !tbaa !33  ; 2 uses
  br i1 %12, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ac = fcmp olt double %14, 0.000000e+00
  br i1 %i.ac, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.022.i = phi double [ %4, %bb.i ], [ %7, %bb.h ], [ %7, %bb.g ]
  %.0.i = phi double [ %7, %bb.i ], [ %7, %bb.h ], [ %4, %bb.g ]
  %i.ad = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %14) #22, !srcloc !489
  %i.ae = fneg double %.022.i
  %i.af = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.ae) #22, !srcloc !489
  %i.ag = fdiv double %i.ad, %i.af
  %i.ah = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.ag) #22, !srcloc !489
  %15 = load double, ptr %i.k, align 16, !tbaa !33
  %i.ai = fneg double %15
  %i.aj = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.ai) #22, !srcloc !489
  %i.ak = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %.0.i) #22, !srcloc !489
  %i.al = fdiv double %i.aj, %i.ak
  %i.am = call noundef double asm sideeffect "", "=x,0,~{dirflag},~{fpsr},~{flags}"(double %i.al) #22, !srcloc !489
  %i.an = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.am, i64 1
  br label %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.j, %bb.f, %bb.e
  %.sroa.025.0.i = phi <2 x double> [ %i.aa, %bb.e ], [ %i.ao, %bb.j ], [ splat (double +inf), %bb.f ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.ap, align 8, !tbaa !113
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x double> %.sroa.025.0.i, ptr %i.aq, align 16, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr null, ptr %i.ar, align 16, !tbaa !115
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.as, align 8, !tbaa !118
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %0, align 16, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load ptr, ptr %1, align 8, !tbaa !129   ; 2 uses
  store ptr %i.au, ptr %i.at, align 16, !tbaa !129
  %i.av = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i = icmp eq i8 %i.av, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit
  %i.ax = load atomic i32, ptr %i.aw monotonic, align 4
  %i.ay = add nsw i32 %i.ax, 1
  store atomic i32 %i.ay, ptr %i.aw monotonic, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ba = load ptr, ptr %2, align 8, !tbaa !129   ; 2 uses
  store ptr %i.ba, ptr %i.az, align 16, !tbaa !129
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 2 uses
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 4
  %i.bd = add nsw i32 %i.bc, 1
  store atomic i32 %i.bd, ptr %i.bb monotonic, align 4
  br label %_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EC2ERKNS_11Interval_ntILb0EEERKNS_13Lazy_exact_ntISD_EESM_.exit

bb.l:                                             ; preds = %_ZN4CGALdvERKNS_11Interval_ntILb0EEES3_.exit
  %i.be = atomicrmw add ptr %i.aw, i32 1 monotonic, align 4 ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bg = load ptr, ptr %2, align 8, !tbaa !129   ; 2 uses
  store ptr %i.bg, ptr %i.bf, align 16, !tbaa !129
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL14Lazy_exact_DivIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_EE, i64 16), ptr %0, align 16, !tbaa !14
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_DivIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_DivIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.230, align 8            ; 5 uses
  %3 = alloca %class.anon.229, align 8            ; 4 uses
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %5 = alloca %class.anon.229, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !129 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.c, ptr %5, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !112
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !112
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !112
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
  store ptr null, ptr %i.e, align 8, !tbaa !112
  store ptr null, ptr %i.f, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !129 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.l, ptr %3, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !112
  store ptr %2, ptr %i.e, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !112
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
  store ptr null, ptr %i.e, align 8, !tbaa !112
  store ptr null, ptr %i.f, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !112
  store ptr null, ptr %i.f, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #22
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail17divide_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !33
  %6 = load double, ptr %i.s, align 16, !tbaa !33
  %i.v = fneg double %6
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail17divide_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.x = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  %i.aa = fneg double %i.y
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  store <2 x double> %i.ac, ptr %i.s, align 16, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ad, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail17divide_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ae release, align 16
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !129 ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i12 = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #22, !inline_history !490
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
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !129 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #22, !inline_history !490
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !129
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.av = load ptr, ptr %i.k, align 16, !tbaa !129 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i2.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #22, !inline_history !490
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
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !129 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #22, !inline_history !490
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !129
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: nounwind
declare void @llvm.x86.sse.ldmxcsr(ptr) #22

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #37
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 16 dereferenceable(64) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.boost::multiprecision::number.172", align 16 ; 21 uses
  %3 = alloca %"class.boost::multiprecision::number.172", align 16 ; 21 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !491)
  store i64 0, ptr %2, align 16, !tbaa !33, !alias.scope !491
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 26
  %i.c = load i8, ptr %i.b, align 2, !tbaa !306, !range !296, !noalias !491, !noundef !297
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 16, !tbaa !293, !noalias !491
  store i64 %i.f, ptr %i.a, align 16, !tbaa !293, !alias.scope !491
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !305, !range !296, !noalias !491, !noundef !297
  store i8 %i.i, ptr %i.g, align 8, !tbaa !305, !alias.scope !491
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 25
  store i8 0, ptr %i.j, align 1, !tbaa !295, !alias.scope !491
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 1, ptr %i.k, align 2, !tbaa !306, !alias.scope !491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %2, ptr noundef nonnull align 16 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !368
  br label %_ZN5boost14multiprecision9numeratorINS0_8backends15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEELNS0_26expression_template_optionE1EEENS0_6numberIT_XT0_EEERKNS9_INS2_16rational_adaptorISA_EEXT0_EEE.exit

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !305, !range !296, !noalias !491, !noundef !297
  store i8 %i.n, ptr %i.l, align 8, !tbaa !305, !alias.scope !491
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 25 ; 2 uses
  store i8 1, ptr %i.o, align 1, !tbaa !295, !alias.scope !491
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 26
  store i8 0, ptr %i.p, align 2, !tbaa !306, !alias.scope !491
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !293, !noalias !491 ; 3 uses
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.r, i64 288230376151711744) ; 2 uses
  %i.s = icmp ult i64 %i.r, 3
  br i1 %i.s, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i, label %_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i

_ZNSt15__new_allocatorIyE8allocateEmPKv.exit.i.i: ; preds = %bb.c
  %.sroa.speculated16.i.i = tail call i64 @llvm.umax.i64(i64 %spec.select.i.i, i64 8) ; 2 uses
  %i.t = shl nuw nsw i64 %.sroa.speculated16.i.i, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #35, !noalias !491 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 0, ptr %i.o, align 1, !tbaa !295, !alias.scope !491
  store i64 %.sroa.speculated16.i.i, ptr %2, align 16, !tbaa !33, !alias.scope !491
  store ptr %i.u, ptr %i.v, align 8, !tbaa !33, !alias.scope !491
  %.pre2.i = load i64, ptr %i.q, align 16, !tbaa !293, !noalias !491
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EE6resizeEmm.exit.i
end_hunk_3
begin_hunk_4_@_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev:bb.a

bb.k:                                             ; preds = %bb.j
  br i1 %i.w, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s) #22, !inline_history !132
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
  %i.ad = load ptr, ptr %i.r, align 16, !tbaa !129 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %_ZN4CGAL6HandleD2Ev.exit3, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !14
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(12) %i.ad) #22, !inline_history !132
  br label %_ZN4CGAL6HandleD2Ev.exit3

_ZN4CGAL6HandleD2Ev.exit3:                        ; preds = %_ZN4CGAL6HandleD2Ev.exit, %bb.l, %bb.m, %bb.o, %bb.p, %bb.q
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EEE, i64 16), ptr %0, align 16, !tbaa !14
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load atomic ptr, ptr %i.ai monotonic, align 16 ; 10 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZN4CGAL6HandleD2Ev.exit3
  fence acquire
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 57
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !295, !range !296, !noundef !297
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 58
  %i.ao = load i8, ptr %i.an, align 2, !range !296
  %i.ap = trunc nuw i8 %i.ao to i1
  %or.cond.i1.i.i.i = select i1 %i.am, i1 true, i1 %i.ap
  br i1 %or.cond.i1.i.i.i, label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = load i64, ptr %i.aq, align 16
  %i.au = shl i64 %i.at, 3
  tail call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.au) #34, !inline_history !431
  br label %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i

_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i: ; preds = %bb.s, %bb.r
  %i.av = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !295, !range !296, !noundef !297
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 26
  %i.az = load i8, ptr %i.ay, align 2, !range !296
  %i.ba = trunc nuw i8 %i.az to i1
  %or.cond.i.i.i.i = select i1 %i.ax, i1 true, i1 %i.ba
  br i1 %or.cond.i.i.i.i, label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = load i64, ptr %i.aj, align 16
  %i.be = shl i64 %i.bd, 3
  tail call void @_ZdlPvm(ptr noundef %i.bc, i64 noundef %i.be) #34, !inline_history !431
  br label %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i: ; preds = %bb.t, %_ZN5boost14multiprecision8backends12cpp_int_baseILm0ELm18446744073709551615ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyELb0EED2Ev.exit2.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 64) #34, !inline_history !431
  br label %_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit

_ZN4CGAL8Lazy_repINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EELi1EED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit3, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED0Ev(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_ED2Ev(ptr noundef nonnull align 16 dead_on_return(80) dereferenceable(80) %0) #22
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 80) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK4CGAL14Lazy_exact_AddIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E12update_exactEv(ptr noundef nonnull align 16 dereferenceable(80) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.CGAL::To_interval", align 1 ; 3 uses
  %2 = alloca %class.anon.230, align 8            ; 5 uses
  %3 = alloca %class.anon.229, align 8            ; 4 uses
  %4 = alloca %class.anon.230, align 8            ; 5 uses
  %5 = alloca %class.anon.229, align 8            ; 4 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #35 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !129 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.c, ptr %5, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !112
  %i.e = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 5 uses
  store ptr %4, ptr %i.e, align 8, !tbaa !112
  %i.f = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 5 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !112
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
  store ptr null, ptr %i.e, align 8, !tbaa !112
  store ptr null, ptr %i.f, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %.body

bb.e:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !129 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.l, ptr %3, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !112
  store ptr %2, ptr %i.e, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.f, align 8, !tbaa !112
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
  store ptr null, ptr %i.e, align 8, !tbaa !112
  store ptr null, ptr %i.f, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i5
  store ptr null, ptr %i.e, align 8, !tbaa !112
  store ptr null, ptr %i.f, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
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
  call void @_ZN5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEED2Ev(ptr noundef nonnull align 16 dead_on_return(64) dereferenceable(64) %i.a) #22
  br label %.body

_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit: ; preds = %.noexc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load double, ptr %i.t, align 8, !tbaa !33
  %6 = load double, ptr %i.s, align 16, !tbaa !33
  %i.v = fneg double %6
  %i.w = fcmp oeq double %i.u, %i.v
  br i1 %i.w, label %bb.m, label %bb.k

bb.k:                                             ; preds = %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.x = call { double, double } @_ZNK4CGAL12RET_boost_mpIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEN4mpl_4int_ILi2EEEE11To_intervalclERKSD_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 16 dereferenceable(64) %i.a) ; 2 uses
  %i.y = extractvalue { double, double } %i.x, 0
  %i.z = extractvalue { double, double } %i.x, 1
  %i.aa = fneg double %i.y
  %i.ab = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %i.z, i64 1
  store <2 x double> %i.ac, ptr %i.s, align 16, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.h, %bb.j, %bb.l, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.h, %bb.d ], [ %i.o, %bb.h ], [ %i.ad, %bb.l ], [ %i.r, %bb.j ]
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #34
  resume { ptr, i32 } %eh.lpad-body

bb.m:                                             ; preds = %bb.k, %_ZN5boost14multiprecision6numberINS0_8backends16rational_adaptorINS2_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEELNS0_26expression_template_optionE1EEC2INS0_6detail14add_immediatesESB_SB_vvEERKNSD_10expressionIT_T0_T1_T2_T3_EEPNSt9enable_ifIXsr3std14is_convertibleINSL_11result_typeESB_EE5valueEvE4typeE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic ptr %i.a, ptr %i.ae release, align 16
  %i.af = load ptr, ptr %i.b, align 16, !tbaa !129 ; 4 uses
  %.not.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i, label %_ZN4CGAL6Handle5resetEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i12 = icmp eq i8 %i.ag, 0
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 3 uses
  %i.ai = load atomic i32, ptr %i.ah monotonic, align 4 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  br i1 %.not.i.i.i12, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.aj, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.af) #22, !inline_history !490
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
  %i.aq = load ptr, ptr %i.b, align 16, !tbaa !129 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %_ZN4CGAL6Handle6decrefEv.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(12) %i.aq) #22, !inline_history !490
  br label %_ZN4CGAL6Handle6decrefEv.exit.i.i

_ZN4CGAL6Handle6decrefEv.exit.i.i:                ; preds = %bb.u, %bb.t, %bb.s, %bb.q, %bb.p
  store ptr null, ptr %i.b, align 16, !tbaa !129
  br label %_ZN4CGAL6Handle5resetEv.exit.i

_ZN4CGAL6Handle5resetEv.exit.i:                   ; preds = %_ZN4CGAL6Handle6decrefEv.exit.i.i, %bb.m
  %i.av = load ptr, ptr %i.k, align 16, !tbaa !129 ; 4 uses
  %.not.i1.i = icmp eq ptr %i.av, null
  br i1 %.not.i1.i, label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit, label %bb.v

bb.v:                                             ; preds = %_ZN4CGAL6Handle5resetEv.exit.i
  %i.aw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i2.i = icmp eq i8 %i.aw, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load atomic i32, ptr %i.ax monotonic, align 4 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 1                    ; 2 uses
  br i1 %.not.i.i2.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.az, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  call void %i.bc(ptr noundef nonnull align 8 dereferenceable(12) %i.av) #22, !inline_history !490
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
  %i.bg = load ptr, ptr %i.k, align 16, !tbaa !129 ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZN4CGAL6Handle6decrefEv.exit.i3.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = load ptr, ptr %i.bg, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8
  call void %i.bk(ptr noundef nonnull align 8 dereferenceable(12) %i.bg) #22, !inline_history !490
  br label %_ZN4CGAL6Handle6decrefEv.exit.i3.i

_ZN4CGAL6Handle6decrefEv.exit.i3.i:               ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x
  store ptr null, ptr %i.k, align 16, !tbaa !129
  br label %_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit

_ZNK4CGAL17Lazy_exact_binaryIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_SD_E9prune_dagEv.exit: ; preds = %_ZN4CGAL6Handle5resetEv.exit.i, %_ZN4CGAL6Handle6decrefEv.exit.i3.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5boost14multiprecision8backends21eval_add_subtract_impINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEEEvRNS1_16rational_adaptorIT_EERKSA_SD_b(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(64) %1, ptr noundef nonnull align 16 dereferenceable(64) %2, i1 noundef zeroext %3) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %5 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %6 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %7 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 13 uses
  %8 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 19 uses
  %9 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 21 uses
  %10 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 20 uses
  %11 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 25 uses
  %12 = alloca %"struct.boost::multiprecision::backends::cpp_int_backend", align 16 ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store i64 0, ptr %8, align 16, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store i64 1, ptr %i.a, align 16, !tbaa !293
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  store i8 0, ptr %i.b, align 8, !tbaa !305
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 25 ; 4 uses
  store i8 1, ptr %i.c, align 1, !tbaa !295
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 26 ; 3 uses
  store i8 0, ptr %i.d, align 2, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store i64 0, ptr %9, align 16, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store i64 1, ptr %i.e, align 16, !tbaa !293
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 4 uses
  store i8 0, ptr %i.f, align 8, !tbaa !305
  %i.g = getelementptr inbounds nuw i8, ptr %9, i64 25 ; 4 uses
  store i8 1, ptr %i.g, align 1, !tbaa !295
  %i.h = getelementptr inbounds nuw i8, ptr %9, i64 26 ; 3 uses
  store i8 0, ptr %i.h, align 2, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store i64 0, ptr %10, align 16, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i64 1, ptr %i.i, align 16, !tbaa !293
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  store i8 0, ptr %i.j, align 8, !tbaa !305
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 25 ; 4 uses
  store i8 1, ptr %i.k, align 1, !tbaa !295
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 26 ; 3 uses
  store i8 0, ptr %i.l, align 2, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store i64 0, ptr %11, align 16, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store i64 1, ptr %i.m, align 16, !tbaa !293
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 6 uses
  store i8 0, ptr %i.n, align 8, !tbaa !305
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 25 ; 5 uses
  store i8 1, ptr %i.o, align 1, !tbaa !295
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 26 ; 3 uses
  store i8 0, ptr %i.p, align 2, !tbaa !306
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store i64 0, ptr %12, align 16, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store i64 1, ptr %i.q, align 16, !tbaa !293
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 4 uses
  store i8 0, ptr %i.r, align 8, !tbaa !305
  %i.s = getelementptr inbounds nuw i8, ptr %12, i64 25 ; 4 uses
  store i8 1, ptr %i.s, align 1, !tbaa !295
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 26 ; 3 uses
  store i8 0, ptr %i.t, align 2, !tbaa !306
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
end_hunk_4
