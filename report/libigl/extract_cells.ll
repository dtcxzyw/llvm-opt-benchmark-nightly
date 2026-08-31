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
  br i1 %.not1667, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %.lr.ph1644

.lr.ph1644:                                       ; preds = %_ZN4CGAL6HandleD2Ev.exit366
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
  br label %bb.jt

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

.thread2006:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i299
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

bb.bo:                                            ; preds = %.lr.ph1644, %bb.bp
  %.01481643 = phi i64 [ 0, %.lr.ph1644 ], [ %i.kx, %bb.bp ] ; 3 uses
  %i.kr = load ptr, ptr %30, align 8, !tbaa !17
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %.01481643
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !23
  %i.ku = load ptr, ptr %1, align 8, !tbaa !16, !noalias !133
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.ku, i64 %.01481643 ; 2 uses
  %i.kw = sext i32 %i.kt to i64                   ; 4 uses
  br label %.preheader1514

.preheader1514:                                   ; preds = %bb.bo, %bb.bq
  %.01471642 = phi i64 [ 0, %bb.bo ], [ %i.ky, %bb.bq ] ; 3 uses
  br label %bb.br

bb.bp:                                            ; preds = %bb.bq
  %i.kx = add nuw i64 %.01481643, 1               ; 2 uses
  %exitcond1739.not = icmp eq i64 %i.kx, %i.n
  br i1 %exitcond1739.not, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %bb.bo, !llvm.loop !136

bb.bq:                                            ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378
  %i.ky = add nuw nsw i64 %.01471642, 1           ; 2 uses
  %exitcond1738.not = icmp eq i64 %i.ky, 3
  br i1 %exitcond1738.not, label %bb.bp, label %.preheader1514, !llvm.loop !137

bb.br:                                            ; preds = %.preheader1514, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378
  %.01461641 = phi i64 [ 0, %.preheader1514 ], [ %i.ql, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378 ] ; 7 uses
  %i.kz = load ptr, ptr %42, align 8, !tbaa !138
  %i.la = load i64, ptr %i.jo, align 8, !tbaa !140
  %i.lb = mul nsw i64 %i.la, %.01461641
  %i.lc = getelementptr [16 x i8], ptr %i.kz, i64 %i.kw
  %i.ld = getelementptr [16 x i8], ptr %i.lc, i64 %i.lb ; 5 uses
  %i.le = load i64, ptr %i.m, align 8, !tbaa !9
  %i.lf = mul nsw i64 %i.le, %.01471642
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.lf
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !23
  %i.li = sext i32 %i.lh to i64
  %i.lj = load ptr, ptr %0, align 8, !tbaa !141
  %i.lk = load i64, ptr %i.cy, align 8, !tbaa !51
  %i.ll = mul nsw i64 %i.lk, %.01461641
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
  %.fr = freeze i1 %i.lx
  %i.ly = select i1 %.fr, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.bt, %bb.bs
  %.sroa.0.0.insert.insert.i.i = phi i16 [ 257, %bb.bs ], [ %i.ly, %bb.bt ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.insert.insert.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.lz = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.lz, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.lo, ptr %19, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %19, ptr %18, align 8, !tbaa !112
  store ptr %18, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.mb = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ma, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit1515 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.bu
  %.not.i.i.i.i742 = icmp eq i32 %i.mb, 0
  br i1 %.not.i.i.i.i742, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.mb) #33
          to label %bb.bw unwind label %.loopexit.split-lp1516

bb.bw:                                            ; preds = %bb.bv
  unreachable

.loopexit1515:                                    ; preds = %bb.bu
  %lpad.loopexit1517 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp1516:                           ; preds = %bb.bv
  %lpad.loopexit.split-lp1518 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp1516, %.loopexit1515
  %lpad.phi1519 = phi { ptr, i32 } [ %lpad.loopexit1517, %.loopexit1515 ], [ %lpad.loopexit.split-lp1518, %.loopexit.split-lp1516 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  %i.md = load atomic ptr, ptr %i.mc monotonic, align 8
  %i.me = load ptr, ptr %i.ld, align 8, !tbaa !129 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %i.me, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %i.me, ptr %17, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %17, ptr %16, align 8, !tbaa !112
  store ptr %16, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.mg = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.mf, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i unwind label %.loopexit1520 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i:        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %.not.i.i.i11.i = icmp eq i32 %i.mg, 0
  br i1 %.not.i.i.i11.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i, label %bb.by

bb.by:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.mg) #33
          to label %bb.bz unwind label %.loopexit.split-lp1521

bb.bz:                                            ; preds = %bb.by
  unreachable

.loopexit1520:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %lpad.loopexit1522 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp1521:                           ; preds = %bb.by
  %lpad.loopexit.split-lp1523 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit.split-lp1521, %.loopexit1520
  %lpad.phi1524 = phi { ptr, i32 } [ %lpad.loopexit1522, %.loopexit1520 ], [ %lpad.loopexit.split-lp1523, %.loopexit.split-lp1521 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 32
  %i.mi = load atomic ptr, ptr %i.mh monotonic, align 8
  %i.mj = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.md, ptr noundef nonnull align 16 dereferenceable(64) %i.mi)
          to label %.noexc745 unwind label %bb.cz

.noexc745:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.mk = icmp slt i32 %i.mj, 0
  br i1 %i.mk, label %bb.cb, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.ml = trunc i16 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.ml, label %bb.cb, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

bb.cb:                                            ; preds = %.noexc745, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit
  br label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread: ; preds = %bb.br, %.noexc745, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, %bb.cb
  %i.mm = phi ptr [ %i.ln, %bb.cb ], [ %i.ld, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit ], [ %i.ld, %.noexc745 ], [ %i.ld, %bb.br ] ; 2 uses
  %i.mn = load ptr, ptr %42, align 8, !tbaa !138
  %i.mo = load i64, ptr %i.jo, align 8, !tbaa !140
  %i.mp = mul nsw i64 %i.mo, %.01461641
  %i.mq = getelementptr [16 x i8], ptr %i.mn, i64 %i.kw
  %i.mr = getelementptr [16 x i8], ptr %i.mq, i64 %i.mp ; 4 uses
  %i.ms = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i368 = icmp eq i8 %i.ms, 0
  %i.mt = load ptr, ptr %i.mm, align 8, !tbaa !129
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i368, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.mv = atomicrmw add ptr %i.mu, i32 1 monotonic, align 4 ; 0 uses
  %i.mw = load ptr, ptr %i.mr, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i369 = icmp eq ptr %i.mw, null
  br i1 %.not.i.i.i369, label %bb.ci, label %bb.ce

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.mx = load atomic i32, ptr %i.mu monotonic, align 4
  %i.my = add nsw i32 %i.mx, 1
  store atomic i32 %i.my, ptr %i.mu monotonic, align 4
  %i.mz = load ptr, ptr %i.mr, align 8, !tbaa !129 ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.mz, null
  br i1 %.not4.i.i.i, label %bb.ci, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8 ; 2 uses
  %i.nb = load atomic i32, ptr %i.na monotonic, align 4 ; 2 uses
  %i.nc = icmp eq i32 %i.nb, 1
  br i1 %i.nc, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.thread.i.i.i
  %i.nd = load ptr, ptr %i.mz, align 8, !tbaa !14
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load ptr, ptr %i.ne, align 8
  call void %i.nf(ptr noundef nonnull align 8 dereferenceable(12) %i.mz) #22, !inline_history !145
  br label %bb.ci

bb.cd:                                            ; preds = %.thread.i.i.i
  %i.ng = add nsw i32 %i.nb, -1
  store atomic i32 %i.ng, ptr %i.na monotonic, align 4
  br label %bb.ci

bb.ce:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.nh = getelementptr inbounds nuw i8, ptr %i.mw, i64 8 ; 2 uses
  %i.ni = load atomic i32, ptr %i.nh monotonic, align 4
  %i.nj = icmp eq i32 %i.ni, 1
  br i1 %i.nj, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nk = atomicrmw sub ptr %i.nh, i32 1 release, align 4
  %i.nl = icmp eq i32 %i.nk, 1
  br i1 %i.nl, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  fence acquire
  %i.nm = load ptr, ptr %i.mr, align 8, !tbaa !129 ; 3 uses
  %i.nn = icmp eq ptr %i.nm, null
  br i1 %i.nn, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.no = load ptr, ptr %i.nm, align 8, !tbaa !14
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 8
  %i.nq = load ptr, ptr %i.np, align 8
  call void %i.nq(ptr noundef nonnull align 8 dereferenceable(12) %i.nm) #22, !inline_history !145
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.nr = load ptr, ptr %i.mm, align 8, !tbaa !129
  store ptr %i.nr, ptr %i.mr, align 8, !tbaa !129
  %i.ns = load ptr, ptr %43, align 8, !tbaa !138
  %i.nt = load i64, ptr %i.jr, align 8, !tbaa !140
  %i.nu = mul nsw i64 %i.nt, %.01461641
  %i.nv = getelementptr [16 x i8], ptr %i.ns, i64 %i.kw
  %i.nw = getelementptr [16 x i8], ptr %i.nv, i64 %i.nu ; 4 uses
  %i.nx = load i64, ptr %i.m, align 8, !tbaa !9
  %i.ny = mul nsw i64 %i.nx, %.01471642
  %i.nz = getelementptr inbounds [4 x i8], ptr %i.kv, i64 %i.ny
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !23
  %i.ob = sext i32 %i.oa to i64
  %i.oc = load ptr, ptr %0, align 8, !tbaa !141
  %i.od = load i64, ptr %i.cy, align 8, !tbaa !51
  %i.oe = mul nsw i64 %i.od, %.01461641
  %i.of = getelementptr [16 x i8], ptr %i.oc, i64 %i.ob
  %i.og = getelementptr [16 x i8], ptr %i.of, i64 %i.oe ; 3 uses
  %i.oh = load ptr, ptr %i.nw, align 8, !tbaa !129 ; 6 uses
  %i.oi = load ptr, ptr %i.og, align 8, !tbaa !129 ; 3 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.om = load double, ptr %i.ol, align 8, !tbaa !33
  %55 = load double, ptr %i.ok, align 16, !tbaa !33
  %i.on = fneg double %55
  %i.oo = fcmp olt double %i.om, %i.on
  br i1 %i.oo, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.op = getelementptr inbounds nuw i8, ptr %i.oh, i64 16
  %56 = load double, ptr %i.op, align 16, !tbaa !33
  %57 = fneg double %56
  %58 = getelementptr inbounds nuw i8, ptr %i.oi, i64 24
  %59 = load double, ptr %58, align 8, !tbaa !33
  %i.oq = fcmp ugt double %59, %57
  %.fr1487 = freeze i1 %i.oq
  %i.or = select i1 %.fr1487, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746: ; preds = %bb.ck, %bb.cj
  %.sroa.0.0.insert.insert.i.i747 = phi i16 [ 257, %bb.cj ], [ %i.or, %bb.ck ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i748 = trunc i16 %.sroa.0.0.insert.insert.i.i747 to i8
  %.sroa.2.0.extract.shift.i.i749 = lshr i16 %.sroa.0.0.insert.insert.i.i747, 8
  %.sroa.2.0.extract.trunc.i.i750 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i749 to i8
  %i.os = icmp eq i8 %.sroa.0.0.extract.trunc.i.i748, %.sroa.2.0.extract.trunc.i.i750
  br i1 %i.os, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oh, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.oh, ptr %15, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %15, ptr %14, align 8, !tbaa !112
  store ptr %14, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.ou = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ot, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i753 unwind label %.loopexit1525 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i753:       ; preds = %bb.cl
  %.not.i.i.i.i754 = icmp eq i32 %i.ou, 0
  br i1 %.not.i.i.i.i754, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i755, label %bb.cm

bb.cm:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i753
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ou) #33
          to label %bb.cn unwind label %.loopexit.split-lp1526

bb.cn:                                            ; preds = %bb.cm
  unreachable

.loopexit1525:                                    ; preds = %bb.cl
  %lpad.loopexit1527 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp1526:                           ; preds = %bb.cm
  %lpad.loopexit.split-lp1528 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.co:                                            ; preds = %.loopexit.split-lp1526, %.loopexit1525
  %lpad.phi1529 = phi { ptr, i32 } [ %lpad.loopexit1527, %.loopexit1525 ], [ %lpad.loopexit.split-lp1528, %.loopexit.split-lp1526 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i755: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i753
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oh, i64 32
  %i.ow = load atomic ptr, ptr %i.ov monotonic, align 8
  %i.ox = load ptr, ptr %i.og, align 8, !tbaa !129 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.ox, ptr %13, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %13, ptr %12, align 8, !tbaa !112
  store ptr %12, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.oz = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.oy, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i756 unwind label %.loopexit1530 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i756:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i755
  %.not.i.i.i11.i757 = icmp eq i32 %i.oz, 0
  br i1 %.not.i.i.i11.i757, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i758, label %bb.cp

bb.cp:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i756
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.oz) #33
          to label %bb.cq unwind label %.loopexit.split-lp1531

bb.cq:                                            ; preds = %bb.cp
  unreachable

.loopexit1530:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i755
  %lpad.loopexit1532 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp1531:                           ; preds = %bb.cp
  %lpad.loopexit.split-lp1533 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit.split-lp1531, %.loopexit1530
  %lpad.phi1534 = phi { ptr, i32 } [ %lpad.loopexit1532, %.loopexit1530 ], [ %lpad.loopexit.split-lp1533, %.loopexit.split-lp1531 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body743

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i758: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i756
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 32
  %i.pb = load atomic ptr, ptr %i.pa monotonic, align 8
  %i.pc = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ow, ptr noundef nonnull align 16 dereferenceable(64) %i.pb)
          to label %.noexc762 unwind label %bb.cz

.noexc762:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i758
  %i.pd = icmp slt i32 %i.pc, 0
  br i1 %i.pd, label %bb.cs, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i746
  %i.pe = trunc i16 %.sroa.0.0.insert.insert.i.i747 to i1
  br i1 %i.pe, label %bb.cs, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

bb.cs:                                            ; preds = %.noexc762, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit
  br label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread: ; preds = %bb.ci, %.noexc762, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, %bb.cs
  %i.pf = phi ptr [ %i.og, %bb.cs ], [ %i.nw, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit ], [ %i.nw, %.noexc762 ], [ %i.nw, %bb.ci ] ; 2 uses
  %i.pg = load ptr, ptr %43, align 8, !tbaa !138
  %i.ph = load i64, ptr %i.jr, align 8, !tbaa !140
  %i.pi = mul nsw i64 %i.ph, %.01461641
  %i.pj = getelementptr [16 x i8], ptr %i.pg, i64 %i.kw
  %i.pk = getelementptr [16 x i8], ptr %i.pj, i64 %i.pi ; 4 uses
  %i.pl = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i372 = icmp eq i8 %i.pl, 0
  %i.pm = load ptr, ptr %i.pf, align 8, !tbaa !129
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pm, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i372, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i376, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i373

_ZNK4CGAL6Handle6increfEv.exit.i.i.i376:          ; preds = %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.po = atomicrmw add ptr %i.pn, i32 1 monotonic, align 4 ; 0 uses
  %i.pp = load ptr, ptr %i.pk, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i377 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i377, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378, label %bb.cv

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i373:   ; preds = %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.pq = load atomic i32, ptr %i.pn monotonic, align 4
  %i.pr = add nsw i32 %i.pq, 1
  store atomic i32 %i.pr, ptr %i.pn monotonic, align 4
  %i.ps = load ptr, ptr %i.pk, align 8, !tbaa !129 ; 4 uses
  %.not4.i.i.i374 = icmp eq ptr %i.ps, null
  br i1 %.not4.i.i.i374, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378, label %.thread.i.i.i375

.thread.i.i.i375:                                 ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i373
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8 ; 2 uses
  %i.pu = load atomic i32, ptr %i.pt monotonic, align 4 ; 2 uses
  %i.pv = icmp eq i32 %i.pu, 1
  br i1 %i.pv, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.thread.i.i.i375
  %i.pw = load ptr, ptr %i.ps, align 8, !tbaa !14
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(12) %i.ps) #22, !inline_history !145
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378

bb.cu:                                            ; preds = %.thread.i.i.i375
  %i.pz = add nsw i32 %i.pu, -1
  store atomic i32 %i.pz, ptr %i.pt monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378

bb.cv:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i376
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 2 uses
  %i.qb = load atomic i32, ptr %i.qa monotonic, align 4
  %i.qc = icmp eq i32 %i.qb, 1
  br i1 %i.qc, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.qd = atomicrmw sub ptr %i.qa, i32 1 release, align 4
  %i.qe = icmp eq i32 %i.qd, 1
  br i1 %i.qe, label %bb.cx, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  fence acquire
  %i.qf = load ptr, ptr %i.pk, align 8, !tbaa !129 ; 3 uses
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qh = load ptr, ptr %i.qf, align 8, !tbaa !14
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(12) %i.qf) #22, !inline_history !145
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit378: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i376, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i373, %bb.ct, %bb.cu, %bb.cw, %bb.cx, %bb.cy
  %i.qk = load ptr, ptr %i.pf, align 8, !tbaa !129
  store ptr %i.qk, ptr %i.pk, align 8, !tbaa !129
  %i.ql = add nuw nsw i64 %.01461641, 1           ; 2 uses
  %exitcond1737.not = icmp eq i64 %i.ql, 3
  br i1 %exitcond1737.not, label %bb.bq, label %bb.br, !llvm.loop !146

bb.cz:                                            ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i758, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.qm = landingpad { ptr, i32 }
          cleanup
  br label %.body743

._crit_edge1656:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.qn = load ptr, ptr %43, align 8, !tbaa !138  ; 3 uses
  %i.qo = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.qp = load i64, ptr %i.qo, align 8, !tbaa !140 ; 2 uses
  %i.qq = icmp ne ptr %i.qn, null
  %i.qr = icmp ne i64 %i.qp, 0
  %or.cond.i.i.i.i = and i1 %i.qq, %i.qr
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.preheader.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit

.preheader.i.i.preheader.i.i:                     ; preds = %._crit_edge1656
  %i.qs = mul nsw i64 %i.qp, 3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %.preheader.i.i.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.qt, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.qs, %.preheader.i.i.preheader.i.i ]
  %i.qt = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.qu = getelementptr inbounds nuw [16 x i8], ptr %i.qn, i64 %i.qt ; 2 uses
  %i.qv = load ptr, ptr %i.qu, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qv, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %.preheader.i.i.i.i
  %i.qw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.qw, 0
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 3 uses
  %i.qy = load atomic i32, ptr %i.qx monotonic, align 4 ; 2 uses
  %i.qz = icmp eq i32 %i.qy, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %i.qz, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.ra = load ptr, ptr %i.qv, align 8, !tbaa !14
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 8
  %i.rc = load ptr, ptr %i.rb, align 8
  call void %i.rc(ptr noundef nonnull align 8 dereferenceable(12) %i.qv) #22, !inline_history !147
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.dd:                                            ; preds = %bb.db
  %i.rd = add nsw i32 %i.qy, -1
  store atomic i32 %i.rd, ptr %i.qx monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.de:                                            ; preds = %bb.da
  br i1 %i.qz, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.re = atomicrmw sub ptr %i.qx, i32 1 release, align 4
  %i.rf = icmp eq i32 %i.re, 1
  br i1 %i.rf, label %bb.dg, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.df, %bb.de
  fence acquire
  %i.rg = load ptr, ptr %i.qu, align 8, !tbaa !129 ; 3 uses
  %i.rh = icmp eq ptr %i.rg, null
  br i1 %i.rh, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ri = load ptr, ptr %i.rg, align 8, !tbaa !14
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 8
  %i.rk = load ptr, ptr %i.rj, align 8
  call void %i.rk(ptr noundef nonnull align 8 dereferenceable(12) %i.rg) #22, !inline_history !147
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dd, %bb.dc, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.qt, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %._crit_edge1656
  call void @free(ptr noundef %i.qn) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.rl = load ptr, ptr %42, align 8, !tbaa !138  ; 3 uses
  %i.rm = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !140 ; 2 uses
  %i.ro = icmp ne ptr %i.rl, null
  %i.rp = icmp ne i64 %i.rn, 0
  %or.cond.i.i.i.i379 = and i1 %i.ro, %i.rp
  br i1 %or.cond.i.i.i.i379, label %.preheader.i.i.preheader.i.i380, label %.loopexit1490

.preheader.i.i.preheader.i.i380:                  ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi0ELin1ELi3EEEED2Ev.exit
  %i.rq = mul nsw i64 %i.rn, 3
  br label %.preheader.i.i.i.i381

.preheader.i.i.i.i381:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385, %.preheader.i.i.preheader.i.i380
  %.0.i.i.i.i382 = phi i64 [ %i.rr, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385 ], [ %i.rq, %.preheader.i.i.preheader.i.i380 ]
  %i.rr = add i64 %.0.i.i.i.i382, -1              ; 3 uses
  %i.rs = getelementptr inbounds nuw [16 x i8], ptr %i.rl, i64 %i.rr ; 2 uses
  %i.rt = load ptr, ptr %i.rs, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i.i.i.i383 = icmp eq ptr %i.rt, null
  br i1 %.not.i.i.i.i.i.i383, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385, label %bb.di

bb.di:                                            ; preds = %.preheader.i.i.i.i381
  %i.ru = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i384 = icmp eq i8 %i.ru, 0
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rt, i64 8 ; 3 uses
  %i.rw = load atomic i32, ptr %i.rv monotonic, align 4 ; 2 uses
  %i.rx = icmp eq i32 %i.rw, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i384, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  br i1 %i.rx, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ry = load ptr, ptr %i.rt, align 8, !tbaa !14
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load ptr, ptr %i.rz, align 8
  call void %i.sa(ptr noundef nonnull align 8 dereferenceable(12) %i.rt) #22, !inline_history !147
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385

bb.dl:                                            ; preds = %bb.dj
  %i.sb = add nsw i32 %i.rw, -1
  store atomic i32 %i.sb, ptr %i.rv monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385

bb.dm:                                            ; preds = %bb.di
  br i1 %i.rx, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.sc = atomicrmw sub ptr %i.rv, i32 1 release, align 4
  %i.sd = icmp eq i32 %i.sc, 1
  br i1 %i.sd, label %bb.do, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385

bb.do:                                            ; preds = %bb.dn, %bb.dm
  fence acquire
  %i.se = load ptr, ptr %i.rs, align 8, !tbaa !129 ; 3 uses
  %i.sf = icmp eq ptr %i.se, null
  br i1 %i.sf, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.sg = load ptr, ptr %i.se, align 8, !tbaa !14
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.si = load ptr, ptr %i.sh, align 8
  call void %i.si(ptr noundef nonnull align 8 dereferenceable(12) %i.se) #22, !inline_history !147
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i385:              ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dl, %bb.dk, %.preheader.i.i.i.i381
  %.old1.not.i.i.i.i386 = icmp eq i64 %i.rr, 0
  br i1 %.old1.not.i.i.i.i386, label %.loopexit1490, label %.preheader.i.i.i.i381

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, %_ZNSt6vectorImSaImEED2Ev.exit
  %storemerge2061654 = phi i64 [ 0, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph ], [ %i.ahf, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 17 uses
  %i.sj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #35
          to label %bb.dq unwind label %.body778.thread ; 3 uses

bb.dq:                                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %i.sj, i64 %i.cr
  br label %bb.ds

bb.dr:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit405
  %i.sl = ptrtoint ptr %.sroa.14828.1 to i64
  %i.sm = ptrtoint ptr %.sroa.0820.1 to i64       ; 2 uses
  %i.sn = sub i64 %i.sl, %i.sm
  %i.so = ashr exact i64 %i.sn, 3                 ; 3 uses
  %i.sp = icmp eq ptr %.sroa.14828.1, %.sroa.0820.1
  br i1 %i.sp, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.em

.body778.thread:                                  ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.sq = landingpad { ptr, i32 }
          cleanup
  br label %.body743

bb.ds:                                            ; preds = %bb.dq, %_ZNSt6vectorImSaImEE9push_backERKm.exit405
  %storemerge2171648 = phi i64 [ 0, %bb.dq ], [ %i.vz, %_ZNSt6vectorImSaImEE9push_backERKm.exit405 ] ; 10 uses
  %.sroa.21.01647 = phi ptr [ %i.sk, %bb.dq ], [ %.sroa.21.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit405 ] ; 15 uses
  %.sroa.14828.01646 = phi ptr [ %i.sj, %bb.dq ], [ %.sroa.14828.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit405 ] ; 11 uses
  %.sroa.0820.01645 = phi ptr [ %i.sj, %bb.dq ], [ %.sroa.0820.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit405 ] ; 16 uses
  %i.sr = icmp eq i64 %storemerge2061654, %storemerge2171648
  br i1 %i.sr, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.ss = load ptr, ptr %43, align 8, !tbaa !138  ; 3 uses
  %i.st = getelementptr [16 x i8], ptr %i.ss, i64 %storemerge2061654
  %i.su = load ptr, ptr %42, align 8, !tbaa !138  ; 3 uses
  %i.sv = getelementptr [16 x i8], ptr %i.su, i64 %storemerge2171648 ; 2 uses
  %i.sw = load ptr, ptr %i.st, align 8, !tbaa !129 ; 6 uses
  %i.sx = load ptr, ptr %i.sv, align 8, !tbaa !129 ; 3 uses
  %i.sy = icmp eq ptr %i.sw, %i.sx
  br i1 %i.sy, label %.noexc390.thread, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sx, i64 16
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sw, i64 24
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !33
  %60 = load double, ptr %i.sz, align 16, !tbaa !33
  %i.tc = fneg double %60
  %i.td = fcmp olt double %i.tb, %i.tc
  br i1 %i.td, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.te = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %61 = load double, ptr %i.te, align 16, !tbaa !33
  %62 = fneg double %61
  %63 = getelementptr inbounds nuw i8, ptr %i.sx, i64 24
  %64 = load double, ptr %63, align 8, !tbaa !33
  %i.tf = fcmp ugt double %64, %62
  %i.tg = select i1 %i.tf, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764: ; preds = %bb.dv, %bb.du
  %.sroa.0.0.insert.insert.i.i765 = phi i16 [ 257, %bb.du ], [ %i.tg, %bb.dv ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i766 = trunc i16 %.sroa.0.0.insert.insert.i.i765 to i8
  %.sroa.2.0.extract.shift.i.i767 = lshr i16 %.sroa.0.0.insert.insert.i.i765, 8
  %.sroa.2.0.extract.trunc.i.i768 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i767 to i8
  %i.th = icmp eq i8 %.sroa.0.0.extract.trunc.i.i766, %.sroa.2.0.extract.trunc.i.i768
  br i1 %i.th, label %.noexc390, label %bb.dw

bb.dw:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sw, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.sw, ptr %11, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %11, ptr %10, align 8, !tbaa !112
  store ptr %10, ptr %i.jt, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ju, align 8, !tbaa !112
  %i.tj = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ti, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771 unwind label %.loopexit1498 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771:       ; preds = %bb.dw
  %.not.i.i.i.i772 = icmp eq i32 %i.tj, 0
  br i1 %.not.i.i.i.i772, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773, label %bb.dx

bb.dx:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.tj) #33
          to label %bb.dy unwind label %.loopexit.split-lp1499

bb.dy:                                            ; preds = %bb.dx
  unreachable

.loopexit1498:                                    ; preds = %bb.dw
  %lpad.loopexit1500 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp1499:                           ; preds = %bb.dx
  %lpad.loopexit.split-lp1501 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit.split-lp1499, %.loopexit1498
  %lpad.phi1502 = phi { ptr, i32 } [ %lpad.loopexit1500, %.loopexit1498 ], [ %lpad.loopexit.split-lp1501, %.loopexit.split-lp1499 ]
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  store ptr null, ptr %i.ju, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body778

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i771
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  store ptr null, ptr %i.ju, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sw, i64 32
  %i.tl = load atomic ptr, ptr %i.tk monotonic, align 8
  %i.tm = load ptr, ptr %i.sv, align 8, !tbaa !129 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.tm, ptr %9, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !112
  store ptr %8, ptr %i.jt, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.ju, align 8, !tbaa !112
  %i.to = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.tn, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774 unwind label %.loopexit1503 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773
  %.not.i.i.i11.i775 = icmp eq i32 %i.to, 0
  br i1 %.not.i.i.i11.i775, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776, label %bb.ea

bb.ea:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.to) #33
          to label %bb.eb unwind label %.loopexit.split-lp1504

bb.eb:                                            ; preds = %bb.ea
  unreachable

.loopexit1503:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i773
  %lpad.loopexit1505 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp1504:                           ; preds = %bb.ea
  %lpad.loopexit.split-lp1506 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit.split-lp1504, %.loopexit1503
  %lpad.phi1507 = phi { ptr, i32 } [ %lpad.loopexit1505, %.loopexit1503 ], [ %lpad.loopexit.split-lp1506, %.loopexit.split-lp1504 ]
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  store ptr null, ptr %i.ju, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body778

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i774
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  store ptr null, ptr %i.ju, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tm, i64 32
  %i.tq = load atomic ptr, ptr %i.tp monotonic, align 8
  %i.tr = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.tl, ptr noundef nonnull align 16 dereferenceable(64) %i.tq)
          to label %.noexc780 unwind label %.loopexit1508

.noexc780:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i776
  %i.ts = icmp slt i32 %i.tr, 0
  br i1 %i.ts, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %.noexc780..noexc390.thread_crit_edge

.noexc780..noexc390.thread_crit_edge:             ; preds = %.noexc780
  %.pre = load ptr, ptr %43, align 8, !tbaa !138
  %.pre1752 = load ptr, ptr %42, align 8, !tbaa !138
  br label %.noexc390.thread

.noexc390:                                        ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i764
  %i.tt = trunc i16 %.sroa.0.0.insert.insert.i.i765 to i1
  br i1 %i.tt, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %.noexc390.thread

.noexc390.thread:                                 ; preds = %.noexc780..noexc390.thread_crit_edge, %bb.dt, %.noexc390
  %i.tu = phi ptr [ %.pre1752, %.noexc780..noexc390.thread_crit_edge ], [ %i.su, %bb.dt ], [ %i.su, %.noexc390 ]
  %i.tv = phi ptr [ %.pre, %.noexc780..noexc390.thread_crit_edge ], [ %i.ss, %bb.dt ], [ %i.ss, %.noexc390 ]
  %i.tw = load i64, ptr %i.jv, align 8, !tbaa !140
  %i.tx = getelementptr [16 x i8], ptr %i.tv, i64 %storemerge2061654
  %i.ty = getelementptr [16 x i8], ptr %i.tx, i64 %i.tw
  %i.tz = load i64, ptr %i.jw, align 8, !tbaa !140
  %i.ua = getelementptr [16 x i8], ptr %i.tu, i64 %storemerge2171648
  %i.ub = getelementptr [16 x i8], ptr %i.ua, i64 %i.tz
  %i.uc = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ty, ptr noundef nonnull align 8 dereferenceable(9) %i.ub)
          to label %.noexc391 unwind label %.loopexit1508

.noexc391:                                        ; preds = %.noexc390.thread
  br i1 %i.uc, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.ed

bb.ed:                                            ; preds = %.noexc391
  %i.ud = load ptr, ptr %43, align 8, !tbaa !138
  %i.ue = load i64, ptr %i.jv, align 8, !tbaa !140
  %i.uf = getelementptr [16 x i8], ptr %i.ud, i64 %storemerge2061654
  %.idx.i = shl i64 %i.ue, 5
  %i.ug = getelementptr i8, ptr %i.uf, i64 %.idx.i
  %i.uh = load ptr, ptr %42, align 8, !tbaa !138
  %i.ui = load i64, ptr %i.jw, align 8, !tbaa !140
  %i.uj = getelementptr [16 x i8], ptr %i.uh, i64 %storemerge2171648
  %.idx12.i = shl i64 %i.ui, 5
  %i.uk = getelementptr i8, ptr %i.uj, i64 %.idx12.i
  %i.ul = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ug, ptr noundef nonnull align 8 dereferenceable(9) %i.uk)
          to label %.noexc392 unwind label %.loopexit1508

.noexc392:                                        ; preds = %bb.ed
  br i1 %i.ul, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.ee

bb.ee:                                            ; preds = %.noexc392
  %i.um = load ptr, ptr %43, align 8, !tbaa !138
  %i.un = getelementptr [16 x i8], ptr %i.um, i64 %storemerge2171648
  %i.uo = load ptr, ptr %42, align 8, !tbaa !138
  %i.up = getelementptr [16 x i8], ptr %i.uo, i64 %storemerge2061654
  %i.uq = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.un, ptr noundef nonnull align 8 dereferenceable(9) %i.up)
          to label %.noexc393 unwind label %.loopexit1508

.noexc393:                                        ; preds = %bb.ee
  br i1 %i.uq, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.ef

bb.ef:                                            ; preds = %.noexc393
  %i.ur = load ptr, ptr %43, align 8, !tbaa !138
  %i.us = load i64, ptr %i.jv, align 8, !tbaa !140
  %i.ut = getelementptr [16 x i8], ptr %i.ur, i64 %storemerge2171648
  %i.uu = getelementptr [16 x i8], ptr %i.ut, i64 %i.us
  %i.uv = load ptr, ptr %42, align 8, !tbaa !138
  %i.uw = load i64, ptr %i.jw, align 8, !tbaa !140
  %i.ux = getelementptr [16 x i8], ptr %i.uv, i64 %storemerge2061654
  %i.uy = getelementptr [16 x i8], ptr %i.ux, i64 %i.uw
  %i.uz = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.uu, ptr noundef nonnull align 8 dereferenceable(9) %i.uy)
          to label %.noexc394 unwind label %.loopexit1508

.noexc394:                                        ; preds = %bb.ef
  br i1 %i.uz, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.eg

bb.eg:                                            ; preds = %.noexc394
  %i.va = load ptr, ptr %43, align 8, !tbaa !138
  %i.vb = load i64, ptr %i.jv, align 8, !tbaa !140
  %i.vc = getelementptr [16 x i8], ptr %i.va, i64 %storemerge2171648
  %.idx13.i = shl i64 %i.vb, 5
  %i.vd = getelementptr i8, ptr %i.vc, i64 %.idx13.i
  %i.ve = load ptr, ptr %42, align 8, !tbaa !138
  %i.vf = load i64, ptr %i.jw, align 8, !tbaa !140
  %i.vg = getelementptr [16 x i8], ptr %i.ve, i64 %storemerge2061654
  %.idx14.i = shl i64 %i.vf, 5
  %i.vh = getelementptr i8, ptr %i.vg, i64 %.idx14.i
  %i.vi = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.vd, ptr noundef nonnull align 8 dereferenceable(9) %i.vh)
          to label %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit unwind label %.loopexit1508

_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit: ; preds = %bb.eg
  br i1 %i.vi, label %_ZNSt6vectorImSaImEE9push_backERKm.exit405, label %bb.eh

bb.eh:                                            ; preds = %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit
  %.not.i396 = icmp eq ptr %.sroa.14828.01646, %.sroa.21.01647
  br i1 %.not.i396, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i64 %storemerge2171648, ptr %.sroa.14828.01646, align 8, !tbaa !42
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
  br i1 %.not1668, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %.lr.ph1645

.lr.ph1645:                                       ; preds = %_ZN4CGAL6HandleD2Ev.exit366
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
  br label %bb.jt

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

.thread2007:                                      ; preds = %.lr.ph.preheader.i.i.i.i.i299
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

bb.bo:                                            ; preds = %.lr.ph1645, %bb.bp
  %.01481644 = phi i64 [ 0, %.lr.ph1645 ], [ %i.ku, %bb.bp ] ; 3 uses
  %i.ko = load ptr, ptr %30, align 8, !tbaa !17
  %i.kp = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %.01481644
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !23
  %i.kr = load ptr, ptr %1, align 8, !tbaa !16, !noalias !217
  %i.ks = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %.01481644 ; 2 uses
  %i.kt = sext i32 %i.kq to i64
  %.idx.i.i.i = mul nsw i64 %i.kt, 48             ; 4 uses
  br label %.preheader1515

.preheader1515:                                   ; preds = %bb.bo, %bb.bq
  %.01471643 = phi i64 [ 0, %bb.bo ], [ %i.kv, %bb.bq ] ; 3 uses
  br label %bb.br

bb.bp:                                            ; preds = %bb.bq
  %i.ku = add nuw i64 %.01481644, 1               ; 2 uses
  %exitcond1740.not = icmp eq i64 %i.ku, %i.n
  br i1 %exitcond1740.not, label %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, label %bb.bo, !llvm.loop !220

bb.bq:                                            ; preds = %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381
  %i.kv = add nuw nsw i64 %.01471643, 1           ; 2 uses
  %exitcond1739.not = icmp eq i64 %i.kv, 3
  br i1 %exitcond1739.not, label %bb.bp, label %.preheader1515, !llvm.loop !221

bb.br:                                            ; preds = %.preheader1515, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381
  %.01461642 = phi i64 [ 0, %.preheader1515 ], [ %i.qa, %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381 ] ; 7 uses
  %i.kw = load ptr, ptr %42, align 8, !tbaa !222
  %i.kx = getelementptr i8, ptr %i.kw, i64 %.idx.i.i.i
  %i.ky = getelementptr [16 x i8], ptr %i.kx, i64 %.01461642 ; 5 uses
  %i.kz = load i64, ptr %i.m, align 8, !tbaa !9
  %i.la = mul nsw i64 %i.kz, %.01471643
  %i.lb = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.la
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !23
  %i.ld = sext i32 %i.lc to i64
  %i.le = load ptr, ptr %0, align 8, !tbaa !224
  %i.lf = load i64, ptr %i.jo, align 8, !tbaa !225
  %i.lg = mul nsw i64 %i.lf, %i.ld
  %i.lh = getelementptr [16 x i8], ptr %i.le, i64 %i.lg
  %i.li = getelementptr [16 x i8], ptr %i.lh, i64 %.01461642 ; 2 uses
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
  %.fr = freeze i1 %i.ls
  %i.lt = select i1 %.fr, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i:   ; preds = %bb.bt, %bb.bs
  %.sroa.0.0.insert.insert.i.i = phi i16 [ 257, %bb.bs ], [ %i.lt, %bb.bt ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i = trunc i16 %.sroa.0.0.insert.insert.i.i to i8
  %.sroa.2.0.extract.shift.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i, 8
  %.sroa.2.0.extract.trunc.i.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i to i8
  %i.lu = icmp eq i8 %.sroa.0.0.extract.trunc.i.i, %.sroa.2.0.extract.trunc.i.i
  br i1 %i.lu, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.bu

bb.bu:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  store ptr %i.lj, ptr %19, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  store ptr %19, ptr %18, align 8, !tbaa !112
  store ptr %18, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.lw = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.lv, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i unwind label %.loopexit1516 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i:          ; preds = %bb.bu
  %.not.i.i.i.i745 = icmp eq i32 %i.lw, 0
  br i1 %.not.i.i.i.i745, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i, label %bb.bv

bb.bv:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.lw) #33
          to label %bb.bw unwind label %.loopexit.split-lp1517

bb.bw:                                            ; preds = %bb.bv
  unreachable

.loopexit1516:                                    ; preds = %bb.bu
  %lpad.loopexit1518 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

.loopexit.split-lp1517:                           ; preds = %bb.bv
  %lpad.loopexit.split-lp1519 = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bx:                                            ; preds = %.loopexit.split-lp1517, %.loopexit1516
  %lpad.phi1520 = phi { ptr, i32 } [ %lpad.loopexit1518, %.loopexit1516 ], [ %lpad.loopexit.split-lp1519, %.loopexit.split-lp1517 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lj, i64 32
  %i.ly = load atomic ptr, ptr %i.lx monotonic, align 8
  %i.lz = load ptr, ptr %i.ky, align 8, !tbaa !129 ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  store ptr %i.lz, ptr %17, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store ptr %17, ptr %16, align 8, !tbaa !112
  store ptr %16, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.mb = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ma, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i unwind label %.loopexit1521 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i:        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %.not.i.i.i11.i = icmp eq i32 %i.mb, 0
  br i1 %.not.i.i.i11.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i, label %bb.by

bb.by:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.mb) #33
          to label %bb.bz unwind label %.loopexit.split-lp1522

bb.bz:                                            ; preds = %bb.by
  unreachable

.loopexit1521:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i
  %lpad.loopexit1523 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

.loopexit.split-lp1522:                           ; preds = %bb.by
  %lpad.loopexit.split-lp1524 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.ca:                                            ; preds = %.loopexit.split-lp1522, %.loopexit1521
  %lpad.phi1525 = phi { ptr, i32 } [ %lpad.loopexit1523, %.loopexit1521 ], [ %lpad.loopexit.split-lp1524, %.loopexit.split-lp1522 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lz, i64 32
  %i.md = load atomic ptr, ptr %i.mc monotonic, align 8
  %i.me = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ly, ptr noundef nonnull align 16 dereferenceable(64) %i.md)
          to label %.noexc748 unwind label %bb.cz

.noexc748:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.mf = icmp slt i32 %i.me, 0
  br i1 %i.mf, label %bb.cb, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i
  %i.mg = trunc i16 %.sroa.0.0.insert.insert.i.i to i1
  br i1 %i.mg, label %bb.cb, label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

bb.cb:                                            ; preds = %.noexc748, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit
  br label %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread: ; preds = %bb.br, %.noexc748, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, %bb.cb
  %i.mh = phi ptr [ %i.li, %bb.cb ], [ %i.ky, %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit ], [ %i.ky, %.noexc748 ], [ %i.ky, %bb.br ] ; 2 uses
  %i.mi = load ptr, ptr %42, align 8, !tbaa !222
  %i.mj = getelementptr i8, ptr %i.mi, i64 %.idx.i.i.i
  %i.mk = getelementptr [16 x i8], ptr %i.mj, i64 %.01461642 ; 4 uses
  %i.ml = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i369 = icmp eq i8 %i.ml, 0
  %i.mm = load ptr, ptr %i.mh, align 8, !tbaa !129
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i369, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i

_ZNK4CGAL6Handle6increfEv.exit.i.i.i:             ; preds = %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.mo = atomicrmw add ptr %i.mn, i32 1 monotonic, align 4 ; 0 uses
  %i.mp = load ptr, ptr %i.mk, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i370 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i370, label %bb.ci, label %bb.ce

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i:      ; preds = %_ZSt3minIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.mq = load atomic i32, ptr %i.mn monotonic, align 4
  %i.mr = add nsw i32 %i.mq, 1
  store atomic i32 %i.mr, ptr %i.mn monotonic, align 4
  %i.ms = load ptr, ptr %i.mk, align 8, !tbaa !129 ; 4 uses
  %.not4.i.i.i = icmp eq ptr %i.ms, null
  br i1 %.not4.i.i.i, label %bb.ci, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 8 ; 2 uses
  %i.mu = load atomic i32, ptr %i.mt monotonic, align 4 ; 2 uses
  %i.mv = icmp eq i32 %i.mu, 1
  br i1 %i.mv, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %.thread.i.i.i
  %i.mw = load ptr, ptr %i.ms, align 8, !tbaa !14
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %i.my = load ptr, ptr %i.mx, align 8
  call void %i.my(ptr noundef nonnull align 8 dereferenceable(12) %i.ms) #22, !inline_history !145
  br label %bb.ci

bb.cd:                                            ; preds = %.thread.i.i.i
  %i.mz = add nsw i32 %i.mu, -1
  store atomic i32 %i.mz, ptr %i.mt monotonic, align 4
  br label %bb.ci

bb.ce:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.na = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 2 uses
  %i.nb = load atomic i32, ptr %i.na monotonic, align 4
  %i.nc = icmp eq i32 %i.nb, 1
  br i1 %i.nc, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.nd = atomicrmw sub ptr %i.na, i32 1 release, align 4
  %i.ne = icmp eq i32 %i.nd, 1
  br i1 %i.ne, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  fence acquire
  %i.nf = load ptr, ptr %i.mk, align 8, !tbaa !129 ; 3 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nh = load ptr, ptr %i.nf, align 8, !tbaa !14
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 8
  %i.nj = load ptr, ptr %i.ni, align 8
  call void %i.nj(ptr noundef nonnull align 8 dereferenceable(12) %i.nf) #22, !inline_history !145
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cd, %bb.cc, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i, %_ZNK4CGAL6Handle6increfEv.exit.i.i.i
  %i.nk = load ptr, ptr %i.mh, align 8, !tbaa !129
  store ptr %i.nk, ptr %i.mk, align 8, !tbaa !129
  %i.nl = load ptr, ptr %43, align 8, !tbaa !222
  %i.nm = getelementptr i8, ptr %i.nl, i64 %.idx.i.i.i
  %i.nn = getelementptr [16 x i8], ptr %i.nm, i64 %.01461642 ; 4 uses
  %i.no = load i64, ptr %i.m, align 8, !tbaa !9
  %i.np = mul nsw i64 %i.no, %.01471643
  %i.nq = getelementptr inbounds [4 x i8], ptr %i.ks, i64 %i.np
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !23
  %i.ns = sext i32 %i.nr to i64
  %i.nt = load ptr, ptr %0, align 8, !tbaa !224
  %i.nu = load i64, ptr %i.jo, align 8, !tbaa !225
  %i.nv = mul nsw i64 %i.nu, %i.ns
  %i.nw = getelementptr [16 x i8], ptr %i.nt, i64 %i.nv
  %i.nx = getelementptr [16 x i8], ptr %i.nw, i64 %.01461642 ; 3 uses
  %i.ny = load ptr, ptr %i.nn, align 8, !tbaa !129 ; 6 uses
  %i.nz = load ptr, ptr %i.nx, align 8, !tbaa !129 ; 3 uses
  %i.oa = icmp eq ptr %i.ny, %i.nz
  br i1 %i.oa, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nz, i64 16
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 24
  %i.od = load double, ptr %i.oc, align 8, !tbaa !33
  %55 = load double, ptr %i.ob, align 16, !tbaa !33
  %i.oe = fneg double %55
  %i.of = fcmp olt double %i.od, %i.oe
  br i1 %i.of, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.og = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %56 = load double, ptr %i.og, align 16, !tbaa !33
  %57 = fneg double %56
  %58 = getelementptr inbounds nuw i8, ptr %i.nz, i64 24
  %59 = load double, ptr %58, align 8, !tbaa !33
  %i.oh = fcmp ugt double %59, %57
  %.fr1488 = freeze i1 %i.oh
  %i.oi = select i1 %.fr1488, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749: ; preds = %bb.ck, %bb.cj
  %.sroa.0.0.insert.insert.i.i750 = phi i16 [ 257, %bb.cj ], [ %i.oi, %bb.ck ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i751 = trunc i16 %.sroa.0.0.insert.insert.i.i750 to i8
  %.sroa.2.0.extract.shift.i.i752 = lshr i16 %.sroa.0.0.insert.insert.i.i750, 8
  %.sroa.2.0.extract.trunc.i.i753 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i752 to i8
  %i.oj = icmp eq i8 %.sroa.0.0.extract.trunc.i.i751, %.sroa.2.0.extract.trunc.i.i753
  br i1 %i.oj, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, label %bb.cl

bb.cl:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749
  %i.ok = getelementptr inbounds nuw i8, ptr %i.ny, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store ptr %i.ny, ptr %15, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  store ptr %15, ptr %14, align 8, !tbaa !112
  store ptr %14, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.ol = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.ok, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i756 unwind label %.loopexit1526 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i756:       ; preds = %bb.cl
  %.not.i.i.i.i757 = icmp eq i32 %i.ol, 0
  br i1 %.not.i.i.i.i757, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i758, label %bb.cm

bb.cm:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i756
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ol) #33
          to label %bb.cn unwind label %.loopexit.split-lp1527

bb.cn:                                            ; preds = %bb.cm
  unreachable

.loopexit1526:                                    ; preds = %bb.cl
  %lpad.loopexit1528 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

.loopexit.split-lp1527:                           ; preds = %bb.cm
  %lpad.loopexit.split-lp1529 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.co:                                            ; preds = %.loopexit.split-lp1527, %.loopexit1526
  %lpad.phi1530 = phi { ptr, i32 } [ %lpad.loopexit1528, %.loopexit1526 ], [ %lpad.loopexit.split-lp1529, %.loopexit.split-lp1527 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i758: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i756
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.om = getelementptr inbounds nuw i8, ptr %i.ny, i64 32
  %i.on = load atomic ptr, ptr %i.om monotonic, align 8
  %i.oo = load ptr, ptr %i.nx, align 8, !tbaa !129 ; 3 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  store ptr %i.oo, ptr %13, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  store ptr %13, ptr %12, align 8, !tbaa !112
  store ptr %12, ptr %i.jp, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jq, align 8, !tbaa !112
  %i.oq = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.op, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i759 unwind label %.loopexit1531 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i759:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i758
  %.not.i.i.i11.i760 = icmp eq i32 %i.oq, 0
  br i1 %.not.i.i.i11.i760, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i761, label %bb.cp

bb.cp:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i759
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.oq) #33
          to label %bb.cq unwind label %.loopexit.split-lp1532

bb.cq:                                            ; preds = %bb.cp
  unreachable

.loopexit1531:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i758
  %lpad.loopexit1533 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp1532:                           ; preds = %bb.cp
  %lpad.loopexit.split-lp1534 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit.split-lp1532, %.loopexit1531
  %lpad.phi1535 = phi { ptr, i32 } [ %lpad.loopexit1533, %.loopexit1531 ], [ %lpad.loopexit.split-lp1534, %.loopexit.split-lp1532 ]
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.body746

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i761: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i759
  store ptr null, ptr %i.jp, align 8, !tbaa !112
  store ptr null, ptr %i.jq, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.or = getelementptr inbounds nuw i8, ptr %i.oo, i64 32
  %i.os = load atomic ptr, ptr %i.or monotonic, align 8
  %i.ot = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.on, ptr noundef nonnull align 16 dereferenceable(64) %i.os)
          to label %.noexc765 unwind label %bb.cz

.noexc765:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i761
  %i.ou = icmp slt i32 %i.ot, 0
  br i1 %i.ou, label %bb.cs, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit: ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i749
  %i.ov = trunc i16 %.sroa.0.0.insert.insert.i.i750 to i1
  br i1 %i.ov, label %bb.cs, label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

bb.cs:                                            ; preds = %.noexc765, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit
  br label %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread

_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread: ; preds = %bb.ci, %.noexc765, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit, %bb.cs
  %i.ow = phi ptr [ %i.nx, %bb.cs ], [ %i.nn, %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit ], [ %i.nn, %.noexc765 ], [ %i.nn, %bb.ci ] ; 2 uses
  %i.ox = load ptr, ptr %43, align 8, !tbaa !222
  %i.oy = getelementptr i8, ptr %i.ox, i64 %.idx.i.i.i
  %i.oz = getelementptr [16 x i8], ptr %i.oy, i64 %.01461642 ; 4 uses
  %i.pa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i375 = icmp eq i8 %i.pa, 0
  %i.pb = load ptr, ptr %i.ow, align 8, !tbaa !129
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 8 ; 3 uses
  br i1 %.not.i.i.i.i375, label %_ZNK4CGAL6Handle6increfEv.exit.i.i.i379, label %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i376

_ZNK4CGAL6Handle6increfEv.exit.i.i.i379:          ; preds = %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.pd = atomicrmw add ptr %i.pc, i32 1 monotonic, align 4 ; 0 uses
  %i.pe = load ptr, ptr %i.oz, align 8, !tbaa !129 ; 2 uses
  %.not.i.i.i380 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i.i380, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381, label %bb.cv

_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i376:   ; preds = %_ZSt3maxIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS3_8backends16rational_adaptorINS5_15cpp_int_backendILm0ELm0ELNS3_16cpp_integer_typeE1ELNS3_18cpp_int_check_typeE0ESaIyEEEEELNS3_26expression_template_optionE1EEEEEERKT_SI_SI_.exit.thread
  %i.pf = load atomic i32, ptr %i.pc monotonic, align 4
  %i.pg = add nsw i32 %i.pf, 1
  store atomic i32 %i.pg, ptr %i.pc monotonic, align 4
  %i.ph = load ptr, ptr %i.oz, align 8, !tbaa !129 ; 4 uses
  %.not4.i.i.i377 = icmp eq ptr %i.ph, null
  br i1 %.not4.i.i.i377, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381, label %.thread.i.i.i378

.thread.i.i.i378:                                 ; preds = %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i376
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 8 ; 2 uses
  %i.pj = load atomic i32, ptr %i.pi monotonic, align 4 ; 2 uses
  %i.pk = icmp eq i32 %i.pj, 1
  br i1 %i.pk, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %.thread.i.i.i378
  %i.pl = load ptr, ptr %i.ph, align 8, !tbaa !14
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pn = load ptr, ptr %i.pm, align 8
  call void %i.pn(ptr noundef nonnull align 8 dereferenceable(12) %i.ph) #22, !inline_history !145
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381

bb.cu:                                            ; preds = %.thread.i.i.i378
  %i.po = add nsw i32 %i.pj, -1
  store atomic i32 %i.po, ptr %i.pi monotonic, align 4
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381

bb.cv:                                            ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i379
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pe, i64 8 ; 2 uses
  %i.pq = load atomic i32, ptr %i.pp monotonic, align 4
  %i.pr = icmp eq i32 %i.pq, 1
  br i1 %i.pr, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ps = atomicrmw sub ptr %i.pp, i32 1 release, align 4
  %i.pt = icmp eq i32 %i.ps, 1
  br i1 %i.pt, label %bb.cx, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  fence acquire
  %i.pu = load ptr, ptr %i.oz, align 8, !tbaa !129 ; 3 uses
  %i.pv = icmp eq ptr %i.pu, null
  br i1 %i.pv, label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.pw = load ptr, ptr %i.pu, align 8, !tbaa !14
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 8
  %i.py = load ptr, ptr %i.px, align 8
  call void %i.py(ptr noundef nonnull align 8 dereferenceable(12) %i.pu) #22, !inline_history !145
  br label %_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381

_ZN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEEEaSERKSE_.exit381: ; preds = %_ZNK4CGAL6Handle6increfEv.exit.i.i.i379, %_ZNK4CGAL6Handle6increfEv.exit.thread.i.i.i376, %bb.ct, %bb.cu, %bb.cw, %bb.cx, %bb.cy
  %i.pz = load ptr, ptr %i.ow, align 8, !tbaa !129
  store ptr %i.pz, ptr %i.oz, align 8, !tbaa !129
  %i.qa = add nuw nsw i64 %.01461642, 1           ; 2 uses
  %exitcond1738.not = icmp eq i64 %i.qa, 3
  br i1 %exitcond1738.not, label %bb.bq, label %bb.br, !llvm.loop !226

bb.cz:                                            ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i761, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i
  %i.qb = landingpad { ptr, i32 }
          cleanup
  br label %.body746

._crit_edge1657:                                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.qc = load ptr, ptr %43, align 8, !tbaa !222  ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !227 ; 2 uses
  %i.qf = icmp ne ptr %i.qc, null
  %i.qg = icmp ne i64 %i.qe, 0
  %or.cond.i.i.i.i = and i1 %i.qf, %i.qg
  br i1 %or.cond.i.i.i.i, label %.preheader.i.i.preheader.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit

.preheader.i.i.preheader.i.i:                     ; preds = %._crit_edge1657
  %i.qh = mul nsw i64 %i.qe, 3
  br label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %.preheader.i.i.preheader.i.i
  %.0.i.i.i.i = phi i64 [ %i.qi, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i ], [ %i.qh, %.preheader.i.i.preheader.i.i ]
  %i.qi = add i64 %.0.i.i.i.i, -1                 ; 3 uses
  %i.qj = getelementptr inbounds nuw [16 x i8], ptr %i.qc, i64 %i.qi ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.qk, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.da

bb.da:                                            ; preds = %.preheader.i.i.i.i
  %i.ql = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.ql, 0
  %i.qm = getelementptr inbounds nuw i8, ptr %i.qk, i64 8 ; 3 uses
  %i.qn = load atomic i32, ptr %i.qm monotonic, align 4 ; 2 uses
  %i.qo = icmp eq i32 %i.qn, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i, label %bb.de, label %bb.db

bb.db:                                            ; preds = %bb.da
  br i1 %i.qo, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  %i.qp = load ptr, ptr %i.qk, align 8, !tbaa !14
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(12) %i.qk) #22, !inline_history !228
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.dd:                                            ; preds = %bb.db
  %i.qs = add nsw i32 %i.qn, -1
  store atomic i32 %i.qs, ptr %i.qm monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.de:                                            ; preds = %bb.da
  br i1 %i.qo, label %bb.dg, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.qt = atomicrmw sub ptr %i.qm, i32 1 release, align 4
  %i.qu = icmp eq i32 %i.qt, 1
  br i1 %i.qu, label %bb.dg, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

bb.dg:                                            ; preds = %bb.df, %bb.de
  fence acquire
  %i.qv = load ptr, ptr %i.qj, align 8, !tbaa !129 ; 3 uses
  %i.qw = icmp eq ptr %i.qv, null
  br i1 %i.qw, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.qx = load ptr, ptr %i.qv, align 8, !tbaa !14
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 8
  %i.qz = load ptr, ptr %i.qy, align 8
  call void %i.qz(ptr noundef nonnull align 8 dereferenceable(12) %i.qv) #22, !inline_history !228
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i:                 ; preds = %bb.dh, %bb.dg, %bb.df, %bb.dd, %bb.dc, %.preheader.i.i.i.i
  %.old1.not.i.i.i.i = icmp eq i64 %i.qi, 0
  br i1 %.old1.not.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit, label %.preheader.i.i.i.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit: ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i, %._crit_edge1657
  call void @free(ptr noundef %i.qc) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #22
  %i.ra = load ptr, ptr %42, align 8, !tbaa !222  ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !227 ; 2 uses
  %i.rd = icmp ne ptr %i.ra, null
  %i.re = icmp ne i64 %i.rc, 0
  %or.cond.i.i.i.i382 = and i1 %i.rd, %i.re
  br i1 %or.cond.i.i.i.i382, label %.preheader.i.i.preheader.i.i383, label %.loopexit1491

.preheader.i.i.preheader.i.i383:                  ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS5_8backends16rational_adaptorINS7_15cpp_int_backendILm0ELm0ELNS5_16cpp_integer_typeE1ELNS5_18cpp_int_check_typeE0ESaIyEEEEELNS5_26expression_template_optionE1EEEEELin1ELi3ELi1ELin1ELi3EEEED2Ev.exit
  %i.rf = mul nsw i64 %i.rc, 3
  br label %.preheader.i.i.i.i384

.preheader.i.i.i.i384:                            ; preds = %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388, %.preheader.i.i.preheader.i.i383
  %.0.i.i.i.i385 = phi i64 [ %i.rg, %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388 ], [ %i.rf, %.preheader.i.i.preheader.i.i383 ]
  %i.rg = add i64 %.0.i.i.i.i385, -1              ; 3 uses
  %i.rh = getelementptr inbounds nuw [16 x i8], ptr %i.ra, i64 %i.rg ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !129 ; 4 uses
  %.not.i.i.i.i.i.i386 = icmp eq ptr %i.ri, null
  br i1 %.not.i.i.i.i.i.i386, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388, label %bb.di

bb.di:                                            ; preds = %.preheader.i.i.i.i384
  %i.rj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !33
  %.not.i.i.i.i.i.i.i387 = icmp eq i8 %i.rj, 0
  %i.rk = getelementptr inbounds nuw i8, ptr %i.ri, i64 8 ; 3 uses
  %i.rl = load atomic i32, ptr %i.rk monotonic, align 4 ; 2 uses
  %i.rm = icmp eq i32 %i.rl, 1                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i387, label %bb.dm, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  br i1 %i.rm, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.rn = load ptr, ptr %i.ri, align 8, !tbaa !14
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(12) %i.ri) #22, !inline_history !228
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388

bb.dl:                                            ; preds = %bb.dj
  %i.rq = add nsw i32 %i.rl, -1
  store atomic i32 %i.rq, ptr %i.rk monotonic, align 4
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388

bb.dm:                                            ; preds = %bb.di
  br i1 %i.rm, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.rr = atomicrmw sub ptr %i.rk, i32 1 release, align 4
  %i.rs = icmp eq i32 %i.rr, 1
  br i1 %i.rs, label %bb.do, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388

bb.do:                                            ; preds = %bb.dn, %bb.dm
  fence acquire
  %i.rt = load ptr, ptr %i.rh, align 8, !tbaa !129 ; 3 uses
  %i.ru = icmp eq ptr %i.rt, null
  br i1 %i.ru, label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.rv = load ptr, ptr %i.rt, align 8, !tbaa !14
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(12) %i.rt) #22, !inline_history !228
  br label %_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388

_ZN4CGAL6HandleD2Ev.exit.i.i.i.i388:              ; preds = %bb.dp, %bb.do, %bb.dn, %bb.dl, %bb.dk, %.preheader.i.i.i.i384
  %.old1.not.i.i.i.i389 = icmp eq i64 %i.rg, 0
  br i1 %.old1.not.i.i.i.i389, label %.loopexit1491, label %.preheader.i.i.i.i384

_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i: ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph, %_ZNSt6vectorImSaImEED2Ev.exit
  %storemerge2061655 = phi i64 [ 0, %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i.lr.ph ], [ %i.ago, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 12 uses
  %i.ry = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jr) #35
          to label %bb.dq unwind label %.body781.thread ; 3 uses

bb.dq:                                            ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.rz = getelementptr inbounds nuw [8 x i8], ptr %i.ry, i64 %i.cr
  %.idx.i.i.i.i = mul nuw i64 %storemerge2061655, 48 ; 6 uses
  br label %bb.ds

bb.dr:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit408
  %i.sa = ptrtoint ptr %.sroa.14831.1 to i64
  %i.sb = ptrtoint ptr %.sroa.0823.1 to i64       ; 2 uses
  %i.sc = sub i64 %i.sa, %i.sb
  %i.sd = ashr exact i64 %i.sc, 3                 ; 3 uses
  %i.se = icmp eq ptr %.sroa.14831.1, %.sroa.0823.1
  br i1 %i.se, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.em

.body781.thread:                                  ; preds = %_ZNSt12_Vector_baseImSaImEE11_M_allocateEm.exit.i
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %.body746

bb.ds:                                            ; preds = %bb.dq, %_ZNSt6vectorImSaImEE9push_backERKm.exit408
  %storemerge2171649 = phi i64 [ 0, %bb.dq ], [ %i.vg, %_ZNSt6vectorImSaImEE9push_backERKm.exit408 ] ; 5 uses
  %.sroa.21.01648 = phi ptr [ %i.rz, %bb.dq ], [ %.sroa.21.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit408 ] ; 15 uses
  %.sroa.14831.01647 = phi ptr [ %i.ry, %bb.dq ], [ %.sroa.14831.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit408 ] ; 11 uses
  %.sroa.0823.01646 = phi ptr [ %i.ry, %bb.dq ], [ %.sroa.0823.1, %_ZNSt6vectorImSaImEE9push_backERKm.exit408 ] ; 16 uses
  %i.sg = icmp eq i64 %storemerge2061655, %storemerge2171649
  br i1 %i.sg, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.sh = load ptr, ptr %43, align 8, !tbaa !222  ; 3 uses
  %i.si = getelementptr i8, ptr %i.sh, i64 %.idx.i.i.i.i
  %i.sj = load ptr, ptr %42, align 8, !tbaa !222  ; 3 uses
  %.idx.i.i.i12.i = mul nuw i64 %storemerge2171649, 48 ; 6 uses
  %i.sk = getelementptr i8, ptr %i.sj, i64 %.idx.i.i.i12.i ; 2 uses
  %i.sl = load ptr, ptr %i.si, align 8, !tbaa !129 ; 6 uses
  %i.sm = load ptr, ptr %i.sk, align 8, !tbaa !129 ; 3 uses
  %i.sn = icmp eq ptr %i.sl, %i.sm
  br i1 %i.sn, label %.noexc393.thread, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 16
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sq = load double, ptr %i.sp, align 8, !tbaa !33
  %60 = load double, ptr %i.so, align 16, !tbaa !33
  %i.sr = fneg double %60
  %i.ss = fcmp olt double %i.sq, %i.sr
  br i1 %i.ss, label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.st = getelementptr inbounds nuw i8, ptr %i.sl, i64 16
  %61 = load double, ptr %i.st, align 16, !tbaa !33
  %62 = fneg double %61
  %63 = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %64 = load double, ptr %63, align 8, !tbaa !33
  %i.su = fcmp ugt double %64, %62
  %i.sv = select i1 %i.su, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767: ; preds = %bb.dv, %bb.du
  %.sroa.0.0.insert.insert.i.i768 = phi i16 [ 257, %bb.du ], [ %i.sv, %bb.dv ] ; 3 uses
  %.sroa.0.0.extract.trunc.i.i769 = trunc i16 %.sroa.0.0.insert.insert.i.i768 to i8
  %.sroa.2.0.extract.shift.i.i770 = lshr i16 %.sroa.0.0.insert.insert.i.i768, 8
  %.sroa.2.0.extract.trunc.i.i771 = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i.i770 to i8
  %i.sw = icmp eq i8 %.sroa.0.0.extract.trunc.i.i769, %.sroa.2.0.extract.trunc.i.i771
  br i1 %i.sw, label %.noexc393, label %bb.dw

bb.dw:                                            ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sl, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr %i.sl, ptr %11, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  store ptr %11, ptr %10, align 8, !tbaa !112
  store ptr %10, ptr %i.js, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jt, align 8, !tbaa !112
  %i.sy = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.sx, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774 unwind label %.loopexit1499 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774:       ; preds = %bb.dw
  %.not.i.i.i.i775 = icmp eq i32 %i.sy, 0
  br i1 %.not.i.i.i.i775, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776, label %bb.dx

bb.dx:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.sy) #33
          to label %bb.dy unwind label %.loopexit.split-lp1500

bb.dy:                                            ; preds = %bb.dx
  unreachable

.loopexit1499:                                    ; preds = %bb.dw
  %lpad.loopexit1501 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

.loopexit.split-lp1500:                           ; preds = %bb.dx
  %lpad.loopexit.split-lp1502 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dz:                                            ; preds = %.loopexit.split-lp1500, %.loopexit1499
  %lpad.phi1503 = phi { ptr, i32 } [ %lpad.loopexit1501, %.loopexit1499 ], [ %lpad.loopexit.split-lp1502, %.loopexit.split-lp1500 ]
  store ptr null, ptr %i.js, align 8, !tbaa !112
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %.body781

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i.i774
  store ptr null, ptr %i.js, align 8, !tbaa !112
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sl, i64 32
  %i.ta = load atomic ptr, ptr %i.sz monotonic, align 8
  %i.tb = load ptr, ptr %i.sk, align 8, !tbaa !129 ; 3 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  store ptr %i.tb, ptr %9, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr %9, ptr %8, align 8, !tbaa !112
  store ptr %8, ptr %i.js, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.jt, align 8, !tbaa !112
  %i.td = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.tc, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777 unwind label %.loopexit1504 ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777:     ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776
  %.not.i.i.i11.i778 = icmp eq i32 %i.td, 0
  br i1 %.not.i.i.i11.i778, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779, label %bb.ea

bb.ea:                                            ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.td) #33
          to label %bb.eb unwind label %.loopexit.split-lp1505

bb.eb:                                            ; preds = %bb.ea
  unreachable

.loopexit1504:                                    ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit.i776
  %lpad.loopexit1506 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

.loopexit.split-lp1505:                           ; preds = %bb.ea
  %lpad.loopexit.split-lp1507 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ec

bb.ec:                                            ; preds = %.loopexit.split-lp1505, %.loopexit1504
  %lpad.phi1508 = phi { ptr, i32 } [ %lpad.loopexit1506, %.loopexit1504 ], [ %lpad.loopexit.split-lp1507, %.loopexit.split-lp1505 ]
  store ptr null, ptr %i.js, align 8, !tbaa !112
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %.body781

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10.i777
  store ptr null, ptr %i.js, align 8, !tbaa !112
  store ptr null, ptr %i.jt, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  %i.te = getelementptr inbounds nuw i8, ptr %i.tb, i64 32
  %i.tf = load atomic ptr, ptr %i.te monotonic, align 8
  %i.tg = invoke noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.ta, ptr noundef nonnull align 16 dereferenceable(64) %i.tf)
          to label %.noexc783 unwind label %.loopexit1509

.noexc783:                                        ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12.i779
  %i.th = icmp slt i32 %i.tg, 0
  br i1 %i.th, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %.noexc783..noexc393.thread_crit_edge

.noexc783..noexc393.thread_crit_edge:             ; preds = %.noexc783
  %.pre = load ptr, ptr %43, align 8, !tbaa !222
  %.pre1753 = load ptr, ptr %42, align 8, !tbaa !222
  br label %.noexc393.thread

.noexc393:                                        ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit.i767
  %i.ti = trunc i16 %.sroa.0.0.insert.insert.i.i768 to i1
  br i1 %i.ti, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %.noexc393.thread

.noexc393.thread:                                 ; preds = %.noexc783..noexc393.thread_crit_edge, %bb.dt, %.noexc393
  %i.tj = phi ptr [ %.pre1753, %.noexc783..noexc393.thread_crit_edge ], [ %i.sj, %bb.dt ], [ %i.sj, %.noexc393 ]
  %i.tk = phi ptr [ %.pre, %.noexc783..noexc393.thread_crit_edge ], [ %i.sh, %bb.dt ], [ %i.sh, %.noexc393 ]
  %i.tl = getelementptr i8, ptr %i.tk, i64 %.idx.i.i.i.i
  %i.tm = getelementptr i8, ptr %i.tl, i64 16
  %i.tn = getelementptr i8, ptr %i.tj, i64 %.idx.i.i.i12.i
  %i.to = getelementptr i8, ptr %i.tn, i64 16
  %i.tp = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.tm, ptr noundef nonnull align 8 dereferenceable(9) %i.to)
          to label %.noexc394 unwind label %.loopexit1509

.noexc394:                                        ; preds = %.noexc393.thread
  br i1 %i.tp, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.ed

bb.ed:                                            ; preds = %.noexc394
  %i.tq = load ptr, ptr %43, align 8, !tbaa !222
  %i.tr = getelementptr i8, ptr %i.tq, i64 %.idx.i.i.i.i
  %i.ts = getelementptr i8, ptr %i.tr, i64 32
  %i.tt = load ptr, ptr %42, align 8, !tbaa !222
  %i.tu = getelementptr i8, ptr %i.tt, i64 %.idx.i.i.i12.i
  %i.tv = getelementptr i8, ptr %i.tu, i64 32
  %i.tw = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ts, ptr noundef nonnull align 8 dereferenceable(9) %i.tv)
          to label %.noexc395 unwind label %.loopexit1509

.noexc395:                                        ; preds = %bb.ed
  br i1 %i.tw, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.ee

bb.ee:                                            ; preds = %.noexc395
  %i.tx = load ptr, ptr %43, align 8, !tbaa !222
  %i.ty = getelementptr i8, ptr %i.tx, i64 %.idx.i.i.i12.i
  %i.tz = load ptr, ptr %42, align 8, !tbaa !222
  %i.ua = getelementptr i8, ptr %i.tz, i64 %.idx.i.i.i.i
  %i.ub = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ty, ptr noundef nonnull align 8 dereferenceable(9) %i.ua)
          to label %.noexc396 unwind label %.loopexit1509

.noexc396:                                        ; preds = %bb.ee
  br i1 %i.ub, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.ef

bb.ef:                                            ; preds = %.noexc396
  %i.uc = load ptr, ptr %43, align 8, !tbaa !222
  %i.ud = getelementptr i8, ptr %i.uc, i64 %.idx.i.i.i12.i
  %i.ue = getelementptr i8, ptr %i.ud, i64 16
  %i.uf = load ptr, ptr %42, align 8, !tbaa !222
  %i.ug = getelementptr i8, ptr %i.uf, i64 %.idx.i.i.i.i
  %i.uh = getelementptr i8, ptr %i.ug, i64 16
  %i.ui = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ue, ptr noundef nonnull align 8 dereferenceable(9) %i.uh)
          to label %.noexc397 unwind label %.loopexit1509

.noexc397:                                        ; preds = %bb.ef
  br i1 %i.ui, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.eg

bb.eg:                                            ; preds = %.noexc397
  %i.uj = load ptr, ptr %43, align 8, !tbaa !222
  %i.uk = getelementptr i8, ptr %i.uj, i64 %.idx.i.i.i12.i
  %i.ul = getelementptr i8, ptr %i.uk, i64 32
  %i.um = load ptr, ptr %42, align 8, !tbaa !222
  %i.un = getelementptr i8, ptr %i.um, i64 %.idx.i.i.i.i
  %i.uo = getelementptr i8, ptr %i.un, i64 32
  %i.up = invoke noundef zeroext i1 @_ZN4CGALltIN5boost14multiprecision6numberINS2_8backends16rational_adaptorINS4_15cpp_int_backendILm0ELm0ELNS2_16cpp_integer_typeE1ELNS2_18cpp_int_check_typeE0ESaIyEEEEELNS2_26expression_template_optionE1EEESD_EEbRKNS_13Lazy_exact_ntIT_EERKNSE_IT0_EE(ptr noundef nonnull align 8 dereferenceable(9) %i.ul, ptr noundef nonnull align 8 dereferenceable(9) %i.uo)
          to label %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit unwind label %.loopexit1509

_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit: ; preds = %bb.eg
  br i1 %i.up, label %_ZNSt6vectorImSaImEE9push_backERKm.exit408, label %bb.eh

bb.eh:                                            ; preds = %_ZZN3igl8copyleft4cgal13extract_cellsIN5Eigen6MatrixIN4CGAL13Lazy_exact_ntIN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEEEELin1ELin1ELi1ELin1ELin1EEENS4_IiLin1ELin1ELi0ELin1ELin1EEENS4_IiLin1ELi1ELi0ELin1ELi1EEESM_SN_SN_SN_SM_EEmRKNS3_10MatrixBaseIT_EERKNSO_IT0_EERKNSO_IT1_EERKNSO_IT2_EERKNSO_IT3_EERKNSO_IT4_EERKNSO_IT5_EERNS3_15PlainObjectBaseIT6_EEENKUlmmE_clEmm.exit
  %.not.i399 = icmp eq ptr %.sroa.14831.01647, %.sroa.21.01648
  br i1 %.not.i399, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  store i64 %storemerge2171649, ptr %.sroa.14831.01647, align 8, !tbaa !42
  %i.uq = getelementptr inbounds nuw i8, ptr %.sroa.14831.01647, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit408

bb.ej:                                            ; preds = %bb.eh
  %i.ur = ptrtoint ptr %.sroa.21.01648 to i64
  %i.us = ptrtoint ptr %.sroa.0823.01646 to i64
  %i.ut = sub i64 %i.ur, %i.us                    ; 6 uses
  %i.uu = icmp eq i64 %i.ut, 9223372036854775800
  br i1 %i.uu, label %bb.ek, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i400

bb.ek:                                            ; preds = %bb.ej
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #33
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
  br i1 %i.c, label %bb.l, label %bb.b

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
  %i.k = select i1 %i.j, i16 256, i16 0
  br label %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit

_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit:     ; preds = %bb.b, %bb.c
  %.sroa.0.0.insert.insert.i = phi i16 [ 257, %bb.b ], [ %i.k, %bb.c ] ; 3 uses
  %.sroa.0.0.extract.trunc.i = trunc i16 %.sroa.0.0.insert.insert.i to i8
  %.sroa.2.0.extract.shift.i = lshr i16 %.sroa.0.0.insert.insert.i, 8
  %.sroa.2.0.extract.trunc.i = trunc nuw nsw i16 %.sroa.2.0.extract.shift.i to i8
  %i.l = icmp eq i8 %.sroa.0.0.extract.trunc.i, %.sroa.2.0.extract.trunc.i
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.m = trunc i16 %.sroa.0.0.insert.insert.i to i1
  br label %bb.l

bb.e:                                             ; preds = %_ZN4CGALltERKNS_11Interval_ntILb0EEES3_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr %i.a, ptr %5, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %5, ptr %4, align 8, !tbaa !112
  %i.o = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt15__once_callable) ; 6 uses
  store ptr %4, ptr %i.o, align 8, !tbaa !112
  %i.p = call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZSt11__once_call) ; 6 uses
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.p, align 8, !tbaa !112
  %i.q = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i unwind label %bb.h ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i:            ; preds = %bb.e
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.q) #33
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

common.resume:                                    ; preds = %bb.k, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.h ], [ %i.x, %bb.k ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.r = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.o, align 8, !tbaa !112
  store ptr null, ptr %i.p, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i
  store ptr null, ptr %i.o, align 8, !tbaa !112
  store ptr null, ptr %i.p, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.t = load atomic ptr, ptr %i.s monotonic, align 8
  %i.u = load ptr, ptr %1, align 8, !tbaa !129    ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  store ptr %i.u, ptr %3, align 8, !tbaa !142
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %3, ptr %2, align 8, !tbaa !112
  store ptr %2, ptr %i.o, align 8, !tbaa !112
  store ptr @_ZZNSt9once_flag18_Prepare_executionC1IZSt9call_onceIZNK4CGAL8Lazy_repINS3_11Interval_ntILb0EEEN5boost14multiprecision6numberINS8_8backends16rational_adaptorINSA_15cpp_int_backendILm0ELm0ELNS8_16cpp_integer_typeE1ELNS8_18cpp_int_check_typeE0ESaIyEEEEELNS8_26expression_template_optionE1EEENS3_11To_intervalISJ_EELi1EE5exactEvEUlvE_JEEvRS_OT_DpOT0_EUlvE_EERSP_ENUlvE_8__invokeEv, ptr %i.p, align 8, !tbaa !112
  %i.w = invoke noundef i32 @pthread_once(ptr noundef nonnull align 4 dereferenceable(4) %i.v, ptr noundef nonnull @__once_proxy)
          to label %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10 unwind label %bb.k ; 2 uses

_ZL14__gthread_oncePiPFvvE.exit.i.i.i10:          ; preds = %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %.not.i.i.i11 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i11, label %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, label %bb.i

bb.i:                                             ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.w) #33
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.i, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.o, align 8, !tbaa !112
  store ptr null, ptr %i.p, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %common.resume

_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12: ; preds = %_ZL14__gthread_oncePiPFvvE.exit.i.i.i10
  store ptr null, ptr %i.o, align 8, !tbaa !112
  store ptr null, ptr %i.p, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.z = load atomic ptr, ptr %i.y monotonic, align 8
  %i.aa = call noundef i32 @_ZNK5boost14multiprecision8backends16rational_adaptorINS1_15cpp_int_backendILm0ELm0ELNS0_16cpp_integer_typeE1ELNS0_18cpp_int_check_typeE0ESaIyEEEE7compareERKS8_(ptr noundef nonnull align 16 dereferenceable(64) %i.t, ptr noundef nonnull align 16 dereferenceable(64) %i.z)
  %i.ab = icmp slt i32 %i.aa, 0
  br label %bb.l

bb.l:                                             ; preds = %bb.d, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %i.m, %bb.d ], [ %i.ab, %_ZNK4CGAL4LazyINS_11Interval_ntILb0EEEN5boost14multiprecision6numberINS4_8backends16rational_adaptorINS6_15cpp_int_backendILm0ELm0ELNS4_16cpp_integer_typeE1ELNS4_18cpp_int_check_typeE0ESaIyEEEEELNS4_26expression_template_optionE1EEENS_11To_intervalISF_EEE5exactEv.exit12 ]
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
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 24
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
